module uart_send_ctrl (
    input             clk,
    input             rst_n,
    input             uart_busy,
    input [31:0]      byte_clk_count,
    input [31:0]      hs_sync_count,
    input [31:0]      long_packet_count,
    input [31:0]      payload_byte_count,
    input [5:0]       last_dt,
    input [15:0]      last_wc,
    input [15:0]      frame_count,
    input             frame_count_valid,
    output reg        tx_flag,
    output reg [7:0]  tx_data
);

parameter ONE_SEC = 26'd49_999_999;

reg [25:0] sec_cnt;
reg        sec_tick;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        sec_cnt  <= 26'd0;
        sec_tick <= 1'b0;
    end else if (sec_cnt == ONE_SEC) begin
        sec_cnt  <= 26'd0;
        sec_tick <= 1'b1;
    end else begin
        sec_cnt  <= sec_cnt + 1'b1;
        sec_tick <= 1'b0;
    end
end

function [7:0] hex_char;
    input [3:0] nibble;
    begin
        hex_char = (nibble < 10) ? (8'h30 + nibble) : (8'h41 + nibble - 10);
    end
endfunction

localparam TX_IDLE       = 2'd0;
localparam TX_LAUNCH     = 2'd1;
localparam TX_WAIT_START = 2'd2;
localparam TX_WAIT_DONE  = 2'd3;

localparam PH_LABEL = 3'd0;
localparam PH_EQUAL = 3'd1;
localparam PH_DIGIT = 3'd2;
localparam PH_CR    = 3'd3;
localparam PH_LF    = 3'd4;

reg [1:0]  tx_state;
reg [2:0]  tx_phase;
reg [2:0]  field_index;
reg [7:0]  field_label;
reg [31:0] field_value;
reg [3:0]  digits_left;

// A single short record is emitted each second to keep the UART formatter
// below the PFUMX fan-in limit.  The seven records repeat in this order:
// C (byte clock), H (HS SoT), L (long packets), P (payload bytes),
// D (data type), W (word count), F (sensor frame counter).
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        tx_flag      <= 1'b0;
        tx_data      <= 8'd0;
        tx_state     <= TX_IDLE;
        tx_phase     <= PH_LABEL;
        field_index  <= 3'd0;
        field_label  <= 8'd0;
        field_value  <= 32'd0;
        digits_left  <= 4'd0;
    end else begin
        tx_flag <= 1'b0;
        case (tx_state)
            TX_IDLE: begin
                if (sec_tick && !uart_busy) begin
                    case (field_index)
                        3'd0: begin
                            field_label <= "C";
                            field_value <= byte_clk_count;
                            digits_left <= 4'd8;
                        end
                        3'd1: begin
                            field_label <= "H";
                            field_value <= hs_sync_count;
                            digits_left <= 4'd8;
                        end
                        3'd2: begin
                            field_label <= "L";
                            field_value <= long_packet_count;
                            digits_left <= 4'd8;
                        end
                        3'd3: begin
                            field_label <= "P";
                            field_value <= payload_byte_count;
                            digits_left <= 4'd8;
                        end
                        3'd4: begin
                            field_label <= "D";
                            field_value <= {last_dt, 26'd0};
                            digits_left <= 4'd2;
                        end
                        3'd5: begin
                            field_label <= "W";
                            field_value <= {last_wc, 16'd0};
                            digits_left <= 4'd4;
                        end
                        default: begin
                            field_label <= "F";
                            field_value <= {(frame_count_valid ? frame_count : 16'd0), 16'd0};
                            digits_left <= 4'd4;
                        end
                    endcase
                    tx_phase <= PH_LABEL;
                    tx_state <= TX_LAUNCH;
                end
            end
            TX_LAUNCH: begin
                case (tx_phase)
                    PH_LABEL: tx_data <= field_label;
                    PH_EQUAL: tx_data <= "=";
                    PH_DIGIT: tx_data <= hex_char(field_value[31:28]);
                    PH_CR:    tx_data <= 8'h0D;
                    default:  tx_data <= 8'h0A;
                endcase
                tx_flag  <= 1'b1;
                tx_state <= TX_WAIT_START;
            end
            TX_WAIT_START: begin
                if (uart_busy)
                    tx_state <= TX_WAIT_DONE;
            end
            TX_WAIT_DONE: begin
                if (!uart_busy) begin
                    case (tx_phase)
                        PH_LABEL: tx_phase <= PH_EQUAL;
                        PH_EQUAL: tx_phase <= PH_DIGIT;
                        PH_DIGIT: begin
                            if (digits_left == 4'd1)
                                tx_phase <= PH_CR;
                            else begin
                                field_value <= {field_value[27:0], 4'd0};
                                digits_left <= digits_left - 1'b1;
                            end
                        end
                        PH_CR: tx_phase <= PH_LF;
                        default: begin
                            tx_state <= TX_IDLE;
                            if (field_index == 3'd6)
                                field_index <= 3'd0;
                            else
                                field_index <= field_index + 1'b1;
                        end
                    endcase
                    if (tx_phase != PH_LF)
                        tx_state <= TX_LAUNCH;
                end
            end
            default: tx_state <= TX_IDLE;
        endcase
    end
end

endmodule
