// mipi_3ch_top.v
// OV9734: onboard 24MHz crystal, no XVCLK input. 50MHz sys_clk for timing.
// TXS0104 OE hardwired high 锟ms cam_ready delay covers back-drive risk.
// XSHUTDN never pulled low after initial power-up (except full sys_rstn).
module mipi_3ch_top (
    input wire sys_clk,
    input wire sys_rstn,
    // 璋冭瘯淇″彿
    output wire [3:0] led,
    output wire       uart_txd,
    input wire        uart_rxd,
    // 鎽勫儚澶撮厤缃俊锟  
    output wire       i2c_sclk_0,
    inout wire        i2c_sda_0,
    output wire       xshutdn_0,
    // 鎽勫儚澶存暟鎹俊锟   
    inout wire       mipi_rcp_0,
    inout wire       mipi_rcn_0,
    inout wire       mipi_rdp_0,
    inout wire       mipi_rdn_0,
    // DEBUG SIGNAL
    output wire       csi_payload_en,
    output wire       csi_sp_en,
    output wire       csi_lp_en,
//    output wire [7:0] csi_payload,
    output wire [5:0] csi_dt
//    output wire [1:0] csi_vc 
);

wire        cfg_done;
wire [15:0] sensor_id;
wire        sensor_id_valid;
wire [15:0] frame_count;
wire        frame_count_valid;
wire [3:0]  i2c_rd_byte_num;
wire [7:0]  reg_4a00_val;
wire        reg_4a00_valid;
wire        logic_rstn;
reg         rst_n_pulse;
reg [25:0]  rst_cnt;
assign logic_rstn = sys_rstn & rst_n_pulse;

// LED
assign led[1] = cfg_done;
assign led[2] = ~sys_rstn;
assign led[0] = 0;

reg [23:0] blink_cnt;
reg        blink_toggle;
always @(posedge sys_clk or negedge sys_rstn) begin
    if (!sys_rstn) begin
        blink_cnt    <= 24'd0;
        blink_toggle <= 1'b0;
    end
    else if (blink_cnt == 24'd9999999) begin
        blink_cnt    <= 24'd0;
        blink_toggle <= ~blink_toggle;
    end
    else begin
        blink_cnt <= blink_cnt + 1'd1;
    end
end
assign led[3] = blink_toggle;

// XSHUTDN: double-registered, never pulled low after initial power-up
// (OV9734 hardware power-down: any negative pulse = accidental reset)
reg        xshutdn_r;
reg        xshutdn_out_reg;
reg        cam_ready;
reg [19:0] xshutdn_cnt;
reg [19:0] cam_cnt;

always @(posedge sys_clk or negedge sys_rstn) begin
    if (!sys_rstn) begin
        xshutdn_r       <= 1'b0;
        xshutdn_out_reg <= 1'b0;
        cam_ready       <= 1'b0;
        xshutdn_cnt     <= 20'd0;
        cam_cnt         <= 20'd0;
    end
    else begin
        // Phase 1: 10ms after reset, pull XSHUTDN high
        if (!xshutdn_r) begin
            if (xshutdn_cnt == 20'd499_999) begin
                xshutdn_r <= 1'b1;
            end
            else begin
                xshutdn_cnt <= xshutdn_cnt + 1'd1;
            end
        end
        // Phase 2: 20ms after XSHUTDN锟assert cam_ready
        else if (!cam_ready) begin
            if (cam_cnt == 20'd999_999) begin
                cam_ready <= 1'b1;
            end
            else begin
                cam_cnt <= cam_cnt + 1'd1;
            end
        end

        // 2nd stage register: eliminate glitches
        xshutdn_out_reg <= xshutdn_r;
    end
end
assign xshutdn_0 = xshutdn_out_reg;

// I2C
top_iic #(
    .SLAVE_ADDRESS  (7'h10         	),   // OV9734: 7-bit 0x10, write=0x20, read=0x21
    .SYSTEM_CLK     (26'd50_000_000	),
    .IIC_CLK        (26'd10_000	),   // 10kHz: 10x timing margin vs 100kHz, kills the intermittent SCCB race
    .ADDR_WIDTH     (1'b1       	)
) u_top_iic (
    .sys_clk         (sys_clk         ),
    .sys_rst_n       (logic_rstn      ),
    .scl             (i2c_sclk_0      ),
    .sda             (i2c_sda_0       ),
    .cfg_done        (cfg_done        ),
    .sensor_id       (sensor_id       ),
    .sensor_id_valid (sensor_id_valid ),
    .frame_count     (frame_count     ),
    .frame_count_valid(frame_count_valid),
    .reg_4a00_val    (reg_4a00_val    ),
    .reg_4a00_valid  (reg_4a00_valid  ),
    .cam_ready       (cam_ready       ),
    .rd_byte_num     (i2c_rd_byte_num )
);

// CSI-2 D-PHY Receiver
wire                    csi_clk_byte;
wire                    csi_clk_byte_hs;
wire                    csi_lp_av_en;
wire [7:0]              csi_bd;
wire [7:0]              csi_payload;
wire                    csi_payload_en_parser;
wire                    csi_sp_en_parser;
wire                    csi_lp_en_parser;
wire [5:0]              csi_dt_parser;
wire [1:0]              csi_vc;
wire [15:0]             csi_wc;
wire [7:0]              csi_ecc;
wire                    dphy_term_clk_en;
wire                    dphy_hs_d_en;
wire                    dphy_hs_sync;
wire [1:0]              dphy_lp_hs_state_clk;
wire [1:0]              dphy_lp_hs_state_d;
reg [1:0]               reset_byte_fr_sync;
reg [1:0]               reset_byte_sync;
wire                    reset_byte_fr_n;
wire                    reset_byte_n;

// Accumulate receive-path activity in the recovered MIPI byte-clock domain.
reg [31:0] csi_byte_clk_count;
reg [31:0] csi_hs_sync_count;
reg [31:0] csi_long_packet_count;
reg [31:0] csi_payload_byte_count;
reg        dphy_hs_sync_d;
reg        csi_lp_en_d;
reg [5:0]  csi_last_dt;
reg [15:0] csi_last_wc;

always @(posedge csi_clk_byte_hs or negedge reset_byte_fr_n) begin
    if (!reset_byte_fr_n) begin
        csi_byte_clk_count     <= 32'd0;
        csi_hs_sync_count      <= 32'd0;
        csi_long_packet_count  <= 32'd0;
        csi_payload_byte_count <= 32'd0;
        dphy_hs_sync_d         <= 1'b0;
        csi_lp_en_d            <= 1'b0;
        csi_last_dt            <= 6'd0;
        csi_last_wc            <= 16'd0;
    end else begin
        csi_byte_clk_count <= csi_byte_clk_count + 1'b1;
        dphy_hs_sync_d     <= dphy_hs_sync;
        csi_lp_en_d        <= csi_lp_en_parser;
        if (dphy_hs_sync && !dphy_hs_sync_d)
            csi_hs_sync_count <= csi_hs_sync_count + 1'b1;
        if (csi_lp_en_parser && !csi_lp_en_d) begin
            csi_long_packet_count <= csi_long_packet_count + 1'b1;
            csi_last_dt <= csi_dt_parser;
            csi_last_wc <= csi_wc;
        end
        if (csi_payload_en_parser)
            csi_payload_byte_count <= csi_payload_byte_count + 1'b1;
    end
end

// Two-stage synchronization is sufficient for one-second diagnostic totals.
reg [31:0] csi_byte_clk_count_meta, csi_byte_clk_count_sys;
reg [31:0] csi_hs_sync_count_meta, csi_hs_sync_count_sys;
reg [31:0] csi_long_packet_count_meta, csi_long_packet_count_sys;
reg [31:0] csi_payload_byte_count_meta, csi_payload_byte_count_sys;
reg [5:0]  csi_last_dt_meta, csi_last_dt_sys;
reg [15:0] csi_last_wc_meta, csi_last_wc_sys;

always @(posedge sys_clk or negedge logic_rstn) begin
    if (!logic_rstn) begin
        csi_byte_clk_count_meta <= 32'd0; csi_byte_clk_count_sys <= 32'd0;
        csi_hs_sync_count_meta <= 32'd0; csi_hs_sync_count_sys <= 32'd0;
        csi_long_packet_count_meta <= 32'd0; csi_long_packet_count_sys <= 32'd0;
        csi_payload_byte_count_meta <= 32'd0; csi_payload_byte_count_sys <= 32'd0;
        csi_last_dt_meta <= 6'd0; csi_last_dt_sys <= 6'd0;
        csi_last_wc_meta <= 16'd0; csi_last_wc_sys <= 16'd0;
    end else begin
        csi_byte_clk_count_meta <= csi_byte_clk_count;
        csi_byte_clk_count_sys <= csi_byte_clk_count_meta;
        csi_hs_sync_count_meta <= csi_hs_sync_count;
        csi_hs_sync_count_sys <= csi_hs_sync_count_meta;
        csi_long_packet_count_meta <= csi_long_packet_count;
        csi_long_packet_count_sys <= csi_long_packet_count_meta;
        csi_payload_byte_count_meta <= csi_payload_byte_count;
        csi_payload_byte_count_sys <= csi_payload_byte_count_meta;
        csi_last_dt_meta <= csi_last_dt;
        csi_last_dt_sys <= csi_last_dt_meta;
        csi_last_wc_meta <= csi_last_wc;
        csi_last_wc_sys <= csi_last_wc_meta;
    end
end

// HS_ONLY mode: clk_byte_fr_i uses the recovered continuous byte clock
// (csi_clk_byte_hs) as feedback.  Assert reset asynchronously and release it in
// each D-PHY clock domain.
always @(posedge csi_clk_byte_hs or negedge logic_rstn) begin
    if (!logic_rstn)
        reset_byte_fr_sync <= 2'b00;
    else
        reset_byte_fr_sync <= {reset_byte_fr_sync[0], 1'b1};
end

always @(posedge csi_clk_byte or negedge logic_rstn) begin
    if (!logic_rstn)
        reset_byte_sync <= 2'b00;
    else
        reset_byte_sync <= {reset_byte_sync[0], 1'b1};
end

assign reset_byte_fr_n = reset_byte_fr_sync[1];
assign reset_byte_n    = reset_byte_sync[1];

// Temporary D-PHY diagnostics. These replace the normal parser debug pins.
// csi_payload_en=CLKRXHSEN, csi_sp_en=D0 HS enable, csi_lp_en=HS sync.
// csi_dt[1:0]=clock state, [3:2]=data state, [4]=parser payload, [5]=parser LP.
assign csi_payload_en = dphy_term_clk_en;
assign csi_sp_en      = dphy_hs_d_en;
assign csi_lp_en      = dphy_hs_sync;
assign csi_dt[1:0]    = dphy_lp_hs_state_clk;
assign csi_dt[3:2]    = dphy_lp_hs_state_d;
assign csi_dt[4]      = csi_payload_en_parser;
assign csi_dt[5]      = csi_lp_en_parser;

// CSI-2 D-PHY Receiver
csi2dsi u_csi2dsi (
    .clk_n_i            (mipi_rcn_0),
    .clk_p_i            (mipi_rcp_0),
    .d0_n_i             (mipi_rdn_0),
    .d0_p_i             (mipi_rdp_0),

    // Clock / Reset / Control
    .clk_byte_fr_i      (csi_clk_byte_hs),  // HS_ONLY: continuous byte clock feedback
    .clk_lp_ctrl_i      (sys_clk),
    .reset_byte_fr_n_i  (reset_byte_fr_n),
    .reset_byte_n_i     (reset_byte_n),
    .reset_lp_n_i       (logic_rstn),
    .reset_n_i          (logic_rstn),
    .pll_lock_i         (1'b1),             
    .pd_dphy_i          (1'b0),             // PHY active

    // Output clocks
    .clk_byte_o         (csi_clk_byte),
    .clk_byte_hs_o      (csi_clk_byte_hs),

    // LP debug (unused)
    .cd_d0_o            (),
    .lp_d0_rx_p_o       (),
    .lp_d0_rx_n_o       (),

    // CSI-2 parser output
    .bd_o               (csi_bd),
    .payload_en_o       (csi_payload_en_parser),
    .payload_o          (csi_payload),
    .sp_en_o            (csi_sp_en_parser),
    .lp_en_o            (csi_lp_en_parser),
    .lp_av_en_o         (csi_lp_av_en),
    .dt_o               (csi_dt_parser),
    .vc_o               (csi_vc),
    .wc_o               (csi_wc),
    .ecc_o              (csi_ecc),

    // Filter: RAW10 = 0x2B (matches the verified OV9734 sequence)
    .ref_dt_i           (6'b101011),

    // D-PHY handshake/status exposed on the existing debug pins above.
    .hs_d_en_o          (dphy_hs_d_en),
    .hs_sync_o          (dphy_hs_sync),
    .term_clk_en_o      (dphy_term_clk_en),
    .lp_hs_state_clk_o  (dphy_lp_hs_state_clk),
    .lp_hs_state_d_o    (dphy_lp_hs_state_d)
);

// UART
wire        tx_flag;
wire [7:0]  tx_data;
wire [7:0]  rx_data;
wire        rx_flag;
wire        uart_busy;

// D-PHY lane status, synchronized to sys_clk for the UART debug readout.
// hs_d_en=1 when the D-PHY drives HS on data lane0; term_clk_en=1 when the
// clock-lane termination is on; lp_state_d is the data-lane LP/HS state.
reg        dphy_hs_d_en_s1, dphy_hs_d_en_s2;
reg        dphy_term_clk_en_s1, dphy_term_clk_en_s2;
reg [1:0]  dphy_lp_state_d_s1, dphy_lp_state_d_s2;
always @(posedge sys_clk or negedge logic_rstn) begin
    if (!logic_rstn) begin
        dphy_hs_d_en_s1     <= 1'b0;
        dphy_hs_d_en_s2     <= 1'b0;
        dphy_term_clk_en_s1 <= 1'b0;
        dphy_term_clk_en_s2 <= 1'b0;
        dphy_lp_state_d_s1  <= 2'd0;
        dphy_lp_state_d_s2  <= 2'd0;
    end else begin
        dphy_hs_d_en_s1     <= dphy_hs_d_en;
        dphy_hs_d_en_s2     <= dphy_hs_d_en_s1;
        dphy_term_clk_en_s1 <= dphy_term_clk_en;
        dphy_term_clk_en_s2 <= dphy_term_clk_en_s1;
        dphy_lp_state_d_s1  <= dphy_lp_hs_state_d;
        dphy_lp_state_d_s2  <= dphy_lp_state_d_s1;
    end
end

uart_send_ctrl u_send_ctrl (
    .clk                (sys_clk),
    .rst_n              (logic_rstn),
    .uart_busy          (uart_busy),
    .byte_clk_count     (csi_byte_clk_count_sys),
    .hs_sync_count      (csi_hs_sync_count_sys),
    .long_packet_count  (csi_long_packet_count_sys),
    .payload_byte_count (csi_payload_byte_count_sys),
    .last_dt            (csi_last_dt_sys),
    .last_wc            (csi_last_wc_sys),
    .frame_count        (frame_count),
    .frame_count_valid  (frame_count_valid),
    .sensor_id          (sensor_id),
    .reg_4a00_val       (reg_4a00_val),
    .dphy_hs_d_en       (dphy_hs_d_en_s2),
    .dphy_term_clk_en   (dphy_term_clk_en_s2),
    .dphy_lp_state_d    (dphy_lp_state_d_s2),
    .tx_flag            (tx_flag),
    .tx_data            (tx_data)
);

uart_tx #(
    .UART_BPS(115200),
    .CLK_FREQ(50_000_000)
) u_uart_tx (
    .sys_clk   (sys_clk),
    .sys_rst_n (logic_rstn),
    .pi_data   (tx_data),
    .pi_flag   (tx_flag),
    .tx        (uart_txd),
    .work_en   (uart_busy)
);

uart_rx #(
    .UART_BPS(115200),
    .CLK_FREQ(50_000_000)
) u_uart_rx (
    .sys_clk   (sys_clk),
    .sys_rst_n (logic_rstn),
    .rx        (uart_rxd),
    .po_data   (rx_data),
    .po_flag   (rx_flag)
);

// UART command: 0x66 -> 1s soft-reset pulse for digital logic
always @(posedge sys_clk or negedge sys_rstn) begin
    if (!sys_rstn) begin
        rst_cnt      <= 26'd0;
        rst_n_pulse  <= 1'b1;
    end
    else if (rx_flag && rx_data == 8'h66) begin
        rst_cnt      <= 26'd0;
        rst_n_pulse  <= 1'b0;
    end
    else if (!rst_n_pulse) begin
        if (rst_cnt == 26'd49_999_999) begin
            rst_n_pulse <= 1'b1;
        end
        else begin
            rst_cnt <= rst_cnt + 1'd1;
        end
    end
end

endmodule
