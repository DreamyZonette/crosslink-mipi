// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Aug 04 15:36:11 2026
//
// Verilog Description of module iic_ctrl
//

module iic_ctrl (clk, rst_n, iic_scl, iic_sda, sensor_id, sensor_id_valid) /* synthesis syn_module_defined=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(1[8:16])
    input clk;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(9[29:32])
    input rst_n;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(10[29:34])
    output iic_scl;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(11[29:36])
    inout iic_sda;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(12[29:36])
    output [15:0]sensor_id;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    output sensor_id_valid;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(14[29:44])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(9[29:32])
    
    wire GND_net, VCC_net, rst_n_c;
    wire [1:0]config_step;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(22[13:24])
    wire [8:0]reg_index;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(23[13:22])
    
    wire send_en, cfg_done, n2094, n3475, n1751, n290, n291, n292, 
        n293, n294, n295, n296, n297, n298, clk_c_enable_14, n324, 
        n3745, send_en_N_397, send_en_N_399, send_en_N_400, sensor_id_valid_N_392, 
        n3614;
    wire [25:0]sda_out_r;   // g:/shita/crosslink/project/impl1/source/iic_master.v(30[22:31])
    
    wire n3603, n3601, n3602, n3600, n3543;
    wire [2:0]state_main;   // g:/shita/crosslink/project/impl1/source/iic_master.v(62[13:23])
    
    wire n9, n8, clk_c_enable_13, n1100, n1096, n3748, n3739, 
        clk_c_enable_4, n3694, n3738, clk_c_enable_5, n3736, clk_c_enable_1, 
        iic_sda_out, n3735;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i3027_3_lut (.A(state_main[1]), .B(cfg_done), .C(sensor_id_valid_N_392), 
         .Z(clk_c_enable_1)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam i3027_3_lut.init = 16'h4c4c;
    FD1P3AX rd_step_FSM_i0_i0 (.D(n1100), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(sensor_id_valid_N_392));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam rd_step_FSM_i0_i0.GSR = "ENABLED";
    OB sensor_id_pad_15 (.I(GND_net), .O(sensor_id[15]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB iic_scl_pad (.I(VCC_net), .O(iic_scl));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(11[29:36])
    LUT4 i3032_4_lut (.A(n9), .B(n3543), .C(n8), .D(reg_index[4]), .Z(n3614)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i3032_4_lut.init = 16'h7fff;
    LUT4 i3024_1_lut_2_lut_3_lut (.A(cfg_done), .B(reg_index[8]), .C(n3614), 
         .Z(clk_c_enable_14)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i3024_1_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i678_2_lut (.A(state_main[1]), .B(send_en_N_400), .Z(n1100)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam i678_2_lut.init = 16'h8888;
    LUT4 i3_2_lut (.A(reg_index[3]), .B(reg_index[6]), .Z(n9)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    BB iic_sda_pad (.I(sda_out_r[25]), .T(n1751), .B(iic_sda), .O(iic_sda_out));   // g:/shita/crosslink/project/impl1/source/iic_master.v(32[9:16])
    FD1P3AX config_step_i0_i0 (.D(n324), .SP(clk_c_enable_14), .CK(clk_c), 
            .Q(config_step[0]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam config_step_i0_i0.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i0 (.D(n298), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[0]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i0.GSR = "ENABLED";
    LUT4 i2842_2_lut_3_lut (.A(config_step[0]), .B(state_main[1]), .C(config_step[1]), 
         .Z(n324)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(349[13] 373[20])
    defparam i2842_2_lut_3_lut.init = 16'h8f8f;
    FD1P3AX send_en_343 (.D(n3745), .SP(clk_c_enable_4), .CK(clk_c), .Q(send_en));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam send_en_343.GSR = "ENABLED";
    FD1P3AX cfg_done_345 (.D(VCC_net), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(cfg_done));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam cfg_done_345.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_20_3_lut (.A(cfg_done), .B(reg_index[8]), .C(n3614), 
         .Z(clk_c_enable_5)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_20_3_lut.init = 16'hefef;
    FD1P3AX reg_index_i0_i8 (.D(n290), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[8]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i8.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i7 (.D(n291), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[7]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i7.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i6 (.D(n292), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[6]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i6.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i5 (.D(n293), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[5]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i5.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i4 (.D(n294), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[4]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i4.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i3 (.D(n295), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[3]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i3.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i2 (.D(n296), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[2]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i2.GSR = "ENABLED";
    FD1P3AX reg_index_i0_i1 (.D(n297), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(reg_index[1]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam reg_index_i0_i1.GSR = "ENABLED";
    FD1P3AX config_step_i0_i1 (.D(n3748), .SP(clk_c_enable_14), .CK(clk_c), 
            .Q(config_step[1]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(347[10] 419[8])
    defparam config_step_i0_i1.GSR = "ENABLED";
    LUT4 i2859_3_lut (.A(reg_index[0]), .B(reg_index[2]), .C(reg_index[1]), 
         .Z(n3543)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i2859_3_lut.init = 16'hecec;
    LUT4 i2769_2_lut_rep_22 (.A(config_step[0]), .B(state_main[1]), .Z(n3748)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(349[13] 373[20])
    defparam i2769_2_lut_rep_22.init = 16'h8888;
    LUT4 n849_bdd_2_lut_3033 (.A(n3735), .B(send_en), .Z(n3736)) /* synthesis lut_function=(A (B)) */ ;
    defparam n849_bdd_2_lut_3033.init = 16'h8888;
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 n849_bdd_2_lut_3039 (.A(n3738), .B(n3614), .Z(n3739)) /* synthesis lut_function=(A (B)) */ ;
    defparam n849_bdd_2_lut_3039.init = 16'h8888;
    CCU2C add_263_9 (.A0(reg_index[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(reg_index[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3603), .S0(n291), .S1(n290));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(368[40:56])
    defparam add_263_9.INIT0 = 16'haaaa;
    defparam add_263_9.INIT1 = 16'haaaa;
    defparam add_263_9.INJECT1_0 = "NO";
    defparam add_263_9.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(reg_index[5]), .B(reg_index[7]), .Z(n8)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    CCU2C add_263_7 (.A0(reg_index[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(reg_index[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3602), .COUT(n3603), .S0(n293), .S1(n292));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(368[40:56])
    defparam add_263_7.INIT0 = 16'haaaa;
    defparam add_263_7.INIT1 = 16'haaaa;
    defparam add_263_7.INJECT1_0 = "NO";
    defparam add_263_7.INJECT1_1 = "NO";
    LUT4 n3736_bdd_4_lut (.A(n3736), .B(send_en_N_399), .C(n3739), .D(cfg_done), 
         .Z(n3745)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n3736_bdd_4_lut.init = 16'heef0;
    FD1S3AY rd_step_FSM_i0_i3 (.D(n3475), .CK(clk_c), .Q(send_en_N_397));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam rd_step_FSM_i0_i3.GSR = "ENABLED";
    LUT4 i2791_2_lut (.A(cfg_done), .B(send_en_N_397), .Z(n3475)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam i2791_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut (.A(cfg_done), .B(reg_index[8]), .C(n3614), .D(config_step[1]), 
         .Z(clk_c_enable_4)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hefff;
    CCU2C add_263_3 (.A0(reg_index[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(reg_index[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3600), .COUT(n3601), .S0(n297), .S1(n296));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(368[40:56])
    defparam add_263_3.INIT0 = 16'haaaa;
    defparam add_263_3.INIT1 = 16'haaaa;
    defparam add_263_3.INJECT1_0 = "NO";
    defparam add_263_3.INJECT1_1 = "NO";
    CCU2C add_263_5 (.A0(reg_index[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(reg_index[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3601), .COUT(n3602), .S0(n295), .S1(n294));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(368[40:56])
    defparam add_263_5.INIT0 = 16'haaaa;
    defparam add_263_5.INIT1 = 16'haaaa;
    defparam add_263_5.INJECT1_0 = "NO";
    defparam add_263_5.INJECT1_1 = "NO";
    CCU2C add_263_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(reg_index[0]), .B1(state_main[1]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3600), .S1(n298));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(368[40:56])
    defparam add_263_1.INIT0 = 16'h0000;
    defparam add_263_1.INIT1 = 16'h999a;
    defparam add_263_1.INJECT1_0 = "NO";
    defparam add_263_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(reg_index[8]), .B(n3614), .C(cfg_done), .D(n3694), 
         .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0400;
    LUT4 i1_2_lut (.A(config_step[0]), .B(config_step[1]), .Z(n3694)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX rd_step_FSM_i0_i2 (.D(n1096), .SP(cfg_done), .CK(clk_c), .Q(send_en_N_399));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam rd_step_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX rd_step_FSM_i0_i1 (.D(n2094), .SP(cfg_done), .CK(clk_c), .Q(send_en_N_400));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(382[9] 418[16])
    defparam rd_step_FSM_i0_i1.GSR = "ENABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    iic_master iic_master_m0 (.clk_c(clk_c), .\sda_out_r[25] (sda_out_r[25]), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\state_main[1] (state_main[1]), 
            .send_en(send_en), .\config_step[0] (config_step[0]), .\reg_index[8] (reg_index[8]), 
            .n3738(n3738), .n1686({send_en_N_397, send_en_N_399, send_en_N_400, 
            sensor_id_valid_N_392}), .n2094(n2094), .n1751(n1751), .n1096(n1096), 
            .n3735(n3735)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(427[3] 440[2])
    OB sensor_id_pad_14 (.I(GND_net), .O(sensor_id[14]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_13 (.I(GND_net), .O(sensor_id[13]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_12 (.I(GND_net), .O(sensor_id[12]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_11 (.I(GND_net), .O(sensor_id[11]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_10 (.I(GND_net), .O(sensor_id[10]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_9 (.I(GND_net), .O(sensor_id[9]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_8 (.I(GND_net), .O(sensor_id[8]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_7 (.I(GND_net), .O(sensor_id[7]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_6 (.I(GND_net), .O(sensor_id[6]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_5 (.I(GND_net), .O(sensor_id[5]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_4 (.I(GND_net), .O(sensor_id[4]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_3 (.I(GND_net), .O(sensor_id[3]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_2 (.I(GND_net), .O(sensor_id[2]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_1 (.I(GND_net), .O(sensor_id[1]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_pad_0 (.I(GND_net), .O(sensor_id[0]));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(13[29:38])
    OB sensor_id_valid_pad (.I(GND_net), .O(sensor_id_valid));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(14[29:44])
    IB clk_pad (.I(clk), .O(clk_c));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(9[29:32])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(10[29:34])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module iic_master
//

module iic_master (clk_c, \sda_out_r[25] , GND_net, VCC_net, \state_main[1] , 
            send_en, \config_step[0] , \reg_index[8] , n3738, n1686, 
            n2094, n1751, n1096, n3735) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    output \sda_out_r[25] ;
    input GND_net;
    input VCC_net;
    output \state_main[1] ;
    input send_en;
    input \config_step[0] ;
    input \reg_index[8] ;
    output n3738;
    input [3:0]n1686;
    output n2094;
    output n1751;
    output n1096;
    output n3735;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_ctrl.v(9[29:32])
    wire scl_x2 /* synthesis SET_AS_NETWORK=\iic_master_m0/scl_x2, is_clock=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(37[6:12])
    wire [25:0]sda_out_r_25__N_419;
    wire [9:0]clk_delay;   // g:/shita/crosslink/project/impl1/source/iic_master.v(36[12:21])
    
    wire n3510;
    wire [9:0]n35;
    wire [25:0]sda_en_r;   // g:/shita/crosslink/project/impl1/source/iic_master.v(31[22:30])
    wire [25:0]sda_en_r_25__N_445;
    
    wire n6, n3639, n4, n3605, scl_x2_enable_1, scl_x2_N_692, send_en_N_691, 
        n3608, n3609, n12, n3607, n3606;
    
    FD1S3AX sda_out_r_i9 (.D(sda_out_r_25__N_419[9]), .CK(clk_c), .Q(sda_out_r_25__N_419[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i9.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i1 (.D(n35[1]), .CK(clk_c), .CD(n3510), .Q(clk_delay[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i1.GSR = "DISABLED";
    FD1S3AX sda_out_r_i25 (.D(sda_out_r_25__N_419[25]), .CK(clk_c), .Q(\sda_out_r[25] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i25.GSR = "DISABLED";
    FD1S3AX sda_en_r_i25 (.D(sda_en_r_25__N_445[25]), .CK(clk_c), .Q(sda_en_r[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i25.GSR = "DISABLED";
    FD1S3AX sda_en_r_i24 (.D(sda_en_r_25__N_445[24]), .CK(clk_c), .Q(sda_en_r_25__N_445[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i24.GSR = "DISABLED";
    FD1S3AX sda_out_r_i8 (.D(sda_out_r_25__N_419[8]), .CK(clk_c), .Q(sda_out_r_25__N_419[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i8.GSR = "DISABLED";
    FD1S3AX sda_out_r_i24 (.D(sda_out_r_25__N_419[24]), .CK(clk_c), .Q(sda_out_r_25__N_419[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i24.GSR = "DISABLED";
    FD1S3AX sda_en_r_i23 (.D(sda_en_r_25__N_445[23]), .CK(clk_c), .Q(sda_en_r_25__N_445[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i23.GSR = "DISABLED";
    FD1S3AX sda_en_r_i22 (.D(sda_en_r_25__N_445[22]), .CK(clk_c), .Q(sda_en_r_25__N_445[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i22.GSR = "DISABLED";
    FD1S3AX sda_en_r_i21 (.D(sda_en_r_25__N_445[21]), .CK(clk_c), .Q(sda_en_r_25__N_445[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i21.GSR = "DISABLED";
    FD1S3AX sda_out_r_i23 (.D(sda_out_r_25__N_419[23]), .CK(clk_c), .Q(sda_out_r_25__N_419[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i23.GSR = "DISABLED";
    FD1S3AX sda_en_r_i20 (.D(sda_en_r_25__N_445[20]), .CK(clk_c), .Q(sda_en_r_25__N_445[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i20.GSR = "DISABLED";
    FD1S3AX sda_en_r_i19 (.D(sda_en_r_25__N_445[19]), .CK(clk_c), .Q(sda_en_r_25__N_445[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i19.GSR = "DISABLED";
    FD1S3AX sda_en_r_i18 (.D(sda_en_r_25__N_445[18]), .CK(clk_c), .Q(sda_en_r_25__N_445[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i18.GSR = "DISABLED";
    FD1S3AX sda_en_r_i17 (.D(sda_en_r_25__N_445[17]), .CK(clk_c), .Q(sda_en_r_25__N_445[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i17.GSR = "DISABLED";
    FD1S3AX sda_out_r_i7 (.D(sda_out_r_25__N_419[7]), .CK(clk_c), .Q(sda_out_r_25__N_419[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i7.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(clk_delay[9]), .B(clk_delay[7]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(36[12:21])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3AX sda_out_r_i22 (.D(sda_out_r_25__N_419[22]), .CK(clk_c), .Q(sda_out_r_25__N_419[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i22.GSR = "DISABLED";
    FD1S3AX sda_en_r_i16 (.D(sda_en_r_25__N_445[16]), .CK(clk_c), .Q(sda_en_r_25__N_445[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i16.GSR = "DISABLED";
    FD1S3AX sda_en_r_i15 (.D(sda_en_r_25__N_445[15]), .CK(clk_c), .Q(sda_en_r_25__N_445[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i15.GSR = "DISABLED";
    FD1S3AX sda_out_r_i21 (.D(sda_out_r_25__N_419[21]), .CK(clk_c), .Q(sda_out_r_25__N_419[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i21.GSR = "DISABLED";
    FD1S3AX sda_en_r_i14 (.D(sda_en_r_25__N_445[14]), .CK(clk_c), .Q(sda_en_r_25__N_445[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i14.GSR = "DISABLED";
    FD1S3AX sda_en_r_i13 (.D(sda_en_r_25__N_445[13]), .CK(clk_c), .Q(sda_en_r_25__N_445[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i13.GSR = "DISABLED";
    FD1S3AX sda_out_r_i6 (.D(sda_out_r_25__N_419[6]), .CK(clk_c), .Q(sda_out_r_25__N_419[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i6.GSR = "DISABLED";
    FD1S3AX sda_out_r_i20 (.D(sda_out_r_25__N_419[20]), .CK(clk_c), .Q(sda_out_r_25__N_419[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i20.GSR = "DISABLED";
    FD1S3AX sda_en_r_i12 (.D(sda_en_r_25__N_445[12]), .CK(clk_c), .Q(sda_en_r_25__N_445[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i12.GSR = "DISABLED";
    FD1S3AX sda_en_r_i11 (.D(sda_en_r_25__N_445[11]), .CK(clk_c), .Q(sda_en_r_25__N_445[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i11.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(n3639), .B(clk_delay[0]), .C(clk_delay[1]), .Z(n4)) /* synthesis lut_function=(A (B+(C))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(36[12:21])
    defparam i1_3_lut.init = 16'ha8a8;
    CCU2C clk_delay_992_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_delay[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3605), .S1(n35[0]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_1.INIT0 = 16'h0000;
    defparam clk_delay_992_add_4_1.INIT1 = 16'h555f;
    defparam clk_delay_992_add_4_1.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_1.INJECT1_1 = "NO";
    FD1S3AX sda_out_r_i19 (.D(sda_out_r_25__N_419[19]), .CK(clk_c), .Q(sda_out_r_25__N_419[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i19.GSR = "DISABLED";
    FD1S3AX sda_out_r_i18 (.D(sda_out_r_25__N_419[18]), .CK(clk_c), .Q(sda_out_r_25__N_419[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i18.GSR = "DISABLED";
    FD1S3AX sda_en_r_i10 (.D(sda_en_r_25__N_445[10]), .CK(clk_c), .Q(sda_en_r_25__N_445[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i10.GSR = "DISABLED";
    FD1S3AX sda_en_r_i9 (.D(sda_en_r_25__N_445[9]), .CK(clk_c), .Q(sda_en_r_25__N_445[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i9.GSR = "DISABLED";
    LUT4 equal_941_i6_1_lut_rep_21 (.A(\state_main[1] ), .Z(scl_x2_enable_1)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(65[21:36])
    defparam equal_941_i6_1_lut_rep_21.init = 16'h5555;
    FD1S3AX sda_out_r_i0 (.D(sda_out_r_25__N_419[0]), .CK(clk_c), .Q(sda_out_r_25__N_419[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i0.GSR = "DISABLED";
    FD1S3AX scl_x2_190 (.D(scl_x2_N_692), .CK(clk_c), .Q(scl_x2)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(39[8:58])
    defparam scl_x2_190.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i0 (.D(n35[0]), .CK(clk_c), .CD(n3510), .Q(clk_delay[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i0.GSR = "DISABLED";
    FD1S3AX sda_en_r_i0 (.D(VCC_net), .CK(clk_c), .Q(sda_en_r_25__N_445[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i0.GSR = "DISABLED";
    FD1S3AX sda_out_r_i17 (.D(sda_out_r_25__N_419[17]), .CK(clk_c), .Q(sda_out_r_25__N_419[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i17.GSR = "DISABLED";
    FD1S3AX sda_en_r_i8 (.D(sda_en_r_25__N_445[8]), .CK(clk_c), .Q(sda_en_r_25__N_445[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i8.GSR = "DISABLED";
    FD1S3AX sda_out_r_i5 (.D(sda_out_r_25__N_419[5]), .CK(clk_c), .Q(sda_out_r_25__N_419[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i5.GSR = "DISABLED";
    FD1S3AX sda_en_r_i7 (.D(sda_en_r_25__N_445[7]), .CK(clk_c), .Q(sda_en_r_25__N_445[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i7.GSR = "DISABLED";
    FD1P3AY sda_out_195 (.D(send_en_N_691), .SP(scl_x2_enable_1), .CK(scl_x2), 
            .Q(sda_out_r_25__N_419[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(66[8] 234[10])
    defparam sda_out_195.GSR = "DISABLED";
    FD1S3AX sda_out_r_i16 (.D(sda_out_r_25__N_419[16]), .CK(clk_c), .Q(sda_out_r_25__N_419[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i16.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i2 (.D(n35[2]), .CK(clk_c), .CD(n3510), .Q(clk_delay[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i2.GSR = "DISABLED";
    FD1S3AX sda_en_r_i6 (.D(sda_en_r_25__N_445[6]), .CK(clk_c), .Q(sda_en_r_25__N_445[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i6.GSR = "DISABLED";
    FD1S3AX sda_en_r_i5 (.D(sda_en_r_25__N_445[5]), .CK(clk_c), .Q(sda_en_r_25__N_445[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i5.GSR = "DISABLED";
    FD1S3AX sda_out_r_i15 (.D(sda_out_r_25__N_419[15]), .CK(clk_c), .Q(sda_out_r_25__N_419[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i15.GSR = "DISABLED";
    FD1S3AX sda_en_r_i4 (.D(sda_en_r_25__N_445[4]), .CK(clk_c), .Q(sda_en_r_25__N_445[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i4.GSR = "DISABLED";
    FD1S3AX sda_en_r_i3 (.D(sda_en_r_25__N_445[3]), .CK(clk_c), .Q(sda_en_r_25__N_445[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i3.GSR = "DISABLED";
    FD1S3AX sda_out_r_i4 (.D(sda_out_r_25__N_419[4]), .CK(clk_c), .Q(sda_out_r_25__N_419[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i4.GSR = "DISABLED";
    FD1S3AX sda_out_r_i14 (.D(sda_out_r_25__N_419[14]), .CK(clk_c), .Q(sda_out_r_25__N_419[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i14.GSR = "DISABLED";
    FD1S3AX sda_en_r_i2 (.D(sda_en_r_25__N_445[2]), .CK(clk_c), .Q(sda_en_r_25__N_445[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i2.GSR = "DISABLED";
    FD1S3AX sda_en_r_i1 (.D(sda_en_r_25__N_445[1]), .CK(clk_c), .Q(sda_en_r_25__N_445[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(42[8:63])
    defparam sda_en_r_i1.GSR = "DISABLED";
    FD1S3AX sda_out_r_i13 (.D(sda_out_r_25__N_419[13]), .CK(clk_c), .Q(sda_out_r_25__N_419[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i13.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i9 (.D(n35[9]), .CK(clk_c), .CD(n3510), .Q(clk_delay[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i9.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i8 (.D(n35[8]), .CK(clk_c), .CD(n3510), .Q(clk_delay[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i8.GSR = "DISABLED";
    FD1S3AX sda_out_r_i3 (.D(sda_out_r_25__N_419[3]), .CK(clk_c), .Q(sda_out_r_25__N_419[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i3.GSR = "DISABLED";
    FD1S3AX sda_out_r_i12 (.D(sda_out_r_25__N_419[12]), .CK(clk_c), .Q(sda_out_r_25__N_419[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i12.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i7 (.D(n35[7]), .CK(clk_c), .CD(n3510), .Q(clk_delay[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i7.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i6 (.D(n35[6]), .CK(clk_c), .CD(n3510), .Q(clk_delay[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i6.GSR = "DISABLED";
    FD1S3AX sda_out_r_i11 (.D(sda_out_r_25__N_419[11]), .CK(clk_c), .Q(sda_out_r_25__N_419[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i11.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i5 (.D(n35[5]), .CK(clk_c), .CD(n3510), .Q(clk_delay[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i5.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i4 (.D(n35[4]), .CK(clk_c), .CD(n3510), .Q(clk_delay[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i4.GSR = "DISABLED";
    FD1S3AX sda_out_r_i2 (.D(sda_out_r_25__N_419[2]), .CK(clk_c), .Q(sda_out_r_25__N_419[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i2.GSR = "DISABLED";
    FD1S3AX sda_out_r_i10 (.D(sda_out_r_25__N_419[10]), .CK(clk_c), .Q(sda_out_r_25__N_419[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i10.GSR = "DISABLED";
    FD1S3IX clk_delay_992__i3 (.D(n35[3]), .CK(clk_c), .CD(n3510), .Q(clk_delay[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992__i3.GSR = "DISABLED";
    FD1S3AX sda_out_r_i1 (.D(sda_out_r_25__N_419[1]), .CK(clk_c), .Q(sda_out_r_25__N_419[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(41[8:63])
    defparam sda_out_r_i1.GSR = "DISABLED";
    FD1P3AX state_main_i1 (.D(VCC_net), .SP(send_en), .CK(scl_x2), .Q(\state_main[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=5, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=427, LSE_RLINE=440 */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(66[8] 234[10])
    defparam state_main_i1.GSR = "DISABLED";
    LUT4 n3614_bdd_4_lut_4_lut (.A(\state_main[1] ), .B(\config_step[0] ), 
         .C(\reg_index[8] ), .D(send_en), .Z(n3738)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B (C)))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(65[21:36])
    defparam n3614_bdd_4_lut_4_lut.init = 16'h0703;
    LUT4 i1417_3_lut_3_lut (.A(\state_main[1] ), .B(n1686[2]), .C(n1686[1]), 
         .Z(n2094)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(65[21:36])
    defparam i1417_3_lut_3_lut.init = 16'hdcdc;
    CCU2C clk_delay_992_add_4_9 (.A0(clk_delay[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_delay[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3608), .COUT(n3609), .S0(n35[7]), .S1(n35[8]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_9.INIT0 = 16'haaa0;
    defparam clk_delay_992_add_4_9.INIT1 = 16'haaa0;
    defparam clk_delay_992_add_4_9.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_9.INJECT1_1 = "NO";
    LUT4 i1076_1_lut (.A(sda_en_r[25]), .Z(n1751)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(32[9:16])
    defparam i1076_1_lut.init = 16'h5555;
    LUT4 i6_4_lut (.A(clk_delay[2]), .B(n12), .C(clk_delay[7]), .D(n3639), 
         .Z(n3510)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i6_4_lut.init = 16'h4000;
    LUT4 i5_4_lut (.A(clk_delay[0]), .B(clk_delay[8]), .C(clk_delay[1]), 
         .D(clk_delay[9]), .Z(n12)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i5_4_lut.init = 16'h0010;
    LUT4 i3_4_lut (.A(clk_delay[6]), .B(clk_delay[5]), .C(clk_delay[3]), 
         .D(clk_delay[4]), .Z(n3639)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(36[12:21])
    defparam i3_4_lut.init = 16'h8000;
    LUT4 reduce_or_673_i1_3_lut_3_lut (.A(\state_main[1] ), .B(n1686[0]), 
         .C(n1686[3]), .Z(n1096)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(65[21:36])
    defparam reduce_or_673_i1_3_lut_3_lut.init = 16'hf4f4;
    LUT4 send_en_bdd_4_lut_4_lut (.A(\state_main[1] ), .B(n1686[3]), .C(n1686[0]), 
         .D(n1686[1]), .Z(n3735)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(65[21:36])
    defparam send_en_bdd_4_lut_4_lut.init = 16'hfdfc;
    CCU2C clk_delay_992_add_4_7 (.A0(clk_delay[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_delay[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3607), .COUT(n3608), .S0(n35[5]), .S1(n35[6]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_7.INIT0 = 16'haaa0;
    defparam clk_delay_992_add_4_7.INIT1 = 16'haaa0;
    defparam clk_delay_992_add_4_7.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_7.INJECT1_1 = "NO";
    LUT4 i1046_1_lut (.A(send_en), .Z(send_en_N_691)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(78[10] 82[8])
    defparam i1046_1_lut.init = 16'h5555;
    CCU2C clk_delay_992_add_4_5 (.A0(clk_delay[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_delay[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3606), .COUT(n3607), .S0(n35[3]), .S1(n35[4]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_5.INIT0 = 16'haaa0;
    defparam clk_delay_992_add_4_5.INIT1 = 16'haaa0;
    defparam clk_delay_992_add_4_5.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_5.INJECT1_1 = "NO";
    CCU2C clk_delay_992_add_4_3 (.A0(clk_delay[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_delay[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3605), .COUT(n3606), .S0(n35[1]), .S1(n35[2]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_3.INIT0 = 16'haaa0;
    defparam clk_delay_992_add_4_3.INIT1 = 16'haaa0;
    defparam clk_delay_992_add_4_3.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_3.INJECT1_1 = "NO";
    CCU2C clk_delay_992_add_4_11 (.A0(clk_delay[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3609), .S0(n35[9]));   // g:/shita/crosslink/project/impl1/source/iic_master.v(38[64:79])
    defparam clk_delay_992_add_4_11.INIT0 = 16'haaa0;
    defparam clk_delay_992_add_4_11.INIT1 = 16'h0000;
    defparam clk_delay_992_add_4_11.INJECT1_0 = "NO";
    defparam clk_delay_992_add_4_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_7 (.A(clk_delay[8]), .B(n6), .C(clk_delay[2]), .D(n4), 
         .Z(scl_x2_N_692)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // g:/shita/crosslink/project/impl1/source/iic_master.v(36[12:21])
    defparam i3_4_lut_adj_7.init = 16'hfeee;
    
endmodule
