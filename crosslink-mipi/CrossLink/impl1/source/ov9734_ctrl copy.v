// ov9734_ctrl.v — OV9734 11-register config + 2-byte sensor ID readback
module ov9734_ctrl (
    input           sys_clk,
    input           sys_rst_n,
    input           flag_done,
    input [7:0]     data_read,
    input [7:0]     rd_byte0,       // first byte from multi-byte read

    output reg      start,
    output reg      ctrl_w0_r1,
    output reg [15:0] addr,
    output reg [7:0]  data_write,
    output reg      cfg_done,
    output reg [15:0] sensor_id,
    output reg      sensor_id_valid,
    input           cam_ready
);

    localparam NUM_REGS    = 11;
    localparam WAIT_NORMAL = 16'd4_999;     // 100us between writes
    localparam WAIT_SWRST  = 17'd99_999;    // 2ms after SW reset (0x0103)

    // flag_done posedge (combinational)
    reg flag_done_d1, flag_done_d2;
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            flag_done_d1 <= 1'b0;
            flag_done_d2 <= 1'b0;
        end
        else begin
            flag_done_d1 <= flag_done;
            flag_done_d2 <= flag_done_d1;
        end
    end
    wire flag_done_posedge = flag_done && !flag_done_d2;

    // LUT: 11 config registers (matching logic analyzer trace)
    reg [23:0] reg_cfg;
    reg [3:0]  reg_index;
    always @(posedge sys_clk) begin
        case (reg_index)
            0:  reg_cfg <= {16'h0103, 8'h01};  // SW reset
            1:  reg_cfg <= {16'h0100, 8'h00};  // standby
            2:  reg_cfg <= {16'h0300, 8'h04};
            3:  reg_cfg <= {16'h0302, 8'h60};
            4:  reg_cfg <= {16'h0303, 8'h00};
            5:  reg_cfg <= {16'h3018, 8'hA0};
            6:  reg_cfg <= {16'h301A, 8'h0C};
            7:  reg_cfg <= {16'h301C, 8'h78};
            8:  reg_cfg <= {16'h3804, 8'h05};
            9:  reg_cfg <= {16'h3805, 8'h07};
            10: reg_cfg <= {16'h0100, 8'h01};  // exit standby
            default: reg_cfg <= 24'h0;
        endcase
    end

    // States
    localparam S_WAIT   = 3'd0;
    localparam S_IDLE   = 3'd1;
    localparam S_SEND   = 3'd2;
    localparam S_FINAL  = 3'd3;
    localparam S_RD_WR  = 3'd4;   // combined read: write reg addr + SR + read 2 bytes
    localparam S_DONE   = 3'd5;   // idle after read complete

    reg [2:0]  state;
    reg [16:0] wait_cnt;
    reg        delay_swrst;
    reg [19:0] final_cnt;

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            state           <= S_WAIT;
            reg_index       <= 0;
            start           <= 1'b0;
            ctrl_w0_r1      <= 1'b0;
            addr            <= 16'd0;
            data_write      <= 8'd0;
            cfg_done        <= 1'b0;
            sensor_id       <= 16'd0;
            sensor_id_valid <= 1'b0;
            wait_cnt        <= 17'd0;
            delay_swrst     <= 1'b0;
            final_cnt       <= 20'd0;
        end
        else begin
            case (state)

                S_WAIT: begin
                    if (cam_ready)
                        state <= S_IDLE;
                end

                S_IDLE: begin
                    start      <= 1'b0;
                    ctrl_w0_r1 <= 1'b0;
                    final_cnt  <= 20'd0;
                    if (reg_index == 0) begin
                        addr       <= reg_cfg[23:8];
                        data_write <= reg_cfg[7:0];
                        start      <= 1'b1;
                        state      <= S_SEND;
                    end
                    else begin
                        if (delay_swrst) begin
                            if (wait_cnt == WAIT_SWRST) begin
                                wait_cnt  <= 17'd0;
                                addr       <= reg_cfg[23:8];
                                data_write <= reg_cfg[7:0];
                                start      <= 1'b1;
                                state      <= S_SEND;
                            end
                            else begin
                                wait_cnt <= wait_cnt + 1'd1;
                            end
                        end
                        else begin
                            if (wait_cnt == WAIT_NORMAL) begin
                                wait_cnt  <= 17'd0;
                                addr       <= reg_cfg[23:8];
                                data_write <= reg_cfg[7:0];
                                start      <= 1'b1;
                                state      <= S_SEND;
                            end
                            else begin
                                wait_cnt <= wait_cnt + 1'd1;
                            end
                        end
                    end
                end

                S_SEND: begin
                    if (flag_done_posedge) begin
                        start <= 1'b0;
                        if (reg_index == NUM_REGS - 1) begin
                            state <= S_FINAL;
                        end
                        else begin
                            delay_swrst <= (reg_index == 0);
                            reg_index   <= reg_index + 1'd1;
                            state       <= S_IDLE;
                        end
                    end
                    else begin
                        start <= 1'b1;
                    end
                end

                S_FINAL: begin
                    if (final_cnt == 20'd499_999) begin   // 10ms
                        cfg_done <= 1'b1;
                        state    <= S_RD_WR;
                    end
                    else begin
                        final_cnt <= final_cnt + 1'd1;
                    end
                end

                // Combined read: write reg addr + SR + read 2 bytes (i2c_drive handles SR internally)
                S_RD_WR: begin
                    ctrl_w0_r1 <= 1'b1;
                    addr       <= 16'h300A;
                    if (flag_done_posedge) begin
                        start           <= 1'b0;
                        sensor_id       <= {rd_byte0, data_read};
                        sensor_id_valid <= 1'b1;
                        state           <= S_DONE;
                    end
                    else begin
                        start <= 1'b1;
                    end
                end

                S_DONE: begin
                    start <= 1'b0;
                end

                default: state <= S_WAIT;
            endcase
        end
    end

endmodule
