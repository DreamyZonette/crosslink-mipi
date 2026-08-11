// ov9734_ctrl.v 鈥?OV9734 11-register config + 2-byte sensor ID readback
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
    output reg [3:0]  rd_byte_num,
    output reg      cfg_done,
    output reg [15:0] sensor_id,
    output reg      sensor_id_valid,
    output reg [15:0] frame_count,
    output reg        frame_count_valid,
    input           cam_ready
);

    // Synchronize and detect the I2C transaction-complete pulse.
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

    localparam NUM_REGS    = 175;
    localparam WAIT_NORMAL = 16'd4_999;     // 100us between writes
    localparam WAIT_SWRST  = 17'd99_999;    // 2ms after SW reset (0x0103)

    // Verified OV9734 initialization sequence from 9734.txt.
    reg [23:0] reg_cfg;
    reg [7:0]  reg_index;
    always @(posedge sys_clk) begin
        case (reg_index)
              0: reg_cfg <= {16'h0103, 8'h01};
              1: reg_cfg <= {16'h0100, 8'h00};
              2: reg_cfg <= {16'h3001, 8'h00};
              3: reg_cfg <= {16'h3002, 8'h00};
              4: reg_cfg <= {16'h3007, 8'h00};
              5: reg_cfg <= {16'h3010, 8'h00};
              6: reg_cfg <= {16'h3011, 8'h08};
              7: reg_cfg <= {16'h3014, 8'h22};
              8: reg_cfg <= {16'h301e, 8'h15};
              9: reg_cfg <= {16'h3030, 8'h19};
             10: reg_cfg <= {16'h3080, 8'h02};
             11: reg_cfg <= {16'h3081, 8'h3c};
             12: reg_cfg <= {16'h3082, 8'h04};
             13: reg_cfg <= {16'h3083, 8'h00};
             14: reg_cfg <= {16'h3084, 8'h02};
             15: reg_cfg <= {16'h3085, 8'h01};
             16: reg_cfg <= {16'h3086, 8'h01};
             17: reg_cfg <= {16'h3089, 8'h01};
             18: reg_cfg <= {16'h308a, 8'h00};
             19: reg_cfg <= {16'h3103, 8'h01};
             20: reg_cfg <= {16'h3600, 8'h55};
             21: reg_cfg <= {16'h3601, 8'h02};
             22: reg_cfg <= {16'h3605, 8'h22};
             23: reg_cfg <= {16'h3611, 8'he7};
             24: reg_cfg <= {16'h3654, 8'h10};
             25: reg_cfg <= {16'h3655, 8'h77};
             26: reg_cfg <= {16'h3656, 8'h77};
             27: reg_cfg <= {16'h3657, 8'h07};
             28: reg_cfg <= {16'h3658, 8'h22};
             29: reg_cfg <= {16'h3659, 8'h22};
             30: reg_cfg <= {16'h365a, 8'h02};
             31: reg_cfg <= {16'h3784, 8'h05};
             32: reg_cfg <= {16'h3785, 8'h55};
             33: reg_cfg <= {16'h37c0, 8'h07};
             34: reg_cfg <= {16'h3800, 8'h00};
             35: reg_cfg <= {16'h3801, 8'h04};
             36: reg_cfg <= {16'h3802, 8'h00};
             37: reg_cfg <= {16'h3803, 8'h04};
             38: reg_cfg <= {16'h3804, 8'h05};
             39: reg_cfg <= {16'h3805, 8'h0b};
             40: reg_cfg <= {16'h3806, 8'h02};
             41: reg_cfg <= {16'h3807, 8'hdb};
             42: reg_cfg <= {16'h3808, 8'h05};
             43: reg_cfg <= {16'h3809, 8'h00};
             44: reg_cfg <= {16'h380a, 8'h02};
             45: reg_cfg <= {16'h380b, 8'hd0};
             46: reg_cfg <= {16'h380c, 8'h05};
             47: reg_cfg <= {16'h380d, 8'hc6};
             48: reg_cfg <= {16'h380e, 8'h03};
             49: reg_cfg <= {16'h380f, 8'h22};
             50: reg_cfg <= {16'h3810, 8'h00};
             51: reg_cfg <= {16'h3811, 8'h04};
             52: reg_cfg <= {16'h3812, 8'h00};
             53: reg_cfg <= {16'h3813, 8'h04};
             54: reg_cfg <= {16'h3816, 8'h00};
             55: reg_cfg <= {16'h3817, 8'h00};
             56: reg_cfg <= {16'h3818, 8'h00};
             57: reg_cfg <= {16'h3819, 8'h04};
             58: reg_cfg <= {16'h3820, 8'h18};
             59: reg_cfg <= {16'h3821, 8'h00};
             60: reg_cfg <= {16'h382c, 8'h06};
             61: reg_cfg <= {16'h3500, 8'h00};
             62: reg_cfg <= {16'h3501, 8'h31};
             63: reg_cfg <= {16'h3502, 8'h00};
             64: reg_cfg <= {16'h3503, 8'h03};
             65: reg_cfg <= {16'h3504, 8'h00};
             66: reg_cfg <= {16'h3505, 8'h00};
             67: reg_cfg <= {16'h3509, 8'h10};
             68: reg_cfg <= {16'h350a, 8'h00};
             69: reg_cfg <= {16'h350b, 8'h40};
             70: reg_cfg <= {16'h3d00, 8'h00};
             71: reg_cfg <= {16'h3d01, 8'h00};
             72: reg_cfg <= {16'h3d02, 8'h00};
             73: reg_cfg <= {16'h3d03, 8'h00};
             74: reg_cfg <= {16'h3d04, 8'h00};
             75: reg_cfg <= {16'h3d05, 8'h00};
             76: reg_cfg <= {16'h3d06, 8'h00};
             77: reg_cfg <= {16'h3d07, 8'h00};
             78: reg_cfg <= {16'h3d08, 8'h00};
             79: reg_cfg <= {16'h3d09, 8'h00};
             80: reg_cfg <= {16'h3d0a, 8'h00};
             81: reg_cfg <= {16'h3d0b, 8'h00};
             82: reg_cfg <= {16'h3d0c, 8'h00};
             83: reg_cfg <= {16'h3d0d, 8'h00};
             84: reg_cfg <= {16'h3d0e, 8'h00};
             85: reg_cfg <= {16'h3d0f, 8'h00};
             86: reg_cfg <= {16'h3d80, 8'h00};
             87: reg_cfg <= {16'h3d81, 8'h00};
             88: reg_cfg <= {16'h3d82, 8'h38};
             89: reg_cfg <= {16'h3d83, 8'ha4};
             90: reg_cfg <= {16'h3d84, 8'h00};
             91: reg_cfg <= {16'h3d85, 8'h00};
             92: reg_cfg <= {16'h3d86, 8'h1f};
             93: reg_cfg <= {16'h3d87, 8'h03};
             94: reg_cfg <= {16'h3d8b, 8'h00};
             95: reg_cfg <= {16'h3d8f, 8'h00};
             96: reg_cfg <= {16'h4001, 8'he0};
             97: reg_cfg <= {16'h4009, 8'h0b};
             98: reg_cfg <= {16'h4300, 8'h03};
             99: reg_cfg <= {16'h4301, 8'hff};
            100: reg_cfg <= {16'h4304, 8'h00};
            101: reg_cfg <= {16'h4305, 8'h00};
            102: reg_cfg <= {16'h4309, 8'h00};
            103: reg_cfg <= {16'h4600, 8'h00};
            104: reg_cfg <= {16'h4601, 8'h80};
            105: reg_cfg <= {16'h4800, 8'h00};
            106: reg_cfg <= {16'h4805, 8'h00};
            107: reg_cfg <= {16'h4821, 8'h50};
            108: reg_cfg <= {16'h4823, 8'h50};
            109: reg_cfg <= {16'h4837, 8'h2d};
            110: reg_cfg <= {16'h4a00, 8'h00};
            111: reg_cfg <= {16'h4f00, 8'h80};
            112: reg_cfg <= {16'h4f01, 8'h10};
            113: reg_cfg <= {16'h4f02, 8'h00};
            114: reg_cfg <= {16'h4f03, 8'h00};
            115: reg_cfg <= {16'h4f04, 8'h00};
            116: reg_cfg <= {16'h4f05, 8'h00};
            117: reg_cfg <= {16'h4f06, 8'h00};
            118: reg_cfg <= {16'h4f07, 8'h00};
            119: reg_cfg <= {16'h4f08, 8'h00};
            120: reg_cfg <= {16'h4f09, 8'h00};
            121: reg_cfg <= {16'h5000, 8'h2f};
            122: reg_cfg <= {16'h500c, 8'h00};
            123: reg_cfg <= {16'h500d, 8'h00};
            124: reg_cfg <= {16'h500e, 8'h00};
            125: reg_cfg <= {16'h500f, 8'h00};
            126: reg_cfg <= {16'h5010, 8'h00};
            127: reg_cfg <= {16'h5011, 8'h00};
            128: reg_cfg <= {16'h5012, 8'h00};
            129: reg_cfg <= {16'h5013, 8'h00};
            130: reg_cfg <= {16'h5014, 8'h00};
            131: reg_cfg <= {16'h5015, 8'h00};
            132: reg_cfg <= {16'h5016, 8'h00};
            133: reg_cfg <= {16'h5017, 8'h00};
            134: reg_cfg <= {16'h5080, 8'h00};
            135: reg_cfg <= {16'h5180, 8'h01};
            136: reg_cfg <= {16'h5181, 8'h00};
            137: reg_cfg <= {16'h5182, 8'h01};
            138: reg_cfg <= {16'h5183, 8'h00};
            139: reg_cfg <= {16'h5184, 8'h01};
            140: reg_cfg <= {16'h5185, 8'h00};
            141: reg_cfg <= {16'h5708, 8'h06};
            142: reg_cfg <= {16'h380f, 8'h2a};
            143: reg_cfg <= {16'h5780, 8'h3e};
            144: reg_cfg <= {16'h5781, 8'h0f};
            145: reg_cfg <= {16'h5782, 8'h44};
            146: reg_cfg <= {16'h5783, 8'h02};
            147: reg_cfg <= {16'h5784, 8'h01};
            148: reg_cfg <= {16'h5785, 8'h01};
            149: reg_cfg <= {16'h5786, 8'h00};
            150: reg_cfg <= {16'h5787, 8'h04};
            151: reg_cfg <= {16'h5788, 8'h02};
            152: reg_cfg <= {16'h5789, 8'h0f};
            153: reg_cfg <= {16'h578a, 8'hfd};
            154: reg_cfg <= {16'h578b, 8'hf5};
            155: reg_cfg <= {16'h578c, 8'hf5};
            156: reg_cfg <= {16'h578d, 8'h03};
            157: reg_cfg <= {16'h578e, 8'h08};
            158: reg_cfg <= {16'h578f, 8'h0c};
            159: reg_cfg <= {16'h5790, 8'h08};
            160: reg_cfg <= {16'h5791, 8'h04};
            161: reg_cfg <= {16'h5792, 8'h00};
            162: reg_cfg <= {16'h5793, 8'h52};
            163: reg_cfg <= {16'h5794, 8'ha3};
            164: reg_cfg <= {16'h5000, 8'h3f};
            165: reg_cfg <= {16'h0100, 8'h00};
            166: reg_cfg <= {16'h3801, 8'h00};
            167: reg_cfg <= {16'h3803, 8'h00};
            168: reg_cfg <= {16'h3805, 8'h0f};
            169: reg_cfg <= {16'h3807, 8'hdf};
            170: reg_cfg <= {16'h3809, 8'h08};
            171: reg_cfg <= {16'h380b, 8'hd8};
            172: reg_cfg <= {16'h3811, 8'h04};
            173: reg_cfg <= {16'h3813, 8'h04};
            174: reg_cfg <= {16'h0100, 8'h01};
            default: reg_cfg <= {16'hffff, 8'hff};
        endcase
    end

    // States
    localparam S_WAIT   = 3'd0;
    localparam S_IDLE   = 3'd1;
    localparam S_SEND   = 3'd2;
    localparam S_FINAL  = 3'd3;
    localparam S_RD_WR  = 3'd4;   // combined read: write reg addr + SR + read 2 bytes
    localparam S_DONE   = 3'd5;   // idle after read complete
    localparam S_RD_FRAME   = 4'd6;
    localparam S_FRAME_WAIT = 4'd7;

    reg [3:0]  state;
    reg [16:0] wait_cnt;
    reg        delay_swrst;
    reg [19:0] final_cnt;
    reg [25:0] frame_wait_cnt;

    always @(posedge sys_clk or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            state           <= S_WAIT;
            reg_index       <= 0;
            start           <= 1'b0;
            ctrl_w0_r1      <= 1'b0;
            addr            <= 16'd0;
            data_write      <= 8'd0;
            rd_byte_num     <= 4'd2;
            cfg_done        <= 1'b0;
            sensor_id       <= 16'd0;
            sensor_id_valid <= 1'b0;
            frame_count     <= 16'd0;
            frame_count_valid <= 1'b0;
            wait_cnt        <= 17'd0;
            delay_swrst     <= 1'b0;
            final_cnt       <= 20'd0;
            frame_wait_cnt  <= 26'd0;
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
                    rd_byte_num <= 4'd2;
                    if (flag_done_posedge) begin
                        start           <= 1'b0;
                        sensor_id       <= {rd_byte0, data_read};
                        sensor_id_valid <= 1'b1;
                        frame_wait_cnt  <= 26'd0;
                        state           <= S_FRAME_WAIT;
                    end
                    else begin
                        start <= 1'b1;
                    end
                end

                S_DONE: begin
                    start <= 1'b0;
                end

                S_FRAME_WAIT: begin
                    start      <= 1'b0;
                    ctrl_w0_r1 <= 1'b0;
                    rd_byte_num <= 4'd1;
                    if (frame_wait_cnt == 26'd49_999_999) begin
                        frame_wait_cnt <= 26'd0;
                        ctrl_w0_r1     <= 1'b1;
                        addr            <= 16'h4A00;
                        start           <= 1'b1;
                        state           <= S_RD_FRAME;
                    end
                    else begin
                        frame_wait_cnt <= frame_wait_cnt + 1'd1;
                    end
                end

                S_RD_FRAME: begin
                    ctrl_w0_r1 <= 1'b1;
                    addr        <= 16'h4A00;
                    rd_byte_num <= 4'd1;
                    if (flag_done_posedge) begin
                        start             <= 1'b0;
                        frame_count       <= {8'd0, data_read};
                        frame_count_valid <= 1'b1;
                        frame_wait_cnt    <= 26'd0;
                        state             <= S_FRAME_WAIT;
                    end
                    else begin
                        start <= 1'b1;
                    end
                end


                default: state <= S_WAIT;
            endcase
        end
    end

endmodule
