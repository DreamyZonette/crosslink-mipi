// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Aug 12 18:20:14 2026
//
// Verilog Description of module mipi_3ch_top
//

module mipi_3ch_top (sys_clk, sys_rstn, led, uart_txd, uart_rxd, i2c_sclk_0, 
            i2c_sda_0, xshutdn_0, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0, csi_payload_en, csi_sp_en, csi_lp_en, csi_dt) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(5[8:20])
    input sys_clk;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    input sys_rstn;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(7[16:24])
    output [3:0]led;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    output uart_txd;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(10[23:31])
    input uart_rxd;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(11[23:31])
    output i2c_sclk_0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(13[23:33])
    inout i2c_sda_0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(14[23:32])
    output xshutdn_0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(15[23:32])
    inout mipi_rcp_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    inout mipi_rcn_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    inout mipi_rdp_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(19[22:32])
    inout mipi_rdn_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(20[22:32])
    output csi_payload_en;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(22[23:37])
    output csi_sp_en;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(23[23:32])
    output csi_lp_en;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(24[23:32])
    output [5:0]csi_dt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    
    wire GND_net, VCC_net, sys_rstn_c, led_c_3, led_c_2, led_c_1, 
        uart_txd_c, uart_rxd_c, i2c_sclk_0_c, xshutdn_0_c, csi_payload_en_c, 
        csi_sp_en_c, csi_lp_en_c, csi_dt_c_5, csi_dt_c_4, csi_dt_c_3, 
        csi_dt_c_2;
    wire [15:0]sensor_id;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(31[13:22])
    wire [7:0]reg_4a00_val;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(36[13:25])
    
    wire rst_n_pulse;
    wire [25:0]rst_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(40[13:20])
    wire [23:0]blink_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(48[12:21])
    
    wire xshutdn_r, cam_ready;
    wire [19:0]xshutdn_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(70[12:23])
    wire [19:0]cam_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(71[12:19])
    wire [5:0]csi_dt_parser;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(138[25:38])
    wire [15:0]csi_wc;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(140[25:31])
    wire [1:0]reset_byte_fr_sync;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(147[25:43])
    wire [1:0]reset_byte_sync;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(148[25:40])
    wire [31:0]csi_byte_clk_count;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(153[12:30])
    wire [31:0]csi_hs_sync_count;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(154[12:29])
    wire [31:0]csi_long_packet_count;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(155[12:33])
    wire [31:0]csi_payload_byte_count;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(156[12:34])
    
    wire dphy_hs_sync_d, csi_lp_en_d;
    wire [5:0]csi_last_dt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(159[12:23])
    wire [15:0]csi_last_wc;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(160[12:23])
    wire [31:0]csi_byte_clk_count_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(189[12:35])
    wire [31:0]csi_byte_clk_count_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(189[37:59])
    wire [31:0]csi_hs_sync_count_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(190[12:34])
    wire [31:0]csi_hs_sync_count_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(190[36:57])
    wire [31:0]csi_long_packet_count_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(191[12:38])
    wire [31:0]csi_long_packet_count_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(191[40:65])
    wire [31:0]csi_payload_byte_count_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(192[12:39])
    wire [31:0]csi_payload_byte_count_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(192[41:67])
    wire [5:0]csi_last_dt_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(193[12:28])
    wire [5:0]csi_last_dt_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(193[30:45])
    wire [15:0]csi_last_wc_meta;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(194[12:28])
    wire [15:0]csi_last_wc_sys;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(194[30:45])
    wire [7:0]tx_data;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(302[13:20])
    wire [7:0]rx_data;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(303[13:20])
    
    wire rx_flag, uart_busy, dphy_hs_d_en_s1, dphy_hs_d_en_s2, dphy_term_clk_en_s1, 
        dphy_term_clk_en_s2;
    wire [1:0]dphy_lp_state_d_s1;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(312[12:30])
    wire [1:0]dphy_lp_state_d_s2;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(312[32:50])
    
    wire n140, n13804, led_3__N_1, n13902, n13853, n13852, n13851, 
        n17806, n135, reset_byte_fr_sync_1__N_129, n17574, n13809, 
        csi_hs_sync_count_31__N_349, n13901, n13900, csi_long_packet_count_31__N_384, 
        n13808, n6616, n17566, n13899, n16371, n164, rst_cnt_25__N_445, 
        n1191, n1192, n1193, n1194, n1195, n1196, n1197, n1198, 
        n1199, n1200, n1201, n1202, n1203, n1204, n1205, n1206, 
        n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, 
        n1215, n1216, rst_n_pulse_N_449, n13898, n13897, n13807, 
        n13896, n13895, n146, n142, flag_done;
    wire [1:0]tx_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    wire [2:0]tx_phase;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    wire [3:0]field_index;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    wire [3:0]digits_left;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(63[12:23])
    
    wire n13894, n13893, n143, n144, n145, n13805, n17530, n13892, 
        n17528, n15576;
    wire [3:0]digits_left_3__N_1321;
    
    wire n19471, n13891;
    wire [2:0]tx_phase_2__N_1173;
    
    wire n165, n164_adj_1537, n163, n162, n161, n160, n159, n158, 
        n157, n156, n155, n154, n153, n152, n151, n150, n149, 
        n148, n147, n146_adj_1538, n145_adj_1539, n144_adj_1540, n143_adj_1541, 
        n13801, n17520, work_en_N_1392, n13890, n142_adj_1542, n141, 
        n140_adj_1543, n139, n138, n137, n136, n135_adj_1544, n134, 
        n13889, n13888, n13887, n13803, n157_adj_1545;
    wire [9:0]current_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    wire [9:0]next_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire sda_transmit, rd_first_done, sda_transmit_en_N_1061, n17502, 
        n13886, n13885, n125, n13884, n13883, n165_adj_1546, n164_adj_1547, 
        n163_adj_1548, n162_adj_1549, n161_adj_1550, n160_adj_1551, 
        n159_adj_1552, n159_adj_1553, n160_adj_1554, n161_adj_1555, 
        n162_adj_1556, n13946, n13882, n13881, n13945, n163_adj_1557, 
        n17488, n13944, n13802, n17474, n17468, n137_adj_1558, n138_adj_1559, 
        n139_adj_1560, n140_adj_1561, n141_adj_1562, n142_adj_1563, 
        n17458;
    wire [23:0]reg_cfg;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(45[16:23])
    wire [7:0]reg_index;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(46[16:25])
    
    wire sys_rst_n_N_472, n143_adj_1564, n19486, n18123, n8029, n8027, 
        n8025, n8023, n109, n110, n111, n112, n113, n114, n115, 
        n116, n117, n118, n119, n120, n121, n122, n123, n124, 
        n102, n103, n104, n105, n106, n107, n108, n158_adj_1565, 
        n157_adj_1566, n156_adj_1567, n155_adj_1568, n154_adj_1569, 
        n153_adj_1570, n152_adj_1571, n151_adj_1572, n19522, n139_adj_1573, 
        n3575, n13943, n144_adj_1574, n145_adj_1575, n146_adj_1576, 
        n147_adj_1577, n148_adj_1578, n149_adj_1579, n150_adj_1580, 
        n151_adj_1581, n129, n130, n131, n19521, n132, n133, n134_adj_1582, 
        n135_adj_1583, n136_adj_1584, n13880, n8021, n13879, n7949, 
        n158_adj_1585, n146_adj_1586, n152_adj_1587, sys_clk_c_enable_143, 
        n148_adj_1588, n8019, n147_adj_1589, n8017, n8015, n8013, 
        n8011, n8009, n8007, n8005, n8003, n8001, n13806, n7999, 
        n13878, n128, n13942, n13877, n13876, n7997, n13941, n105_adj_1590, 
        n104_adj_1591, n103_adj_1592, n102_adj_1593, n101, n100, n99, 
        n98, n97, n96, n95, n94, n93, n92, n91, n90, n89, 
        n88, n87, n86, n13875, n13940, n16268, n13874, n13939, 
        n13938, n13937, n13873, n13936, n105_adj_1594, n104_adj_1595, 
        n103_adj_1596, n102_adj_1597, n101_adj_1598, n100_adj_1599, 
        n99_adj_1600, n98_adj_1601, n97_adj_1602, n96_adj_1603, n95_adj_1604, 
        n94_adj_1605, n93_adj_1606, n92_adj_1607, n91_adj_1608, n90_adj_1609, 
        n89_adj_1610, n88_adj_1611, n87_adj_1612, n86_adj_1613, n13935, 
        n13934, n13933, n165_adj_1614, n164_adj_1615, n163_adj_1616, 
        n162_adj_1617, n161_adj_1618, n160_adj_1619, n159_adj_1620, 
        n158_adj_1621, n157_adj_1622, n156_adj_1623, n155_adj_1624, 
        n154_adj_1625, n153_adj_1626, n152_adj_1627, n151_adj_1628, 
        n150_adj_1629, n149_adj_1630, n148_adj_1631, n147_adj_1632, 
        n146_adj_1633, n145_adj_1634, n144_adj_1635, n143_adj_1636, 
        n142_adj_1637, n141_adj_1638, n140_adj_1639, n139_adj_1640, 
        n138_adj_1641, n137_adj_1642, n136_adj_1643, n135_adj_1644, 
        n134_adj_1645, n17388, n13872, n17384, n13871, n7995, n7993, 
        n13870, n7991, n17380, n13869, n7989, n13932, n13868, 
        n7987, n13931, n13930, n13929, n7985, n16261, n17356, 
        n7983, n13928, n47, n13867, n13927, n7981, n13926, n17702, 
        n16549, n141_adj_1646, n136_adj_1647, n144_adj_1648, n138_adj_1649, 
        n13866, n17334, n13865, n13864, n13863, sys_clk_c_enable_157, 
        n139_adj_1650, n17328, n141_adj_1651, n17326, n19514, n13925, 
        n6050, n18062, n13924, n140_adj_1652, n18061, n13923, n13799, 
        n13922, n13921, n13920, n18057, n18056, n13919, n13862, 
        n13811, n16501, n13918, n13917, sys_clk_c_enable_187, n13861, 
        n19465, n13916, n16486, sys_clk_c_enable_229, n13915, n19464, 
        n19463, n13914, n13860, n11, n19461, n17927, n13913, n17925, 
        n13859, n17921, n17728, n13912, n13858, n13911, n13910, 
        n19455, n13909, n134_adj_1653, n19, n13908, n17915, n17913, 
        n13907, n13906, n4690, n4696, n13857, n165_adj_1654, n13905, 
        n13856, n13855, n13800, n137_adj_1655, n135_adj_1656, n150_adj_1657, 
        n153_adj_1658, n155_adj_1659, n136_adj_1660, i2c_sda_0_out, 
        n4807, n19199, n13810, n154_adj_1661, n138_adj_1662, n17899, 
        n156_adj_1663, n149_adj_1664, n151_adj_1665, n134_adj_1666, 
        n145_adj_1667, n17706, n13904, n17895, n16226, n4, sys_clk_c_enable_150, 
        n17804, n19452, n13903, n13854, n150_adj_1668, n149_adj_1669, 
        n148_adj_1670, n147_adj_1671, n143_adj_1672, n142_adj_1673, 
        n137_adj_1674, n17716, n17724, n17883, n17881, n17802, n19467, 
        n17873, n17867;
    
    VHI i2 (.Z(VCC_net));
    uart_tx u_uart_tx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .uart_busy(uart_busy), .\tx_data[4] (tx_data[4]), .\tx_data[2] (tx_data[2]), 
            .\tx_data[3] (tx_data[3]), .uart_txd_c(uart_txd_c), .tx_phase({tx_phase}), 
            .n16226(n16226), .tx_state({tx_state}), .n16371(n16371), .n15576(n15576), 
            .n19471(n19471), .n19464(n19464), .\tx_data[5] (tx_data[5]), 
            .\tx_data[6] (tx_data[6]), .\tx_data[0] (tx_data[0]), .\tx_data[1] (tx_data[1]), 
            .n19486(n19486), .n19522(n19522), .\tx_phase_2__N_1173[0] (tx_phase_2__N_1173[0]), 
            .sys_clk_c_enable_143(sys_clk_c_enable_143), .GND_net(GND_net), 
            .VCC_net(VCC_net), .n4(n4), .\digits_left[2] (digits_left[2]), 
            .\digits_left_3__N_1321[2] (digits_left_3__N_1321[2]), .n16501(n16501), 
            .\digits_left[0] (digits_left[0]), .\digits_left[1] (digits_left[1]), 
            .n19199(n19199), .work_en_N_1392(work_en_N_1392)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(355[3] 362[2])
    FD1S3DX xshutdn_out_reg_107 (.D(xshutdn_r), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(xshutdn_0_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam xshutdn_out_reg_107.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i19 (.D(n86_adj_1613), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i19.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i18 (.D(n87_adj_1612), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i18.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i17 (.D(n88_adj_1611), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i17.GSR = "ENABLED";
    FD1S3DX dphy_hs_sync_d_115 (.D(csi_lp_en_c), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(dphy_hs_sync_d));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam dphy_hs_sync_d_115.GSR = "ENABLED";
    FD1S3DX csi_lp_en_d_116 (.D(csi_dt_c_5), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(csi_lp_en_d));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_lp_en_d_116.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i0 (.D(csi_byte_clk_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i0 (.D(csi_byte_clk_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i0 (.D(csi_hs_sync_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i0 (.D(csi_hs_sync_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i0 (.D(csi_long_packet_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i0 (.D(csi_long_packet_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i0 (.D(csi_payload_byte_count[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i0 (.D(csi_payload_byte_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i0 (.D(csi_last_dt[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i0 (.D(csi_last_dt_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i0 (.D(csi_last_wc[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i0 (.D(csi_last_wc_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_fr_sync_i0 (.D(VCC_net), .CK(csi_clk_byte), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_fr_sync[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(227[9:61])
    defparam reset_byte_fr_sync_i0.GSR = "ENABLED";
    FD1S3DX dphy_lp_state_d_s1_i0 (.D(csi_dt_c_2), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(dphy_lp_state_d_s1[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s1_i0.GSR = "ENABLED";
    FD1S3DX dphy_hs_d_en_s1_133 (.D(csi_sp_en_c), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(dphy_hs_d_en_s1));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_hs_d_en_s1_133.GSR = "ENABLED";
    FD1S3DX dphy_hs_d_en_s2_134 (.D(dphy_hs_d_en_s1), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(dphy_hs_d_en_s2));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_hs_d_en_s2_134.GSR = "ENABLED";
    FD1S3DX dphy_term_clk_en_s1_135 (.D(csi_payload_en_c), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(dphy_term_clk_en_s1));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_term_clk_en_s1_135.GSR = "ENABLED";
    FD1S3DX dphy_term_clk_en_s2_136 (.D(dphy_term_clk_en_s1), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(dphy_term_clk_en_s2));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_term_clk_en_s2_136.GSR = "ENABLED";
    FD1S3DX dphy_lp_state_d_s2_i0 (.D(dphy_lp_state_d_s1[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(dphy_lp_state_d_s2[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s2_i0.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i16 (.D(n89_adj_1610), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i16.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i15 (.D(n90_adj_1609), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i15.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i14 (.D(n91_adj_1608), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i14.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i13 (.D(n92_adj_1607), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i13.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i12 (.D(n93_adj_1606), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i12.GSR = "ENABLED";
    FD1S3BX rst_n_pulse_141 (.D(n6050), .CK(sys_clk_c), .PD(led_c_2), 
            .Q(rst_n_pulse));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_n_pulse_141.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i11 (.D(n94_adj_1605), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i11.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_0 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[0])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFC3181F190A800200200E30000001400146C38E9B8301 */ ;
    FD1P3DX cam_cnt_2098__i10 (.D(n95_adj_1604), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i10.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i9 (.D(n96_adj_1603), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i9.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i8 (.D(n97_adj_1602), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i8.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_27 (.A0(csi_byte_clk_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13895), .COUT(n13896), .S0(n140_adj_1639), 
          .S1(n139_adj_1640));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_27.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_27.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_27.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_27.INJECT1_1 = "NO";
    FD1P3DX cam_cnt_2098__i7 (.D(n98_adj_1601), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i7.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i6 (.D(n99_adj_1600), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i6.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i5 (.D(n100_adj_1599), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i5.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i4 (.D(n101_adj_1598), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i4.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_10 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[10])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF83087878583C3C782430BC3C3C0610C3C3C18F41C190 */ ;
    FD1P3DX cam_cnt_2098__i3 (.D(n102_adj_1597), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i3.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i2 (.D(n103_adj_1596), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i2.GSR = "ENABLED";
    FD1P3DX cam_cnt_2098__i1 (.D(n104_adj_1595), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i1.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_9 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[9])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFAA866666463330663000F333333180F333304C0D3119 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_12 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[12])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFB00F8000003FC00020000000000003FC00007F8003E0 */ ;
    FD1P3DX xshutdn_cnt_2097__i19 (.D(n86), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i19.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_25 (.A0(csi_byte_clk_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13894), .COUT(n13895), .S0(n142_adj_1637), 
          .S1(n141_adj_1638));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_25.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_25.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_25.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_25.INJECT1_1 = "NO";
    LUT4 i724_4_lut (.A(n19514), .B(n19464), .C(tx_state[1]), .D(n19463), 
         .Z(n3575)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    defparam i724_4_lut.init = 16'hcac0;
    FD1P3DX xshutdn_cnt_2097__i18 (.D(n87), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i18.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i17 (.D(n88), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i17.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i16 (.D(n89), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i16.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i15 (.D(n90), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i15.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i14 (.D(n91), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i14.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i13 (.D(n92), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i13.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i12 (.D(n93), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i12.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_23 (.A0(csi_byte_clk_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13893), .COUT(n13894), .S0(n144_adj_1635), 
          .S1(n143_adj_1636));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_23.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_23.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_23.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_23.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_2097__i11 (.D(n94), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i11.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i10 (.D(n95), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i10.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i9 (.D(n96), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i9.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i8 (.D(n97), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i8.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i7 (.D(n98), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i7.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i6 (.D(n99), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i6.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i5 (.D(n100), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i5.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i4 (.D(n101), .SP(sys_clk_c_enable_150), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i4.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i3 (.D(n102_adj_1593), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i3.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i2 (.D(n103_adj_1592), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i2.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2097__i1 (.D(n104_adj_1591), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i31 (.D(n134_adj_1645), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i30 (.D(n135_adj_1644), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i29 (.D(n136_adj_1643), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i28 (.D(n137_adj_1642), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i27 (.D(n138_adj_1641), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i26 (.D(n139_adj_1640), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i25 (.D(n140_adj_1639), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i25.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i15 (.D(csi_wc[15]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i15.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i14 (.D(csi_wc[14]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i14.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i13 (.D(csi_wc[13]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i13.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i12 (.D(csi_wc[12]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i12.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i11 (.D(csi_wc[11]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i11.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i10 (.D(csi_wc[10]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i10.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i9 (.D(csi_wc[9]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i9.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i8 (.D(csi_wc[8]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i8.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i7 (.D(csi_wc[7]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i7.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i6 (.D(csi_wc[6]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i6.GSR = "ENABLED";
    OB csi_sp_en_pad (.I(csi_sp_en_c), .O(csi_sp_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(23[23:32])
    FD1P3DX csi_last_wc_i0_i5 (.D(csi_wc[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i5.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i4 (.D(csi_wc[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i3 (.D(csi_wc[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i2 (.D(csi_wc[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i1 (.D(csi_wc[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i1.GSR = "ENABLED";
    CCU2C add_94_19 (.A0(rst_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13807), .COUT(n13808), .S0(n1199), .S1(n1198));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_19.INIT0 = 16'haaaa;
    defparam add_94_19.INIT1 = 16'haaaa;
    defparam add_94_19.INJECT1_0 = "NO";
    defparam add_94_19.INJECT1_1 = "NO";
    FD1P3DX csi_last_dt_i0_i0 (.D(csi_dt_parser[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i0.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_19 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[19])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC00000400001FFFE00FFFFFFC01FFFFFFC00000000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_13 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[13])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF80000000000000003800000000001C00000000000200 */ ;
    CCU2C csi_byte_clk_count_2099_add_4_21 (.A0(csi_byte_clk_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13892), .COUT(n13893), .S0(n146_adj_1633), 
          .S1(n145_adj_1634));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_21.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_21.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_21.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_21.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2099__i24 (.D(n141_adj_1638), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i24.GSR = "ENABLED";
    LUT4 i6444_2_lut (.A(n1209), .B(rst_cnt_25__N_445), .Z(n8017)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6444_2_lut.init = 16'h2222;
    LUT4 i6443_2_lut (.A(n1208), .B(rst_cnt_25__N_445), .Z(n8015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6443_2_lut.init = 16'h2222;
    FD1S3DX blink_cnt_2096__i23 (.D(n128), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i23.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_7 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[7])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A080E00000000008109020000000000A20000800000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_6 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[6])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A040E02000000001809000000200000A20106900000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_5 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[5])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF80180E00C00002002009030000004002000036C00880 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_4 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[4])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A140E00800000011808110000084400220107100B00 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_3 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[3])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8F10E301C0000200200A110000000400028000000A40 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_2 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[2])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFB3114F43A00002002008120000001228C46B8E901900 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_1 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[1])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF831C1185E0000200000E30000001100393827EE04480 */ ;
    FD1S3DX blink_cnt_2096__i22 (.D(n129), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i22.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i21 (.D(n130), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i21.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i20 (.D(n131), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i20.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i19 (.D(n132), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i18 (.D(n133), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i18.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i17 (.D(n134_adj_1582), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i17.GSR = "ENABLED";
    LUT4 i6442_2_lut (.A(n1207), .B(rst_cnt_25__N_445), .Z(n8013)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6442_2_lut.init = 16'h2222;
    FD1S3DX blink_cnt_2096__i16 (.D(n135_adj_1583), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i16.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i15 (.D(n136_adj_1584), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i15.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i14 (.D(n137_adj_1558), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i14.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i13 (.D(n138_adj_1559), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i13.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i12 (.D(n139_adj_1560), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i12.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i11 (.D(n140_adj_1561), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i11.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i10 (.D(n141_adj_1562), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i10.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i9 (.D(n142_adj_1563), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i23 (.D(n142_adj_1637), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i23.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i8 (.D(n143_adj_1564), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i8.GSR = "ENABLED";
    LUT4 i6441_2_lut (.A(n1206), .B(rst_cnt_25__N_445), .Z(n8011)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6441_2_lut.init = 16'h2222;
    LUT4 i6438_2_lut (.A(n1205), .B(rst_cnt_25__N_445), .Z(n8009)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6438_2_lut.init = 16'h2222;
    FD1S3DX blink_cnt_2096__i7 (.D(n144_adj_1574), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i7.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i6 (.D(n145_adj_1575), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i6.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i5 (.D(n146_adj_1576), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i5.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i4 (.D(n147_adj_1577), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i4.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i3 (.D(n148_adj_1578), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i3.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i2 (.D(n149_adj_1579), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i2.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i1 (.D(n150_adj_1580), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i1.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_19 (.A0(csi_byte_clk_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13891), .COUT(n13892), .S0(n148_adj_1631), 
          .S1(n147_adj_1632));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_19.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_19.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_19.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_19.INJECT1_1 = "NO";
    CCU2C add_94_17 (.A0(rst_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13806), .COUT(n13807), .S0(n1201), .S1(n1200));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_17.INIT0 = 16'haaaa;
    defparam add_94_17.INIT1 = 16'haaaa;
    defparam add_94_17.INJECT1_0 = "NO";
    defparam add_94_17.INJECT1_1 = "NO";
    LUT4 i14384_3_lut (.A(xshutdn_r), .B(n16549), .C(cam_ready), .Z(sys_clk_c_enable_157)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i14384_3_lut.init = 16'h0808;
    FD1P3DX csi_last_dt_i0_i5 (.D(csi_dt_parser[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i5.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i4 (.D(csi_dt_parser[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i3 (.D(csi_dt_parser[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i2 (.D(csi_dt_parser[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i1 (.D(csi_dt_parser[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i1.GSR = "ENABLED";
    FD1S3DX blink_cnt_2096__i0 (.D(n151_adj_1581), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n17388), .B(n17921), .C(n17881), .D(cam_cnt[18]), 
         .Z(n16549)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hbfff;
    OB csi_lp_en_pad (.I(csi_lp_en_c), .O(csi_lp_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(24[23:32])
    FD1P3DX rst_cnt__i0 (.D(n7949), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_232 (.A(cam_cnt[10]), .B(n17384), .C(n17380), .D(cam_cnt[6]), 
         .Z(n17388)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(93[17:39])
    defparam i1_4_lut_adj_232.init = 16'hfffe;
    FD1P3DX rst_cnt__i1 (.D(n8029), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i1.GSR = "ENABLED";
    FD1P3DX rst_cnt__i2 (.D(n8027), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i2.GSR = "ENABLED";
    FD1P3DX rst_cnt__i3 (.D(n8025), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i3.GSR = "ENABLED";
    FD1P3DX rst_cnt__i4 (.D(n8023), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i4.GSR = "ENABLED";
    FD1P3DX rst_cnt__i5 (.D(n8021), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i5.GSR = "ENABLED";
    FD1P3DX rst_cnt__i6 (.D(n8019), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i7 (.D(n8017), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i7.GSR = "ENABLED";
    FD1P3DX rst_cnt__i8 (.D(n8015), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i8.GSR = "ENABLED";
    FD1P3DX rst_cnt__i9 (.D(n8013), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i9.GSR = "ENABLED";
    FD1P3DX rst_cnt__i10 (.D(n8011), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i10.GSR = "ENABLED";
    FD1P3DX rst_cnt__i11 (.D(n8009), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i11.GSR = "ENABLED";
    LUT4 i13906_4_lut (.A(cam_cnt[1]), .B(n17883), .C(cam_cnt[9]), .D(cam_cnt[3]), 
         .Z(n17921)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13906_4_lut.init = 16'h8000;
    ROM256X1 reg_index_7__I_0_148_Mux_18 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[18])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF800FFFFFA00001FF8180FFFFFFFFE0000003FFF00000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_17 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[17])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF800FFFFFA00001FFC1FC0000000000000003FFF00000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_16 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[16])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFC02FFFFFBF8001FF807CFFFFFFFFE000000380080003 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_15 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[15])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF800FFFFF9FC000000000FFC00000000000038007FC00 */ ;
    FD1P3DX csi_last_wc_i0_i0 (.D(csi_wc[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i0.GSR = "ENABLED";
    OB csi_payload_en_pad (.I(csi_payload_en_c), .O(csi_payload_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(22[23:37])
    OB xshutdn_0_pad (.I(xshutdn_0_c), .O(xshutdn_0));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(15[23:32])
    OB i2c_sclk_0_pad (.I(i2c_sclk_0_c), .O(i2c_sclk_0));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(13[23:33])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(10[23:31])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    LUT4 i13867_4_lut (.A(cam_cnt[14]), .B(cam_cnt[4]), .C(cam_cnt[19]), 
         .D(cam_cnt[0]), .Z(n17881)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13867_4_lut.init = 16'h8000;
    FD1P3DX rst_cnt__i12 (.D(n8007), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i12.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_17 (.A0(csi_byte_clk_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13890), .COUT(n13891), .S0(n150_adj_1629), 
          .S1(n149_adj_1630));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_17.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_17.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_17.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_15 (.A0(csi_byte_clk_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13889), .COUT(n13890), .S0(n152_adj_1627), 
          .S1(n151_adj_1628));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_15.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_15.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_15.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_233 (.A(cam_cnt[8]), .B(cam_cnt[12]), .C(cam_cnt[15]), 
         .D(cam_cnt[7]), .Z(n17384)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(93[17:39])
    defparam i1_4_lut_adj_233.init = 16'hfffe;
    FD1P3DX xshutdn_cnt_2097__i0 (.D(n105_adj_1590), .SP(sys_clk_c_enable_150), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097__i0.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_13 (.A0(csi_byte_clk_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13888), .COUT(n13889), .S0(n154_adj_1625), 
          .S1(n153_adj_1626));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_13.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_13.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_13.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_11 (.A0(csi_byte_clk_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13887), .COUT(n13888), .S0(n156_adj_1623), 
          .S1(n155_adj_1624));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_11.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_11.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_11.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_9 (.A0(csi_byte_clk_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13886), .COUT(n13887), .S0(n158_adj_1621), 
          .S1(n157_adj_1622));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_9.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_9.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_9.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_33 (.A0(csi_payload_byte_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13946), .S0(n134_adj_1653));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_33.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_33.INIT1 = 16'h0000;
    defparam csi_payload_byte_count_2102_add_4_33.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_31 (.A0(csi_payload_byte_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13945), .COUT(n13946), 
          .S0(n136_adj_1660), .S1(n135_adj_1656));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_31.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_31.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_31.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_31.INJECT1_1 = "NO";
    FD1P3DX cam_cnt_2098__i0 (.D(n105_adj_1594), .SP(sys_clk_c_enable_157), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098__i0.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_7 (.A0(csi_byte_clk_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13885), .COUT(n13886), .S0(n160_adj_1619), 
          .S1(n159_adj_1620));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_7.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_7.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_7.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_5 (.A0(csi_byte_clk_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13884), .COUT(n13885), .S0(n162_adj_1617), 
          .S1(n161_adj_1618));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_5.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_5.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_5.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_5.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2099__i0 (.D(n165_adj_1614), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i0.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_29 (.A0(csi_payload_byte_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13944), .COUT(n13945), 
          .S0(n138_adj_1662), .S1(n137_adj_1655));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_29.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_29.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_29.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_27 (.A0(csi_payload_byte_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13943), .COUT(n13944), 
          .S0(n140), .S1(n139_adj_1650));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_27.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_27.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_27.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_27.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_25 (.A0(csi_payload_byte_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13942), .COUT(n13943), 
          .S0(n142), .S1(n141_adj_1651));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_25.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_25.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_25.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_23 (.A0(csi_payload_byte_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13941), .COUT(n13942), 
          .S0(n144), .S1(n143));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_23.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_23.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_23.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_23.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2099__i22 (.D(n143_adj_1636), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i22.GSR = "ENABLED";
    FD1P3DX rst_cnt__i13 (.D(n8005), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i13.GSR = "ENABLED";
    FD1S3DX dphy_lp_state_d_s2_i1 (.D(dphy_lp_state_d_s1[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(dphy_lp_state_d_s2[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s2_i1.GSR = "ENABLED";
    FD1S3DX dphy_lp_state_d_s1_i1 (.D(csi_dt_c_3), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(dphy_lp_state_d_s1[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s1_i1.GSR = "ENABLED";
    BB i2c_sda_0_pad (.I(sda_transmit), .T(sda_transmit_en_N_1061), .B(i2c_sda_0), 
       .O(i2c_sda_0_out));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(44[17:20])
    CCU2C csi_byte_clk_count_2099_add_4_3 (.A0(csi_byte_clk_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13883), .COUT(n13884), .S0(n164_adj_1615), 
          .S1(n163_adj_1616));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_3.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_3.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_3.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_3.INJECT1_1 = "NO";
    FD1S3DX reset_byte_sync_i1 (.D(reset_byte_fr_sync[0]), .CK(csi_clk_byte), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_sync[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(234[9:55])
    defparam reset_byte_sync_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i15 (.D(csi_last_wc_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i14 (.D(csi_last_wc_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i13 (.D(csi_last_wc_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i13.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_21 (.A0(csi_payload_byte_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13940), .COUT(n13941), 
          .S0(n146_adj_1586), .S1(n145));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_21.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_21.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_21.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_21.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_2100__i0 (.D(n165), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i12 (.D(csi_last_wc_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i12.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_19 (.A0(csi_payload_byte_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13939), .COUT(n13940), 
          .S0(n148_adj_1588), .S1(n147_adj_1589));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_19.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_19.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_19.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_19.INJECT1_1 = "NO";
    FD1S3DX csi_last_wc_sys_i11 (.D(csi_last_wc_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i10 (.D(csi_last_wc_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i9 (.D(csi_last_wc_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i9.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i0 (.D(n165_adj_1546), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i0.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i21 (.D(n144_adj_1635), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i20 (.D(n145_adj_1634), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i20.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i8 (.D(csi_last_wc_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i7 (.D(csi_last_wc_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i6 (.D(csi_last_wc_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i6.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cam_cnt[13]), .B(cam_cnt[11]), .Z(n17380)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(93[17:39])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i13869_4_lut (.A(cam_cnt[2]), .B(cam_cnt[5]), .C(cam_cnt[17]), 
         .D(cam_cnt[16]), .Z(n17883)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13869_4_lut.init = 16'h8000;
    FD1S3DX csi_last_wc_sys_i5 (.D(csi_last_wc_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i4 (.D(csi_last_wc_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i3 (.D(csi_last_wc_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i2 (.D(csi_last_wc_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i0 (.D(n165_adj_1654), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i1 (.D(csi_last_wc_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i15 (.D(csi_last_wc[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i14 (.D(csi_last_wc[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i14.GSR = "ENABLED";
    LUT4 reset_byte_fr_sync_1__I_0_1_lut (.A(reset_byte_sync[1]), .Z(reset_byte_fr_sync_1__N_129)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(163[9:25])
    defparam reset_byte_fr_sync_1__I_0_1_lut.init = 16'h5555;
    FD1S3DX csi_last_wc_meta_i13 (.D(csi_last_wc[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i12 (.D(csi_last_wc[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i19 (.D(n146_adj_1633), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i19.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i11 (.D(csi_last_wc[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i11.GSR = "ENABLED";
    FD1P3DX rst_cnt__i14 (.D(n8003), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i10 (.D(csi_last_wc[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i10.GSR = "ENABLED";
    FD1P3DX rst_cnt__i15 (.D(n8001), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i9 (.D(csi_last_wc[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i8 (.D(csi_last_wc[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i18 (.D(n147_adj_1632), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i18.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2099_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_byte_clk_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13883), .S1(n165_adj_1614));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_1.INIT0 = 16'h0000;
    defparam csi_byte_clk_count_2099_add_4_1.INIT1 = 16'h555f;
    defparam csi_byte_clk_count_2099_add_4_1.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_1.INJECT1_1 = "NO";
    FD1S3DX csi_last_wc_meta_i7 (.D(csi_last_wc[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i6 (.D(csi_last_wc[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i17 (.D(n148_adj_1631), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i16 (.D(n149_adj_1630), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i15 (.D(n150_adj_1629), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i5 (.D(csi_last_wc[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i4 (.D(csi_last_wc[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i3 (.D(csi_last_wc[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i2 (.D(csi_last_wc[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i1 (.D(csi_last_wc[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i5 (.D(csi_last_dt_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i4 (.D(csi_last_dt_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i14 (.D(n151_adj_1628), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i14.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i3 (.D(csi_last_dt_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i2 (.D(csi_last_dt_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i1 (.D(csi_last_dt_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i5 (.D(csi_last_dt[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i4 (.D(csi_last_dt[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i13 (.D(n152_adj_1627), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i13.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i3 (.D(csi_last_dt[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i2 (.D(csi_last_dt[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i1 (.D(csi_last_dt[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i31 (.D(csi_payload_byte_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i30 (.D(csi_payload_byte_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i29 (.D(csi_payload_byte_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i28 (.D(csi_payload_byte_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i12 (.D(n153_adj_1626), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i27 (.D(csi_payload_byte_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i11 (.D(n154_adj_1625), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i10 (.D(n155_adj_1624), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i9 (.D(n156_adj_1623), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i26 (.D(csi_payload_byte_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i26.GSR = "ENABLED";
    CCU2C add_94_15 (.A0(rst_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13805), .COUT(n13806), .S0(n1203), .S1(n1202));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_15.INIT0 = 16'haaaa;
    defparam add_94_15.INIT1 = 16'haaaa;
    defparam add_94_15.INJECT1_0 = "NO";
    defparam add_94_15.INJECT1_1 = "NO";
    FD1S3DX csi_payload_byte_count_sys_i25 (.D(csi_payload_byte_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i8 (.D(n157_adj_1622), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i24 (.D(csi_payload_byte_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i23 (.D(csi_payload_byte_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i7 (.D(n158_adj_1621), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i22 (.D(csi_payload_byte_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i21 (.D(csi_payload_byte_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i20 (.D(csi_payload_byte_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i19 (.D(csi_payload_byte_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i18 (.D(csi_payload_byte_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i17 (.D(csi_payload_byte_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i16 (.D(csi_payload_byte_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i16.GSR = "ENABLED";
    FD1P3DX rst_cnt__i16 (.D(n7999), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i16.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i15 (.D(csi_payload_byte_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i6 (.D(n159_adj_1620), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i14 (.D(csi_payload_byte_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i5 (.D(n160_adj_1619), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i4 (.D(n161_adj_1618), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i3 (.D(n162_adj_1617), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i13 (.D(csi_payload_byte_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i12 (.D(csi_payload_byte_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2099__i2 (.D(n163_adj_1616), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i11 (.D(csi_payload_byte_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_234 (.A(rx_data[7]), .B(rx_data[2]), .C(rx_data[1]), 
         .D(rx_data[5]), .Z(n17574)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_234.init = 16'h4000;
    FD1S3DX csi_byte_clk_count_2099__i1 (.D(n164_adj_1615), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099__i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i10 (.D(csi_payload_byte_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i9 (.D(csi_payload_byte_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i8 (.D(csi_payload_byte_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i7 (.D(csi_payload_byte_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i7.GSR = "ENABLED";
    LUT4 i13898_4_lut (.A(xshutdn_cnt[13]), .B(n17867), .C(n17706), .D(xshutdn_cnt[8]), 
         .Z(n17913)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13898_4_lut.init = 16'h8000;
    FD1S3DX csi_payload_byte_count_sys_i6 (.D(csi_payload_byte_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i5 (.D(csi_payload_byte_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i4 (.D(csi_payload_byte_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i3 (.D(csi_payload_byte_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i2 (.D(csi_payload_byte_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i1 (.D(csi_payload_byte_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i31 (.D(csi_payload_byte_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i30 (.D(csi_payload_byte_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i30.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_17 (.A0(csi_payload_byte_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13938), .COUT(n13939), 
          .S0(n150_adj_1657), .S1(n149_adj_1664));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_17.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_17.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_17.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_17.INJECT1_1 = "NO";
    LUT4 i13690_2_lut (.A(xshutdn_cnt[18]), .B(xshutdn_cnt[0]), .Z(n17702)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13690_2_lut.init = 16'h8888;
    FD1S3DX csi_payload_byte_count_meta_i29 (.D(csi_payload_byte_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i29.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_235 (.A(n17530), .B(xshutdn_cnt[3]), .C(n17528), 
         .D(n17520), .Z(n17502)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_235.init = 16'hfffb;
    LUT4 i13853_4_lut (.A(xshutdn_cnt[17]), .B(xshutdn_cnt[4]), .C(xshutdn_cnt[16]), 
         .D(xshutdn_cnt[1]), .Z(n17867)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13853_4_lut.init = 16'h8000;
    LUT4 i13694_2_lut (.A(xshutdn_cnt[15]), .B(xshutdn_cnt[2]), .Z(n17706)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13694_2_lut.init = 16'h8888;
    FD1S3DX csi_payload_byte_count_meta_i28 (.D(csi_payload_byte_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i27 (.D(csi_payload_byte_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i27.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_236 (.A(xshutdn_cnt[19]), .B(xshutdn_cnt[6]), .C(xshutdn_cnt[10]), 
         .D(xshutdn_cnt[11]), .Z(n17530)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(84[17:43])
    defparam i1_4_lut_adj_236.init = 16'hfffe;
    CCU2C cam_cnt_2098_add_4_21 (.A0(cam_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13882), .S0(n86_adj_1613));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_21.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_21.INIT1 = 16'h0000;
    defparam cam_cnt_2098_add_4_21.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(xshutdn_cnt[12]), .B(xshutdn_cnt[5]), .C(xshutdn_cnt[9]), 
         .Z(n17528)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(84[17:43])
    defparam i1_3_lut.init = 16'hfefe;
    FD1S3DX csi_payload_byte_count_meta_i26 (.D(csi_payload_byte_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i26.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_15 (.A0(csi_payload_byte_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13937), .COUT(n13938), 
          .S0(n152_adj_1587), .S1(n151_adj_1665));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_15.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_15.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_15.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_15.INJECT1_1 = "NO";
    LUT4 i6437_2_lut (.A(n1204), .B(rst_cnt_25__N_445), .Z(n8007)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6437_2_lut.init = 16'h2222;
    FD1S3DX csi_payload_byte_count_meta_i25 (.D(csi_payload_byte_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i24 (.D(csi_payload_byte_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i23 (.D(csi_payload_byte_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i22 (.D(csi_payload_byte_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i21 (.D(csi_payload_byte_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i20 (.D(csi_payload_byte_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i19 (.D(csi_payload_byte_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i18 (.D(csi_payload_byte_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i17 (.D(csi_payload_byte_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i16 (.D(csi_payload_byte_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i16.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_237 (.A(xshutdn_cnt[14]), .B(xshutdn_cnt[7]), .Z(n17520)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(84[17:43])
    defparam i1_2_lut_adj_237.init = 16'heeee;
    FD1S3DX csi_payload_byte_count_meta_i15 (.D(csi_payload_byte_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i14 (.D(csi_payload_byte_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i13 (.D(csi_payload_byte_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i12 (.D(csi_payload_byte_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i11 (.D(csi_payload_byte_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i10 (.D(csi_payload_byte_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i9 (.D(csi_payload_byte_count[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i8 (.D(csi_payload_byte_count[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i8.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_19 (.A0(cam_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13881), .COUT(n13882), .S0(n88_adj_1611), 
          .S1(n87_adj_1612));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_19.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_19.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_19.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_19.INJECT1_1 = "NO";
    FD1S3DX csi_payload_byte_count_meta_i7 (.D(csi_payload_byte_count[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i6 (.D(csi_payload_byte_count[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i17 (.D(n7997), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i5 (.D(csi_payload_byte_count[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i4 (.D(csi_payload_byte_count[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i3 (.D(csi_payload_byte_count[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i2 (.D(csi_payload_byte_count[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i1 (.D(csi_payload_byte_count[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i31 (.D(csi_long_packet_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i30 (.D(csi_long_packet_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i29 (.D(csi_long_packet_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i28 (.D(csi_long_packet_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i27 (.D(csi_long_packet_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i26 (.D(csi_long_packet_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i25 (.D(csi_long_packet_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i24 (.D(csi_long_packet_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i23 (.D(csi_long_packet_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i22 (.D(csi_long_packet_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i21 (.D(csi_long_packet_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i20 (.D(csi_long_packet_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i19 (.D(csi_long_packet_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i19.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_17 (.A0(cam_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13880), .COUT(n13881), .S0(n90_adj_1609), 
          .S1(n89_adj_1610));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_17.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_17.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_17.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_17.INJECT1_1 = "NO";
    FD1S3DX csi_long_packet_count_sys_i18 (.D(csi_long_packet_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i17 (.D(csi_long_packet_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i16 (.D(csi_long_packet_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i15 (.D(csi_long_packet_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i14 (.D(csi_long_packet_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i13 (.D(csi_long_packet_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i12 (.D(csi_long_packet_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i11 (.D(csi_long_packet_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i10 (.D(csi_long_packet_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i9 (.D(csi_long_packet_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i8 (.D(csi_long_packet_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i7 (.D(csi_long_packet_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i6 (.D(csi_long_packet_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i5 (.D(csi_long_packet_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i5.GSR = "ENABLED";
    LUT4 i6436_2_lut (.A(n1203), .B(rst_cnt_25__N_445), .Z(n8005)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6436_2_lut.init = 16'h2222;
    FD1S3DX csi_long_packet_count_sys_i4 (.D(csi_long_packet_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i3 (.D(csi_long_packet_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i2 (.D(csi_long_packet_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i1 (.D(csi_long_packet_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i31 (.D(csi_long_packet_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i30 (.D(csi_long_packet_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i29 (.D(csi_long_packet_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i28 (.D(csi_long_packet_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i27 (.D(csi_long_packet_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i26 (.D(csi_long_packet_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i25 (.D(csi_long_packet_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i24 (.D(csi_long_packet_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i23 (.D(csi_long_packet_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i22 (.D(csi_long_packet_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i21 (.D(csi_long_packet_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i20 (.D(csi_long_packet_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i19 (.D(csi_long_packet_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i18 (.D(csi_long_packet_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i17 (.D(csi_long_packet_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i16 (.D(csi_long_packet_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i16.GSR = "ENABLED";
    LUT4 csi_lp_en_I_0_2_lut (.A(csi_lp_en_c), .B(dphy_hs_sync_d), .Z(csi_hs_sync_count_31__N_349)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(176[13:44])
    defparam csi_lp_en_I_0_2_lut.init = 16'h2222;
    FD1S3DX csi_long_packet_count_meta_i15 (.D(csi_long_packet_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i14 (.D(csi_long_packet_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i13 (.D(csi_long_packet_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i12 (.D(csi_long_packet_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i11 (.D(csi_long_packet_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i10 (.D(csi_long_packet_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i9 (.D(csi_long_packet_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i8 (.D(csi_long_packet_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i7 (.D(csi_long_packet_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i6 (.D(csi_long_packet_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i5 (.D(csi_long_packet_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i5.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_15 (.A0(cam_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13879), .COUT(n13880), .S0(n92_adj_1607), 
          .S1(n91_adj_1608));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_15.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_15.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_15.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_15.INJECT1_1 = "NO";
    FD1S3DX csi_long_packet_count_meta_i4 (.D(csi_long_packet_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i3 (.D(csi_long_packet_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i2 (.D(csi_long_packet_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i1 (.D(csi_long_packet_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i1.GSR = "ENABLED";
    LUT4 i6435_2_lut (.A(n1202), .B(rst_cnt_25__N_445), .Z(n8003)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6435_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_sys_i31 (.D(csi_hs_sync_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i31.GSR = "ENABLED";
    FD1P3DX rst_cnt__i18 (.D(n7995), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i18.GSR = "ENABLED";
    LUT4 i6434_2_lut (.A(n1201), .B(rst_cnt_25__N_445), .Z(n8001)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6434_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_sys_i30 (.D(csi_hs_sync_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i29 (.D(csi_hs_sync_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i29.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_13 (.A0(csi_payload_byte_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13936), .COUT(n13937), 
          .S0(n154_adj_1661), .S1(n153_adj_1658));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_13.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_13.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_13.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_13.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i28 (.D(csi_hs_sync_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i28.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_13 (.A0(cam_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13878), .COUT(n13879), .S0(n94_adj_1605), 
          .S1(n93_adj_1606));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_13.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_13.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_13.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_13.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i27 (.D(csi_hs_sync_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i26 (.D(csi_hs_sync_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i25 (.D(csi_hs_sync_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i24 (.D(csi_hs_sync_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i23 (.D(csi_hs_sync_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i22 (.D(csi_hs_sync_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i21 (.D(csi_hs_sync_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i20 (.D(csi_hs_sync_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i19 (.D(csi_hs_sync_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i18 (.D(csi_hs_sync_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i17 (.D(csi_hs_sync_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i16 (.D(csi_hs_sync_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i15 (.D(csi_hs_sync_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i14 (.D(csi_hs_sync_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i13 (.D(csi_hs_sync_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i12 (.D(csi_hs_sync_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i12.GSR = "ENABLED";
    FD1P3DX rst_cnt__i19 (.D(n7993), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i19.GSR = "ENABLED";
    LUT4 i6433_2_lut (.A(n1200), .B(rst_cnt_25__N_445), .Z(n7999)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6433_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_sys_i11 (.D(csi_hs_sync_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i10 (.D(csi_hs_sync_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i9 (.D(csi_hs_sync_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i8 (.D(csi_hs_sync_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i8.GSR = "ENABLED";
    LUT4 i6432_2_lut (.A(n1199), .B(rst_cnt_25__N_445), .Z(n7997)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6432_2_lut.init = 16'h2222;
    LUT4 i6431_2_lut (.A(n1198), .B(rst_cnt_25__N_445), .Z(n7995)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6431_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_sys_i7 (.D(csi_hs_sync_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i6 (.D(csi_hs_sync_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i6.GSR = "ENABLED";
    LUT4 i6430_2_lut (.A(n1197), .B(rst_cnt_25__N_445), .Z(n7993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6430_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_sys_i5 (.D(csi_hs_sync_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i4 (.D(csi_hs_sync_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i3 (.D(csi_hs_sync_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i3.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_11 (.A0(cam_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13877), .COUT(n13878), .S0(n96_adj_1603), 
          .S1(n95_adj_1604));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_11.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_11.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_11.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_11.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i2 (.D(csi_hs_sync_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i1 (.D(csi_hs_sync_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i31 (.D(csi_hs_sync_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i31.GSR = "ENABLED";
    LUT4 i6429_2_lut (.A(n1196), .B(rst_cnt_25__N_445), .Z(n7991)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6429_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_meta_i30 (.D(csi_hs_sync_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i30.GSR = "ENABLED";
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(11[23:31])
    IB sys_rstn_pad (.I(sys_rstn), .O(sys_rstn_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(7[16:24])
    FD1S3DX csi_hs_sync_count_meta_i29 (.D(csi_hs_sync_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i28 (.D(csi_hs_sync_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i28.GSR = "ENABLED";
    LUT4 i14036_3_lut (.A(cam_ready), .B(n16549), .Z(n18061)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i14036_3_lut.init = 16'hbbbb;
    LUT4 i6428_2_lut (.A(n1195), .B(rst_cnt_25__N_445), .Z(n7989)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6428_2_lut.init = 16'h2222;
    FD1S3DX csi_hs_sync_count_meta_i27 (.D(csi_hs_sync_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i26 (.D(csi_hs_sync_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i26.GSR = "ENABLED";
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    FD1S3DX csi_hs_sync_count_meta_i25 (.D(csi_hs_sync_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i24 (.D(csi_hs_sync_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i23 (.D(csi_hs_sync_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i23.GSR = "ENABLED";
    OB csi_dt_pad_0 (.I(VCC_net), .O(csi_dt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_hs_sync_count_meta_i22 (.D(csi_hs_sync_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i22.GSR = "ENABLED";
    OB csi_dt_pad_1 (.I(VCC_net), .O(csi_dt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_2 (.I(csi_dt_c_2), .O(csi_dt[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_3 (.I(csi_dt_c_3), .O(csi_dt[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_4 (.I(csi_dt_c_4), .O(csi_dt[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_5 (.I(csi_dt_c_5), .O(csi_dt[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    CCU2C cam_cnt_2098_add_4_9 (.A0(cam_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13876), .COUT(n13877), .S0(n98_adj_1601), 
          .S1(n97_adj_1602));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_9.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_9.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_9.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_9.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i21 (.D(csi_hs_sync_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i20 (.D(csi_hs_sync_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i19 (.D(csi_hs_sync_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i18 (.D(csi_hs_sync_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i17 (.D(csi_hs_sync_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i16 (.D(csi_hs_sync_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i15 (.D(csi_hs_sync_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i14 (.D(csi_hs_sync_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i13 (.D(csi_hs_sync_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i12 (.D(csi_hs_sync_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i12.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_11 (.A0(csi_payload_byte_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13935), .COUT(n13936), 
          .S0(n156_adj_1663), .S1(n155_adj_1659));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_11.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_11.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_11.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_11.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i11 (.D(csi_hs_sync_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i10 (.D(csi_hs_sync_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i9 (.D(csi_hs_sync_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i8 (.D(csi_hs_sync_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i8.GSR = "ENABLED";
    FD1P3DX rst_cnt__i20 (.D(n7991), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i7 (.D(csi_hs_sync_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i6 (.D(csi_hs_sync_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i5 (.D(csi_hs_sync_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i4 (.D(csi_hs_sync_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i3 (.D(csi_hs_sync_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i2 (.D(csi_hs_sync_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i2.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_7 (.A0(cam_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13875), .COUT(n13876), .S0(n100_adj_1599), 
          .S1(n99_adj_1600));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_7.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_7.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_7.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_7.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i1 (.D(csi_hs_sync_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i31 (.D(csi_byte_clk_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i30 (.D(csi_byte_clk_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i29 (.D(csi_byte_clk_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i28 (.D(csi_byte_clk_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i27 (.D(csi_byte_clk_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i27.GSR = "ENABLED";
    LUT4 i6447_2_lut (.A(n1212), .B(rst_cnt_25__N_445), .Z(n8023)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6447_2_lut.init = 16'h2222;
    FD1S3DX csi_byte_clk_count_sys_i26 (.D(csi_byte_clk_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i25 (.D(csi_byte_clk_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i24 (.D(csi_byte_clk_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i23 (.D(csi_byte_clk_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i22 (.D(csi_byte_clk_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i21 (.D(csi_byte_clk_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i20 (.D(csi_byte_clk_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i19 (.D(csi_byte_clk_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i18 (.D(csi_byte_clk_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i17 (.D(csi_byte_clk_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i16 (.D(csi_byte_clk_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i15 (.D(csi_byte_clk_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i14 (.D(csi_byte_clk_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i13 (.D(csi_byte_clk_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i13.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_9 (.A0(csi_payload_byte_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13934), .COUT(n13935), 
          .S0(n158_adj_1585), .S1(n157_adj_1545));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_9.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_9.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_9.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_9.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i12 (.D(csi_byte_clk_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i11 (.D(csi_byte_clk_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i10 (.D(csi_byte_clk_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i9 (.D(csi_byte_clk_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i8 (.D(csi_byte_clk_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i7 (.D(csi_byte_clk_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i6 (.D(csi_byte_clk_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i5 (.D(csi_byte_clk_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i4 (.D(csi_byte_clk_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i3 (.D(csi_byte_clk_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i2 (.D(csi_byte_clk_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i1 (.D(csi_byte_clk_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i31 (.D(csi_byte_clk_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i30 (.D(csi_byte_clk_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i29 (.D(csi_byte_clk_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i29.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_5 (.A0(cam_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13874), .COUT(n13875), .S0(n102_adj_1597), 
          .S1(n101_adj_1598));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_5.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_5.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_5.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_5.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i28 (.D(csi_byte_clk_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i27 (.D(csi_byte_clk_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i26 (.D(csi_byte_clk_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i25 (.D(csi_byte_clk_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i24 (.D(csi_byte_clk_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i23 (.D(csi_byte_clk_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i22 (.D(csi_byte_clk_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i21 (.D(csi_byte_clk_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i20 (.D(csi_byte_clk_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i20.GSR = "ENABLED";
    FD1P3DX xshutdn_r_106 (.D(VCC_net), .SP(sys_clk_c_enable_187), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_r));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam xshutdn_r_106.GSR = "ENABLED";
    FD1P3DX cam_ready_108 (.D(n18061), .SP(xshutdn_r), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_ready));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam cam_ready_108.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i19 (.D(csi_byte_clk_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i18 (.D(csi_byte_clk_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i18.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_7 (.A0(csi_payload_byte_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13933), .COUT(n13934), 
          .S0(n160_adj_1554), .S1(n159_adj_1553));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_7.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_7.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_7.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_7.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i17 (.D(csi_byte_clk_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i16 (.D(csi_byte_clk_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i15 (.D(csi_byte_clk_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i14 (.D(csi_byte_clk_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i13 (.D(csi_byte_clk_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i12 (.D(csi_byte_clk_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i12.GSR = "ENABLED";
    CCU2C cam_cnt_2098_add_4_3 (.A0(cam_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13873), .COUT(n13874), .S0(n104_adj_1595), 
          .S1(n103_adj_1596));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_3.INIT0 = 16'haaa0;
    defparam cam_cnt_2098_add_4_3.INIT1 = 16'haaa0;
    defparam cam_cnt_2098_add_4_3.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_3.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i11 (.D(csi_byte_clk_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i10 (.D(csi_byte_clk_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i9 (.D(csi_byte_clk_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i8 (.D(csi_byte_clk_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i7 (.D(csi_byte_clk_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i6 (.D(csi_byte_clk_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i21 (.D(n7989), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i5 (.D(csi_byte_clk_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i4 (.D(csi_byte_clk_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i3 (.D(csi_byte_clk_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i2 (.D(csi_byte_clk_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i1 (.D(csi_byte_clk_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i1.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i1 (.D(n164_adj_1537), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i1.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i2 (.D(n163), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i2.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i3 (.D(n162), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i3.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i4 (.D(n161), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i4.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i5 (.D(n160), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i6 (.D(n159), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i6.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i7 (.D(n158), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i7.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i8 (.D(n157), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i8.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i9 (.D(n156), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i9.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i10 (.D(n155), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i10.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i11 (.D(n154), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i12 (.D(n153), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i12.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i13 (.D(n152), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i13.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i14 (.D(n151), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i14.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i15 (.D(n150), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i15.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i16 (.D(n149), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i16.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i17 (.D(n148), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i17.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i18 (.D(n147), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i18.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i19 (.D(n146_adj_1538), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i19.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i20 (.D(n145_adj_1539), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i20.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i21 (.D(n144_adj_1540), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i21.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i22 (.D(n143_adj_1541), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i22.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i23 (.D(n142_adj_1542), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i23.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i24 (.D(n141), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i24.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i25 (.D(n140_adj_1543), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i25.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i26 (.D(n139), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i26.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i27 (.D(n138), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i27.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i28 (.D(n137), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i28.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i29 (.D(n136), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i29.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i30 (.D(n135_adj_1544), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i30.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2100__i31 (.D(n134), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100__i31.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i1 (.D(n164_adj_1547), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i1.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i2 (.D(n163_adj_1548), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i2.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i3 (.D(n162_adj_1549), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i3.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i4 (.D(n161_adj_1550), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i4.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i5 (.D(n160_adj_1551), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i5.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i6 (.D(n159_adj_1552), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i6.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i7 (.D(n158_adj_1565), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i7.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i8 (.D(n157_adj_1566), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i8.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i9 (.D(n156_adj_1567), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i9.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i10 (.D(n155_adj_1568), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i10.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i11 (.D(n154_adj_1569), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i11.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i12 (.D(n153_adj_1570), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i12.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i13 (.D(n152_adj_1571), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i13.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i14 (.D(n151_adj_1572), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i14.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i15 (.D(n150_adj_1668), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i15.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i16 (.D(n149_adj_1669), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i16.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i17 (.D(n148_adj_1670), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i17.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i18 (.D(n147_adj_1671), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i18.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i19 (.D(n146), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i19.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i20 (.D(n145_adj_1667), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i20.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i21 (.D(n144_adj_1648), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i21.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i22 (.D(n143_adj_1672), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i22.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i23 (.D(n142_adj_1673), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i23.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i24 (.D(n141_adj_1646), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i24.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i25 (.D(n140_adj_1652), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i25.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i26 (.D(n139_adj_1573), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i26.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i27 (.D(n138_adj_1649), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i27.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i28 (.D(n137_adj_1674), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i28.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i29 (.D(n136_adj_1647), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i29.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i30 (.D(n135), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i30.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2101__i31 (.D(n134_adj_1666), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101__i31.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i1 (.D(n164), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i1.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i2 (.D(n163_adj_1557), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i3 (.D(n162_adj_1556), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i3.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i4 (.D(n161_adj_1555), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i4.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i5 (.D(n160_adj_1554), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i5.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i6 (.D(n159_adj_1553), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i6.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i7 (.D(n158_adj_1585), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i7.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i8 (.D(n157_adj_1545), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i8.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i9 (.D(n156_adj_1663), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i9.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i10 (.D(n155_adj_1659), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i10.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i11 (.D(n154_adj_1661), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i11.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i12 (.D(n153_adj_1658), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i12.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i13 (.D(n152_adj_1587), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i13.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i14 (.D(n151_adj_1665), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i14.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i15 (.D(n150_adj_1657), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i16 (.D(n149_adj_1664), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i16.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i17 (.D(n148_adj_1588), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i17.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i18 (.D(n147_adj_1589), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i18.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i19 (.D(n146_adj_1586), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i19.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i20 (.D(n145), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i20.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i21 (.D(n144), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i21.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i22 (.D(n143), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i22.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i23 (.D(n142), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i23.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i24 (.D(n141_adj_1651), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i24.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i25 (.D(n140), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i25.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i26 (.D(n139_adj_1650), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i26.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i27 (.D(n138_adj_1662), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i27.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i28 (.D(n137_adj_1655), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i28.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i29 (.D(n136_adj_1660), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i29.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i30 (.D(n135_adj_1656), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i30.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2102__i31 (.D(n134_adj_1653), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102__i31.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2102_add_4_5 (.A0(csi_payload_byte_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13932), .COUT(n13933), 
          .S0(n162_adj_1556), .S1(n161_adj_1555));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_5.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_5.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_5.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_5.INJECT1_1 = "NO";
    CCU2C add_94_11 (.A0(rst_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13803), .COUT(n13804), .S0(n1207), .S1(n1206));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_11.INIT0 = 16'haaaa;
    defparam add_94_11.INIT1 = 16'haaaa;
    defparam add_94_11.INJECT1_0 = "NO";
    defparam add_94_11.INJECT1_1 = "NO";
    PFUMX i14032 (.BLUT(n4690), .ALUT(n4696), .C0(n18123), .Z(n18057));
    LUT4 i6427_2_lut (.A(n1194), .B(rst_cnt_25__N_445), .Z(n7987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6427_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_238 (.A(led_c_3), .B(n47), .Z(led_3__N_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_238.init = 16'h9999;
    CCU2C cam_cnt_2098_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cam_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13873), .S1(n105_adj_1594));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2098_add_4_1.INIT0 = 16'h0000;
    defparam cam_cnt_2098_add_4_1.INIT1 = 16'h555f;
    defparam cam_cnt_2098_add_4_1.INJECT1_0 = "NO";
    defparam cam_cnt_2098_add_4_1.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_21 (.A0(xshutdn_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13872), .S0(n86));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_21.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_21.INIT1 = 16'h0000;
    defparam xshutdn_cnt_2097_add_4_21.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_21.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i22 (.D(n7987), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i22.GSR = "ENABLED";
    FD1S3DX blink_toggle_105 (.D(led_3__N_1), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(led_c_3));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(55[10] 61[8])
    defparam blink_toggle_105.GSR = "ENABLED";
    FD1P3DX rst_cnt__i23 (.D(n7985), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i23.GSR = "ENABLED";
    LUT4 i6426_2_lut (.A(n1193), .B(rst_cnt_25__N_445), .Z(n7985)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6426_2_lut.init = 16'h2222;
    LUT4 i391_4_lut_rep_288 (.A(n17913), .B(xshutdn_r), .C(n17702), .D(n17502), 
         .Z(sys_clk_c_enable_187)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i391_4_lut_rep_288.init = 16'hccec;
    LUT4 i14031_4_lut (.A(flag_done), .B(current_state[6]), .C(n11), .D(n19455), 
         .Z(n18056)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i14031_4_lut.init = 16'h0a3a;
    LUT4 i6486_2_lut (.A(n125), .B(n47), .Z(n151_adj_1581)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6486_2_lut.init = 16'h8888;
    CCU2C xshutdn_cnt_2097_add_4_19 (.A0(xshutdn_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13871), .COUT(n13872), .S0(n88), 
          .S1(n87));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_19.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_19.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_19.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_19.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_17 (.A0(xshutdn_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13870), .COUT(n13871), .S0(n90), 
          .S1(n89));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_17.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_17.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_17.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_3 (.A0(csi_payload_byte_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13931), .COUT(n13932), 
          .S0(n164), .S1(n163_adj_1557));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_3.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_3.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2102_add_4_3.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_3.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_15 (.A0(xshutdn_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13869), .COUT(n13870), .S0(n92), 
          .S1(n91));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_15.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_15.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_15.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2102_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_payload_byte_count[0]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n13931), .S1(n165_adj_1654));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2102_add_4_1.INIT0 = 16'h0000;
    defparam csi_payload_byte_count_2102_add_4_1.INIT1 = 16'h555f;
    defparam csi_payload_byte_count_2102_add_4_1.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2102_add_4_1.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i24 (.D(n7983), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i24.GSR = "ENABLED";
    CCU2C csi_long_packet_count_2101_add_4_33 (.A0(csi_long_packet_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13930), .S0(n134_adj_1666));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_33.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_33.INIT1 = 16'h0000;
    defparam csi_long_packet_count_2101_add_4_33.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_31 (.A0(csi_long_packet_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13929), .COUT(n13930), 
          .S0(n136_adj_1647), .S1(n135));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_31.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_31.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_31.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_31.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i6425_2_lut (.A(n1192), .B(rst_cnt_25__N_445), .Z(n7983)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6425_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_2101_add_4_29 (.A0(csi_long_packet_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13928), .COUT(n13929), 
          .S0(n138_adj_1649), .S1(n137_adj_1674));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_29.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_29.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_29.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_29.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i25 (.D(n7981), .SP(sys_clk_c_enable_229), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i25.GSR = "ENABLED";
    LUT4 i6266_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(n6050)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6266_2_lut.init = 16'h2222;
    LUT4 i399_4_lut (.A(n17925), .B(rst_n_pulse), .C(n17927), .D(n17356), 
         .Z(rst_n_pulse_N_449)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(385[10] 392[8])
    defparam i399_4_lut.init = 16'hccec;
    CCU2C xshutdn_cnt_2097_add_4_13 (.A0(xshutdn_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13868), .COUT(n13869), .S0(n94), 
          .S1(n93));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_13.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_13.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_13.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_13.INJECT1_1 = "NO";
    LUT4 i6446_2_lut (.A(n1211), .B(rst_cnt_25__N_445), .Z(n8021)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6446_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_2101_add_4_27 (.A0(csi_long_packet_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13927), .COUT(n13928), 
          .S0(n140_adj_1652), .S1(n139_adj_1573));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_27.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_27.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_27.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_27.INJECT1_1 = "NO";
    LUT4 i2738_2_lut_4_lut (.A(n19463), .B(n19464), .C(tx_state[1]), .D(field_index[2]), 
         .Z(n6616)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    defparam i2738_2_lut_4_lut.init = 16'hffca;
    CCU2C csi_long_packet_count_2101_add_4_25 (.A0(csi_long_packet_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13926), .COUT(n13927), 
          .S0(n142_adj_1673), .S1(n141_adj_1646));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_25.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_25.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_25.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_25.INJECT1_1 = "NO";
    LUT4 mux_1467_i7_4_lut_4_lut (.A(n19465), .B(n19452), .C(next_state[6]), 
         .D(n19461), .Z(n4807)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam mux_1467_i7_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_4_lut (.A(n19465), .B(current_state[6]), .C(n16261), 
         .D(n19467), .Z(n16268)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0040;
    CCU2C xshutdn_cnt_2097_add_4_11 (.A0(xshutdn_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13867), .COUT(n13868), .S0(n96), 
          .S1(n95));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_11.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_11.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_11.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_11.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_9 (.A0(xshutdn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13866), .COUT(n13867), .S0(n98), .S1(n97));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_9.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_9.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_9.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_9.INJECT1_1 = "NO";
    LUT4 i6393_2_lut (.A(n1191), .B(rst_cnt_25__N_445), .Z(n7981)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6393_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_2101_add_4_23 (.A0(csi_long_packet_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13925), .COUT(n13926), 
          .S0(n144_adj_1648), .S1(n143_adj_1672));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_23.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_23.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_23.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_23.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_7 (.A0(xshutdn_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13865), .COUT(n13866), .S0(n100), .S1(n99));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_7.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_7.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_7.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_21 (.A0(csi_long_packet_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13924), .COUT(n13925), 
          .S0(n146), .S1(n145_adj_1667));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_21.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_21.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_21.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_21.INJECT1_1 = "NO";
    LUT4 i13910_4_lut (.A(rst_cnt[21]), .B(n17895), .C(n17802), .D(rst_cnt[1]), 
         .Z(n17925)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13910_4_lut.init = 16'h8000;
    LUT4 i3692_1_lut_4_lut (.A(n17913), .B(xshutdn_r), .C(n17702), .D(n17502), 
         .Z(sys_clk_c_enable_150)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i3692_1_lut_4_lut.init = 16'h3313;
    CCU2C xshutdn_cnt_2097_add_4_5 (.A0(xshutdn_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13864), .COUT(n13865), .S0(n102_adj_1593), 
          .S1(n101));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_5.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_5.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_5.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_5.INJECT1_1 = "NO";
    LUT4 i13912_4_lut (.A(rst_cnt[19]), .B(n17899), .C(n17806), .D(rst_cnt[14]), 
         .Z(n17927)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13912_4_lut.init = 16'h8000;
    CCU2C csi_long_packet_count_2101_add_4_19 (.A0(csi_long_packet_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13923), .COUT(n13924), 
          .S0(n148_adj_1670), .S1(n147_adj_1671));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_19.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_19.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_19.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_239 (.A(n17804), .B(n17326), .C(n17334), .D(n17328), 
         .Z(n17356)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_239.init = 16'hfffd;
    LUT4 sys_rstn_I_0_2_lut_rep_343 (.A(sys_rstn_c), .B(rst_n_pulse), .Z(n19521)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(41[21:43])
    defparam sys_rstn_I_0_2_lut_rep_343.init = 16'h8888;
    CCU2C csi_long_packet_count_2101_add_4_17 (.A0(csi_long_packet_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13922), .COUT(n13923), 
          .S0(n150_adj_1668), .S1(n149_adj_1669));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_17.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_17.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_17.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_17.INJECT1_1 = "NO";
    LUT4 sys_rst_n_I_0_1_lut_2_lut (.A(sys_rstn_c), .B(rst_n_pulse), .Z(sys_rst_n_N_472)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(41[21:43])
    defparam sys_rst_n_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 csi_dt_5__I_0_2_lut (.A(csi_dt_c_5), .B(csi_lp_en_d), .Z(csi_long_packet_count_31__N_384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(178[13:45])
    defparam csi_dt_5__I_0_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_2101_add_4_15 (.A0(csi_long_packet_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13921), .COUT(n13922), 
          .S0(n152_adj_1571), .S1(n151_adj_1572));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_15.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_15.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_15.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_13 (.A0(csi_long_packet_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13920), .COUT(n13921), 
          .S0(n154_adj_1569), .S1(n153_adj_1570));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_13.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_13.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_13.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_13.INJECT1_1 = "NO";
    LUT4 i13880_4_lut (.A(rst_cnt[17]), .B(rst_cnt[15]), .C(rst_cnt[5]), 
         .D(rst_cnt[12]), .Z(n17895)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13880_4_lut.init = 16'h8000;
    CCU2C csi_long_packet_count_2101_add_4_11 (.A0(csi_long_packet_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13919), .COUT(n13920), 
          .S0(n156_adj_1567), .S1(n155_adj_1568));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_11.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_11.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_11.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_11.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2097_add_4_3 (.A0(xshutdn_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13863), .COUT(n13864), .S0(n104_adj_1591), 
          .S1(n103_adj_1592));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_3.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_3.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2097_add_4_3.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_9 (.A0(csi_long_packet_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13918), .COUT(n13919), 
          .S0(n158_adj_1565), .S1(n157_adj_1566));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_9.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_9.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_9.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_9.INJECT1_1 = "NO";
    LUT4 i13788_2_lut (.A(rst_cnt[3]), .B(rst_cnt[2]), .Z(n17802)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13788_2_lut.init = 16'h8888;
    LUT4 i6445_2_lut (.A(n1210), .B(rst_cnt_25__N_445), .Z(n8019)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6445_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_2101_add_4_7 (.A0(csi_long_packet_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13917), .COUT(n13918), 
          .S0(n160_adj_1551), .S1(n159_adj_1552));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_7.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_7.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_7.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_5 (.A0(csi_long_packet_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13916), .COUT(n13917), 
          .S0(n162_adj_1549), .S1(n161_adj_1550));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_5.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_5.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_5.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_3 (.A0(csi_long_packet_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13915), .COUT(n13916), 
          .S0(n164_adj_1547), .S1(n163_adj_1548));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_3.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_3.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2101_add_4_3.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2101_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_long_packet_count[0]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n13915), .S1(n165_adj_1546));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2101_add_4_1.INIT0 = 16'h0000;
    defparam csi_long_packet_count_2101_add_4_1.INIT1 = 16'h555f;
    defparam csi_long_packet_count_2101_add_4_1.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2101_add_4_1.INJECT1_1 = "NO";
    LUT4 i13884_4_lut (.A(rst_cnt[6]), .B(rst_cnt[22]), .C(rst_cnt[4]), 
         .D(rst_cnt[13]), .Z(n17899)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13884_4_lut.init = 16'h8000;
    LUT4 i13792_2_lut (.A(rst_cnt[23]), .B(rst_cnt[25]), .Z(n17806)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13792_2_lut.init = 16'h8888;
    LUT4 i13790_2_lut (.A(rst_cnt[20]), .B(rst_cnt[0]), .Z(n17804)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13790_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_2100_add_4_33 (.A0(csi_hs_sync_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13914), .S0(n134));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_33.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_33.INIT1 = 16'h0000;
    defparam csi_hs_sync_count_2100_add_4_33.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_31 (.A0(csi_hs_sync_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13913), .COUT(n13914), .S0(n136), 
          .S1(n135_adj_1544));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_31.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_31.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_31.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_31.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2C xshutdn_cnt_2097_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xshutdn_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13863), .S1(n105_adj_1590));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2097_add_4_1.INIT0 = 16'h0000;
    defparam xshutdn_cnt_2097_add_4_1.INIT1 = 16'h555f;
    defparam xshutdn_cnt_2097_add_4_1.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2097_add_4_1.INJECT1_1 = "NO";
    LUT4 i14037_4_lut (.A(rd_first_done), .B(n19455), .C(n19), .D(n16268), 
         .Z(n18062)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i14037_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_adj_240 (.A(rst_cnt[11]), .B(rst_cnt[18]), .Z(n17326)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_240.init = 16'heeee;
    LUT4 i1_4_lut_adj_241 (.A(n17574), .B(rx_data[4]), .C(n17566), .D(rx_data[3]), 
         .Z(rst_cnt_25__N_445)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_241.init = 16'h0020;
    LUT4 i1_4_lut_adj_242 (.A(rst_cnt[10]), .B(rst_cnt[8]), .C(rst_cnt[9]), 
         .D(rst_cnt[7]), .Z(n17334)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_242.init = 16'hfffe;
    LUT4 i1_2_lut_adj_243 (.A(rst_cnt[24]), .B(rst_cnt[16]), .Z(n17328)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_243.init = 16'heeee;
    LUT4 i1_3_lut_adj_244 (.A(rx_data[0]), .B(rx_flag), .C(rx_data[6]), 
         .Z(n17566)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_244.init = 16'h4040;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C add_94_13 (.A0(rst_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13804), .COUT(n13805), .S0(n1205), .S1(n1204));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_13.INIT0 = 16'haaaa;
    defparam add_94_13.INIT1 = 16'haaaa;
    defparam add_94_13.INJECT1_0 = "NO";
    defparam add_94_13.INJECT1_1 = "NO";
    CCU2C add_94_9 (.A0(rst_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13802), .COUT(n13803), .S0(n1209), .S1(n1208));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_9.INIT0 = 16'haaaa;
    defparam add_94_9.INIT1 = 16'haaaa;
    defparam add_94_9.INJECT1_0 = "NO";
    defparam add_94_9.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_29 (.A0(csi_hs_sync_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13912), .COUT(n13913), .S0(n138), 
          .S1(n137));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_29.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_29.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_29.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_29.INJECT1_1 = "NO";
    CCU2C add_94_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rst_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13799), .S1(n1216));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_1.INIT0 = 16'h0000;
    defparam add_94_1.INIT1 = 16'h555a;
    defparam add_94_1.INJECT1_0 = "NO";
    defparam add_94_1.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_25 (.A0(blink_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13862), .S0(n102));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_25.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_25.INIT1 = 16'h0000;
    defparam blink_cnt_2096_add_4_25.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_27 (.A0(csi_hs_sync_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13911), .COUT(n13912), .S0(n140_adj_1543), 
          .S1(n139));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_27.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_27.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_27.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_27.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_25 (.A0(csi_hs_sync_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13910), .COUT(n13911), .S0(n142_adj_1542), 
          .S1(n141));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_25.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_25.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_25.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_23 (.A0(csi_hs_sync_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13909), .COUT(n13910), .S0(n144_adj_1540), 
          .S1(n143_adj_1541));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_23.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_23.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_23.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_23.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_23 (.A0(blink_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13861), .COUT(n13862), .S0(n104), .S1(n103));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_23.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_23.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_23.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_23.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_21 (.A0(csi_hs_sync_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13908), .COUT(n13909), .S0(n146_adj_1538), 
          .S1(n145_adj_1539));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_21.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_21.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_21.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_21.INJECT1_1 = "NO";
    LUT4 i2144_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(sys_clk_c_enable_229)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2144_2_lut.init = 16'hdddd;
    LUT4 i6448_2_lut (.A(n1213), .B(rst_cnt_25__N_445), .Z(n8025)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6448_2_lut.init = 16'h2222;
    LUT4 i6449_2_lut (.A(n1214), .B(rst_cnt_25__N_445), .Z(n8027)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6449_2_lut.init = 16'h2222;
    CCU2C add_94_5 (.A0(rst_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13800), .COUT(n13801), .S0(n1213), .S1(n1212));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_5.INIT0 = 16'haaaa;
    defparam add_94_5.INIT1 = 16'haaaa;
    defparam add_94_5.INJECT1_0 = "NO";
    defparam add_94_5.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_19 (.A0(csi_hs_sync_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13907), .COUT(n13908), .S0(n148), 
          .S1(n147));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_19.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_19.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_19.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_19.INJECT1_1 = "NO";
    CCU2C add_94_3 (.A0(rst_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13799), .COUT(n13800), .S0(n1215), .S1(n1214));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_3.INIT0 = 16'haaaa;
    defparam add_94_3.INIT1 = 16'haaaa;
    defparam add_94_3.INJECT1_0 = "NO";
    defparam add_94_3.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_17 (.A0(csi_hs_sync_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13906), .COUT(n13907), .S0(n150), 
          .S1(n149));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_17.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_17.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_17.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_17.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_21 (.A0(blink_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13860), .COUT(n13861), .S0(n106), .S1(n105));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_21.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_21.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_21.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_21.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_19 (.A0(blink_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13859), .COUT(n13860), .S0(n108), .S1(n107));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_19.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_19.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_19.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_19.INJECT1_1 = "NO";
    CCU2C add_94_7 (.A0(rst_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13801), .COUT(n13802), .S0(n1211), .S1(n1210));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_7.INIT0 = 16'haaaa;
    defparam add_94_7.INIT1 = 16'haaaa;
    defparam add_94_7.INJECT1_0 = "NO";
    defparam add_94_7.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_15 (.A0(csi_hs_sync_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13905), .COUT(n13906), .S0(n152), 
          .S1(n151));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_15.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_15.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_15.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_15.INJECT1_1 = "NO";
    CCU2C add_94_27 (.A0(rst_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13811), 
          .S0(n1191));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_27.INIT0 = 16'haaaa;
    defparam add_94_27.INIT1 = 16'h0000;
    defparam add_94_27.INJECT1_0 = "NO";
    defparam add_94_27.INJECT1_1 = "NO";
    LUT4 i6327_2_lut (.A(n102), .B(n47), .Z(n128)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6327_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_245 (.A(n17488), .B(n17915), .C(n16486), .D(n17724), 
         .Z(n47)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_245.init = 16'hfbff;
    LUT4 i1_4_lut_adj_246 (.A(n17468), .B(blink_cnt[12]), .C(n17474), 
         .D(blink_cnt[11]), .Z(n17488)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_246.init = 16'hfffb;
    LUT4 i13900_4_lut (.A(blink_cnt[23]), .B(n17873), .C(n17716), .D(blink_cnt[9]), 
         .Z(n17915)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13900_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_247 (.A(n17728), .B(blink_cnt[5]), .C(n17458), .D(blink_cnt[14]), 
         .Z(n16486)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_247.init = 16'hfff7;
    LUT4 i6318_2_lut (.A(n1216), .B(rst_cnt_25__N_445), .Z(n7949)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6318_2_lut.init = 16'h2222;
    LUT4 i13712_2_lut (.A(blink_cnt[19]), .B(blink_cnt[15]), .Z(n17724)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13712_2_lut.init = 16'h8888;
    CCU2C blink_cnt_2096_add_4_17 (.A0(blink_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13858), .COUT(n13859), .S0(n110), .S1(n109));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_17.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_17.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_17.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_17.INJECT1_1 = "NO";
    CCU2C add_94_25 (.A0(rst_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13810), .COUT(n13811), .S0(n1193), .S1(n1192));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_25.INIT0 = 16'haaaa;
    defparam add_94_25.INIT1 = 16'haaaa;
    defparam add_94_25.INJECT1_0 = "NO";
    defparam add_94_25.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_15 (.A0(blink_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13857), .COUT(n13858), .S0(n112), .S1(n111));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_15.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_15.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_15.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_15.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_13 (.A0(blink_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13856), .COUT(n13857), .S0(n114), .S1(n113));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_13.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_13.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_13.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_13 (.A0(csi_hs_sync_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13904), .COUT(n13905), .S0(n154), 
          .S1(n153));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_13.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_13.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_13.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_248 (.A(blink_cnt[16]), .B(blink_cnt[22]), .Z(n17468)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_248.init = 16'heeee;
    CCU2C csi_hs_sync_count_2100_add_4_11 (.A0(csi_hs_sync_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13903), .COUT(n13904), .S0(n156), 
          .S1(n155));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_11.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_11.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_11.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_11.INJECT1_1 = "NO";
    CCU2C add_94_23 (.A0(rst_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13809), .COUT(n13810), .S0(n1195), .S1(n1194));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_23.INIT0 = 16'haaaa;
    defparam add_94_23.INIT1 = 16'haaaa;
    defparam add_94_23.INJECT1_0 = "NO";
    defparam add_94_23.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_11 (.A0(blink_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13855), .COUT(n13856), .S0(n116), .S1(n115));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_11.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_11.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_11.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_11.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_9 (.A0(blink_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13854), .COUT(n13855), .S0(n118), .S1(n117));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_9.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_9.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_9.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_9 (.A0(csi_hs_sync_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13902), .COUT(n13903), .S0(n158), 
          .S1(n157));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_9.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_9.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_9.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_7 (.A0(csi_hs_sync_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13901), .COUT(n13902), .S0(n160), 
          .S1(n159));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_7.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_7.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_7.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_7.INJECT1_1 = "NO";
    CCU2C add_94_21 (.A0(rst_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13808), .COUT(n13809), .S0(n1197), .S1(n1196));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_21.INIT0 = 16'haaaa;
    defparam add_94_21.INIT1 = 16'haaaa;
    defparam add_94_21.INJECT1_0 = "NO";
    defparam add_94_21.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_7 (.A0(blink_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13853), .COUT(n13854), .S0(n120), .S1(n119));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_7.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_7.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_7.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_7.INJECT1_1 = "NO";
    CCU2C blink_cnt_2096_add_4_5 (.A0(blink_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13852), .COUT(n13853), .S0(n122), .S1(n121));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_5.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_5.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_5.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_5 (.A0(csi_hs_sync_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13900), .COUT(n13901), .S0(n162), 
          .S1(n161));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_5.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_5.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_5.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_3 (.A0(csi_hs_sync_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13899), .COUT(n13900), .S0(n164_adj_1537), 
          .S1(n163));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_3.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_3.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2100_add_4_3.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_249 (.A(blink_cnt[21]), .B(blink_cnt[17]), .C(blink_cnt[7]), 
         .D(blink_cnt[18]), .Z(n17474)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_249.init = 16'hfffe;
    LUT4 i13859_4_lut (.A(blink_cnt[4]), .B(blink_cnt[6]), .C(blink_cnt[1]), 
         .D(blink_cnt[2]), .Z(n17873)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13859_4_lut.init = 16'h8000;
    LUT4 i13704_2_lut (.A(blink_cnt[0]), .B(blink_cnt[3]), .Z(n17716)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13704_2_lut.init = 16'h8888;
    LUT4 i13716_2_lut (.A(blink_cnt[20]), .B(blink_cnt[10]), .Z(n17728)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13716_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_250 (.A(blink_cnt[8]), .B(blink_cnt[13]), .Z(n17458)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_250.init = 16'heeee;
    CCU2C blink_cnt_2096_add_4_3 (.A0(blink_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13851), .COUT(n13852), .S0(n124), .S1(n123));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_3.INIT0 = 16'haaa0;
    defparam blink_cnt_2096_add_4_3.INIT1 = 16'haaa0;
    defparam blink_cnt_2096_add_4_3.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2100_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_hs_sync_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13899), .S1(n165));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2100_add_4_1.INIT0 = 16'h0000;
    defparam csi_hs_sync_count_2100_add_4_1.INIT1 = 16'h555f;
    defparam csi_hs_sync_count_2100_add_4_1.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2100_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_33 (.A0(csi_byte_clk_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13898), .S0(n134_adj_1645));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_33.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_33.INIT1 = 16'h0000;
    defparam csi_byte_clk_count_2099_add_4_33.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_33.INJECT1_1 = "NO";
    LUT4 i6328_2_lut (.A(n103), .B(n47), .Z(n129)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6328_2_lut.init = 16'h8888;
    CCU2C blink_cnt_2096_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(blink_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13851), .S1(n125));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2096_add_4_1.INIT0 = 16'h0000;
    defparam blink_cnt_2096_add_4_1.INIT1 = 16'h555f;
    defparam blink_cnt_2096_add_4_1.INJECT1_0 = "NO";
    defparam blink_cnt_2096_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_31 (.A0(csi_byte_clk_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13897), .COUT(n13898), .S0(n136_adj_1643), 
          .S1(n135_adj_1644));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_31.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_31.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_31.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_31.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2099_add_4_29 (.A0(csi_byte_clk_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13896), .COUT(n13897), .S0(n138_adj_1641), 
          .S1(n137_adj_1642));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2099_add_4_29.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_29.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2099_add_4_29.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2099_add_4_29.INJECT1_1 = "NO";
    LUT4 i6329_2_lut (.A(n104), .B(n47), .Z(n130)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6329_2_lut.init = 16'h8888;
    LUT4 i6330_2_lut (.A(n105), .B(n47), .Z(n131)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6330_2_lut.init = 16'h8888;
    LUT4 i6331_2_lut (.A(n106), .B(n47), .Z(n132)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6331_2_lut.init = 16'h8888;
    LUT4 i6332_2_lut (.A(n107), .B(n47), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6332_2_lut.init = 16'h8888;
    LUT4 i6333_2_lut (.A(n108), .B(n47), .Z(n134_adj_1582)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6333_2_lut.init = 16'h8888;
    LUT4 i6334_2_lut (.A(n109), .B(n47), .Z(n135_adj_1583)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6334_2_lut.init = 16'h8888;
    LUT4 i6335_2_lut (.A(n110), .B(n47), .Z(n136_adj_1584)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6335_2_lut.init = 16'h8888;
    LUT4 i6336_2_lut (.A(n111), .B(n47), .Z(n137_adj_1558)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6336_2_lut.init = 16'h8888;
    LUT4 i6337_2_lut (.A(n112), .B(n47), .Z(n138_adj_1559)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6337_2_lut.init = 16'h8888;
    LUT4 i6338_2_lut (.A(n113), .B(n47), .Z(n139_adj_1560)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6338_2_lut.init = 16'h8888;
    LUT4 i6339_2_lut (.A(n114), .B(n47), .Z(n140_adj_1561)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6339_2_lut.init = 16'h8888;
    LUT4 i6340_2_lut (.A(n115), .B(n47), .Z(n141_adj_1562)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6340_2_lut.init = 16'h8888;
    LUT4 i6341_2_lut (.A(n116), .B(n47), .Z(n142_adj_1563)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6341_2_lut.init = 16'h8888;
    LUT4 i6342_2_lut (.A(n117), .B(n47), .Z(n143_adj_1564)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6342_2_lut.init = 16'h8888;
    LUT4 i6343_2_lut (.A(n118), .B(n47), .Z(n144_adj_1574)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6343_2_lut.init = 16'h8888;
    LUT4 i6346_2_lut (.A(n119), .B(n47), .Z(n145_adj_1575)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6346_2_lut.init = 16'h8888;
    LUT4 i6347_2_lut (.A(n120), .B(n47), .Z(n146_adj_1576)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6347_2_lut.init = 16'h8888;
    LUT4 i6348_2_lut (.A(n121), .B(n47), .Z(n147_adj_1577)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6348_2_lut.init = 16'h8888;
    LUT4 i6350_2_lut (.A(n122), .B(n47), .Z(n148_adj_1578)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6350_2_lut.init = 16'h8888;
    LUT4 i6351_2_lut (.A(n123), .B(n47), .Z(n149_adj_1579)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6351_2_lut.init = 16'h8888;
    LUT4 i6352_2_lut (.A(n124), .B(n47), .Z(n150_adj_1580)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6352_2_lut.init = 16'h8888;
    LUT4 sys_rstn_I_0_146_1_lut (.A(sys_rstn_c), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(51[9:18])
    defparam sys_rstn_I_0_146_1_lut.init = 16'h5555;
    LUT4 i6450_2_lut (.A(n1215), .B(rst_cnt_25__N_445), .Z(n8029)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6450_2_lut.init = 16'h2222;
    \top_iic(IIC_CLK=26'b010011100010000)  u_top_iic (.reg_index({reg_index}), 
            .GND_net(GND_net), .VCC_net(VCC_net), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .reg_4a00_val({reg_4a00_val}), 
            .sensor_id({sensor_id}), .flag_done(flag_done), .\reg_cfg[0] (reg_cfg[0]), 
            .led_c_1(led_c_1), .\reg_cfg[9] (reg_cfg[9]), .\reg_cfg[10] (reg_cfg[10]), 
            .\reg_cfg[1] (reg_cfg[1]), .\reg_cfg[2] (reg_cfg[2]), .\reg_cfg[3] (reg_cfg[3]), 
            .\reg_cfg[4] (reg_cfg[4]), .\reg_cfg[5] (reg_cfg[5]), .\reg_cfg[6] (reg_cfg[6]), 
            .\reg_cfg[7] (reg_cfg[7]), .\reg_cfg[12] (reg_cfg[12]), .cam_ready(cam_ready), 
            .\reg_cfg[15] (reg_cfg[15]), .\reg_cfg[13] (reg_cfg[13]), .\current_state[6] (current_state[6]), 
            .\reg_cfg[19] (reg_cfg[19]), .\reg_cfg[18] (reg_cfg[18]), .\reg_cfg[17] (reg_cfg[17]), 
            .\reg_cfg[16] (reg_cfg[16]), .sda_transmit(sda_transmit), .n18056(n18056), 
            .n18057(n18057), .n19455(n19455), .n19465(n19465), .i2c_sclk_0_c(i2c_sclk_0_c), 
            .\next_state[6] (next_state[6]), .n19461(n19461), .n19467(n19467), 
            .sda_transmit_en_N_1061(sda_transmit_en_N_1061), .n4695({n4696}), 
            .n4689({n4690}), .n18123(n18123), .n16261(n16261), .n11(n11), 
            .rd_first_done(rd_first_done), .n19452(n19452), .n4807(n4807), 
            .n18062(n18062), .n19(n19), .i2c_sda_0_out(i2c_sda_0_out)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(113[3] 127[2])
    uart_send_ctrl u_send_ctrl (.field_index({Open_0, field_index[2], Open_1, 
            Open_2}), .sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .work_en_N_1392(work_en_N_1392), .\tx_data[0] (tx_data[0]), 
            .tx_state({tx_state}), .tx_phase({tx_phase}), .\tx_phase_2__N_1173[0] (tx_phase_2__N_1173[0]), 
            .sys_clk_c_enable_143(sys_clk_c_enable_143), .digits_left({Open_3, 
            Open_4, Open_5, digits_left[0]}), .GND_net(GND_net), .VCC_net(VCC_net), 
            .csi_long_packet_count_sys({csi_long_packet_count_sys}), .csi_payload_byte_count_sys({csi_payload_byte_count_sys}), 
            .n19464(n19464), .csi_byte_clk_count_sys({csi_byte_clk_count_sys}), 
            .n6616(n6616), .csi_hs_sync_count_sys({csi_hs_sync_count_sys}), 
            .csi_last_dt_sys({csi_last_dt_sys}), .csi_last_wc_sys({csi_last_wc_sys}), 
            .n19471(n19471), .dphy_lp_state_d_s2({dphy_lp_state_d_s2}), 
            .reg_4a00_val({reg_4a00_val}), .dphy_hs_d_en_s2(dphy_hs_d_en_s2), 
            .\digits_left[2] (digits_left[2]), .\digits_left[1] (digits_left[1]), 
            .\tx_data[6] (tx_data[6]), .\tx_data[5] (tx_data[5]), .\tx_data[4] (tx_data[4]), 
            .\tx_data[3] (tx_data[3]), .\tx_data[2] (tx_data[2]), .\tx_data[1] (tx_data[1]), 
            .n16501(n16501), .n4(n4), .dphy_term_clk_en_s2(dphy_term_clk_en_s2), 
            .sensor_id({sensor_id}), .n16371(n16371), .uart_busy(uart_busy), 
            .n15576(n15576), .n19522(n19522), .n19486(n19486), .n3575(n3575), 
            .n16226(n16226), .n19463(n19463), .\digits_left_3__N_1321[2] (digits_left_3__N_1321[2]), 
            .n19514(n19514), .n19199(n19199)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(331[16] 350[2])
    csi2dsi u_csi2dsi (.csi_clk_byte(csi_clk_byte), .\reset_byte_sync[1] (reset_byte_sync[1]), 
            .VCC_net(VCC_net), .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), 
            .csi_wc({csi_wc}), .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), 
            .n19521(n19521), .csi_sp_en_c(csi_sp_en_c), .csi_lp_en_c(csi_lp_en_c), 
            .sys_clk_c(sys_clk_c), .csi_clk_byte_hs(csi_clk_byte_hs), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .mipi_rcp_0(mipi_rcp_0), 
            .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(252[9] 298[2])
    uart_rx u_uart_rx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .rx_data({rx_data}), .rx_flag(rx_flag), .uart_rxd_c(uart_rxd_c), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(367[3] 373[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (sys_clk_c, sys_rst_n_N_472, uart_busy, \tx_data[4] , 
            \tx_data[2] , \tx_data[3] , uart_txd_c, tx_phase, n16226, 
            tx_state, n16371, n15576, n19471, n19464, \tx_data[5] , 
            \tx_data[6] , \tx_data[0] , \tx_data[1] , n19486, n19522, 
            \tx_phase_2__N_1173[0] , sys_clk_c_enable_143, GND_net, VCC_net, 
            n4, \digits_left[2] , \digits_left_3__N_1321[2] , n16501, 
            \digits_left[0] , \digits_left[1] , n19199, work_en_N_1392) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output uart_busy;
    input \tx_data[4] ;
    input \tx_data[2] ;
    input \tx_data[3] ;
    output uart_txd_c;
    input [2:0]tx_phase;
    input n16226;
    input [1:0]tx_state;
    output n16371;
    input n15576;
    output n19471;
    output n19464;
    input \tx_data[5] ;
    input \tx_data[6] ;
    input \tx_data[0] ;
    input \tx_data[1] ;
    output n19486;
    input n19522;
    output \tx_phase_2__N_1173[0] ;
    output sys_clk_c_enable_143;
    input GND_net;
    input VCC_net;
    input n4;
    input \digits_left[2] ;
    output \digits_left_3__N_1321[2] ;
    output n16501;
    input \digits_left[0] ;
    input \digits_left[1] ;
    output n19199;
    input work_en_N_1392;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [12:0]baud_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(19[12:20])
    wire [12:0]n41;
    
    wire n17544, bit_flag, bit_flag_N_1402, n7882, n17690;
    wire [15:0]n2412;
    
    wire sys_clk_c_enable_233, n7971, n17546, n6624, n6625;
    wire [15:0]n2447;
    
    wire n18143, n7969, n7967, tx_N_1401, n19505, n7965, n7963, 
        work_en_N_1395, n7961, n7959, n7957, n7955, n7953, n7951, 
        n19480, n6959;
    wire [0:0]n3714;
    wire [12:0]n18;
    
    wire n9805, n17168, n6958, n17166, n13817, n13816, n7979, 
        n7977, n7975, n16480, n7973, n24_adj_1535, n17838, n18152, 
        n6960, n15_adj_1536, n17907, n13815, n13814, n13813, n13812;
    
    FD1S3DX baud_cnt__i0 (.D(n41[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(baud_cnt[9]), .B(baud_cnt[6]), .C(baud_cnt[1]), 
         .D(baud_cnt[12]), .Z(n17544)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    FD1S3DX bit_flag_47 (.D(bit_flag_N_1402), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[10] 50[26])
    defparam bit_flag_47.GSR = "ENABLED";
    FD1S3DX work_en_45 (.D(n7882), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam work_en_45.GSR = "ENABLED";
    LUT4 i13678_2_lut (.A(baud_cnt[8]), .B(baud_cnt[0]), .Z(n17690)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13678_2_lut.init = 16'h8888;
    FD1P3DX bit_cnt_FSM_i5 (.D(n7971), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_223 (.A(baud_cnt[3]), .B(baud_cnt[10]), .C(baud_cnt[2]), 
         .D(baud_cnt[11]), .Z(n17546)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_223.init = 16'hfffe;
    LUT4 i2747_3_lut (.A(n6624), .B(\tx_data[4] ), .C(n2412[5]), .Z(n6625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i2747_3_lut.init = 16'hcaca;
    FD1P3BX bit_cnt_FSM_i0 (.D(n2447[0]), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(n2412[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i2746_3_lut (.A(\tx_data[2] ), .B(\tx_data[3] ), .C(n2412[4]), 
         .Z(n6624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i2746_3_lut.init = 16'hcaca;
    LUT4 i14118_2_lut (.A(n2412[4]), .B(n2412[3]), .Z(n18143)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i14118_2_lut.init = 16'h1111;
    FD1P3DX bit_cnt_FSM_i6 (.D(n7969), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i7 (.D(n7967), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3BX tx_50 (.D(tx_N_1401), .SP(bit_flag), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(67[10] 81[16])
    defparam tx_50.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_327 (.A(tx_phase[1]), .B(uart_busy), .Z(n19505)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_327.init = 16'h2222;
    FD1P3DX bit_cnt_FSM_i8 (.D(n7965), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i9 (.D(n7963), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i10 (.D(n7961), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(work_en_N_1395));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i11 (.D(n7959), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i12 (.D(n7957), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i13 (.D(n7955), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i14 (.D(n7953), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i15 (.D(n7951), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_302_3_lut (.A(tx_phase[1]), .B(uart_busy), .C(n16226), 
         .Z(n19480)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_302_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut (.A(tx_phase[1]), .B(uart_busy), .C(tx_phase[0]), 
         .D(tx_state[1]), .Z(n16371)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_293_3_lut_4_lut (.A(tx_phase[1]), .B(uart_busy), .C(n15576), 
         .D(n16226), .Z(n19471)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_293_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_3_lut_rep_286_4_lut (.A(n16226), .B(n19505), .C(tx_state[0]), 
         .D(n15576), .Z(n19464)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_3_lut_rep_286_4_lut.init = 16'h0080;
    FD1S3DX baud_cnt__i12 (.D(n41[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n41[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n41[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n41[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n41[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n41[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n41[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n41[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n41[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n41[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n41[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n41[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    LUT4 i3074_3_lut (.A(\tx_data[5] ), .B(\tx_data[6] ), .C(n2412[7]), 
         .Z(n6959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i3074_3_lut.init = 16'hcaca;
    LUT4 mux_728_i1_3_lut (.A(\tx_data[0] ), .B(\tx_data[1] ), .C(n2412[2]), 
         .Z(n3714[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam mux_728_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_308 (.A(tx_state[1]), .B(uart_busy), .Z(n19486)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_308.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut (.A(tx_state[1]), .B(uart_busy), .C(tx_phase[0]), 
         .D(n19522), .Z(\tx_phase_2__N_1173[0] )) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i7013_2_lut (.A(n18[12]), .B(n9805), .Z(n41[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i7013_2_lut.init = 16'h8888;
    LUT4 i3_3_lut_4_lut (.A(tx_state[1]), .B(uart_busy), .C(tx_state[0]), 
         .D(tx_phase[2]), .Z(sys_clk_c_enable_143)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i3_3_lut_4_lut.init = 16'h2000;
    LUT4 i6794_2_lut (.A(n18[11]), .B(n9805), .Z(n41[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6794_2_lut.init = 16'h8888;
    LUT4 i6793_2_lut (.A(n18[10]), .B(n9805), .Z(n41[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6793_2_lut.init = 16'h8888;
    LUT4 i6792_2_lut (.A(n18[9]), .B(n9805), .Z(n41[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6792_2_lut.init = 16'h8888;
    LUT4 i6791_2_lut (.A(n18[8]), .B(n9805), .Z(n41[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6791_2_lut.init = 16'h8888;
    LUT4 i6790_2_lut (.A(n18[7]), .B(n9805), .Z(n41[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6790_2_lut.init = 16'h8888;
    LUT4 i6789_2_lut (.A(n18[6]), .B(n9805), .Z(n41[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6789_2_lut.init = 16'h8888;
    LUT4 i6788_2_lut (.A(n18[5]), .B(n9805), .Z(n41[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6788_2_lut.init = 16'h8888;
    LUT4 i6787_2_lut (.A(n18[4]), .B(n9805), .Z(n41[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6787_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(n9805), .B(n18[3]), .Z(n41[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_224 (.A(n9805), .B(n18[2]), .Z(n41[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_224.init = 16'h8888;
    LUT4 i1_2_lut_adj_225 (.A(n9805), .B(n18[1]), .Z(n41[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_225.init = 16'h8888;
    LUT4 i6564_4_lut (.A(n17168), .B(n2412[0]), .C(n6958), .D(n2412[8]), 
         .Z(tx_N_1401)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i6564_4_lut.init = 16'h2232;
    LUT4 i1_4_lut_adj_226 (.A(n17166), .B(n2412[14]), .C(work_en_N_1395), 
         .D(n2412[15]), .Z(n17168)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i1_4_lut_adj_226.init = 16'hfffe;
    LUT4 i1_4_lut_adj_227 (.A(n2412[12]), .B(n2412[11]), .C(n2412[9]), 
         .D(n2412[13]), .Z(n17166)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i1_4_lut_adj_227.init = 16'hfffe;
    CCU2C add_18_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13817), .S0(n18[11]), .S1(n18[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_13.INIT0 = 16'haaaa;
    defparam add_18_13.INIT1 = 16'haaaa;
    defparam add_18_13.INJECT1_0 = "NO";
    defparam add_18_13.INJECT1_1 = "NO";
    CCU2C add_18_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13816), .COUT(n13817), .S0(n18[9]), .S1(n18[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_11.INIT0 = 16'haaaa;
    defparam add_18_11.INIT1 = 16'haaaa;
    defparam add_18_11.INJECT1_0 = "NO";
    defparam add_18_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_228 (.A(n9805), .B(n18[0]), .Z(n41[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_228.init = 16'h8888;
    FD1P3DX bit_cnt_FSM_i1 (.D(n7979), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i2 (.D(n7977), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i3 (.D(n7975), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_229 (.A(uart_busy), .B(baud_cnt[7]), .C(n16480), 
         .D(baud_cnt[4]), .Z(n9805)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_4_lut_adj_229.init = 16'ha2aa;
    FD1P3DX bit_cnt_FSM_i4 (.D(n7973), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i4.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(baud_cnt[11]), .B(n24_adj_1535), .C(n17838), .D(baud_cnt[9]), 
         .Z(bit_flag_N_1402)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12_4_lut.init = 16'h0004;
    LUT4 i6320_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(uart_busy), 
         .Z(sys_clk_c_enable_233)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6320_3_lut.init = 16'ha8a8;
    LUT4 i14459_4_lut_4_lut (.A(n2412[6]), .B(n18143), .C(n2412[5]), .D(n2412[7]), 
         .Z(n18152)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i14459_4_lut_4_lut.init = 16'hffae;
    LUT4 i14192_4_lut_4_lut_4_lut (.A(n2412[7]), .B(n3714[0]), .C(n6959), 
         .D(n2412[6]), .Z(n6960)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i14192_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 i11_4_lut (.A(n15_adj_1536), .B(n17907), .C(baud_cnt[6]), .D(baud_cnt[2]), 
         .Z(n24_adj_1535)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i11_4_lut.init = 16'h0002;
    LUT4 i13824_3_lut (.A(baud_cnt[4]), .B(baud_cnt[5]), .C(baud_cnt[8]), 
         .Z(n17838)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13824_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut (.A(baud_cnt[7]), .B(baud_cnt[0]), .Z(n15_adj_1536)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i13892_4_lut (.A(baud_cnt[12]), .B(baud_cnt[1]), .C(baud_cnt[10]), 
         .D(baud_cnt[3]), .Z(n17907)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13892_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_230 (.A(n17544), .B(n17690), .C(baud_cnt[5]), .D(n17546), 
         .Z(n16480)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_230.init = 16'hffbf;
    CCU2C add_18_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13815), .COUT(n13816), .S0(n18[7]), .S1(n18[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_9.INIT0 = 16'haaaa;
    defparam add_18_9.INIT1 = 16'haaaa;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    CCU2C add_18_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13814), .COUT(n13815), .S0(n18[5]), .S1(n18[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_7.INIT0 = 16'haaaa;
    defparam add_18_7.INIT1 = 16'haaaa;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    LUT4 i6380_2_lut (.A(work_en_N_1395), .B(bit_flag), .Z(n7959)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6380_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_4_lut (.A(n15576), .B(n19480), .C(n4), .D(\digits_left[2] ), 
         .Z(\digits_left_3__N_1321[2] )) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i2_3_lut_4_lut.init = 16'hfb04;
    CCU2C add_18_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13813), .COUT(n13814), .S0(n18[3]), .S1(n18[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_5.INIT0 = 16'haaaa;
    defparam add_18_5.INIT1 = 16'haaaa;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    CCU2C add_18_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13812), .COUT(n13813), .S0(n18[1]), .S1(n18[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_3.INIT0 = 16'haaaa;
    defparam add_18_3.INIT1 = 16'haaaa;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    CCU2C add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13812), .S1(n18[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_1.INIT0 = 16'h0000;
    defparam add_18_1.INIT1 = 16'h555a;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_231 (.A(n15576), .B(n19480), .C(\digits_left[2] ), 
         .D(n4), .Z(n16501)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_3_lut_4_lut_adj_231.init = 16'h0004;
    LUT4 n10_bdd_3_lut_14826_4_lut (.A(n15576), .B(n19480), .C(\digits_left[0] ), 
         .D(\digits_left[1] ), .Z(n19199)) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam n10_bdd_3_lut_14826_4_lut.init = 16'hfb04;
    LUT4 i6390_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[2]), 
         .Z(n7975)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6390_2_lut_3_lut.init = 16'h7070;
    LUT4 i6389_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[3]), 
         .Z(n7973)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6389_2_lut_3_lut.init = 16'h7070;
    LUT4 i6325_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[15]), 
         .Z(n2447[0])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6325_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6391_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[1]), 
         .Z(n7977)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6391_2_lut_3_lut.init = 16'h7070;
    LUT4 i6387_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[5]), 
         .Z(n7969)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6387_2_lut_3_lut.init = 16'h7070;
    LUT4 i6392_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[0]), 
         .Z(n7979)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6392_2_lut_3_lut.init = 16'h7070;
    LUT4 i6386_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[6]), 
         .Z(n7967)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6386_2_lut_3_lut.init = 16'h7070;
    LUT4 i6358_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[14]), 
         .Z(n7951)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6358_2_lut_3_lut.init = 16'h7070;
    LUT4 i6385_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[7]), 
         .Z(n7965)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6385_2_lut_3_lut.init = 16'h7070;
    LUT4 i6375_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[13]), 
         .Z(n7953)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6375_2_lut_3_lut.init = 16'h7070;
    LUT4 i6384_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[8]), 
         .Z(n7963)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6384_2_lut_3_lut.init = 16'h7070;
    LUT4 i6376_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[12]), 
         .Z(n7955)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6376_2_lut_3_lut.init = 16'h7070;
    LUT4 i6379_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[11]), 
         .Z(n7957)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6379_2_lut_3_lut.init = 16'h7070;
    LUT4 i3990_3_lut_4_lut (.A(bit_flag), .B(work_en_N_1395), .C(uart_busy), 
         .D(work_en_N_1392), .Z(n7882)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i3990_3_lut_4_lut.init = 16'hff70;
    LUT4 i6381_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[9]), 
         .Z(n7961)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6381_2_lut_3_lut.init = 16'h7070;
    LUT4 i6388_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1395), .C(n2412[4]), 
         .Z(n7971)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6388_2_lut_3_lut.init = 16'h7070;
    PFUMX i3073 (.BLUT(n6625), .ALUT(n6960), .C0(n18152), .Z(n6958));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \top_iic(IIC_CLK=26'b010011100010000) 
//

module \top_iic(IIC_CLK=26'b010011100010000)  (reg_index, GND_net, VCC_net, 
            sys_clk_c, sys_rst_n_N_472, reg_4a00_val, sensor_id, flag_done, 
            \reg_cfg[0] , led_c_1, \reg_cfg[9] , \reg_cfg[10] , \reg_cfg[1] , 
            \reg_cfg[2] , \reg_cfg[3] , \reg_cfg[4] , \reg_cfg[5] , 
            \reg_cfg[6] , \reg_cfg[7] , \reg_cfg[12] , cam_ready, \reg_cfg[15] , 
            \reg_cfg[13] , \current_state[6] , \reg_cfg[19] , \reg_cfg[18] , 
            \reg_cfg[17] , \reg_cfg[16] , sda_transmit, n18056, n18057, 
            n19455, n19465, i2c_sclk_0_c, \next_state[6] , n19461, 
            n19467, sda_transmit_en_N_1061, n4695, n4689, n18123, 
            n16261, n11, rd_first_done, n19452, n4807, n18062, n19, 
            i2c_sda_0_out) /* synthesis syn_module_defined=1 */ ;
    output [7:0]reg_index;
    input GND_net;
    input VCC_net;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]reg_4a00_val;
    output [15:0]sensor_id;
    output flag_done;
    input \reg_cfg[0] ;
    output led_c_1;
    input \reg_cfg[9] ;
    input \reg_cfg[10] ;
    input \reg_cfg[1] ;
    input \reg_cfg[2] ;
    input \reg_cfg[3] ;
    input \reg_cfg[4] ;
    input \reg_cfg[5] ;
    input \reg_cfg[6] ;
    input \reg_cfg[7] ;
    input \reg_cfg[12] ;
    input cam_ready;
    input \reg_cfg[15] ;
    input \reg_cfg[13] ;
    output \current_state[6] ;
    input \reg_cfg[19] ;
    input \reg_cfg[18] ;
    input \reg_cfg[17] ;
    input \reg_cfg[16] ;
    output sda_transmit;
    input n18056;
    input n18057;
    output n19455;
    output n19465;
    output i2c_sclk_0_c;
    output \next_state[6] ;
    output n19461;
    output n19467;
    output sda_transmit_en_N_1061;
    output [0:0]n4695;
    output [0:0]n4689;
    output n18123;
    output n16261;
    output n11;
    output rd_first_done;
    output n19452;
    input n4807;
    input n18062;
    output n19;
    input i2c_sda_0_out;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire ctrl_w0_r1;
    wire [7:0]data_read;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(30[17:26])
    wire [3:0]rd_byte_num;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(16[19:30])
    
    wire start;
    wire [15:0]addr;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(27[17:21])
    wire [14:0]n23;
    
    wire n5156, n15812, n15810, n15814, n15815;
    wire [7:0]rd_byte0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(31[17:25])
    
    wire n15816, n15813;
    wire [7:0]data_write;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(28[17:27])
    
    wire n16131, n15932;
    wire [14:0]cnt_div;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(33[18:25])
    
    wire n15963, n7486;
    wire [9:0]current_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n19314, n19177, n19180, n19174, n18925;
    wire [9:0]next_state_9__N_917;
    
    wire n19184, n18932;
    wire [9:0]next_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n19_c, n26_adj_1526, sys_clk_c_enable_54;
    
    ov9734_ctrl inst_ov9734_ctrl (.reg_index({reg_index}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .ctrl_w0_r1(ctrl_w0_r1), .reg_4a00_val({reg_4a00_val}), .data_read({data_read}), 
            .sensor_id({sensor_id}), .\rd_byte_num[0] (rd_byte_num[0]), 
            .flag_done(flag_done), .start(start), .addr({addr}), .\rd_byte_num[1] (rd_byte_num[1]), 
            .n24(n23[14]), .n5156(n5156), .n15812(n15812), .n25(n23[13]), 
            .n15810(n15810), .n26(n23[12]), .n15814(n15814), .n27(n23[11]), 
            .n15815(n15815), .rd_byte0({rd_byte0}), .n35(n23[3]), .n15816(n15816), 
            .n36(n23[2]), .n15813(n15813), .data_write({data_write}), 
            .\reg_cfg[0] (\reg_cfg[0] ), .led_c_1(led_c_1), .\reg_cfg[9] (\reg_cfg[9] ), 
            .\reg_cfg[10] (\reg_cfg[10] ), .\reg_cfg[1] (\reg_cfg[1] ), 
            .\reg_cfg[2] (\reg_cfg[2] ), .\reg_cfg[3] (\reg_cfg[3] ), .\reg_cfg[4] (\reg_cfg[4] ), 
            .\reg_cfg[5] (\reg_cfg[5] ), .\reg_cfg[6] (\reg_cfg[6] ), .\reg_cfg[7] (\reg_cfg[7] ), 
            .\reg_cfg[12] (\reg_cfg[12] ), .cam_ready(cam_ready), .n16131(n16131), 
            .n15932(n15932), .\cnt_div[7] (cnt_div[7]), .\cnt_div[5] (cnt_div[5]), 
            .\cnt_div[0] (cnt_div[0]), .\cnt_div[1] (cnt_div[1]), .\cnt_div[9] (cnt_div[9]), 
            .n15963(n15963), .n7486(n7486), .\cnt_div[10] (cnt_div[10]), 
            .\cnt_div[4] (cnt_div[4]), .\cnt_div[8] (cnt_div[8]), .\reg_cfg[15] (\reg_cfg[15] ), 
            .\reg_cfg[13] (\reg_cfg[13] ), .\current_state[7] (current_state[7]), 
            .n19314(n19314), .\current_state[4] (current_state[4]), .n19177(n19177), 
            .\current_state[3] (current_state[3]), .n19180(n19180), .\current_state[5] (current_state[5]), 
            .n19174(n19174), .\current_state[9] (current_state[9]), .n18925(n18925), 
            .\current_state[6] (\current_state[6] ), .\next_state_9__N_917[6] (next_state_9__N_917[6]), 
            .\current_state[2] (current_state[2]), .n19184(n19184), .\current_state[8] (current_state[8]), 
            .n18932(n18932), .\next_state[0] (next_state[0]), .\current_state[0] (current_state[0]), 
            .n19(n19_c), .n26_adj_3(n26_adj_1526), .\reg_cfg[19] (\reg_cfg[19] ), 
            .\reg_cfg[18] (\reg_cfg[18] ), .\reg_cfg[17] (\reg_cfg[17] ), 
            .\reg_cfg[16] (\reg_cfg[16] ), .sys_clk_c_enable_54(sys_clk_c_enable_54)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(36[17] 56[6])
    \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000)  inst_i2c_drive (.current_state({Open_6, 
            current_state[8:7], \current_state[6] , current_state[5], 
            Open_7, Open_8, Open_9, Open_10, current_state[0]}), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .cnt_div({Open_11, Open_12, Open_13, Open_14, Open_15, 
            cnt_div[9], Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, Open_22, Open_23, cnt_div[0]}), .sys_clk_c(sys_clk_c), 
            .\next_state[0] (next_state[0]), .data_read({data_read}), .sda_transmit(sda_transmit), 
            .flag_done(flag_done), .n18056(n18056), .n18057(n18057), .rd_byte0({rd_byte0}), 
            .n19455(n19455), .n19(n19_c), .data_write({data_write}), .addr({addr}), 
            .start(start), .\cnt_div[10] (cnt_div[10]), .\current_state[4] (current_state[4]), 
            .\current_state[3] (current_state[3]), .n19465(n19465), .i2c_sclk_0_c(i2c_sclk_0_c), 
            .sys_clk_c_enable_54(sys_clk_c_enable_54), .n26(n26_adj_1526), 
            .n5156(n5156), .\cnt_div[1] (cnt_div[1]), .\current_state[2] (current_state[2]), 
            .\next_state[6] (\next_state[6] ), .\rd_byte_num[1] (rd_byte_num[1]), 
            .\rd_byte_num[0] (rd_byte_num[0]), .\current_state[9] (current_state[9]), 
            .n15812(n15812), .n15810(n15810), .n15814(n15814), .n15815(n15815), 
            .\cnt_div[8] (cnt_div[8]), .\cnt_div[7] (cnt_div[7]), .\cnt_div[5] (cnt_div[5]), 
            .\cnt_div[4] (cnt_div[4]), .n15816(n15816), .n15813(n15813), 
            .n19461(n19461), .ctrl_w0_r1(ctrl_w0_r1), .n19467(n19467), 
            .sda_transmit_en_N_1061(sda_transmit_en_N_1061), .n4695({n4695}), 
            .n4689({n4689}), .GND_net(GND_net), .VCC_net(VCC_net), .n18123(n18123), 
            .n16261(n16261), .n11(n11), .rd_first_done(rd_first_done), 
            .n19452(n19452), .n15932(n15932), .n7486(n7486), .n15963(n15963), 
            .n4807(n4807), .n18062(n18062), .n16131(n16131), .n18932(n18932), 
            .n19_adj_1(n19), .n25(n23[13]), .n24(n23[14]), .n18925(n18925), 
            .i2c_sda_0_out(i2c_sda_0_out), .n27(n23[11]), .n26_adj_2(n23[12]), 
            .n35(n23[3]), .n36(n23[2]), .n19314(n19314), .\next_state_9__N_917[6] (next_state_9__N_917[6]), 
            .n19184(n19184), .n19180(n19180), .n19177(n19177), .n19174(n19174)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(64[7] 78[6])
    
endmodule
//
// Verilog Description of module ov9734_ctrl
//

module ov9734_ctrl (reg_index, GND_net, VCC_net, sys_clk_c, sys_rst_n_N_472, 
            ctrl_w0_r1, reg_4a00_val, data_read, sensor_id, \rd_byte_num[0] , 
            flag_done, start, addr, \rd_byte_num[1] , n24, n5156, 
            n15812, n25, n15810, n26, n15814, n27, n15815, rd_byte0, 
            n35, n15816, n36, n15813, data_write, \reg_cfg[0] , 
            led_c_1, \reg_cfg[9] , \reg_cfg[10] , \reg_cfg[1] , \reg_cfg[2] , 
            \reg_cfg[3] , \reg_cfg[4] , \reg_cfg[5] , \reg_cfg[6] , 
            \reg_cfg[7] , \reg_cfg[12] , cam_ready, n16131, n15932, 
            \cnt_div[7] , \cnt_div[5] , \cnt_div[0] , \cnt_div[1] , 
            \cnt_div[9] , n15963, n7486, \cnt_div[10] , \cnt_div[4] , 
            \cnt_div[8] , \reg_cfg[15] , \reg_cfg[13] , \current_state[7] , 
            n19314, \current_state[4] , n19177, \current_state[3] , 
            n19180, \current_state[5] , n19174, \current_state[9] , 
            n18925, \current_state[6] , \next_state_9__N_917[6] , \current_state[2] , 
            n19184, \current_state[8] , n18932, \next_state[0] , \current_state[0] , 
            n19, n26_adj_3, \reg_cfg[19] , \reg_cfg[18] , \reg_cfg[17] , 
            \reg_cfg[16] , sys_clk_c_enable_54) /* synthesis syn_module_defined=1 */ ;
    output [7:0]reg_index;
    input GND_net;
    input VCC_net;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output ctrl_w0_r1;
    output [7:0]reg_4a00_val;
    input [7:0]data_read;
    output [15:0]sensor_id;
    output \rd_byte_num[0] ;
    input flag_done;
    output start;
    output [15:0]addr;
    output \rd_byte_num[1] ;
    input n24;
    input n5156;
    output n15812;
    input n25;
    output n15810;
    input n26;
    output n15814;
    input n27;
    output n15815;
    input [7:0]rd_byte0;
    input n35;
    output n15816;
    input n36;
    output n15813;
    output [7:0]data_write;
    input \reg_cfg[0] ;
    output led_c_1;
    input \reg_cfg[9] ;
    input \reg_cfg[10] ;
    input \reg_cfg[1] ;
    input \reg_cfg[2] ;
    input \reg_cfg[3] ;
    input \reg_cfg[4] ;
    input \reg_cfg[5] ;
    input \reg_cfg[6] ;
    input \reg_cfg[7] ;
    input \reg_cfg[12] ;
    input cam_ready;
    input n16131;
    output n15932;
    input \cnt_div[7] ;
    input \cnt_div[5] ;
    input \cnt_div[0] ;
    input \cnt_div[1] ;
    input \cnt_div[9] ;
    input n15963;
    input n7486;
    input \cnt_div[10] ;
    input \cnt_div[4] ;
    input \cnt_div[8] ;
    input \reg_cfg[15] ;
    input \reg_cfg[13] ;
    input \current_state[7] ;
    output n19314;
    input \current_state[4] ;
    output n19177;
    input \current_state[3] ;
    output n19180;
    input \current_state[5] ;
    output n19174;
    input \current_state[9] ;
    output n18925;
    input \current_state[6] ;
    output \next_state_9__N_917[6] ;
    input \current_state[2] ;
    output n19184;
    input \current_state[8] ;
    output n18932;
    input \next_state[0] ;
    input \current_state[0] ;
    input n19;
    output n26_adj_3;
    input \reg_cfg[19] ;
    input \reg_cfg[18] ;
    input \reg_cfg[17] ;
    input \reg_cfg[16] ;
    output sys_clk_c_enable_54;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [23:0]reg_cfg;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(45[16:23])
    
    wire n39;
    wire [7:0]n2008;
    wire [19:0]n85;
    wire [19:0]n107;
    
    wire n13849;
    wire [22:0]wait_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(280[16:24])
    wire [22:0]n464;
    
    wire flag_done_d2, flag_done_d1, n13848, n7889, sys_clk_c_enable_105, 
        n6514, sys_clk_c_enable_98, sys_clk_c_enable_82;
    wire [22:0]wait_cnt_22__N_520;
    
    wire n7857;
    wire [3:0]rd_byte_num_3__N_481;
    
    wire n18619, n17282, n16814, n16826, n16824, n16810, n45, 
        n19494, n19488, n10851, n17240, n17242, start_N_728, sys_clk_c_enable_218, 
        n16158, n126, n127, n19474, n19534;
    wire [1:0]rd_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(283[16:22])
    
    wire n15172, n19533, sys_clk_c_enable_181, n8053, n8051, n8049, 
        n8047, n8045, n10, n8043, n6489, n6523, n6483, n15830;
    wire [15:0]addr_15__N_455;
    
    wire n8041, n16543, n18641, sys_clk_c_enable_119, start_N_727, 
        n16180, n13847, n18640, n16746, n7921, n13846, n13845, 
        sys_clk_c_enable_198;
    wire [7:0]n37;
    wire [19:0]final_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(282[16:25])
    
    wire sys_clk_c_enable_217, n13844, n15657, n19516, n19448, n13843;
    wire [15:0]n2341;
    
    wire sys_clk_c_enable_189, n13842, n13841, n7944, sys_clk_c_enable_225, 
        n13840, n19453, start_N_744, n13839, n172, n15358, n16515, 
        n19426, n17686, delay_swrst, n16190, n19450, n17919, n17734, 
        n17450, n17448, n17879, n17746, n17436, n17442, n16804, 
        n17798, n16796, n17901, n15420, n15, n17418, n2023, n45_adj_1524, 
        n20, n17420, n254, n17040, n16295, n17034, n16640, n19475, 
        n6626, n15886, n19517, n17306, n15754, n17232, n5, n15466, 
        n17246, n17861, n16798, n16850, n16862, n17891, n16846, 
        n17680, n16838, n17778, n16842, n16836, n16744, n15609, 
        n13973, n13972, n13971, n13970, n13969, n13968, n13967, 
        n13966, n13965, n13964, n13963, n13962, n13961, n13960, 
        n17230, n17228, n18066;
    
    ROM256X1 reg_index_7__I_0_148_Mux_11 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[11])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8C007F8060003D800042C03FC0381303FC0070060100 */ ;
    LUT4 i6770_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[17]), .Z(n107[17])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6770_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_23 (.A0(wait_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13849), .S0(n464[21]), .S1(n464[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_23.INIT0 = 16'haaaa;
    defparam add_65_23.INIT1 = 16'haaaa;
    defparam add_65_23.INJECT1_0 = "NO";
    defparam add_65_23.INJECT1_1 = "NO";
    LUT4 i6771_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[18]), .Z(n107[18])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6771_2_lut_3_lut.init = 16'h8080;
    LUT4 i6772_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[19]), .Z(n107[19])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6772_2_lut_3_lut.init = 16'h8080;
    FD1S3DX flag_done_d2_111 (.D(flag_done_d1), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(37[14] 40[12])
    defparam flag_done_d2_111.GSR = "ENABLED";
    CCU2C add_65_21 (.A0(wait_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13848), .COUT(n13849), .S0(n464[19]), .S1(n464[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_21.INIT0 = 16'haaaa;
    defparam add_65_21.INIT1 = 16'haaaa;
    defparam add_65_21.INJECT1_0 = "NO";
    defparam add_65_21.INJECT1_1 = "NO";
    FD1S3DX ctrl_w0_r1_115 (.D(n7889), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(ctrl_w0_r1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam ctrl_w0_r1_115.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i0 (.D(data_read[0]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i0.GSR = "ENABLED";
    FD1S3BX state_FSM_i1 (.D(n6514), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(n2008[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i0 (.D(data_read[0]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i0.GSR = "ENABLED";
    FD1P3DX wait_cnt_i0 (.D(wait_cnt_22__N_520[0]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i0.GSR = "ENABLED";
    FD1S3DX rd_byte_num_i0 (.D(n7857), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\rd_byte_num[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam rd_byte_num_i0.GSR = "ENABLED";
    FD1S3DX flag_done_d1_110 (.D(flag_done), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(37[14] 40[12])
    defparam flag_done_d1_110.GSR = "ENABLED";
    LUT4 reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut (.A(rd_byte_num_3__N_481[0]), 
         .B(n18619), .C(n2008[4]), .D(n17282), .Z(reg_cfg[20])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut.init = 16'h5554;
    ROM256X1 reg_index_7__I_0_148_Mux_21 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[21])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC00000400000000000FFFFFFFFFFFFFFFFFFFFFFFC */ ;
    LUT4 i1_4_lut (.A(n16814), .B(n16826), .C(n16824), .D(n16810), .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i6756_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[3]), .Z(n107[3])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6756_2_lut_3_lut.init = 16'h8080;
    ROM256X1 reg_index_7__I_0_148_Mux_8 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[8])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC55555552AA9553D6BEAAAAAAD4AAAAAA92AEAA855 */ ;
    LUT4 i6964_3_lut_4_lut_4_lut (.A(n19494), .B(start), .C(n2008[4]), 
         .D(n19488), .Z(n10851)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(409[25:51])
    defparam i6964_3_lut_4_lut_4_lut.init = 16'h7505;
    LUT4 i6312_4_lut_4_lut (.A(n19494), .B(start), .C(n17240), .D(n17242), 
         .Z(start_N_728)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(409[25:51])
    defparam i6312_4_lut_4_lut.init = 16'h4447;
    LUT4 i6933_2_lut_3_lut_4_lut (.A(n19494), .B(start), .C(n2008[4]), 
         .D(n19488), .Z(sys_clk_c_enable_218)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(409[25:51])
    defparam i6933_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i6757_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[4]), .Z(n107[4])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6757_2_lut_3_lut.init = 16'h8080;
    LUT4 i14197_3_lut (.A(n16158), .B(n126), .C(reg_index[6]), .Z(n127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i14197_3_lut.init = 16'hcaca;
    LUT4 i6758_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[5]), .Z(n107[5])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6758_2_lut_3_lut.init = 16'h8080;
    LUT4 i19_4_lut_then_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n2008[4]), 
         .D(n19474), .Z(n19534)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B+!(C (D))))) */ ;
    defparam i19_4_lut_then_4_lut.init = 16'h47ff;
    LUT4 i1_3_lut_4_lut (.A(n19494), .B(start), .C(rd_cnt[1]), .D(rd_cnt[0]), 
         .Z(n15172)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(409[25:51])
    defparam i1_3_lut_4_lut.init = 16'h0770;
    LUT4 i19_4_lut_else_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n2008[4]), 
         .D(n19474), .Z(n19533)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam i19_4_lut_else_4_lut.init = 16'h44fc;
    FD1P3DX addr_i3 (.D(n8053), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i3.GSR = "ENABLED";
    FD1P3DX addr_i8 (.D(n8051), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i8.GSR = "ENABLED";
    FD1P3DX addr_i9 (.D(n8049), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i9.GSR = "ENABLED";
    FD1P3DX addr_i10 (.D(n8047), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i10.GSR = "ENABLED";
    FD1P3DX addr_i11 (.D(n8045), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i11.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n10), .B(wait_cnt[8]), .Z(n16814)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut.init = 16'hbbbb;
    FD1P3DX addr_i12 (.D(n8043), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i12.GSR = "ENABLED";
    FD1S3BX rd_byte_num_i1 (.D(rd_byte_num_3__N_481[1]), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(\rd_byte_num[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam rd_byte_num_i1.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n24), .B(n5156), .C(start), .Z(n15812)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_adj_174 (.A(n25), .B(n5156), .C(start), .Z(n15810)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_174.init = 16'h2020;
    LUT4 i1_3_lut_adj_175 (.A(n26), .B(n5156), .C(start), .Z(n15814)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_175.init = 16'h2020;
    LUT4 i1_3_lut_adj_176 (.A(n27), .B(n5156), .C(start), .Z(n15815)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_176.init = 16'h2020;
    FD1P3DX wait_cnt_i22 (.D(wait_cnt_22__N_520[22]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i22.GSR = "ENABLED";
    FD1P3DX wait_cnt_i21 (.D(wait_cnt_22__N_520[21]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i21.GSR = "ENABLED";
    FD1P3DX wait_cnt_i20 (.D(wait_cnt_22__N_520[20]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i20.GSR = "ENABLED";
    FD1P3DX wait_cnt_i19 (.D(wait_cnt_22__N_520[19]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i19.GSR = "ENABLED";
    FD1P3DX wait_cnt_i18 (.D(wait_cnt_22__N_520[18]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i18.GSR = "ENABLED";
    FD1P3DX wait_cnt_i17 (.D(wait_cnt_22__N_520[17]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i17.GSR = "ENABLED";
    FD1P3DX wait_cnt_i16 (.D(wait_cnt_22__N_520[16]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i16.GSR = "ENABLED";
    FD1P3DX wait_cnt_i15 (.D(wait_cnt_22__N_520[15]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i15.GSR = "ENABLED";
    FD1P3DX wait_cnt_i14 (.D(wait_cnt_22__N_520[14]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i14.GSR = "ENABLED";
    FD1P3DX wait_cnt_i13 (.D(wait_cnt_22__N_520[13]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i13.GSR = "ENABLED";
    FD1P3DX wait_cnt_i12 (.D(wait_cnt_22__N_520[12]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i12.GSR = "ENABLED";
    FD1P3DX wait_cnt_i11 (.D(wait_cnt_22__N_520[11]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i11.GSR = "ENABLED";
    FD1P3DX wait_cnt_i10 (.D(wait_cnt_22__N_520[10]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i10.GSR = "ENABLED";
    FD1P3DX wait_cnt_i9 (.D(wait_cnt_22__N_520[9]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i9.GSR = "ENABLED";
    FD1P3DX wait_cnt_i8 (.D(wait_cnt_22__N_520[8]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i8.GSR = "ENABLED";
    FD1P3DX wait_cnt_i7 (.D(wait_cnt_22__N_520[7]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i7.GSR = "ENABLED";
    FD1P3DX wait_cnt_i6 (.D(wait_cnt_22__N_520[6]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i6.GSR = "ENABLED";
    LUT4 i6759_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[6]), .Z(n107[6])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6759_2_lut_3_lut.init = 16'h8080;
    FD1P3DX wait_cnt_i5 (.D(wait_cnt_22__N_520[5]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i5.GSR = "ENABLED";
    FD1P3DX wait_cnt_i4 (.D(wait_cnt_22__N_520[4]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i4.GSR = "ENABLED";
    FD1P3DX wait_cnt_i3 (.D(wait_cnt_22__N_520[3]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i3.GSR = "ENABLED";
    FD1P3DX wait_cnt_i2 (.D(wait_cnt_22__N_520[2]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i2.GSR = "ENABLED";
    FD1P3DX wait_cnt_i1 (.D(wait_cnt_22__N_520[1]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam wait_cnt_i1.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i15 (.D(rd_byte0[7]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i15.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i14 (.D(rd_byte0[6]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i14.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i13 (.D(rd_byte0[5]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i13.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i12 (.D(rd_byte0[4]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i12.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i11 (.D(rd_byte0[3]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i11.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i10 (.D(rd_byte0[2]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i10.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i9 (.D(rd_byte0[1]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i9.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i8 (.D(rd_byte0[0]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i8.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i7 (.D(data_read[7]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i7.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i6 (.D(data_read[6]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i6.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i5 (.D(data_read[5]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i5.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i4 (.D(data_read[4]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i4.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i3 (.D(data_read[3]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i3.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i2 (.D(data_read[2]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i2.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i1 (.D(data_read[1]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam sensor_id_i0_i1.GSR = "ENABLED";
    FD1P3DX state_FSM_i6 (.D(VCC_net), .SP(sys_clk_c_enable_98), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_byte_num_3__N_481[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3DX state_FSM_i5 (.D(n6489), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3DX state_FSM_i4 (.D(n6523), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3DX state_FSM_i3 (.D(n6483), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3DX state_FSM_i2 (.D(n15830), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i7 (.D(data_read[7]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i7.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i6 (.D(data_read[6]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i6.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i5 (.D(data_read[5]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i5.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i4 (.D(data_read[4]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i4.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i3 (.D(data_read[3]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i3.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i2 (.D(data_read[2]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i2.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i1 (.D(data_read[1]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam reg_4a00_val_i0_i1.GSR = "ENABLED";
    FD1S3DX addr_i7 (.D(addr_15__N_455[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i7.GSR = "ENABLED";
    FD1S3DX addr_i6 (.D(addr_15__N_455[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i6.GSR = "ENABLED";
    FD1S3DX addr_i5 (.D(addr_15__N_455[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i5.GSR = "ENABLED";
    FD1S3DX addr_i4 (.D(addr_15__N_455[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i4.GSR = "ENABLED";
    FD1S3DX addr_i2 (.D(addr_15__N_455[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i2.GSR = "ENABLED";
    FD1S3DX addr_i1 (.D(addr_15__N_455[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i1.GSR = "ENABLED";
    FD1P3DX addr_i13 (.D(n8041), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i13.GSR = "ENABLED";
    FD1P3DX addr_i14 (.D(n16543), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i14.GSR = "ENABLED";
    LUT4 reg_index_3__bdd_2_lut_14514 (.A(reg_index[3]), .B(reg_index[5]), 
         .Z(n18641)) /* synthesis lut_function=(A (B)) */ ;
    defparam reg_index_3__bdd_2_lut_14514.init = 16'h8888;
    FD1P3DX start_114 (.D(start_N_727), .SP(sys_clk_c_enable_119), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(start)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam start_114.GSR = "ENABLED";
    FD1P3DX addr_i15 (.D(n16180), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i15.GSR = "ENABLED";
    CCU2C add_65_19 (.A0(wait_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13847), .COUT(n13848), .S0(n464[17]), .S1(n464[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_19.INIT0 = 16'haaaa;
    defparam add_65_19.INIT1 = 16'haaaa;
    defparam add_65_19.INJECT1_0 = "NO";
    defparam add_65_19.INJECT1_1 = "NO";
    LUT4 reg_index_3__bdd_4_lut_14513 (.A(reg_index[3]), .B(reg_index[5]), 
         .C(reg_index[0]), .D(reg_index[1]), .Z(n18640)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A !(B (C+(D))))) */ ;
    defparam reg_index_3__bdd_4_lut_14513.init = 16'h4ec8;
    LUT4 i1_2_lut_adj_177 (.A(reg_index[1]), .B(reg_index[5]), .Z(n16746)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(318[25:39])
    defparam i1_2_lut_adj_177.init = 16'heeee;
    LUT4 i1_3_lut_adj_178 (.A(n35), .B(n5156), .C(start), .Z(n15816)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_178.init = 16'h2020;
    LUT4 i1_3_lut_adj_179 (.A(n36), .B(n5156), .C(start), .Z(n15813)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_179.init = 16'h2020;
    LUT4 i6404_2_lut (.A(n464[17]), .B(n7921), .Z(wait_cnt_22__N_520[17])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6404_2_lut.init = 16'h8888;
    CCU2C add_65_17 (.A0(wait_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13846), .COUT(n13847), .S0(n464[15]), .S1(n464[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_17.INIT0 = 16'haaaa;
    defparam add_65_17.INIT1 = 16'haaaa;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    CCU2C add_65_15 (.A0(wait_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13845), .COUT(n13846), .S0(n464[13]), .S1(n464[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_15.INIT0 = 16'haaaa;
    defparam add_65_15.INIT1 = 16'haaaa;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    LUT4 i6760_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[7]), .Z(n107[7])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6760_2_lut_3_lut.init = 16'h8080;
    LUT4 i6761_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[8]), .Z(n107[8])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6761_2_lut_3_lut.init = 16'h8080;
    LUT4 i6762_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[9]), .Z(n107[9])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6762_2_lut_3_lut.init = 16'h8080;
    FD1P3DX reg_index_2104__i0 (.D(n37[0]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i0.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i0 (.D(n107[0]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i0.GSR = "ENABLED";
    CCU2C add_65_13 (.A0(wait_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13844), .COUT(n13845), .S0(n464[11]), .S1(n464[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_13.INIT0 = 16'haaaa;
    defparam add_65_13.INIT1 = 16'haaaa;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    LUT4 i6763_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[10]), .Z(n107[10])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6763_2_lut_3_lut.init = 16'h8080;
    FD1P3DX rd_cnt_2108__i0 (.D(n15657), .SP(sys_clk_c_enable_218), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(395[35:48])
    defparam rd_cnt_2108__i0.GSR = "ENABLED";
    LUT4 n18641_bdd_4_lut (.A(n18641), .B(n18640), .C(reg_index[2]), .D(n19516), 
         .Z(n19448)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n18641_bdd_4_lut.init = 16'h00ca;
    CCU2C add_65_11 (.A0(wait_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13843), .COUT(n13844), .S0(n464[9]), .S1(n464[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_11.INIT0 = 16'haaaa;
    defparam add_65_11.INIT1 = 16'haaaa;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    LUT4 i6764_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[11]), .Z(n107[11])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6764_2_lut_3_lut.init = 16'h8080;
    LUT4 i2675_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[2]), 
         .Z(addr_15__N_455[2])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2675_3_lut.init = 16'hdcdc;
    LUT4 i6765_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[12]), .Z(n107[12])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6765_2_lut_3_lut.init = 16'h8080;
    LUT4 i227_2_lut_rep_278 (.A(n39), .B(n2008[3]), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i227_2_lut_rep_278.init = 16'h4444;
    LUT4 i6766_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[13]), .Z(n107[13])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6766_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_9 (.A0(wait_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13842), .COUT(n13843), .S0(n464[7]), .S1(n464[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_9.INIT0 = 16'haaaa;
    defparam add_65_9.INIT1 = 16'haaaa;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    CCU2C add_65_7 (.A0(wait_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13841), .COUT(n13842), .S0(n464[5]), .S1(n464[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_7.INIT0 = 16'haaaa;
    defparam add_65_7.INIT1 = 16'haaaa;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    FD1P3DX addr_i0 (.D(n7944), .SP(sys_clk_c_enable_181), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam addr_i0.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i0 (.D(\reg_cfg[0] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i0.GSR = "ENABLED";
    CCU2C add_65_5 (.A0(wait_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13840), .COUT(n13841), .S0(n464[3]), .S1(n464[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_5.INIT0 = 16'haaaa;
    defparam add_65_5.INIT1 = 16'haaaa;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    LUT4 i6767_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[14]), .Z(n107[14])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6767_2_lut_3_lut.init = 16'h8080;
    LUT4 i1677_3_lut (.A(n2008[1]), .B(n39), .C(n2008[3]), .Z(sys_clk_c_enable_217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i1677_3_lut.init = 16'hcaca;
    LUT4 i6299_2_lut_rep_271_3_lut (.A(n19453), .B(start_N_744), .C(n2008[1]), 
         .Z(sys_clk_c_enable_225)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i6299_2_lut_rep_271_3_lut.init = 16'hd0d0;
    CCU2C add_65_3 (.A0(wait_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13839), .COUT(n13840), .S0(n464[1]), .S1(n464[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_3.INIT0 = 16'haaaa;
    defparam add_65_3.INIT1 = 16'haaaa;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    CCU2C add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13839), .S1(n464[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(424[41:56])
    defparam add_65_1.INIT0 = 16'h0000;
    defparam add_65_1.INIT1 = 16'h555a;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    LUT4 i6909_2_lut_rep_310 (.A(rd_cnt[0]), .B(rd_cnt[1]), .Z(n19488)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6909_2_lut_rep_310.init = 16'h8888;
    LUT4 i6410_2_lut (.A(n464[13]), .B(n7921), .Z(wait_cnt_22__N_520[13])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6410_2_lut.init = 16'h8888;
    LUT4 n172_bdd_4_lut (.A(n172), .B(n15358), .C(n16515), .D(reg_index[5]), 
         .Z(n19426)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n172_bdd_4_lut.init = 16'hf044;
    LUT4 i6768_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[15]), .Z(n107[15])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6768_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_4_lut (.A(reg_index[2]), .B(reg_index[0]), .C(n17686), 
         .D(reg_index[4]), .Z(n16515)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(355[29:54])
    defparam i1_4_lut_4_lut.init = 16'h0004;
    LUT4 i6414_2_lut (.A(n464[11]), .B(n7921), .Z(wait_cnt_22__N_520[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6414_2_lut.init = 16'h8888;
    LUT4 i6415_2_lut (.A(n464[10]), .B(n7921), .Z(wait_cnt_22__N_520[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6415_2_lut.init = 16'h8888;
    LUT4 i6416_2_lut (.A(n464[9]), .B(n7921), .Z(wait_cnt_22__N_520[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6416_2_lut.init = 16'h8888;
    LUT4 i6417_2_lut (.A(n464[8]), .B(n7921), .Z(wait_cnt_22__N_520[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6417_2_lut.init = 16'h8888;
    LUT4 i6418_2_lut (.A(n464[7]), .B(n7921), .Z(wait_cnt_22__N_520[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6418_2_lut.init = 16'h8888;
    FD1P3DX delay_swrst_128 (.D(start_N_744), .SP(sys_clk_c_enable_198), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(delay_swrst)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam delay_swrst_128.GSR = "ENABLED";
    FD1P3DX cfg_done_120 (.D(VCC_net), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam cfg_done_120.GSR = "ENABLED";
    LUT4 i6419_2_lut (.A(n464[6]), .B(n7921), .Z(wait_cnt_22__N_520[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6419_2_lut.init = 16'h8888;
    LUT4 i6819_2_lut_3_lut (.A(reg_index[1]), .B(reg_index[2]), .C(reg_index[0]), 
         .Z(n172)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i6819_2_lut_3_lut.init = 16'h8080;
    LUT4 i6420_2_lut (.A(n464[5]), .B(n7921), .Z(wait_cnt_22__N_520[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6420_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_180 (.A(reg_index[1]), .B(reg_index[2]), .C(reg_index[0]), 
         .D(reg_index[3]), .Z(n16190)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_3_lut_4_lut_adj_180.init = 16'h8000;
    LUT4 i6421_2_lut (.A(n464[4]), .B(n7921), .Z(wait_cnt_22__N_520[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6421_2_lut.init = 16'h8888;
    LUT4 i6422_2_lut (.A(n464[3]), .B(n7921), .Z(wait_cnt_22__N_520[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6422_2_lut.init = 16'h8888;
    LUT4 i6423_2_lut (.A(n464[2]), .B(n7921), .Z(wait_cnt_22__N_520[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6423_2_lut.init = 16'h8888;
    LUT4 i6424_2_lut (.A(n464[1]), .B(n7921), .Z(wait_cnt_22__N_520[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6424_2_lut.init = 16'h8888;
    LUT4 mux_265_i2_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[1]), 
         .D(\reg_cfg[9] ), .Z(n2341[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_181 (.A(n17919), .B(n17734), .C(n17450), .D(n17448), 
         .Z(n39)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_181.init = 16'hfff7;
    LUT4 i13904_4_lut (.A(final_cnt[2]), .B(n17879), .C(n17746), .D(final_cnt[0]), 
         .Z(n17919)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13904_4_lut.init = 16'h8000;
    LUT4 i13722_2_lut (.A(final_cnt[8]), .B(final_cnt[16]), .Z(n17734)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13722_2_lut.init = 16'h8888;
    LUT4 mux_265_i3_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[2]), 
         .D(\reg_cfg[10] ), .Z(n2341[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_182 (.A(final_cnt[18]), .B(final_cnt[11]), .C(n17436), 
         .D(final_cnt[7]), .Z(n17450)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_182.init = 16'hfffd;
    LUT4 reg_index_2__bdd_4_lut (.A(reg_index[2]), .B(reg_index[0]), .C(reg_index[3]), 
         .D(reg_index[1]), .Z(n18619)) /* synthesis lut_function=((B (C+(D))+!B !(C (D)))+!A) */ ;
    defparam reg_index_2__bdd_4_lut.init = 16'hdff7;
    LUT4 i1_4_lut_adj_183 (.A(final_cnt[12]), .B(n17442), .C(final_cnt[14]), 
         .D(final_cnt[19]), .Z(n17448)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_183.init = 16'hfffe;
    LUT4 i13865_4_lut (.A(final_cnt[13]), .B(final_cnt[3]), .C(final_cnt[17]), 
         .D(final_cnt[15]), .Z(n17879)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13865_4_lut.init = 16'h8000;
    LUT4 i13734_2_lut (.A(final_cnt[1]), .B(final_cnt[4]), .Z(n17746)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13734_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_184 (.A(final_cnt[6]), .B(final_cnt[9]), .Z(n17436)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_184.init = 16'heeee;
    LUT4 i1_2_lut_adj_185 (.A(final_cnt[5]), .B(final_cnt[10]), .Z(n17442)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_185.init = 16'heeee;
    FD1P3DX reg_index_2104__i1 (.D(n37[1]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i1.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i2 (.D(n37[2]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i2.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i3 (.D(n37[3]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i3.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i4 (.D(n37[4]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i4.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i5 (.D(n37[5]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i5.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i6 (.D(n37[6]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i6.GSR = "ENABLED";
    FD1P3DX reg_index_2104__i7 (.D(n37[7]), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i1 (.D(n107[1]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i1.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i2 (.D(n107[2]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i2.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i3 (.D(n107[3]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i3.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i4 (.D(n107[4]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i4.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i5 (.D(n107[5]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i5.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i6 (.D(n107[6]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i6.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i7 (.D(n107[7]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i8 (.D(n107[8]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i8.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i9 (.D(n107[9]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i9.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i10 (.D(n107[10]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i10.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i11 (.D(n107[11]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i11.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i12 (.D(n107[12]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i12.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i13 (.D(n107[13]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i13.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i14 (.D(n107[14]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i14.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i15 (.D(n107[15]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i15.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i16 (.D(n107[16]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i16.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i17 (.D(n107[17]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i17.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i18 (.D(n107[18]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i18.GSR = "ENABLED";
    FD1P3DX final_cnt_2106__i19 (.D(n107[19]), .SP(sys_clk_c_enable_217), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106__i19.GSR = "ENABLED";
    FD1P3DX rd_cnt_2108__i1 (.D(n15172), .SP(sys_clk_c_enable_218), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(395[35:48])
    defparam rd_cnt_2108__i1.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i1 (.D(\reg_cfg[1] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i1.GSR = "ENABLED";
    LUT4 i6413_2_lut (.A(n464[12]), .B(n7921), .Z(wait_cnt_22__N_520[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6413_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_186 (.A(n16804), .B(n17798), .C(wait_cnt[10]), .D(n16796), 
         .Z(n16826)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_186.init = 16'hffbf;
    FD1P3DX data_write__ret0_i2 (.D(\reg_cfg[2] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i2.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i3 (.D(\reg_cfg[3] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i3.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i4 (.D(\reg_cfg[4] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i4.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i5 (.D(\reg_cfg[5] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i5.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i6 (.D(\reg_cfg[6] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i6.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i7 (.D(\reg_cfg[7] ), .SP(sys_clk_c_enable_225), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam data_write__ret0_i7.GSR = "ENABLED";
    LUT4 mux_265_i5_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[4]), 
         .D(\reg_cfg[12] ), .Z(n2341[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_187 (.A(n17901), .B(n15420), .C(reg_index[2]), .D(reg_index[3]), 
         .Z(n15)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_187.init = 16'hdfff;
    LUT4 i13886_3_lut (.A(reg_index[1]), .B(reg_index[5]), .C(reg_index[7]), 
         .Z(n17901)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i13886_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_188 (.A(sys_clk_c_enable_198), .B(n17418), .C(n2023), 
         .D(n19453), .Z(n15830)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i1_4_lut_adj_188.init = 16'hfefa;
    LUT4 i216_2_lut (.A(cam_ready), .B(n2008[0]), .Z(n2023)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i216_2_lut.init = 16'h8888;
    LUT4 i14139_3_lut (.A(n45), .B(n45_adj_1524), .C(delay_swrst), .Z(n19453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i14139_3_lut.init = 16'hcaca;
    LUT4 i2667_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[7]), 
         .Z(addr_15__N_455[7])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2667_3_lut.init = 16'hdcdc;
    LUT4 i2608_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(n19494), .D(n2008[2]), 
         .Z(n6483)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i2608_3_lut_4_lut.init = 16'h2f22;
    LUT4 i2_rep_26_2_lut (.A(n20), .B(n16131), .Z(n15932)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i2_rep_26_2_lut.init = 16'h2222;
    LUT4 i2669_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[6]), 
         .Z(addr_15__N_455[6])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2669_3_lut.init = 16'hdcdc;
    LUT4 i6494_4_lut_4_lut (.A(reg_index[5]), .B(reg_index[0]), .C(n15358), 
         .D(n17420), .Z(n126)) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(355[29:54])
    defparam i6494_4_lut_4_lut.init = 16'hf5d5;
    LUT4 reg_index_7__I_0_148_Mux_14_i255_4_lut (.A(n19426), .B(n254), .C(reg_index[7]), 
         .D(reg_index[6]), .Z(reg_cfg[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam reg_index_7__I_0_148_Mux_14_i255_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_189 (.A(n17040), .B(n16295), .C(\cnt_div[7] ), .D(\cnt_div[5] ), 
         .Z(n20)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_4_lut_adj_189.init = 16'hccce;
    LUT4 i1_4_lut_adj_190 (.A(\cnt_div[0] ), .B(n17034), .C(\cnt_div[1] ), 
         .D(\cnt_div[9] ), .Z(n17040)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_190.init = 16'h4000;
    LUT4 flag_done_I_0_2_lut_rep_316 (.A(flag_done), .B(flag_done_d2), .Z(n19494)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam flag_done_I_0_2_lut_rep_316.init = 16'h2222;
    LUT4 i14360_2_lut_rep_296_3_lut (.A(flag_done), .B(flag_done_d2), .C(start), 
         .Z(n19474)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i14360_2_lut_rep_296_3_lut.init = 16'hdfdf;
    LUT4 i14475_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_cnt[0]), 
         .D(start), .Z(n15657)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i14475_2_lut_3_lut_4_lut.init = 16'h0d0f;
    LUT4 i1_4_lut_adj_191 (.A(n16640), .B(n15963), .C(n7486), .D(\cnt_div[10] ), 
         .Z(n16295)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_4_lut_adj_191.init = 16'h0a22;
    LUT4 i471_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_byte_num_3__N_481[0]), 
         .D(start), .Z(sys_clk_c_enable_105)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i471_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_3_lut_adj_192 (.A(\cnt_div[4] ), .B(\cnt_div[10] ), .C(\cnt_div[8] ), 
         .Z(n17034)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_192.init = 16'h8080;
    LUT4 i230_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(n2008[4]), 
         .D(start), .Z(sys_clk_c_enable_98)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i230_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i6408_4_lut (.A(n16190), .B(reg_index[6]), .C(reg_index[5]), 
         .D(reg_index[4]), .Z(n254)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i6408_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_rep_297_3_lut (.A(flag_done), .B(flag_done_d2), .C(n2008[2]), 
         .Z(n19475)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i1_2_lut_rep_297_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(n15), 
         .D(n2008[2]), .Z(sys_clk_c_enable_198)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(42[30:56])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_3_lut_adj_193 (.A(\cnt_div[8] ), .B(\cnt_div[1] ), .C(\cnt_div[5] ), 
         .Z(n16640)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i1_3_lut_adj_193.init = 16'h1010;
    LUT4 i2671_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[5]), 
         .Z(addr_15__N_455[5])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2671_3_lut.init = 16'hdcdc;
    LUT4 mux_265_i8_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[7]), 
         .D(\reg_cfg[15] ), .Z(n2341[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i8_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2748 (.BLUT(n10851), .ALUT(start_N_728), .C0(rd_byte_num_3__N_481[0]), 
          .Z(n6626));
    LUT4 i2673_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[4]), 
         .Z(addr_15__N_455[4])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2673_3_lut.init = 16'hdcdc;
    LUT4 mux_265_i7_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[6]), 
         .D(reg_cfg[14]), .Z(n2341[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2638_2_lut (.A(n2008[0]), .B(cam_ready), .Z(n6514)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2638_2_lut.init = 16'h2222;
    LUT4 i6925_2_lut_rep_272_4_lut (.A(n45), .B(n45_adj_1524), .C(delay_swrst), 
         .D(start_N_744), .Z(n19450)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(337[30] 348[28])
    defparam i6925_2_lut_rep_272_4_lut.init = 16'h00ca;
    LUT4 mux_265_i6_3_lut_4_lut (.A(n2008[1]), .B(n19450), .C(addr[5]), 
         .D(\reg_cfg[13] ), .Z(n2341[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6319_2_lut (.A(n464[0]), .B(n7921), .Z(wait_cnt_22__N_520[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6319_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_194 (.A(start_N_744), .B(n2008[1]), .Z(n17418)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i1_2_lut_adj_194.init = 16'h4444;
    LUT4 i3905_4_lut (.A(n19453), .B(n15886), .C(n19517), .D(n19474), 
         .Z(n7921)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i3905_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_adj_195 (.A(n17306), .B(n17240), .C(n15754), .Z(n15886)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_195.init = 16'hfefe;
    LUT4 i1_4_lut_adj_196 (.A(n17232), .B(wait_cnt[14]), .C(wait_cnt[11]), 
         .D(wait_cnt[22]), .Z(n17306)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_196.init = 16'hbfff;
    LUT4 i1_2_lut_adj_197 (.A(wait_cnt[19]), .B(wait_cnt[10]), .Z(n17232)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_197.init = 16'hdddd;
    LUT4 i1_4_lut_adj_198 (.A(n5), .B(n15466), .C(wait_cnt[8]), .D(wait_cnt[16]), 
         .Z(n17240)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_198.init = 16'hffbf;
    LUT4 i6405_2_lut (.A(n464[16]), .B(n7921), .Z(wait_cnt_22__N_520[16])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6405_2_lut.init = 16'h8888;
    LUT4 i11500_2_lut (.A(wait_cnt[5]), .B(wait_cnt[18]), .Z(n15466)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11500_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_199 (.A(n17246), .B(n17861), .C(wait_cnt[3]), .D(n10), 
         .Z(n15754)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_199.init = 16'hffbf;
    LUT4 i1_3_lut_adj_200 (.A(wait_cnt[0]), .B(wait_cnt[13]), .C(wait_cnt[20]), 
         .Z(n17246)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_200.init = 16'hfdfd;
    LUT4 i13847_4_lut (.A(wait_cnt[4]), .B(wait_cnt[9]), .C(wait_cnt[2]), 
         .D(wait_cnt[1]), .Z(n17861)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13847_4_lut.init = 16'h8000;
    LUT4 i2677_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[1]), 
         .Z(addr_15__N_455[1])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2677_3_lut.init = 16'hdcdc;
    LUT4 i1_2_lut_adj_201 (.A(wait_cnt[15]), .B(wait_cnt[7]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_201.init = 16'heeee;
    LUT4 i1_4_lut_adj_202 (.A(n5), .B(wait_cnt[2]), .C(wait_cnt[0]), .D(wait_cnt[9]), 
         .Z(n16824)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hbfff;
    LUT4 i6769_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[16]), .Z(n107[16])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6769_2_lut_3_lut.init = 16'h8080;
    LUT4 i2614_3_lut_4_lut (.A(n39), .B(n2008[3]), .C(n19474), .D(n2008[4]), 
         .Z(n6489)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2614_3_lut_4_lut.init = 16'hf444;
    LUT4 i1_4_lut_adj_203 (.A(wait_cnt[13]), .B(wait_cnt[22]), .C(n16798), 
         .D(wait_cnt[14]), .Z(n16810)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_203.init = 16'hfffd;
    LUT4 i1_4_lut_adj_204 (.A(reg_index[2]), .B(n16746), .C(reg_index[3]), 
         .D(reg_index[4]), .Z(n16158)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(318[25:39])
    defparam i1_4_lut_adj_204.init = 16'hfffe;
    LUT4 i1_3_lut_adj_205 (.A(wait_cnt[16]), .B(wait_cnt[5]), .C(wait_cnt[11]), 
         .Z(n16804)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_205.init = 16'hfefe;
    LUT4 i13784_2_lut (.A(wait_cnt[3]), .B(wait_cnt[1]), .Z(n17798)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13784_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_206 (.A(wait_cnt[19]), .B(wait_cnt[4]), .Z(n16796)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_206.init = 16'heeee;
    LUT4 i1_2_lut_adj_207 (.A(wait_cnt[18]), .B(wait_cnt[20]), .Z(n16798)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_207.init = 16'heeee;
    LUT4 i1_4_lut_adj_208 (.A(n16850), .B(n16862), .C(n17891), .D(n16846), 
         .Z(n45_adj_1524)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_208.init = 16'hffef;
    LUT4 i1_4_lut_adj_209 (.A(n17232), .B(n15754), .C(n17680), .D(wait_cnt[14]), 
         .Z(n17242)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_209.init = 16'hefff;
    LUT4 i13668_2_lut (.A(wait_cnt[22]), .B(wait_cnt[11]), .Z(n17680)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13668_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_210 (.A(wait_cnt[21]), .B(wait_cnt[12]), .C(wait_cnt[17]), 
         .D(wait_cnt[6]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(419[29:53])
    defparam i1_4_lut_adj_210.init = 16'hfffe;
    LUT4 i6575_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[0]), .Z(n107[0])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6575_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_211 (.A(wait_cnt[4]), .B(n10), .Z(n16850)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_211.init = 16'hdddd;
    LUT4 i1_4_lut_adj_212 (.A(n16838), .B(n17778), .C(n16842), .D(wait_cnt[7]), 
         .Z(n16862)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_212.init = 16'hfbff;
    LUT4 i13876_4_lut (.A(wait_cnt[2]), .B(wait_cnt[9]), .C(wait_cnt[0]), 
         .D(wait_cnt[3]), .Z(n17891)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13876_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_213 (.A(wait_cnt[16]), .B(wait_cnt[22]), .C(n16836), 
         .D(wait_cnt[11]), .Z(n16846)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_213.init = 16'hfffd;
    LUT4 i1_3_lut_adj_214 (.A(wait_cnt[5]), .B(wait_cnt[20]), .C(wait_cnt[8]), 
         .Z(n16838)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_214.init = 16'hfefe;
    LUT4 i13764_2_lut (.A(wait_cnt[10]), .B(wait_cnt[1]), .Z(n17778)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13764_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_215 (.A(wait_cnt[15]), .B(wait_cnt[18]), .C(wait_cnt[13]), 
         .Z(n16842)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_215.init = 16'hfdfd;
    LUT4 i1_2_lut_adj_216 (.A(wait_cnt[14]), .B(wait_cnt[19]), .Z(n16836)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_216.init = 16'heeee;
    LUT4 i14448_4_lut (.A(n16744), .B(n15420), .C(n16746), .D(reg_index[3]), 
         .Z(start_N_744)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(318[25:39])
    defparam i14448_4_lut.init = 16'h0001;
    LUT4 i14473_4_lut (.A(reg_index[7]), .B(n19448), .C(n19517), .D(n15609), 
         .Z(n16543)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i14473_4_lut.init = 16'h0302;
    LUT4 i1_2_lut_adj_217 (.A(reg_index[7]), .B(reg_index[2]), .Z(n16744)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(318[25:39])
    defparam i1_2_lut_adj_217.init = 16'heeee;
    LUT4 mux_757_i1_3_lut_4_lut (.A(n19453), .B(start_N_744), .C(n2008[1]), 
         .D(n6626), .Z(start_N_727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam mux_757_i1_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i6492_3_lut (.A(\rd_byte_num[0] ), .B(rd_byte_num_3__N_481[0]), 
         .C(n2008[4]), .Z(n7857)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i6492_3_lut.init = 16'hcece;
    LUT4 i1_2_lut_adj_218 (.A(reg_index[1]), .B(reg_index[2]), .Z(n17420)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_2_lut_adj_218.init = 16'heeee;
    LUT4 i1_2_lut_adj_219 (.A(reg_index[3]), .B(reg_index[4]), .Z(n15358)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_2_lut_adj_219.init = 16'h8888;
    LUT4 i11641_2_lut (.A(reg_index[5]), .B(reg_index[6]), .Z(n15609)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11641_2_lut.init = 16'h8888;
    LUT4 i4147_2_lut_3_lut_4_lut (.A(n19453), .B(start_N_744), .C(n19517), 
         .D(n2008[1]), .Z(sys_clk_c_enable_181)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam i4147_2_lut_3_lut_4_lut.init = 16'hfdf0;
    CCU2C final_cnt_2106_add_4_21 (.A0(final_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13973), .S0(n85[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_21.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_21.INIT1 = 16'h0000;
    defparam final_cnt_2106_add_4_21.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_21.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_19 (.A0(final_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13972), .COUT(n13973), .S0(n85[17]), .S1(n85[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_19.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_19.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_19.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_19.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_17 (.A0(final_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13971), .COUT(n13972), .S0(n85[15]), .S1(n85[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_17.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_17.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_17.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_17.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_15 (.A0(final_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13970), .COUT(n13971), .S0(n85[13]), .S1(n85[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_15.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_15.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_15.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_15.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_13 (.A0(final_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13969), .COUT(n13970), .S0(n85[11]), .S1(n85[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_13.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_13.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_13.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_13.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_11 (.A0(final_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13968), .COUT(n13969), .S0(n85[9]), .S1(n85[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_11.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_11.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_11.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_11.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_9 (.A0(final_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13967), .COUT(n13968), .S0(n85[7]), .S1(n85[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_9.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_9.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_9.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_9.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_7 (.A0(final_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13966), .COUT(n13967), .S0(n85[5]), .S1(n85[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_7.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_7.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_7.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_7.INJECT1_1 = "NO";
    LUT4 i6406_2_lut (.A(n464[15]), .B(n7921), .Z(wait_cnt_22__N_520[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6406_2_lut.init = 16'h8888;
    CCU2C final_cnt_2106_add_4_5 (.A0(final_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13965), .COUT(n13966), .S0(n85[3]), .S1(n85[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_5.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_5.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_5.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_5.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_3 (.A0(final_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13964), .COUT(n13965), .S0(n85[1]), .S1(n85[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_3.INIT0 = 16'haaa0;
    defparam final_cnt_2106_add_4_3.INIT1 = 16'haaa0;
    defparam final_cnt_2106_add_4_3.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_3.INJECT1_1 = "NO";
    CCU2C final_cnt_2106_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(final_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13964), .S1(n85[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(375[38:54])
    defparam final_cnt_2106_add_4_1.INIT0 = 16'h0000;
    defparam final_cnt_2106_add_4_1.INIT1 = 16'h555f;
    defparam final_cnt_2106_add_4_1.INJECT1_0 = "NO";
    defparam final_cnt_2106_add_4_1.INJECT1_1 = "NO";
    CCU2C reg_index_2104_add_4_9 (.A0(reg_index[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13963), .S0(n37[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104_add_4_9.INIT0 = 16'haaa0;
    defparam reg_index_2104_add_4_9.INIT1 = 16'h0000;
    defparam reg_index_2104_add_4_9.INJECT1_0 = "NO";
    defparam reg_index_2104_add_4_9.INJECT1_1 = "NO";
    CCU2C reg_index_2104_add_4_7 (.A0(reg_index[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13962), .COUT(n13963), .S0(n37[5]), .S1(n37[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104_add_4_7.INIT0 = 16'haaa0;
    defparam reg_index_2104_add_4_7.INIT1 = 16'haaa0;
    defparam reg_index_2104_add_4_7.INJECT1_0 = "NO";
    defparam reg_index_2104_add_4_7.INJECT1_1 = "NO";
    CCU2C reg_index_2104_add_4_5 (.A0(reg_index[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13961), .COUT(n13962), .S0(n37[3]), .S1(n37[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104_add_4_5.INIT0 = 16'haaa0;
    defparam reg_index_2104_add_4_5.INIT1 = 16'haaa0;
    defparam reg_index_2104_add_4_5.INJECT1_0 = "NO";
    defparam reg_index_2104_add_4_5.INJECT1_1 = "NO";
    CCU2C reg_index_2104_add_4_3 (.A0(reg_index[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13960), .COUT(n13961), .S0(n37[1]), .S1(n37[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104_add_4_3.INIT0 = 16'haaa0;
    defparam reg_index_2104_add_4_3.INIT1 = 16'haaa0;
    defparam reg_index_2104_add_4_3.INJECT1_0 = "NO";
    defparam reg_index_2104_add_4_3.INJECT1_1 = "NO";
    CCU2C reg_index_2104_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(reg_index[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13960), .S1(n37[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(360[44:60])
    defparam reg_index_2104_add_4_1.INIT0 = 16'h0000;
    defparam reg_index_2104_add_4_1.INIT1 = 16'h555f;
    defparam reg_index_2104_add_4_1.INJECT1_0 = "NO";
    defparam reg_index_2104_add_4_1.INJECT1_1 = "NO";
    LUT4 n19_bdd_2_lut_14916_2_lut (.A(start), .B(\current_state[7] ), .Z(n19314)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam n19_bdd_2_lut_14916_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_14813_2_lut (.A(start), .B(\current_state[4] ), 
         .Z(n19177)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam start_N_755_bdd_2_lut_14813_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_14817_2_lut (.A(start), .B(\current_state[3] ), 
         .Z(n19180)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam start_N_755_bdd_2_lut_14817_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_14809_2_lut (.A(start), .B(\current_state[5] ), 
         .Z(n19174)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam start_N_755_bdd_2_lut_14809_2_lut.init = 16'h4444;
    LUT4 n5617_bdd_2_lut_14640_2_lut (.A(start), .B(\current_state[9] ), 
         .Z(n18925)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam n5617_bdd_2_lut_14640_2_lut.init = 16'h4444;
    LUT4 i6517_2_lut_2_lut (.A(start), .B(\current_state[6] ), .Z(\next_state_9__N_917[6] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i6517_2_lut_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_2_lut (.A(start), .B(\current_state[2] ), 
         .Z(n19184)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam start_N_755_bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 n5617_bdd_2_lut_14648_2_lut (.A(start), .B(\current_state[8] ), 
         .Z(n18932)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam n5617_bdd_2_lut_14648_2_lut.init = 16'h4444;
    LUT4 i47_4_lut_4_lut (.A(start), .B(\next_state[0] ), .C(\current_state[0] ), 
         .D(n19), .Z(n26_adj_3)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i47_4_lut_4_lut.init = 16'h5c50;
    LUT4 i14352_4_lut (.A(n2008[1]), .B(n17230), .C(n17228), .D(n19474), 
         .Z(sys_clk_c_enable_119)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;
    defparam i14352_4_lut.init = 16'habbb;
    LUT4 i1_2_lut_adj_220 (.A(n2008[3]), .B(n2008[0]), .Z(n17230)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_220.init = 16'heeee;
    LUT4 i1_2_lut_rep_338 (.A(reg_index[4]), .B(reg_index[6]), .Z(n19516)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_2_lut_rep_338.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(reg_index[4]), .B(reg_index[6]), .C(reg_index[5]), 
         .Z(n17282)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_adj_221 (.A(reg_index[4]), .B(reg_index[6]), .C(reg_index[0]), 
         .Z(n15420)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(48[9] 268[16])
    defparam i1_2_lut_3_lut_adj_221.init = 16'hfefe;
    LUT4 i268_2_lut_rep_339 (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), 
         .Z(n19517)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i268_2_lut_rep_339.init = 16'heeee;
    LUT4 i14403_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), 
         .C(reg_index[7]), .Z(n18066)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i14403_2_lut_3_lut.init = 16'hfefe;
    LUT4 i6313_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[8]), 
         .Z(n7944)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6313_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_222 (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), 
         .C(reg_index[7]), .D(n254), .Z(n16180)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i1_3_lut_4_lut_adj_222.init = 16'h1000;
    LUT4 i6473_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[19] ), 
         .Z(n8045)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6473_2_lut_3_lut.init = 16'h1010;
    LUT4 i6474_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[18] ), 
         .Z(n8047)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6474_2_lut_3_lut.init = 16'h1010;
    LUT4 i13674_2_lut (.A(reg_index[3]), .B(reg_index[1]), .Z(n17686)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13674_2_lut.init = 16'heeee;
    LUT4 i6475_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[17] ), 
         .Z(n8049)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6475_2_lut_3_lut.init = 16'h1010;
    LUT4 i6476_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[16] ), 
         .Z(n8051)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6476_2_lut_3_lut.init = 16'h1010;
    LUT4 i3997_3_lut_4_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(ctrl_w0_r1), 
         .D(n2008[1]), .Z(n7889)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i3997_3_lut_4_lut.init = 16'heefe;
    LUT4 i6477_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[11]), 
         .Z(n8053)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6477_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_4_lut (.A(rd_byte_num_3__N_481[0]), .B(n2008[4]), 
         .C(rd_cnt[1]), .D(rd_cnt[0]), .Z(n17228)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i6397_3_lut_3_lut (.A(rd_byte_num_3__N_481[0]), .B(n2008[4]), .C(\rd_byte_num[1] ), 
         .Z(rd_byte_num_3__N_481[1])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6397_3_lut_3_lut.init = 16'h5454;
    LUT4 i4150_3_lut_4_lut_3_lut (.A(rd_byte_num_3__N_481[0]), .B(reg_cfg[21]), 
         .C(n2008[4]), .Z(n8041)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i4150_3_lut_4_lut_3_lut.init = 16'h5454;
    LUT4 i14397_3_lut (.A(n16131), .B(n20), .C(start), .Z(sys_clk_c_enable_54)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(306[14] 432[12])
    defparam i14397_3_lut.init = 16'hbfbf;
    LUT4 i2647_3_lut_4_lut (.A(n39), .B(n2008[3]), .C(n19475), .D(n15), 
         .Z(n6523)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i2647_3_lut_4_lut.init = 16'h88f8;
    LUT4 i6754_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[1]), .Z(n107[1])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6754_2_lut_3_lut.init = 16'h8080;
    LUT4 i6407_2_lut (.A(n464[14]), .B(n7921), .Z(wait_cnt_22__N_520[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6407_2_lut.init = 16'h8888;
    LUT4 i6755_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[2]), .Z(n107[2])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6755_2_lut_3_lut.init = 16'h8080;
    LUT4 i6399_2_lut (.A(n464[22]), .B(n7921), .Z(wait_cnt_22__N_520[22])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6399_2_lut.init = 16'h8888;
    LUT4 i6400_2_lut (.A(n464[21]), .B(n7921), .Z(wait_cnt_22__N_520[21])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6400_2_lut.init = 16'h8888;
    PFUMX i14971 (.BLUT(n19533), .ALUT(n19534), .C0(n17418), .Z(sys_clk_c_enable_82));
    LUT4 i6401_2_lut (.A(n464[20]), .B(n7921), .Z(wait_cnt_22__N_520[20])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6401_2_lut.init = 16'h8888;
    PFUMX i4152 (.BLUT(n127), .ALUT(reg_cfg[20]), .C0(n18066), .Z(n8043));
    LUT4 i6402_2_lut (.A(n464[19]), .B(n7921), .Z(wait_cnt_22__N_520[19])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6402_2_lut.init = 16'h8888;
    LUT4 i6403_2_lut (.A(n464[18]), .B(n7921), .Z(wait_cnt_22__N_520[18])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(307[13] 431[20])
    defparam i6403_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000) 
//

module \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000)  (current_state, 
            sys_rst_n_N_472, cnt_div, sys_clk_c, \next_state[0] , data_read, 
            sda_transmit, flag_done, n18056, n18057, rd_byte0, n19455, 
            n19, data_write, addr, start, \cnt_div[10] , \current_state[4] , 
            \current_state[3] , n19465, i2c_sclk_0_c, sys_clk_c_enable_54, 
            n26, n5156, \cnt_div[1] , \current_state[2] , \next_state[6] , 
            \rd_byte_num[1] , \rd_byte_num[0] , \current_state[9] , n15812, 
            n15810, n15814, n15815, \cnt_div[8] , \cnt_div[7] , \cnt_div[5] , 
            \cnt_div[4] , n15816, n15813, n19461, ctrl_w0_r1, n19467, 
            sda_transmit_en_N_1061, n4695, n4689, GND_net, VCC_net, 
            n18123, n16261, n11, rd_first_done, n19452, n15932, 
            n7486, n15963, n4807, n18062, n16131, n18932, n19_adj_1, 
            n25, n24, n18925, i2c_sda_0_out, n27, n26_adj_2, n35, 
            n36, n19314, \next_state_9__N_917[6] , n19184, n19180, 
            n19177, n19174) /* synthesis syn_module_defined=1 */ ;
    output [9:0]current_state;
    input sys_rst_n_N_472;
    output [14:0]cnt_div;
    input sys_clk_c;
    output \next_state[0] ;
    output [7:0]data_read;
    output sda_transmit;
    output flag_done;
    input n18056;
    input n18057;
    output [7:0]rd_byte0;
    output n19455;
    output n19;
    input [7:0]data_write;
    input [15:0]addr;
    input start;
    output \cnt_div[10] ;
    output \current_state[4] ;
    output \current_state[3] ;
    output n19465;
    output i2c_sclk_0_c;
    input sys_clk_c_enable_54;
    input n26;
    output n5156;
    output \cnt_div[1] ;
    output \current_state[2] ;
    output \next_state[6] ;
    input \rd_byte_num[1] ;
    input \rd_byte_num[0] ;
    output \current_state[9] ;
    input n15812;
    input n15810;
    input n15814;
    input n15815;
    output \cnt_div[8] ;
    output \cnt_div[7] ;
    output \cnt_div[5] ;
    output \cnt_div[4] ;
    input n15816;
    input n15813;
    output n19461;
    input ctrl_w0_r1;
    output n19467;
    output sda_transmit_en_N_1061;
    output [0:0]n4695;
    output [0:0]n4689;
    input GND_net;
    input VCC_net;
    output n18123;
    output n16261;
    output n11;
    output rd_first_done;
    output n19452;
    input n15932;
    output n7486;
    output n15963;
    input n4807;
    input n18062;
    output n16131;
    input n18932;
    output n19_adj_1;
    output n25;
    output n24;
    input n18925;
    input i2c_sda_0_out;
    output n27;
    output n26_adj_2;
    output n35;
    output n36;
    input n19314;
    input \next_state_9__N_917[6] ;
    input n19184;
    input n19180;
    input n19177;
    input n19174;
    
    wire drive_clk /* synthesis is_clock=1, SET_AS_NETWORK=\u_top_iic/inst_i2c_drive/drive_clk */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(32[18:27])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n5692;
    wire [9:0]next_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n5699;
    wire [9:0]n4871;
    
    wire n19500, n15930, n58;
    wire [9:0]cnt_scl;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(34[18:25])
    
    wire n86, n19515, n19431, n19478, n19476, n10753, n81;
    wire [7:0]data_read_temp;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(39[17:31])
    
    wire n18055;
    wire [14:0]n1;
    wire [9:0]cnt_scl_9__N_793;
    
    wire n18418;
    wire [14:0]cnt_div_c;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(33[18:25])
    
    wire n6, n19525, n15940, n16724, drive_clk_enable_28, sda_transmit_en, 
        drive_clk_enable_2;
    wire [0:0]n4944;
    
    wire drive_clk_enable_3;
    wire [0:0]n4736;
    
    wire drive_clk_enable_31, flag_ack, drive_clk_enable_5;
    wire [9:0]next_state_9__N_803;
    
    wire drive_clk_enable_21, drive_clk_N_1034, n11_c, n19146, n19147, 
        n17917, n19495, n18070, n19058, n18934, n23, n52, n5694, 
        n19462, n19496, n17985, n4365, n16136, n16698, n18929, 
        n18936;
    wire [9:0]current_state_c;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n18937;
    wire [9:0]n4883;
    
    wire n19477, n16333, n19420, n19428, n17951, n55, n4096, n19509, 
        n19492, n16062, n16766, n16758, n17888, n19503, n10, n15386, 
        n18939;
    wire [0:0]n4289;
    
    wire n19482, n16680, n15908, n8, n10892, n17869, n17146, n17006, 
        n7313, n33, n19499, n15425, flag_ack_N_1056, n16315, n19508, 
        n15829, n19403, n19429, n17950, n18943, n19537, n10888;
    wire [9:0]cnt_scl_9__N_899;
    
    wire n16, n9, n19524, drive_clk_enable_7, n19513, drive_clk_enable_8, 
        drive_clk_enable_9, drive_clk_enable_10, n23_adj_1490, n17, 
        n17848, n60, n16358, n60_adj_1491, n43, n16177, n19536, 
        n16260, n7;
    wire [0:0]n4478;
    
    wire n17808, n15860, n17286;
    wire [0:0]n4710;
    wire [14:0]n2;
    wire [5:0]n6033;
    
    wire n17953, n18988, n4729;
    wire [0:0]n4733;
    
    wire n17956, n18941, n18774, n20385, n19546, n20386, n19454, 
        n19057, n19479;
    wire [3:0]rd_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(41[17:23])
    
    wire drive_clk_enable_14, n15985, n15986, n15987, n15992, n10894, 
        n16926, n39, n19510, n19498, n18986, n18987, n10523, n16968, 
        n16972, n10833, n19506, n17176, n16778, n19507, n19468, 
        drive_clk_enable_30, n18058, n18059, n18060, n19555, n19554;
    wire [0:0]n4187;
    wire [0:0]n4199;
    
    wire n19511, n17832, n19493, n4535;
    wire [0:0]n4730;
    
    wire n16980, n16632, n6_adj_1496, n16392, n16293, n16630, n19459, 
        n16350, n19355, n4, n24_adj_1497, n17834, n14572, n14573, 
        n56, n21_adj_1498, sda_transmit_N_1111, n16357, n18893, n17784, 
        n29_adj_1499, n19518, n14, n87, n19512, n15289, n5845, 
        n7444, n17066, n19526, n15822, n19460, n15271, n117, n17140, 
        n17136, n4532;
    wire [0:0]n4475;
    
    wire n6673, n6677, n19451, n19519, n4_adj_1500, n10_adj_1501, 
        n17188;
    wire [9:0]next_state_9__N_967;
    
    wire n18135, n13, n16576, n5786, n17194, n17202, n18346, n17754, 
        n5, n17044, n17052, n17074, n5702, n30_adj_1502, n4_adj_1503, 
        n16034, n18984, n7866, n16063, n19472, n7346, n15792, 
        n13986, n17836;
    wire [0:0]n4301;
    
    wire n19055, n19316;
    wire [9:0]n4859;
    
    wire n19353, n16586, n22_adj_1504, n20239, n16872, n13838, n13837, 
        n13836, n19176, n19173, n18931, n13835, n19183, n20236, 
        n20238, n19354, n16622, n16326, n84, n52_adj_1505, n46, 
        n16064, n4_adj_1506, n18924, n17024, n19490, n19179, n18938, 
        n18926, n18927, n18928, n19178, n16866, n19552, n19175, 
        n13834, n18, n19181, n19185, n18933, n18935, n19551, n12, 
        n18212, n15778, n19545, n16185, n62, n19556, n17726, n18985, 
        n5691, n17863, n39_adj_1509, n5690, n20234, n20235, n7096, 
        n16036;
    wire [9:0]n4817;
    
    wire n19547, n16369, n17274, n17266, n17822, n8_adj_1510, n9_adj_1511, 
        n14638, n17688, n10952, n15605;
    wire [0:0]n4304;
    
    wire n18942, n6681, n5636, n5689, n18923, n17106, n16_adj_1512, 
        n19_adj_1513, n18940, n18983, n20_adj_1514, n12_adj_1515, 
        n17098, n16294, n18930, n13832, n19054, n16994, n19056, 
        n16353, n15896, n17983, n17984, n13831, n13830, n13829, 
        n13828, n15291, n13827, n13826, n114, n16096, n19315, 
        n16091, n16085, n19145;
    
    LUT4 mux_1485_i6_3_lut (.A(n5692), .B(next_state[5]), .C(n5699), .Z(n4871[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1485_i6_3_lut.init = 16'hcaca;
    LUT4 i6635_2_lut_rep_322 (.A(current_state[0]), .B(current_state[5]), 
         .Z(n19500)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6635_2_lut_rep_322.init = 16'heeee;
    PFUMX i86 (.BLUT(n15930), .ALUT(n58), .C0(cnt_scl[5]), .Z(n86));
    LUT4 i6871_4_lut (.A(n19515), .B(n19431), .C(n19478), .D(n19476), 
         .Z(n10753)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i6871_4_lut.init = 16'hcccd;
    LUT4 i2_3_lut_4_lut (.A(current_state[0]), .B(current_state[5]), .C(current_state[6]), 
         .D(current_state[7]), .Z(n81)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0110;
    FD1P3DX data_read_temp_i0_i0 (.D(n18055), .SP(cnt_scl[4]), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i0.GSR = "ENABLED";
    FD1S3DX cnt_div__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i0.GSR = "ENABLED";
    FD1S3BX current_state_i0 (.D(\next_state[0] ), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(current_state[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i0.GSR = "ENABLED";
    FD1S3DX cnt_scl_i0 (.D(cnt_scl_9__N_793[0]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i0.GSR = "ENABLED";
    LUT4 i11655_rep_130_3_lut_4_lut (.A(current_state[0]), .B(current_state[5]), 
         .C(current_state[7]), .D(current_state[6]), .Z(n18418)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11655_rep_130_3_lut_4_lut.init = 16'hfffe;
    LUT4 i4861_then_4_lut (.A(cnt_div[9]), .B(cnt_div_c[11]), .C(n6), 
         .D(cnt_div[0]), .Z(n19525)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i4861_then_4_lut.init = 16'h0020;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_scl[1]), .B(cnt_scl[0]), .C(n15940), 
         .D(cnt_scl[2]), .Z(n16724)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0004;
    FD1P3DX data_read_i0_i0 (.D(data_read_temp[0]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i0.GSR = "ENABLED";
    FD1P3BX sda_transmit_en_263 (.D(n4944[0]), .SP(drive_clk_enable_2), 
            .CK(drive_clk), .PD(sys_rst_n_N_472), .Q(sda_transmit_en)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam sda_transmit_en_263.GSR = "ENABLED";
    FD1P3BX sda_transmit_264 (.D(n4736[0]), .SP(drive_clk_enable_3), .CK(drive_clk), 
            .PD(sys_rst_n_N_472), .Q(sda_transmit)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam sda_transmit_264.GSR = "ENABLED";
    FD1P3DX flag_done_265 (.D(n18056), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam flag_done_265.GSR = "ENABLED";
    FD1P3DX flag_ack_266 (.D(n18057), .SP(drive_clk_enable_5), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_ack)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam flag_ack_266.GSR = "ENABLED";
    FD1S3BX next_state_i0 (.D(next_state_9__N_803[0]), .CK(drive_clk), .PD(sys_rst_n_N_472), 
            .Q(\next_state[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i0.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i0 (.D(data_read_temp[0]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i0.GSR = "ENABLED";
    FD1S3BX drive_clk_259 (.D(drive_clk_N_1034), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(drive_clk)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam drive_clk_259.GSR = "ENABLED";
    PFUMX i14788 (.BLUT(n11_c), .ALUT(n19146), .C0(n19455), .Z(n19147));
    LUT4 i14402_2_lut_3_lut_4_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), 
         .C(n17917), .D(n19495), .Z(n18070)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i14402_2_lut_3_lut_4_lut_4_lut.init = 16'hcdcc;
    LUT4 n15_bdd_3_lut_14733_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .D(cnt_scl[5]), .Z(n19058)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam n15_bdd_3_lut_14733_4_lut.init = 16'h00fe;
    LUT4 n18140_bdd_4_lut_14647 (.A(n19), .B(current_state[8]), .C(next_state[8]), 
         .D(flag_ack), .Z(n18934)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14647.init = 16'ha0e4;
    LUT4 i34_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .D(cnt_scl[5]), .Z(n23)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam i34_4_lut_4_lut.init = 16'h3051;
    LUT4 i1_4_lut_4_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(cnt_scl[5]), 
         .D(cnt_scl[3]), .Z(n52)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0820;
    LUT4 mux_1485_i8_3_lut (.A(n5694), .B(next_state[7]), .C(n5699), .Z(n4871[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1485_i8_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_284_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n17917), 
         .D(n19495), .Z(n19462)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_rep_284_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut (.A(n19496), .B(n19462), .C(n17985), .D(n4365), 
         .Z(n16136)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hb000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[5]), 
         .D(cnt_scl[0]), .Z(n16698)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i6810_2_lut (.A(n18929), .B(drive_clk_enable_5), .Z(next_state_9__N_803[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6810_2_lut.init = 16'h8888;
    LUT4 i6809_2_lut (.A(n18936), .B(drive_clk_enable_5), .Z(next_state_9__N_803[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6809_2_lut.init = 16'h8888;
    LUT4 n18140_bdd_4_lut_14652 (.A(n5699), .B(current_state_c[1]), .C(next_state[1]), 
         .D(flag_ack), .Z(n18937)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14652.init = 16'ha0e4;
    LUT4 i6808_2_lut (.A(n4883[7]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6808_2_lut.init = 16'h8888;
    LUT4 i6807_2_lut (.A(n4883[6]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6807_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_55 (.A(n17917), .B(n19477), .C(n19496), .D(n4365), 
         .Z(n16333)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_55.init = 16'h4000;
    LUT4 n10214_bdd_4_lut_14964 (.A(n19496), .B(data_write[7]), .C(n19420), 
         .D(n19462), .Z(n19428)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n10214_bdd_4_lut_14964.init = 16'h88f0;
    LUT4 i13926_3_lut (.A(addr[9]), .B(addr[8]), .C(cnt_scl[2]), .Z(n17951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13926_3_lut.init = 16'hcaca;
    LUT4 i6806_2_lut (.A(n4883[5]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6806_2_lut.init = 16'h8888;
    LUT4 i6805_2_lut (.A(n4883[4]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6805_2_lut.init = 16'h8888;
    LUT4 i6804_2_lut (.A(n4883[3]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6804_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n55), .B(n4096), .C(n19509), .D(n19492), .Z(n16062)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut.init = 16'h0008;
    LUT4 i13873_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n16766), 
         .D(n16758), .Z(n17888)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i13873_3_lut_4_lut.init = 16'h1110;
    LUT4 i6301_2_lut_rep_325 (.A(cnt_scl[3]), .B(cnt_scl[5]), .Z(n19503)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6301_2_lut_rep_325.init = 16'heeee;
    LUT4 i1_3_lut (.A(cnt_scl[2]), .B(n10), .C(cnt_scl[3]), .Z(n15386)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 n5617_bdd_2_lut_14692 (.A(start), .B(current_state_c[1]), .Z(n18939)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n5617_bdd_2_lut_14692.init = 16'heeee;
    LUT4 mux_1083_i1_3_lut (.A(addr[6]), .B(addr[4]), .C(cnt_scl[3]), 
         .Z(n4289[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_1083_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_56 (.A(n19477), .B(n4365), .C(n19482), .D(n16680), 
         .Z(n15908)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfff7;
    LUT4 i1_4_lut_adj_57 (.A(n8), .B(n10892), .C(n17869), .D(n17146), 
         .Z(n10)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_57.init = 16'h0800;
    LUT4 i54_4_lut (.A(n17006), .B(n7313), .C(\cnt_div[10] ), .D(n6), 
         .Z(n33)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i54_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut_rep_277 (.A(n19499), .B(\current_state[4] ), .C(n15425), 
         .D(\current_state[3] ), .Z(n19455)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_rep_277.init = 16'h0002;
    LUT4 i1_3_lut_adj_58 (.A(n19465), .B(flag_ack_N_1056), .C(current_state[6]), 
         .Z(n16315)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_58.init = 16'h8080;
    LUT4 i6803_2_lut (.A(n4883[2]), .B(drive_clk_enable_5), .Z(next_state_9__N_803[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6803_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_59 (.A(cnt_scl[3]), .B(cnt_scl[5]), .C(cnt_scl[2]), 
         .D(n19508), .Z(n15829)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_59.init = 16'h0100;
    LUT4 i1_2_lut (.A(current_state[0]), .B(current_state[6]), .Z(n17146)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut.init = 16'h4444;
    LUT4 n10214_bdd_4_lut (.A(n19496), .B(addr[7]), .C(n19403), .D(n19462), 
         .Z(n19429)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n10214_bdd_4_lut.init = 16'h88f0;
    LUT4 i13925_3_lut (.A(addr[11]), .B(addr[10]), .C(cnt_scl[2]), .Z(n17950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13925_3_lut.init = 16'hcaca;
    LUT4 i6802_2_lut (.A(n18943), .B(drive_clk_enable_5), .Z(next_state_9__N_803[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i6802_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_then_4_lut (.A(n19482), .B(cnt_scl[1]), .C(cnt_scl[5]), 
         .D(n19478), .Z(n19537)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0040;
    FD1P3BX scl_260 (.D(n10888), .SP(sys_clk_c_enable_54), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(i2c_sclk_0_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam scl_260.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_60 (.A(cnt_scl_9__N_899[9]), .B(n16), .Z(cnt_scl_9__N_793[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_60.init = 16'h8888;
    LUT4 i1_2_lut_adj_61 (.A(cnt_scl_9__N_899[8]), .B(n16), .Z(cnt_scl_9__N_793[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i1_2_lut_adj_62 (.A(cnt_scl_9__N_899[7]), .B(n16), .Z(cnt_scl_9__N_793[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_62.init = 16'h8888;
    LUT4 i11563_2_lut_3_lut (.A(cnt_scl[3]), .B(cnt_scl[5]), .C(cnt_scl[4]), 
         .Z(n9)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i11563_2_lut_3_lut.init = 16'h0101;
    LUT4 i4861_else_4_lut (.A(n7313), .B(cnt_div_c[11]), .Z(n19524)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4861_else_4_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_63 (.A(cnt_scl_9__N_899[6]), .B(n16), .Z(cnt_scl_9__N_793[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_63.init = 16'h8888;
    LUT4 i1_2_lut_adj_64 (.A(cnt_scl_9__N_899[5]), .B(n16), .Z(cnt_scl_9__N_793[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_64.init = 16'h8888;
    LUT4 i1_2_lut_adj_65 (.A(cnt_scl_9__N_899[4]), .B(n16), .Z(cnt_scl_9__N_793[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_65.init = 16'h8888;
    FD1P3DX data_read_temp_i0_i1 (.D(n19513), .SP(drive_clk_enable_7), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i1.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i3 (.D(n19513), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i5 (.D(n19513), .SP(drive_clk_enable_9), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i5.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i7 (.D(n19513), .SP(drive_clk_enable_10), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_66 (.A(cnt_scl_9__N_899[3]), .B(n16), .Z(cnt_scl_9__N_793[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_66.init = 16'h8888;
    LUT4 i14310_3_lut (.A(n23_adj_1490), .B(n26), .C(n19455), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14310_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_67 (.A(cnt_scl_9__N_899[2]), .B(n16), .Z(cnt_scl_9__N_793[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_67.init = 16'h8888;
    LUT4 i1_4_lut_adj_68 (.A(current_state[0]), .B(n17848), .C(n60), .D(n16358), 
         .Z(n60_adj_1491)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_68.init = 16'hbaaa;
    LUT4 i1_3_lut_adj_69 (.A(n17917), .B(n43), .C(cnt_scl[0]), .Z(n16177)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_adj_69.init = 16'h0404;
    LUT4 i2_2_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .Z(n8)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_70 (.A(cnt_scl_9__N_899[1]), .B(n16), .Z(cnt_scl_9__N_793[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i1_4_lut_else_4_lut (.A(n19482), .B(cnt_scl[1]), .C(cnt_scl[5]), 
         .D(n19478), .Z(n19536)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0151;
    LUT4 i1_2_lut_3_lut_4_lut_adj_71 (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[4]), 
         .D(cnt_scl[3]), .Z(n16260)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_71.init = 16'h0004;
    LUT4 i1_4_lut_adj_72 (.A(n60), .B(n7), .C(n4478[0]), .D(n17808), 
         .Z(n15860)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_72.init = 16'h0020;
    LUT4 mux_1402_i1_4_lut (.A(n17286), .B(n19465), .C(current_state[6]), 
         .D(n10892), .Z(n4710[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1402_i1_4_lut.init = 16'hcac0;
    LUT4 i6725_4_lut (.A(n2[10]), .B(start), .C(n6033[0]), .D(n5156), 
         .Z(n1[10])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6725_4_lut.init = 16'hc088;
    LUT4 i13928_3_lut (.A(addr[3]), .B(addr[2]), .C(cnt_scl[2]), .Z(n17953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13928_3_lut.init = 16'hcaca;
    LUT4 mux_1420_i1_3_lut (.A(n18988), .B(n16136), .C(n4729), .Z(n4733[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1420_i1_3_lut.init = 16'hcaca;
    LUT4 i13931_3_lut (.A(data_write[3]), .B(data_write[2]), .C(cnt_scl[2]), 
         .Z(n17956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13931_3_lut.init = 16'hcaca;
    LUT4 i2603_2_lut (.A(cnt_div[0]), .B(\cnt_div[1] ), .Z(n6033[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i2603_2_lut.init = 16'h6666;
    LUT4 n18140_bdd_4_lut_14691 (.A(n19), .B(current_state_c[1]), .C(next_state[1]), 
         .D(flag_ack), .Z(n18941)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14691.init = 16'ha0e4;
    LUT4 i6723_4_lut (.A(n2[8]), .B(start), .C(n6033[4]), .D(n5156), 
         .Z(n1[8])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6723_4_lut.init = 16'hc088;
    LUT4 current_state_1__bdd_4_lut (.A(current_state_c[1]), .B(\current_state[3] ), 
         .C(\current_state[2] ), .D(\current_state[4] ), .Z(n18774)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam current_state_1__bdd_4_lut.init = 16'h0116;
    LUT4 i1_4_lut_then_4_lut_adj_73 (.A(n20385), .B(cnt_scl[6]), .C(cnt_scl[2]), 
         .D(cnt_scl[3]), .Z(n19546)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_then_4_lut_adj_73.init = 16'h0002;
    LUT4 i14350_2_lut_rep_276_3_lut_4_lut (.A(n19495), .B(n20386), .C(n19496), 
         .D(n17917), .Z(n19454)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i14350_2_lut_rep_276_3_lut_4_lut.init = 16'hfff7;
    LUT4 n19058_bdd_4_lut (.A(n19058), .B(n19057), .C(cnt_scl[0]), .D(n19479), 
         .Z(n19431)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n19058_bdd_4_lut.init = 16'hca00;
    FD1P3DX rd_cnt__i0 (.D(n15985), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_cnt__i0.GSR = "ENABLED";
    FD1P3DX rd_cnt__i1 (.D(n15986), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_cnt__i1.GSR = "ENABLED";
    FD1P3DX rd_cnt__i2 (.D(n15987), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_cnt__i2.GSR = "ENABLED";
    LUT4 i6722_4_lut (.A(n2[7]), .B(start), .C(n6033[3]), .D(n5156), 
         .Z(n1[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6722_4_lut.init = 16'hc088;
    FD1P3DX rd_cnt__i3 (.D(n15992), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_cnt__i3.GSR = "ENABLED";
    LUT4 i6752_2_lut (.A(cnt_div[0]), .B(\cnt_div[1] ), .Z(n6033[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6752_2_lut.init = 16'h2222;
    LUT4 i6721_4_lut (.A(n2[6]), .B(start), .C(n10894), .D(n5156), .Z(n1[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6721_4_lut.init = 16'h0c88;
    LUT4 i7007_2_lut (.A(cnt_div[0]), .B(\cnt_div[1] ), .Z(n10894)) /* synthesis lut_function=(A (B)) */ ;
    defparam i7007_2_lut.init = 16'h8888;
    PFUMX i78 (.BLUT(n9), .ALUT(n16260), .C0(current_state[6]), .Z(n43));
    FD1P3DX rd_byte0_i0_i7 (.D(data_read_temp[7]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i7.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i6 (.D(data_read_temp[6]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i6.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i5 (.D(data_read_temp[5]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i5.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i4 (.D(data_read_temp[4]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i4.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i3 (.D(data_read_temp[3]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i3.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i2 (.D(data_read_temp[2]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i2.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i1 (.D(data_read_temp[1]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_byte0_i0_i1.GSR = "ENABLED";
    FD1S3DX next_state_i9 (.D(next_state_9__N_803[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i9.GSR = "ENABLED";
    LUT4 i6720_4_lut (.A(n2[5]), .B(start), .C(\cnt_div[1] ), .D(n5156), 
         .Z(n1[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6720_4_lut.init = 16'h0c88;
    FD1S3DX next_state_i8 (.D(next_state_9__N_803[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i8.GSR = "ENABLED";
    FD1S3DX next_state_i7 (.D(next_state_9__N_803[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i7.GSR = "ENABLED";
    FD1S3DX next_state_i6 (.D(next_state_9__N_803[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(\next_state[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i6.GSR = "ENABLED";
    FD1S3DX next_state_i5 (.D(next_state_9__N_803[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i5.GSR = "ENABLED";
    FD1S3DX next_state_i4 (.D(next_state_9__N_803[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i4.GSR = "ENABLED";
    FD1S3DX next_state_i3 (.D(next_state_9__N_803[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i3.GSR = "ENABLED";
    FD1S3DX next_state_i2 (.D(next_state_9__N_803[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i2.GSR = "ENABLED";
    FD1S3DX next_state_i1 (.D(next_state_9__N_803[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam next_state_i1.GSR = "ENABLED";
    FD1P3DX data_read_i0_i7 (.D(data_read_temp[7]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i7.GSR = "ENABLED";
    FD1P3DX data_read_i0_i6 (.D(data_read_temp[6]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i6.GSR = "ENABLED";
    FD1P3DX data_read_i0_i5 (.D(data_read_temp[5]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i5.GSR = "ENABLED";
    FD1P3DX data_read_i0_i4 (.D(data_read_temp[4]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_i0_i3 (.D(data_read_temp[3]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_i0_i2 (.D(data_read_temp[2]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i2.GSR = "ENABLED";
    FD1P3DX data_read_i0_i1 (.D(data_read_temp[1]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_i0_i1.GSR = "ENABLED";
    LUT4 i6569_4_lut (.A(n2[0]), .B(start), .C(cnt_div[0]), .D(n5156), 
         .Z(n1[0])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6569_4_lut.init = 16'h0c88;
    LUT4 i1_4_lut_adj_74 (.A(n16926), .B(n39), .C(cnt_div_c[2]), .D(cnt_div_c[3]), 
         .Z(n5156)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_74.init = 16'h0008;
    LUT4 i1_4_lut_adj_75 (.A(cnt_div_c[14]), .B(cnt_div_c[13]), .C(cnt_div_c[12]), 
         .D(cnt_div_c[6]), .Z(n16926)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_75.init = 16'h0100;
    LUT4 i2_3_lut_4_lut_adj_76 (.A(current_state_c[1]), .B(n19510), .C(n19498), 
         .D(\current_state[2] ), .Z(n15425)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_76.init = 16'hfffe;
    LUT4 i1_2_lut_adj_77 (.A(cnt_scl_9__N_899[0]), .B(n16), .Z(cnt_scl_9__N_793[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_77.init = 16'h8888;
    LUT4 led_c_4_bdd_2_lut_14678 (.A(n18986), .B(n4365), .Z(n18987)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_4_bdd_2_lut_14678.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_78 (.A(current_state_c[1]), .B(n19510), .C(n10523), 
         .D(n16968), .Z(n16972)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_78.init = 16'hffef;
    LUT4 LessThan_773_i4_4_lut_4_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .C(rd_cnt[0]), .D(rd_cnt[1]), .Z(n10833)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C (D)))) */ ;
    defparam LessThan_773_i4_4_lut_4_lut.init = 16'hfe64;
    LUT4 i1_2_lut_rep_328 (.A(cnt_scl[0]), .B(cnt_scl[1]), .Z(n19506)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_328.init = 16'h8888;
    LUT4 i1_3_lut_3_lut_4_lut_adj_79 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(rd_cnt[0]), 
         .D(cnt_scl[2]), .Z(n17176)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_79.init = 16'h0080;
    LUT4 i1_2_lut_3_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(\current_state[3] ), 
         .Z(n16778)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3DX cnt_scl_i9 (.D(cnt_scl_9__N_793[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i9.GSR = "ENABLED";
    FD1S3DX cnt_scl_i8 (.D(cnt_scl_9__N_793[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i8.GSR = "ENABLED";
    FD1S3DX cnt_scl_i7 (.D(cnt_scl_9__N_793[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i7.GSR = "ENABLED";
    FD1S3DX cnt_scl_i6 (.D(cnt_scl_9__N_793[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i6.GSR = "ENABLED";
    FD1S3DX cnt_scl_i5 (.D(cnt_scl_9__N_793[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i5.GSR = "ENABLED";
    FD1S3DX cnt_scl_i4 (.D(cnt_scl_9__N_793[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i4.GSR = "ENABLED";
    FD1S3DX cnt_scl_i3 (.D(cnt_scl_9__N_793[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i3.GSR = "ENABLED";
    FD1S3DX cnt_scl_i2 (.D(cnt_scl_9__N_793[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i2.GSR = "ENABLED";
    FD1S3DX cnt_scl_i1 (.D(cnt_scl_9__N_793[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam cnt_scl_i1.GSR = "ENABLED";
    FD1S3DX current_state_i9 (.D(next_state[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i9.GSR = "ENABLED";
    FD1S3DX current_state_i8 (.D(next_state[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i8.GSR = "ENABLED";
    FD1S3DX current_state_i7 (.D(next_state[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i7.GSR = "ENABLED";
    FD1S3DX current_state_i6 (.D(\next_state[6] ), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i6.GSR = "ENABLED";
    FD1S3DX current_state_i5 (.D(next_state[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i5.GSR = "ENABLED";
    FD1S3DX current_state_i4 (.D(next_state[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i4.GSR = "ENABLED";
    FD1S3DX current_state_i3 (.D(next_state[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i3.GSR = "ENABLED";
    FD1S3DX current_state_i2 (.D(next_state[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i2.GSR = "ENABLED";
    FD1S3DX current_state_i1 (.D(next_state[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i1.GSR = "ENABLED";
    FD1S3DX cnt_div__i14 (.D(n15812), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i14.GSR = "ENABLED";
    FD1S3DX cnt_div__i13 (.D(n15810), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i13.GSR = "ENABLED";
    FD1S3DX cnt_div__i12 (.D(n15814), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i12.GSR = "ENABLED";
    FD1S3DX cnt_div__i11 (.D(n15815), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i11.GSR = "ENABLED";
    FD1S3DX cnt_div__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i10.GSR = "ENABLED";
    FD1S3DX cnt_div__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i9.GSR = "ENABLED";
    FD1S3DX cnt_div__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i8.GSR = "ENABLED";
    FD1S3DX cnt_div__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i7.GSR = "ENABLED";
    FD1S3DX cnt_div__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i6.GSR = "ENABLED";
    FD1S3DX cnt_div__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i5.GSR = "ENABLED";
    FD1S3DX cnt_div__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i4.GSR = "ENABLED";
    FD1S3DX cnt_div__i3 (.D(n15816), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i3.GSR = "ENABLED";
    FD1S3DX cnt_div__i2 (.D(n15813), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div_c[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i2.GSR = "ENABLED";
    FD1S3DX cnt_div__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\cnt_div[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i1.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_290_3_lut_4_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(n19507), 
         .D(cnt_scl[2]), .Z(n19468)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_290_3_lut_4_lut.init = 16'hfff7;
    FD1P3DX data_read_temp_i0_i6 (.D(n18058), .SP(drive_clk_enable_30), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i6.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i4 (.D(n18059), .SP(drive_clk_enable_30), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i2 (.D(n18060), .SP(cnt_scl[4]), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam data_read_temp_i0_i2.GSR = "ENABLED";
    LUT4 i6718_4_lut (.A(n2[1]), .B(start), .C(n6033[0]), .D(n5156), 
         .Z(n1[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6718_4_lut.init = 16'hc088;
    LUT4 n17298_bdd_4_lut_then_2_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .Z(n19555)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n17298_bdd_4_lut_then_2_lut.init = 16'h2222;
    LUT4 n17298_bdd_4_lut_else_2_lut (.A(cnt_scl[0]), .B(cnt_scl[2]), .C(cnt_scl[3]), 
         .D(cnt_scl[5]), .Z(n19554)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A ((C+!(D))+!B))) */ ;
    defparam n17298_bdd_4_lut_else_2_lut.init = 16'h042a;
    LUT4 mux_1016_i1_3_lut (.A(addr[13]), .B(n4187[0]), .C(cnt_scl[2]), 
         .Z(n4199[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam mux_1016_i1_3_lut.init = 16'hcaca;
    LUT4 i13818_3_lut_4_lut (.A(current_state[0]), .B(n19511), .C(\current_state[4] ), 
         .D(n19510), .Z(n17832)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13818_3_lut_4_lut.init = 16'hfffe;
    LUT4 i14466_3_lut_4_lut (.A(n19493), .B(n19509), .C(n20386), .D(n23), 
         .Z(n4535)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i14466_3_lut_4_lut.init = 16'hefff;
    LUT4 i13834_4_lut_4_lut (.A(n19493), .B(n19509), .C(n23), .D(n16698), 
         .Z(n17848)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i13834_4_lut_4_lut.init = 16'hdccc;
    LUT4 i14322_3_lut (.A(n4710[0]), .B(n15860), .C(n19455), .Z(n4730[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14322_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_283_3_lut_4_lut (.A(n19493), .B(n19509), .C(n16980), 
         .D(cnt_scl[5]), .Z(n19461)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_283_3_lut_4_lut.init = 16'h1000;
    LUT4 cnt_scl_9__N_899_9__I_0_308_i12_2_lut_rep_329 (.A(cnt_scl[3]), .B(cnt_scl[4]), 
         .Z(n19507)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam cnt_scl_9__N_899_9__I_0_308_i12_2_lut_rep_329.init = 16'heeee;
    LUT4 i1_4_lut_adj_80 (.A(n16632), .B(n17832), .C(n6_adj_1496), .D(n16392), 
         .Z(n16)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_80.init = 16'hbbba;
    LUT4 i1_4_lut_adj_81 (.A(n16293), .B(n16630), .C(n19459), .D(n16350), 
         .Z(n16632)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_81.init = 16'hdccc;
    LUT4 i1_3_lut_adj_82 (.A(n19355), .B(current_state[6]), .C(current_state[7]), 
         .Z(n6_adj_1496)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_3_lut_adj_82.init = 16'h0202;
    LUT4 i1_4_lut_4_lut_adj_83 (.A(n19509), .B(n4), .C(current_state[0]), 
         .D(n60), .Z(n24_adj_1497)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_83.init = 16'hf1f0;
    LUT4 i1_4_lut_adj_84 (.A(n17834), .B(n14572), .C(n14573), .D(current_state[7]), 
         .Z(n16392)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_84.init = 16'h5044;
    LUT4 i1_4_lut_4_lut_adj_85 (.A(n19509), .B(n16724), .C(n56), .D(n21_adj_1498), 
         .Z(sda_transmit_N_1111)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_85.init = 16'h4000;
    LUT4 i1_4_lut_adj_86 (.A(n19510), .B(n16357), .C(n18893), .D(n17784), 
         .Z(n16630)) /* synthesis lut_function=(A+!(B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_86.init = 16'hbbab;
    LUT4 i2_4_lut (.A(n29_adj_1499), .B(current_state[6]), .C(current_state[0]), 
         .D(current_state_c[1]), .Z(n16350)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i2_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_3_lut_4_lut_adj_87 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n19518), 
         .D(cnt_scl[2]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam i1_3_lut_3_lut_4_lut_adj_87.init = 16'hfeff;
    LUT4 i2_4_lut_adj_88 (.A(n16968), .B(current_state_c[1]), .C(n87), 
         .D(current_state[7]), .Z(n16357)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i2_4_lut_adj_88.init = 16'h0010;
    LUT4 cnt_scl_9__N_899_9__I_0_308_i13_2_lut_rep_303_3_lut (.A(cnt_scl[3]), 
         .B(cnt_scl[4]), .C(cnt_scl[2]), .Z(n19478)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam cnt_scl_9__N_899_9__I_0_308_i13_2_lut_rep_303_3_lut.init = 16'hfefe;
    LUT4 i6894_2_lut_rep_334 (.A(current_state_c[1]), .B(\current_state[4] ), 
         .Z(n19512)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6894_2_lut_rep_334.init = 16'heeee;
    LUT4 i1_4_lut_adj_89 (.A(\current_state[3] ), .B(current_state[0]), 
         .C(\current_state[2] ), .D(current_state[6]), .Z(n87)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_4_lut_adj_89.init = 16'h0116;
    LUT4 i13820_2_lut (.A(current_state_c[1]), .B(current_state[5]), .Z(n17834)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13820_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_90 (.A(n19509), .B(n19478), .C(n19493), .D(cnt_scl[5]), 
         .Z(n15289)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hfffe;
    LUT4 cnt_scl_9__N_899_9__I_0_297_i11_2_lut_rep_330 (.A(cnt_scl[0]), .B(cnt_scl[1]), 
         .Z(n19508)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(369[25:30])
    defparam cnt_scl_9__N_899_9__I_0_297_i11_2_lut_rep_330.init = 16'hbbbb;
    LUT4 i2025_1_lut_4_lut (.A(n19499), .B(\current_state[4] ), .C(n15425), 
         .D(\current_state[3] ), .Z(n5845)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2025_1_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_4_lut_adj_91 (.A(current_state_c[1]), .B(\current_state[4] ), 
         .C(\current_state[2] ), .D(\current_state[3] ), .Z(n7444)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_91.init = 16'h0110;
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(current_state[6]), 
         .D(n15289), .Z(n14573)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(369[25:30])
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'h0f0b;
    LUT4 i1_3_lut_4_lut_adj_93 (.A(flag_ack), .B(n4729), .C(ctrl_w0_r1), 
         .D(\current_state[3] ), .Z(n17066)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_3_lut_4_lut_adj_93.init = 16'h8000;
    LUT4 i1_3_lut_adj_94 (.A(\cnt_div[5] ), .B(n19526), .C(\cnt_div[1] ), 
         .Z(n15822)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_94.init = 16'h4040;
    LUT4 i1_2_lut_rep_282_3_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(n15289), 
         .Z(n19460)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(369[25:30])
    defparam i1_2_lut_rep_282_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_adj_95 (.A(\current_state[4] ), .B(current_state[5]), 
         .Z(n16968)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_95.init = 16'heeee;
    LUT4 i14377_2_lut (.A(n19465), .B(n15271), .Z(drive_clk_enable_28)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i14377_2_lut.init = 16'h2222;
    LUT4 i123_2_lut_3_lut_4_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(current_state[7]), 
         .D(n15289), .Z(n117)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(369[25:30])
    defparam i123_2_lut_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i1_4_lut_adj_96 (.A(n17140), .B(n19459), .C(n17136), .D(n16968), 
         .Z(n15271)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(319[17:24])
    defparam i1_4_lut_adj_96.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_97 (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(n19503), .Z(n17286)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_97.init = 16'h0010;
    LUT4 i14387_2_lut_3_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(n10), 
         .D(cnt_scl[3]), .Z(drive_clk_enable_10)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i14387_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 mux_1222_i1_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(n4532), 
         .D(cnt_scl[3]), .Z(n4475[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam mux_1222_i1_4_lut_4_lut.init = 16'h1c10;
    LUT4 i1_4_lut_adj_98 (.A(current_state[7]), .B(current_state[6]), .C(\current_state[3] ), 
         .D(n19510), .Z(n17140)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(319[17:24])
    defparam i1_4_lut_adj_98.init = 16'hfffb;
    LUT4 i2799_3_lut (.A(data_write[5]), .B(n6673), .C(cnt_scl[2]), .Z(n6677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2799_3_lut.init = 16'hcaca;
    LUT4 i14389_2_lut_3_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(n10), 
         .D(cnt_scl[3]), .Z(drive_clk_enable_9)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i14389_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1907_2_lut_rep_273 (.A(current_state_c[1]), .B(n4729), .Z(n19451)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1907_2_lut_rep_273.init = 16'h2222;
    LUT4 i3875_3_lut_4_lut_4_lut (.A(cnt_scl[0]), .B(cnt_scl[4]), .C(n4535), 
         .D(n19519), .Z(n4)) /* synthesis lut_function=(A (C+!(D))+!A (B+!(C))) */ ;
    defparam i3875_3_lut_4_lut_4_lut.init = 16'he5ef;
    LUT4 i1_3_lut_adj_99 (.A(\current_state[2] ), .B(current_state[0]), 
         .C(current_state_c[1]), .Z(n17136)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(319[17:24])
    defparam i1_3_lut_adj_99.init = 16'hfefe;
    LUT4 i2262_2_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), .Z(n4_adj_1500)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(342[42:57])
    defparam i2262_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_100 (.A(cnt_scl[0]), .B(cnt_scl[4]), .C(n4535), 
         .D(n4532), .Z(n16358)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_100.init = 16'hffef;
    LUT4 i21_3_lut_3_lut (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(cnt_scl[3]), 
         .Z(n10_adj_1501)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam i21_3_lut_3_lut.init = 16'h7474;
    LUT4 i1_4_lut_4_lut_adj_101 (.A(cnt_scl[2]), .B(rd_cnt[1]), .C(rd_cnt[0]), 
         .D(n19506), .Z(n17188)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_101.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_102 (.A(cnt_scl[2]), .B(current_state[6]), .C(n20386), 
         .D(n19506), .Z(n16980)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_102.init = 16'h4000;
    LUT4 mux_499_i7_4_lut (.A(current_state[6]), .B(\next_state[6] ), .C(n19), 
         .D(flag_ack), .Z(next_state_9__N_967[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam mux_499_i7_4_lut.init = 16'hcfca;
    LUT4 i43_4_lut_3_lut (.A(\current_state[4] ), .B(\current_state[2] ), 
         .C(\current_state[3] ), .Z(n29_adj_1499)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i43_4_lut_3_lut.init = 16'h1616;
    LUT4 i1_2_lut_rep_331 (.A(cnt_scl[9]), .B(cnt_scl[7]), .Z(n19509)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_331.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_103 (.A(cnt_scl[2]), .B(n19506), .C(n20386), 
         .D(n19467), .Z(flag_ack_N_1056)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_103.init = 16'h0040;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_scl[2]), .B(n19506), .C(n4729), 
         .D(flag_ack), .Z(n16766)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i14456_4_lut (.A(n18135), .B(n13), .C(n16576), .D(n5786), .Z(drive_clk_enable_2)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i14456_4_lut.init = 16'h0203;
    LUT4 sda_transmit_en_I_0_1_lut (.A(sda_transmit_en), .Z(sda_transmit_en_N_1061)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[31:59])
    defparam sda_transmit_en_I_0_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_104 (.A(cnt_scl[2]), .B(rd_cnt[0]), .C(n17194), 
         .D(n19506), .Z(n17202)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_104.init = 16'h4000;
    LUT4 i1_4_lut_adj_105 (.A(n18346), .B(drive_clk_enable_5), .C(n17754), 
         .D(n19455), .Z(n16576)) /* synthesis lut_function=(!(A (B)+!A (B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_105.init = 16'h3373;
    LUT4 i1_4_lut_adj_106 (.A(n4535), .B(n60), .C(n5), .D(n19509), .Z(n5786)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_106.init = 16'hfffb;
    LUT4 i13751_2_lut_rep_304_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), 
         .C(cnt_scl[8]), .D(cnt_scl[6]), .Z(n19482)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13751_2_lut_rep_304_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_107 (.A(cnt_scl[2]), .B(n17044), .C(n20386), 
         .D(n19506), .Z(n17052)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_107.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_108 (.A(cnt_scl[2]), .B(n17066), .C(n20386), 
         .D(n19506), .Z(n17074)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_108.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(cnt_scl[5]), .B(n19482), .C(n20386), 
         .D(n16766), .Z(n5702)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(330[25:31])
    defparam i1_3_lut_4_lut_adj_109.init = 16'h2000;
    LUT4 i1_4_lut_adj_110 (.A(n18418), .B(n30_adj_1502), .C(n7444), .D(n19511), 
         .Z(n4_adj_1503)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_110.init = 16'h5054;
    LUT4 i1_4_lut_4_lut_adj_111 (.A(cnt_scl[2]), .B(n20386), .C(n19467), 
         .D(n16778), .Z(n16034)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_4_lut_adj_111.init = 16'h0400;
    LUT4 i56_2_lut (.A(current_state_c[1]), .B(\current_state[4] ), .Z(n30_adj_1502)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i56_2_lut.init = 16'h6666;
    LUT4 n4200_bdd_3_lut_14912 (.A(n17951), .B(n17950), .C(cnt_scl[3]), 
         .Z(n18984)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n4200_bdd_3_lut_14912.init = 16'hacac;
    LUT4 i1_3_lut_3_lut_4_lut_adj_112 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n55), 
         .D(n7866), .Z(n16063)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_112.init = 16'h1000;
    LUT4 i1_2_lut_rep_294_2_lut (.A(cnt_scl[3]), .B(cnt_scl[2]), .Z(n19472)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam i1_2_lut_rep_294_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_113 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n7346), 
         .D(n55), .Z(n15792)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_113.init = 16'hfeff;
    LUT4 i1_4_lut_adj_114 (.A(n13986), .B(n17836), .C(n15829), .D(n52), 
         .Z(n60)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_114.init = 16'hbbba;
    LUT4 mux_1092_i1_3_lut (.A(addr[5]), .B(n4289[0]), .C(cnt_scl[2]), 
         .Z(n4301[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_1092_i1_3_lut.init = 16'hcaca;
    LUT4 i14336_3_lut (.A(n19055), .B(n19316), .C(n19455), .Z(n4859[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14336_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_115 (.A(flag_ack), .B(n4729), .C(ctrl_w0_r1), 
         .D(\current_state[3] ), .Z(n17044)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_3_lut_4_lut_adj_115.init = 16'h0800;
    LUT4 i1_4_lut_adj_116 (.A(cnt_scl[2]), .B(current_state[0]), .C(cnt_scl[0]), 
         .D(cnt_scl[5]), .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hecfc;
    LUT4 n19_bdd_2_lut_15158 (.A(n19), .B(current_state_c[1]), .Z(n19353)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n19_bdd_2_lut_15158.init = 16'h2222;
    LUT4 mux_1390_i1_4_lut (.A(n16586), .B(flag_ack), .C(n22_adj_1504), 
         .D(n20239), .Z(n4695[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1390_i1_4_lut.init = 16'h0c5c;
    LUT4 mux_1386_i1_4_lut (.A(current_state[6]), .B(n16872), .C(n19455), 
         .D(n60), .Z(n4689[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1386_i1_4_lut.init = 16'hca0a;
    CCU2C add_47_11 (.A0(cnt_scl[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13838), 
          .S0(cnt_scl_9__N_899[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_11.INIT0 = 16'haaaa;
    defparam add_47_11.INIT1 = 16'h0000;
    defparam add_47_11.INJECT1_0 = "NO";
    defparam add_47_11.INJECT1_1 = "NO";
    CCU2C add_47_9 (.A0(cnt_scl[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13837), .COUT(n13838), .S0(cnt_scl_9__N_899[7]), .S1(cnt_scl_9__N_899[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_9.INIT0 = 16'haaaa;
    defparam add_47_9.INIT1 = 16'haaaa;
    defparam add_47_9.INJECT1_0 = "NO";
    defparam add_47_9.INJECT1_1 = "NO";
    CCU2C add_47_7 (.A0(cnt_scl[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13836), .COUT(n13837), .S0(cnt_scl_9__N_899[5]), .S1(cnt_scl_9__N_899[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_7.INIT0 = 16'haaaa;
    defparam add_47_7.INIT1 = 16'haaaa;
    defparam add_47_7.INJECT1_0 = "NO";
    defparam add_47_7.INJECT1_1 = "NO";
    LUT4 start_N_755_bdd_2_lut_14810_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[4]), .Z(n19176)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam start_N_755_bdd_2_lut_14810_4_lut.init = 16'hca00;
    LUT4 start_N_755_bdd_2_lut_14806_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[5]), .Z(n19173)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam start_N_755_bdd_2_lut_14806_4_lut.init = 16'hca00;
    LUT4 n5617_bdd_2_lut_14641_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[8]), .Z(n18931)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n5617_bdd_2_lut_14641_4_lut.init = 16'hca00;
    CCU2C add_47_5 (.A0(cnt_scl[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13835), .COUT(n13836), .S0(cnt_scl_9__N_899[3]), .S1(cnt_scl_9__N_899[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_5.INIT0 = 16'haaaa;
    defparam add_47_5.INIT1 = 16'haaaa;
    defparam add_47_5.INJECT1_0 = "NO";
    defparam add_47_5.INJECT1_1 = "NO";
    LUT4 i13794_2_lut_3_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(current_state[0]), 
         .Z(n17808)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13794_2_lut_3_lut.init = 16'hfefe;
    LUT4 start_N_755_bdd_2_lut_14818_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[2]), .Z(n19183)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam start_N_755_bdd_2_lut_14818_4_lut.init = 16'hca00;
    LUT4 csi_dt_c_bdd_2_lut_15366_3_lut (.A(n20236), .B(n19477), .C(n4365), 
         .Z(n20238)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam csi_dt_c_bdd_2_lut_15366_3_lut.init = 16'hbfbf;
    LUT4 n19_bdd_3_lut_4_lut (.A(cnt_scl[5]), .B(n19482), .C(current_state_c[1]), 
         .D(n14), .Z(n19354)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(330[25:31])
    defparam n19_bdd_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i5_1_lut_rep_311 (.A(cnt_scl[4]), .Z(drive_clk_enable_30)) /* synthesis lut_function=(!(A)) */ ;
    defparam i5_1_lut_rep_311.init = 16'h5555;
    LUT4 i14394_2_lut_3_lut_4_lut_4_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), 
         .C(n10), .D(cnt_scl[2]), .Z(drive_clk_enable_7)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i14394_2_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n4729), 
         .D(current_state_c[1]), .Z(n16622)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_117.init = 16'h0100;
    LUT4 i2_4_lut_adj_118 (.A(n18774), .B(n19510), .C(n16326), .D(n18418), 
         .Z(drive_clk_enable_5)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i2_4_lut_adj_118.init = 16'h3032;
    LUT4 i1_2_lut_rep_332 (.A(current_state[8]), .B(\current_state[9] ), 
         .Z(n19510)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_332.init = 16'heeee;
    LUT4 i2_4_lut_adj_119 (.A(n19512), .B(n19511), .C(n81), .D(n84), 
         .Z(n16326)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i2_4_lut_adj_119.init = 16'h1110;
    LUT4 i14443_2_lut_3_lut_4_lut (.A(current_state[8]), .B(\current_state[9] ), 
         .C(drive_clk_enable_5), .D(n4_adj_1503), .Z(drive_clk_enable_31)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i14443_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_4_lut_adj_120 (.A(drive_clk_enable_5), .B(n52_adj_1505), .C(n46), 
         .D(n18346), .Z(drive_clk_enable_3)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'ha088;
    LUT4 i1_4_lut_adj_121 (.A(n56), .B(n16064), .C(n4_adj_1506), .D(n16622), 
         .Z(n46)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_121.init = 16'hcecc;
    LUT4 i1_4_lut_adj_122 (.A(n4365), .B(n19454), .C(n4729), .D(current_state_c[1]), 
         .Z(n16064)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_122.init = 16'h8088;
    LUT4 i3_rep_22_3_lut (.A(n21_adj_1498), .B(n15940), .C(cnt_scl[1]), 
         .Z(n4096)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i3_rep_22_3_lut.init = 16'h0202;
    LUT4 i14399_2_lut_3_lut_4_lut (.A(current_state[8]), .B(\current_state[9] ), 
         .C(n22_adj_1504), .D(n4_adj_1503), .Z(n18123)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i14399_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i1_2_lut_rep_346 (.A(cnt_scl[8]), .B(cnt_scl[0]), .Z(n20385)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_346.init = 16'h4444;
    LUT4 n5617_bdd_2_lut_14633_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[9]), .Z(n18924)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n5617_bdd_2_lut_14633_4_lut.init = 16'hca00;
    LUT4 i14392_2_lut_3_lut_4_lut_4_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), 
         .C(n10), .D(cnt_scl[2]), .Z(drive_clk_enable_8)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i14392_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i1_3_lut_3_lut_4_lut_adj_123 (.A(cnt_scl[2]), .B(cnt_scl[3]), .C(n19506), 
         .D(cnt_scl[4]), .Z(n16261)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_123.init = 16'h0010;
    LUT4 i1_2_lut_2_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n17024)) /* synthesis lut_function=((B)+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i3_2_lut_rep_312 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n19490)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_312.init = 16'h2222;
    LUT4 i3874_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n4096), 
         .D(n19515), .Z(n7866)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam i3874_4_lut_4_lut.init = 16'h2c20;
    LUT4 start_N_755_bdd_2_lut_14814_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[3]), .Z(n19179)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam start_N_755_bdd_2_lut_14814_4_lut.init = 16'hca00;
    LUT4 i6753_2_lut_2_lut (.A(cnt_div[0]), .B(\cnt_div[1] ), .Z(n6033[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6753_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_124 (.A(cnt_div[0]), .B(cnt_div[9]), .Z(n17006)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_2_lut_2_lut_adj_124.init = 16'h4444;
    LUT4 i6724_4_lut_4_lut (.A(cnt_div[0]), .B(n5156), .C(start), .D(n2[9]), 
         .Z(n1[9])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6724_4_lut_4_lut.init = 16'h7040;
    LUT4 n5617_bdd_2_lut_14649_4_lut (.A(n19460), .B(n19459), .C(current_state[6]), 
         .D(next_state[1]), .Z(n18938)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n5617_bdd_2_lut_14649_4_lut.init = 16'hca00;
    LUT4 i2_4_lut_adj_125 (.A(\current_state[3] ), .B(n15425), .C(\current_state[4] ), 
         .D(n19500), .Z(n4729)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam i2_4_lut_adj_125.init = 16'h0012;
    LUT4 n18927_bdd_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n18926), 
         .D(n18927), .Z(n18928)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n18927_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6719_4_lut_4_lut (.A(cnt_div[0]), .B(n5156), .C(start), .D(n2[4]), 
         .Z(n1[4])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6719_4_lut_4_lut.init = 16'h7040;
    LUT4 i14332_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n19178), 
         .D(next_state_9__N_967[4]), .Z(n4859[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14332_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_126 (.A(n4535), .B(n19509), .C(n19513), .D(n16866), 
         .Z(n16872)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_126.init = 16'h0100;
    LUT4 i7034_4_lut_rep_287 (.A(n10833), .B(n4_adj_1500), .C(rd_cnt[2]), 
         .D(rd_cnt[3]), .Z(n19465)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i7034_4_lut_rep_287.init = 16'hccc8;
    LUT4 i1_3_lut_4_lut_then_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), 
         .C(cnt_scl[0]), .D(cnt_scl[2]), .Z(n19552)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_then_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1730_2_lut_rep_314 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n19492)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i1730_2_lut_rep_314.init = 16'heeee;
    LUT4 mux_1887_i8_4_lut (.A(n16034), .B(current_state[7]), .C(flag_ack), 
         .D(n5702), .Z(n5694)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1887_i8_4_lut.init = 16'h5c0c;
    PFUMX i14965 (.BLUT(n19524), .ALUT(n19525), .C0(\cnt_div[10] ), .Z(n19526));
    LUT4 i14334_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n19175), 
         .D(next_state_9__N_967[5]), .Z(n4859[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14334_3_lut_4_lut.init = 16'hf2d0;
    CCU2C add_47_3 (.A0(cnt_scl[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13834), .COUT(n13835), .S0(cnt_scl_9__N_899[1]), .S1(cnt_scl_9__N_899[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_3.INIT0 = 16'haaaa;
    defparam add_47_3.INIT1 = 16'haaaa;
    defparam add_47_3.INJECT1_0 = "NO";
    defparam add_47_3.INJECT1_1 = "NO";
    LUT4 i3876_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n4096), 
         .D(n17024), .Z(n7346)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i3876_4_lut_4_lut.init = 16'hefe3;
    LUT4 i35_3_lut_3_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i35_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i14330_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n19181), 
         .D(next_state_9__N_967[3]), .Z(n4859[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14330_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i14324_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n19185), 
         .D(next_state_9__N_967[2]), .Z(n4859[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i14324_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_315 (.A(cnt_scl[6]), .B(cnt_scl[8]), .Z(n19493)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_315.init = 16'heeee;
    LUT4 n18934_bdd_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n18933), 
         .D(n18934), .Z(n18935)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n18934_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2870_4_lut (.A(n19467), .B(n19468), .C(n14), .D(n19451), .Z(n5699)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i2870_4_lut.init = 16'hfaee;
    LUT4 i1_3_lut_4_lut_else_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), 
         .C(cnt_scl[1]), .D(cnt_scl[2]), .Z(n19551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_else_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_127 (.A(n12), .B(n10753), .C(n18212), .D(n19482), 
         .Z(n15778)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_127.init = 16'hffbf;
    PFUMX mux_1487_i8 (.BLUT(n4859[7]), .ALUT(n4871[7]), .C0(n18346), 
          .Z(n4883[7]));
    LUT4 n10327_bdd_4_lut_14571 (.A(n19511), .B(current_state[0]), .C(current_state[7]), 
         .D(current_state[6]), .Z(n10523)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n10327_bdd_4_lut_14571.init = 16'h0114;
    LUT4 n10214_bdd_3_lut_14959 (.A(addr[1]), .B(addr[0]), .C(cnt_scl[2]), 
         .Z(n19403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10214_bdd_3_lut_14959.init = 16'hcaca;
    LUT4 i13814_2_lut_rep_298_3_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[0]), 
         .Z(n19476)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13814_2_lut_rep_298_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_else_4_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[0]), .C(cnt_scl[1]), 
         .D(cnt_scl[6]), .Z(n19545)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_else_4_lut_4_lut.init = 16'h0004;
    PFUMX mux_1487_i6 (.BLUT(n4859[5]), .ALUT(n4871[5]), .C0(n18346), 
          .Z(n4883[5]));
    LUT4 mux_1887_i6_4_lut (.A(n17074), .B(current_state[5]), .C(flag_ack), 
         .D(n19467), .Z(n5692)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1887_i6_4_lut.init = 16'h0cac;
    PFUMX i14672 (.BLUT(n18987), .ALUT(sda_transmit_N_1111), .C0(current_state_c[1]), 
          .Z(n18988));
    LUT4 i88_4_lut (.A(n16185), .B(n62), .C(cnt_scl[4]), .D(n86), .Z(n56)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i88_4_lut.init = 16'hcfca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_128 (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(n19556), 
         .D(cnt_scl[1]), .Z(n13986)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_128.init = 16'h1000;
    LUT4 i13822_2_lut_3_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[4]), 
         .Z(n17836)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13822_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_129 (.A(n17726), .B(n19503), .C(cnt_scl[6]), .D(cnt_scl[0]), 
         .Z(n16185)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_129.init = 16'h0100;
    LUT4 i13714_2_lut (.A(cnt_scl[1]), .B(cnt_scl[8]), .Z(n17726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13714_2_lut.init = 16'heeee;
    PFUMX i14670 (.BLUT(n4199[0]), .ALUT(n18984), .C0(cnt_scl[4]), .Z(n18985));
    LUT4 i14375_2_lut_3_lut_4_lut (.A(current_state[8]), .B(\current_state[9] ), 
         .C(n19455), .D(n4_adj_1503), .Z(n18135)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i14375_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i14409_2_lut_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[0]), 
         .D(n19509), .Z(n10892)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i14409_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i14365_2_lut_rep_347 (.A(cnt_scl[3]), .B(cnt_scl[4]), .Z(n20386)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14365_2_lut_rep_347.init = 16'h1111;
    LUT4 mux_1887_i5_4_lut (.A(n17052), .B(\current_state[4] ), .C(flag_ack), 
         .D(n19467), .Z(n5691)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1887_i5_4_lut.init = 16'h0cac;
    LUT4 n19477_bdd_4_lut (.A(n17863), .B(cnt_scl[9]), .C(cnt_scl[0]), 
         .D(cnt_scl[6]), .Z(n20236)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n19477_bdd_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_301_3_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[1]), 
         .Z(n19479)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_301_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(n8), 
         .D(cnt_scl[0]), .Z(n62)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'h0010;
    LUT4 i22_4_lut (.A(n19460), .B(current_state[0]), .C(n19455), .D(current_state[6]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i22_4_lut.init = 16'hc0c5;
    LUT4 mux_1007_i1_3_lut (.A(addr[14]), .B(addr[12]), .C(cnt_scl[3]), 
         .Z(n4187[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam mux_1007_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_131 (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[1]), 
         .D(n18), .Z(n15930)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_131.init = 16'h0100;
    LUT4 i1_2_lut_adj_132 (.A(drive_clk_enable_5), .B(n39_adj_1509), .Z(next_state_9__N_803[0])) /* synthesis lut_function=((B)+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_adj_132.init = 16'hdddd;
    LUT4 i2_2_lut_rep_279_3_lut (.A(current_state[8]), .B(\current_state[9] ), 
         .C(n4_adj_1503), .Z(n18346)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_rep_279_3_lut.init = 16'h1010;
    LUT4 i14440_3_lut (.A(n19465), .B(n15271), .C(rd_first_done), .Z(drive_clk_enable_21)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i14440_3_lut.init = 16'h0101;
    PFUMX mux_1487_i5 (.BLUT(n4859[4]), .ALUT(n4871[4]), .C0(n18346), 
          .Z(n4883[4]));
    PFUMX mux_1487_i4 (.BLUT(n4859[3]), .ALUT(n4871[3]), .C0(n18346), 
          .Z(n4883[3]));
    LUT4 current_state_7__bdd_4_lut (.A(current_state[7]), .B(current_state_c[1]), 
         .C(current_state[5]), .D(\current_state[4] ), .Z(n18893)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam current_state_7__bdd_4_lut.init = 16'h0116;
    LUT4 mux_1887_i4_4_lut (.A(n19467), .B(\current_state[3] ), .C(flag_ack), 
         .D(n17888), .Z(n5690)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1887_i4_4_lut.init = 16'hacfc;
    LUT4 csi_dt_c_bdd_2_lut_15320 (.A(n20234), .B(n55), .Z(n20235)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam csi_dt_c_bdd_2_lut_15320.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_133 (.A(n19518), .B(flag_ack), .C(cnt_scl[2]), .D(current_state_c[1]), 
         .Z(n16758)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_133.init = 16'h4000;
    LUT4 n55_bdd_4_lut (.A(n4096), .B(n19509), .C(cnt_scl[0]), .D(cnt_scl[5]), 
         .Z(n20234)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam n55_bdd_4_lut.init = 16'hefff;
    LUT4 i1_3_lut_4_lut_adj_134 (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[4]), 
         .D(n19509), .Z(n15940)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_134.init = 16'hfffe;
    LUT4 i2598_3_lut_rep_274_4_lut (.A(n19468), .B(n19467), .C(current_state[6]), 
         .D(n19460), .Z(n19452)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam i2598_3_lut_rep_274_4_lut.init = 16'hefe0;
    LUT4 i2795_3_lut (.A(data_write[6]), .B(data_write[4]), .C(cnt_scl[3]), 
         .Z(n6673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2795_3_lut.init = 16'hcaca;
    LUT4 i14469_4_lut (.A(start), .B(n7096), .C(drive_clk), .D(n15932), 
         .Z(drive_clk_N_1034)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(32[18:27])
    defparam i14469_4_lut.init = 16'h5fd7;
    LUT4 i13849_3_lut (.A(cnt_scl[8]), .B(cnt_scl[2]), .C(cnt_scl[7]), 
         .Z(n17863)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13849_3_lut.init = 16'hfefe;
    LUT4 i1_rep_38_2_lut_3_lut (.A(flag_ack), .B(n4729), .C(flag_ack_N_1056), 
         .Z(n16036)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_rep_38_2_lut_3_lut.init = 16'h8080;
    LUT4 i13902_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(n19509), 
         .D(cnt_scl[2]), .Z(n17917)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13902_3_lut_4_lut.init = 16'hfffe;
    LUT4 n10214_bdd_3_lut (.A(data_write[1]), .B(data_write[0]), .C(cnt_scl[2]), 
         .Z(n19420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10214_bdd_3_lut.init = 16'hcaca;
    L6MUX21 mux_1487_i7 (.D0(n4817[6]), .D1(n4859[6]), .SD(n18135), .Z(n4883[6]));
    PFUMX mux_1487_i3 (.BLUT(n4859[2]), .ALUT(n4871[2]), .C0(n18346), 
          .Z(n4883[2]));
    LUT4 i2_3_lut_4_lut_adj_135 (.A(current_state[8]), .B(\current_state[9] ), 
         .C(current_state[5]), .D(current_state[7]), .Z(n16293)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_135.init = 16'hfffe;
    LUT4 i1_2_lut_rep_289_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[5]), 
         .D(n19509), .Z(n19467)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_289_3_lut_4_lut.init = 16'hffef;
    LUT4 i86_4_lut (.A(n19547), .B(n62), .C(cnt_scl[4]), .D(n16369), 
         .Z(n55)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i86_4_lut.init = 16'hcacf;
    LUT4 i1_4_lut_adj_136 (.A(n17274), .B(n7486), .C(n17266), .D(\cnt_div[1] ), 
         .Z(n7096)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(63[22:56])
    defparam i1_4_lut_adj_136.init = 16'hfeff;
    LUT4 i1_4_lut_adj_137 (.A(n19476), .B(cnt_scl[2]), .C(n17822), .D(cnt_scl[5]), 
         .Z(n16369)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_137.init = 16'hfbfe;
    LUT4 i1_4_lut_adj_138 (.A(cnt_div_c[11]), .B(\cnt_div[8] ), .C(cnt_div_c[6]), 
         .D(n8_adj_1510), .Z(n17274)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(63[22:56])
    defparam i1_4_lut_adj_138.init = 16'hff7f;
    LUT4 i1_4_lut_adj_139 (.A(n9_adj_1511), .B(\cnt_div[5] ), .C(\cnt_div[10] ), 
         .D(cnt_div_c[2]), .Z(n17266)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(63[22:56])
    defparam i1_4_lut_adj_139.init = 16'hfffe;
    LUT4 i3_2_lut (.A(cnt_div_c[3]), .B(cnt_div_c[12]), .Z(n9_adj_1511)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i14477_3_lut_4_lut (.A(n19510), .B(n4_adj_1503), .C(n14638), 
         .D(n19147), .Z(n4944[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14477_3_lut_4_lut.init = 16'hfb40;
    CCU2C add_47_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_scl[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13834), .S1(cnt_scl_9__N_899[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_1.INIT0 = 16'h0000;
    defparam add_47_1.INIT1 = 16'h555a;
    defparam add_47_1.INJECT1_0 = "NO";
    defparam add_47_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_140 (.A(cnt_div_c[14]), .B(cnt_div_c[13]), .Z(n8_adj_1510)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i2_2_lut_adj_140.init = 16'heeee;
    LUT4 i13676_3_lut_4_lut (.A(current_state[8]), .B(\current_state[9] ), 
         .C(\current_state[4] ), .D(current_state[5]), .Z(n17688)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13676_3_lut_4_lut.init = 16'hfffe;
    PFUMX mux_1422_i1 (.BLUT(n4730[0]), .ALUT(n4733[0]), .C0(n18346), 
          .Z(n4736[0]));
    LUT4 i33_3_lut_4_lut (.A(n19508), .B(n15289), .C(current_state[6]), 
         .D(n10952), .Z(n15605)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam i33_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i14222_3_lut_4_lut (.A(n19462), .B(cnt_scl[3]), .C(n19429), .D(n17953), 
         .Z(n4304[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam i14222_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i14033_3_lut_4_lut (.A(n19472), .B(n10), .C(n19513), .D(data_read_temp[6]), 
         .Z(n18058)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i14033_3_lut_4_lut.init = 16'hf780;
    PFUMX i14653 (.BLUT(n18942), .ALUT(n18937), .C0(n18346), .Z(n18943));
    LUT4 i14218_3_lut_4_lut (.A(n19462), .B(cnt_scl[3]), .C(n19428), .D(n17956), 
         .Z(n6681)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam i14218_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_141 (.A(\cnt_div[4] ), .B(cnt_div[9]), .C(cnt_div[0]), 
         .D(\cnt_div[7] ), .Z(n15963)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_141.init = 16'hfff7;
    LUT4 i23_3_lut_rep_317 (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(cnt_scl[1]), 
         .Z(n19495)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i23_3_lut_rep_317.init = 16'hc5c5;
    PFUMX mux_1483_i7 (.BLUT(n4807), .ALUT(n4871[6]), .C0(n18346), .Z(n4859[6]));
    LUT4 i1_2_lut_rep_299_4_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(cnt_scl[1]), 
         .D(n20386), .Z(n19477)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_2_lut_rep_299_4_lut.init = 16'hc500;
    FD1P3DX rd_first_done_268 (.D(n18062), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_first_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam rd_first_done_268.GSR = "ENABLED";
    LUT4 mux_1887_i3_4_lut (.A(n5636), .B(\current_state[2] ), .C(flag_ack), 
         .D(n16036), .Z(n5689)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1887_i3_4_lut.init = 16'h0cac;
    LUT4 i46_3_lut_4_lut (.A(n16980), .B(n19467), .C(n19452), .D(\next_state[0] ), 
         .Z(n23_adj_1490)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam i46_3_lut_4_lut.init = 16'hfd0d;
    LUT4 n18140_bdd_4_lut_14636 (.A(n5699), .B(\current_state[9] ), .C(next_state[9]), 
         .D(flag_ack), .Z(n18923)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14636.init = 16'ha0e4;
    LUT4 i1_4_lut_adj_142 (.A(cnt_div_c[6]), .B(n9_adj_1511), .C(n8_adj_1510), 
         .D(n17106), .Z(n16131)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_142.init = 16'hfffd;
    LUT4 i1_2_lut_adj_143 (.A(cnt_div_c[2]), .B(cnt_div_c[11]), .Z(n17106)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_adj_143.init = 16'heeee;
    LUT4 i14372_2_lut_rep_318 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n19496)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14372_2_lut_rep_318.init = 16'h1111;
    L6MUX21 i40 (.D0(n16_adj_1512), .D1(n19_adj_1513), .SD(n18346), .Z(n22_adj_1504));
    PFUMX i79 (.BLUT(n16177), .ALUT(n60_adj_1491), .C0(n19455), .Z(n52_adj_1505));
    PFUMX i14650 (.BLUT(n18939), .ALUT(n18938), .C0(n5845), .Z(n18940));
    LUT4 n4300_bdd_2_lut_14790_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(addr[15]), 
         .Z(n18983)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n4300_bdd_2_lut_14790_3_lut.init = 16'h1010;
    PFUMX i43 (.BLUT(n17), .ALUT(n20_adj_1514), .C0(n18346), .Z(n39_adj_1509));
    LUT4 i1_4_lut_adj_144 (.A(\cnt_div[7] ), .B(cnt_div[0]), .C(cnt_div[9]), 
         .D(\cnt_div[4] ), .Z(n7486)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_144.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_145 (.A(current_state[8]), .B(\current_state[9] ), 
         .C(n12_adj_1515), .D(n4_adj_1503), .Z(n13)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_145.init = 16'h1000;
    LUT4 i14035_3_lut_4_lut (.A(n19472), .B(n10), .C(n19513), .D(data_read_temp[2]), 
         .Z(n18060)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i14035_3_lut_4_lut.init = 16'hf780;
    PFUMX i42 (.BLUT(n16315), .ALUT(n24_adj_1497), .C0(n19455), .Z(n16_adj_1512));
    LUT4 i6456_2_lut_rep_333 (.A(\current_state[3] ), .B(\current_state[2] ), 
         .Z(n19511)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6456_2_lut_rep_333.init = 16'heeee;
    PFUMX i14140 (.BLUT(n15908), .ALUT(n15792), .C0(n19451), .Z(n12_adj_1515));
    LUT4 i1_4_lut_adj_146 (.A(n19477), .B(n4365), .C(n17863), .D(n17098), 
         .Z(n16294)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_146.init = 16'h0800;
    PFUMX i16 (.BLUT(n16333), .ALUT(n16062), .C0(n19451), .Z(n14638));
    LUT4 i13855_3_lut_4_lut (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(n19512), .D(n16293), .Z(n17869)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13855_3_lut_4_lut.init = 16'hfffe;
    PFUMX i14645 (.BLUT(n18935), .ALUT(n18930), .C0(n18346), .Z(n18936));
    LUT4 i3877_3_lut_3_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(n4096), 
         .Z(n4_adj_1506)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(320[21] 359[28])
    defparam i3877_3_lut_3_lut.init = 16'h5858;
    LUT4 i13_3_lut_4_lut_4_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(n4535), 
         .D(cnt_scl[4]), .Z(n7)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(320[21] 359[28])
    defparam i13_3_lut_4_lut_4_lut.init = 16'h0858;
    PFUMX i14642 (.BLUT(n18932), .ALUT(n18931), .C0(n5845), .Z(n18933));
    LUT4 i13770_2_lut_3_lut_4_lut (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(current_state[6]), .D(current_state[0]), .Z(n17784)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13770_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_320 (.A(current_state[6]), .B(current_state[7]), .Z(n19498)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_320.init = 16'heeee;
    LUT4 i121_2_lut_rep_321 (.A(current_state[0]), .B(current_state[5]), 
         .Z(n19499)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i121_2_lut_rep_321.init = 16'h6666;
    LUT4 i32_3_lut (.A(n15605), .B(current_state[0]), .C(n19455), .Z(n19_adj_1)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i32_3_lut.init = 16'hc5c5;
    LUT4 mux_1485_i3_3_lut (.A(n5689), .B(next_state[2]), .C(n5699), .Z(n4871[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1485_i3_3_lut.init = 16'hcaca;
    PFUMX i14637 (.BLUT(n18928), .ALUT(n18923), .C0(n18346), .Z(n18929));
    LUT4 mux_1224_i1_3_lut (.A(n4475[0]), .B(cnt_scl[0]), .C(n4535), .Z(n4478[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(284[21] 315[28])
    defparam mux_1224_i1_3_lut.init = 16'ha3a3;
    CCU2C add_23_15 (.A0(cnt_div_c[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div_c[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13832), .S0(n25), .S1(n24));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_15.INIT0 = 16'haaaa;
    defparam add_23_15.INIT1 = 16'haaaa;
    defparam add_23_15.INJECT1_0 = "NO";
    defparam add_23_15.INJECT1_1 = "NO";
    LUT4 n18_bdd_3_lut_4_lut (.A(cnt_scl[5]), .B(n19482), .C(n16980), 
         .D(n19465), .Z(n19054)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(330[25:31])
    defparam n18_bdd_3_lut_4_lut.init = 16'h2000;
    LUT4 n18140_bdd_4_lut_14639 (.A(n19), .B(\current_state[9] ), .C(next_state[9]), 
         .D(flag_ack), .Z(n18927)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14639.init = 16'ha0e4;
    LUT4 i1_3_lut_4_lut_adj_147 (.A(cnt_scl[5]), .B(n19482), .C(n20386), 
         .D(n16758), .Z(n5636)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(330[25:31])
    defparam i1_3_lut_4_lut_adj_147.init = 16'h2000;
    LUT4 i1_4_lut_adj_148 (.A(n16994), .B(n10_adj_1501), .C(cnt_scl[5]), 
         .D(cnt_scl[6]), .Z(n4532)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_148.init = 16'h0008;
    LUT4 i1_4_lut_adj_149 (.A(cnt_scl[8]), .B(cnt_scl[7]), .C(cnt_scl[9]), 
         .D(n19506), .Z(n16994)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_149.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_150 (.A(cnt_scl[5]), .B(n19482), .C(current_state[6]), 
         .D(n19468), .Z(n14572)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(330[25:31])
    defparam i1_2_lut_3_lut_4_lut_adj_150.init = 16'hf0d0;
    LUT4 n15_bdd_4_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), .C(cnt_scl[5]), 
         .D(cnt_scl[2]), .Z(n19057)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n15_bdd_4_lut.init = 16'h0010;
    PFUMX i14634 (.BLUT(n18925), .ALUT(n18924), .C0(n5845), .Z(n18926));
    LUT4 i1_2_lut_adj_151 (.A(cnt_scl[2]), .B(cnt_scl[1]), .Z(n16680)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_151.init = 16'heeee;
    LUT4 cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_281_3_lut_4_lut (.A(n19478), 
         .B(n19506), .C(n19482), .D(cnt_scl[5]), .Z(n19459)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_281_3_lut_4_lut.init = 16'hfbff;
    LUT4 n10812_bdd_4_lut (.A(n19482), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .D(cnt_scl[5]), .Z(n19056)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n10812_bdd_4_lut.init = 16'h0100;
    PFUMX i41 (.BLUT(n16294), .ALUT(n16063), .C0(n19451), .Z(n19_adj_1513));
    LUT4 i2_3_lut_4_lut_adj_152 (.A(current_state[0]), .B(current_state[5]), 
         .C(current_state[7]), .D(current_state[6]), .Z(n84)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_152.init = 16'h0006;
    LUT4 i1_4_lut_adj_153 (.A(n19519), .B(n19508), .C(n19507), .D(n19482), 
         .Z(n19)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(305[25:31])
    defparam i1_4_lut_adj_153.init = 16'hfffd;
    LUT4 mux_1485_i4_3_lut (.A(n5690), .B(next_state[3]), .C(n5699), .Z(n4871[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1485_i4_3_lut.init = 16'hcaca;
    LUT4 n18140_bdd_4_lut_14644 (.A(n5699), .B(current_state[8]), .C(next_state[8]), 
         .D(flag_ack), .Z(n18930)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n18140_bdd_4_lut_14644.init = 16'ha0e4;
    LUT4 n19054_bdd_3_lut (.A(n19054), .B(next_state[7]), .C(n19452), 
         .Z(n19055)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19054_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_1485_i5_3_lut (.A(n5691), .B(next_state[4]), .C(n5699), .Z(n4871[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam mux_1485_i5_3_lut.init = 16'hcaca;
    LUT4 n18985_bdd_3_lut_4_lut (.A(n17917), .B(n19477), .C(n18983), .D(n18985), 
         .Z(n18986)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam n18985_bdd_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_adj_154 (.A(cnt_scl[9]), .B(cnt_scl[6]), .C(cnt_scl[1]), 
         .Z(n17098)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_154.init = 16'h1010;
    LUT4 i1_4_lut_4_lut_4_lut (.A(\cnt_div[1] ), .B(n33), .C(\cnt_div[5] ), 
         .D(cnt_div_c[11]), .Z(n16353)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i2451_2_lut_rep_335 (.A(i2c_sda_0_out), .B(sda_transmit_en), .Z(n19513)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i2451_2_lut_rep_335.init = 16'h2222;
    LUT4 i1_4_lut_adj_155 (.A(n17822), .B(n15896), .C(n19490), .D(n19493), 
         .Z(n58)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_155.init = 16'hccdc;
    L6MUX21 i13960 (.D0(n17983), .D1(n17984), .SD(\current_state[3] ), 
            .Z(n17985));
    CCU2C add_23_13 (.A0(cnt_div_c[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div_c[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13831), .COUT(n13832), .S0(n27), .S1(n26_adj_2));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_13.INIT0 = 16'haaaa;
    defparam add_23_13.INIT1 = 16'haaaa;
    defparam add_23_13.INJECT1_0 = "NO";
    defparam add_23_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_156 (.A(\cnt_div[4] ), .B(cnt_div[9]), .C(cnt_div[0]), 
         .D(\cnt_div[7] ), .Z(n7313)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_156.init = 16'h1000;
    LUT4 i2_2_lut_adj_157 (.A(\cnt_div[4] ), .B(\cnt_div[7] ), .Z(n6)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_adj_157.init = 16'h2222;
    LUT4 i14030_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n15386), 
         .D(data_read_temp[0]), .Z(n18055)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i14030_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13808_2_lut (.A(cnt_scl[3]), .B(cnt_scl[1]), .Z(n17822)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13808_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_158 (.A(i2c_sda_0_out), .B(sda_transmit_en), 
         .C(cnt_scl[1]), .Z(n16586)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i1_2_lut_3_lut_adj_158.init = 16'h2f2f;
    LUT4 n18941_bdd_3_lut_4_lut (.A(n19455), .B(current_state[0]), .C(n18940), 
         .D(n18941), .Z(n18942)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam n18941_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i14034_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n15386), 
         .D(data_read_temp[4]), .Z(n18059)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i14034_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_4_lut_adj_159 (.A(n20385), .B(cnt_scl[3]), .C(cnt_scl[2]), 
         .D(cnt_scl[6]), .Z(n15896)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_159.init = 16'h0002;
    PFUMX i15322 (.BLUT(n20238), .ALUT(n20235), .C0(n19451), .Z(n20239));
    CCU2C add_23_11 (.A0(cnt_div[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\cnt_div[10] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13830), .COUT(n13831), .S0(n2[9]), .S1(n2[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_11.INIT0 = 16'haaaa;
    defparam add_23_11.INIT1 = 16'haaaa;
    defparam add_23_11.INJECT1_0 = "NO";
    defparam add_23_11.INJECT1_1 = "NO";
    CCU2C add_23_9 (.A0(\cnt_div[7] ), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\cnt_div[8] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13829), .COUT(n13830), .S0(n2[7]), .S1(n2[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_9.INIT0 = 16'haaaa;
    defparam add_23_9.INIT1 = 16'haaaa;
    defparam add_23_9.INJECT1_0 = "NO";
    defparam add_23_9.INJECT1_1 = "NO";
    CCU2C add_23_7 (.A0(\cnt_div[5] ), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div_c[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13828), .COUT(n13829), .S0(n2[5]), .S1(n2[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_7.INIT0 = 16'haaaa;
    defparam add_23_7.INIT1 = 16'haaaa;
    defparam add_23_7.INJECT1_0 = "NO";
    defparam add_23_7.INJECT1_1 = "NO";
    PFUMX i25 (.BLUT(n15291), .ALUT(n15778), .C0(current_state[6]), .Z(n17754));
    CCU2C add_23_5 (.A0(cnt_div_c[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\cnt_div[4] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13827), .COUT(n13828), .S0(n35), .S1(n2[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_5.INIT0 = 16'haaaa;
    defparam add_23_5.INIT1 = 16'haaaa;
    defparam add_23_5.INJECT1_0 = "NO";
    defparam add_23_5.INJECT1_1 = "NO";
    CCU2C add_23_3 (.A0(\cnt_div[1] ), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div_c[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13826), .COUT(n13827), .S0(n2[1]), .S1(n36));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_3.INIT0 = 16'haaaa;
    defparam add_23_3.INIT1 = 16'haaaa;
    defparam add_23_3.INJECT1_0 = "NO";
    defparam add_23_3.INJECT1_1 = "NO";
    CCU2C add_23_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_div[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13826), .S1(n2[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_1.INIT0 = 16'h0000;
    defparam add_23_1.INIT1 = 16'h555a;
    defparam add_23_1.INJECT1_0 = "NO";
    defparam add_23_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_160 (.A(n10523), .B(n117), .C(n17688), .D(current_state_c[1]), 
         .Z(drive_clk_enable_14)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_160.init = 16'h0002;
    LUT4 i1_4_lut_adj_161 (.A(rd_cnt[0]), .B(n114), .C(n117), .D(n10952), 
         .Z(n15985)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_161.init = 16'h0804;
    LUT4 i1_4_lut_adj_162 (.A(n16972), .B(current_state[0]), .C(n19460), 
         .D(current_state[7]), .Z(n114)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_162.init = 16'hfabb;
    LUT4 i1_4_lut_4_lut_adj_163 (.A(current_state[6]), .B(n19056), .C(n10753), 
         .D(n12), .Z(n11_c)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_4_lut_adj_163.init = 16'h55d5;
    LUT4 i1_4_lut_adj_164 (.A(n19506), .B(n19465), .C(n19467), .D(n19478), 
         .Z(n10952)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(340[25:31])
    defparam i1_4_lut_adj_164.init = 16'hfffd;
    LUT4 i6649_2_lut_rep_337 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n19515)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6649_2_lut_rep_337.init = 16'h8888;
    LUT4 i14343_2_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .Z(n18212)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;
    defparam i14343_2_lut_3_lut.init = 16'h8787;
    PFUMX i14917 (.BLUT(n19354), .ALUT(n19353), .C0(current_state[5]), 
          .Z(n19355));
    PFUMX i13959 (.BLUT(n4301[0]), .ALUT(n4304[0]), .C0(n18070), .Z(n17984));
    LUT4 i1_4_lut_adj_165 (.A(rd_cnt[1]), .B(n114), .C(n117), .D(n16096), 
         .Z(n15986)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_165.init = 16'h0408;
    LUT4 i1_4_lut_adj_166 (.A(n19467), .B(n19465), .C(n17176), .D(n20386), 
         .Z(n16096)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_166.init = 16'h1000;
    PFUMX i14895 (.BLUT(n19315), .ALUT(n19314), .C0(current_state[0]), 
          .Z(n19316));
    PFUMX mux_1471_i7 (.BLUT(next_state_9__N_967[6]), .ALUT(\next_state_9__N_917[6] ), 
          .C0(current_state[0]), .Z(n4817[6]));
    LUT4 i14453_3_lut (.A(i2c_sclk_0_c), .B(start), .C(n7096), .Z(n10888)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i14453_3_lut.init = 16'hb7b7;
    LUT4 i1_4_lut_adj_167 (.A(rd_cnt[2]), .B(n114), .C(n117), .D(n16091), 
         .Z(n15987)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_167.init = 16'h0408;
    LUT4 i1_4_lut_adj_168 (.A(n19467), .B(n19465), .C(n17188), .D(n20386), 
         .Z(n16091)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_168.init = 16'h1000;
    PFUMX i13958 (.BLUT(n6677), .ALUT(n6681), .C0(n18070), .Z(n17983));
    LUT4 i1_4_lut_adj_169 (.A(rd_cnt[3]), .B(n114), .C(n117), .D(n16085), 
         .Z(n15992)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_169.init = 16'h0408;
    PFUMX i56 (.BLUT(n16353), .ALUT(n15822), .C0(\cnt_div[8] ), .Z(n39));
    LUT4 i1_4_lut_adj_170 (.A(n19467), .B(n19465), .C(n17202), .D(n20386), 
         .Z(n16085)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_170.init = 16'h1000;
    LUT4 n19_bdd_4_lut_4_lut (.A(flag_ack), .B(next_state[7]), .C(current_state[7]), 
         .D(n19), .Z(n19315)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam n19_bdd_4_lut_4_lut.init = 16'hcc50;
    LUT4 i45_4_lut_4_lut (.A(flag_ack), .B(current_state[0]), .C(n5699), 
         .D(\next_state[0] ), .Z(n20_adj_1514)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam i45_4_lut_4_lut.init = 16'hf404;
    LUT4 mux_1485_i7_4_lut_4_lut (.A(flag_ack), .B(n5699), .C(\next_state[6] ), 
         .D(current_state[6]), .Z(n4871[6])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam mux_1485_i7_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n60_bdd_4_lut_14993 (.A(n4535), .B(n5), .C(n19509), .D(cnt_scl[0]), 
         .Z(n19145)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n60_bdd_4_lut_14993.init = 16'h0001;
    LUT4 i1_2_lut_adj_171 (.A(rd_cnt[1]), .B(rd_cnt[2]), .Z(n17194)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_171.init = 16'h8888;
    LUT4 mux_499_i5_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state[4]), 
         .D(\current_state[4] ), .Z(next_state_9__N_967[4])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam mux_499_i5_4_lut_4_lut.init = 16'hd1c0;
    LUT4 led_c_4_bdd_2_lut_14829 (.A(n19145), .B(n60), .Z(n19146)) /* synthesis lut_function=(A (B)) */ ;
    defparam led_c_4_bdd_2_lut_14829.init = 16'h8888;
    LUT4 mux_499_i6_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state[5]), 
         .D(current_state[5]), .Z(next_state_9__N_967[5])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam mux_499_i6_4_lut_4_lut.init = 16'hd1c0;
    LUT4 cnt_scl_2__bdd_4_lut_15288 (.A(cnt_scl[2]), .B(cnt_scl[5]), .C(cnt_scl[3]), 
         .D(cnt_scl[0]), .Z(n21_adj_1498)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_scl_2__bdd_4_lut_15288.init = 16'h3009;
    LUT4 mux_499_i3_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state[2]), 
         .D(\current_state[2] ), .Z(next_state_9__N_967[2])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam mux_499_i3_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_499_i4_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state[3]), 
         .D(\current_state[3] ), .Z(next_state_9__N_967[3])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 386[12])
    defparam mux_499_i4_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i14985 (.BLUT(n19554), .ALUT(n19555), .C0(cnt_scl[4]), .Z(n19556));
    LUT4 cnt_scl_9__N_899_9__I_0_298_i11_2_lut_rep_340 (.A(cnt_scl[0]), .B(cnt_scl[1]), 
         .Z(n19518)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(321[25:30])
    defparam cnt_scl_9__N_899_9__I_0_298_i11_2_lut_rep_340.init = 16'heeee;
    PFUMX i14983 (.BLUT(n19551), .ALUT(n19552), .C0(cnt_scl[5]), .Z(n12));
    LUT4 i1_2_lut_3_lut_adj_172 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(n15289), 
         .Z(n15291)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(321[25:30])
    defparam i1_2_lut_3_lut_adj_172.init = 16'hfefe;
    PFUMX i14979 (.BLUT(n19545), .ALUT(n19546), .C0(cnt_scl[5]), .Z(n19547));
    LUT4 i1_2_lut_rep_341 (.A(cnt_scl[2]), .B(cnt_scl[5]), .Z(n19519)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_rep_341.init = 16'h8888;
    PFUMX i14819 (.BLUT(n19184), .ALUT(n19183), .C0(n5845), .Z(n19185));
    PFUMX i14973 (.BLUT(n19536), .ALUT(n19537), .C0(cnt_scl[0]), .Z(n4365));
    PFUMX i14815 (.BLUT(n19180), .ALUT(n19179), .C0(n5845), .Z(n19181));
    PFUMX i14811 (.BLUT(n19177), .ALUT(n19176), .C0(n5845), .Z(n19178));
    LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(cnt_scl[2]), .B(cnt_scl[5]), .C(current_state[0]), 
         .D(cnt_scl[0]), .Z(n16866)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 385[20])
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'h0800;
    PFUMX i14807 (.BLUT(n19174), .ALUT(n19173), .C0(n5845), .Z(n19175));
    
endmodule
//
// Verilog Description of module uart_send_ctrl
//

module uart_send_ctrl (field_index, sys_clk_c, sys_rst_n_N_472, work_en_N_1392, 
            \tx_data[0] , tx_state, tx_phase, \tx_phase_2__N_1173[0] , 
            sys_clk_c_enable_143, digits_left, GND_net, VCC_net, csi_long_packet_count_sys, 
            csi_payload_byte_count_sys, n19464, csi_byte_clk_count_sys, 
            n6616, csi_hs_sync_count_sys, csi_last_dt_sys, csi_last_wc_sys, 
            n19471, dphy_lp_state_d_s2, reg_4a00_val, dphy_hs_d_en_s2, 
            \digits_left[2] , \digits_left[1] , \tx_data[6] , \tx_data[5] , 
            \tx_data[4] , \tx_data[3] , \tx_data[2] , \tx_data[1] , 
            n16501, n4, dphy_term_clk_en_s2, sensor_id, n16371, uart_busy, 
            n15576, n19522, n19486, n3575, n16226, n19463, \digits_left_3__N_1321[2] , 
            n19514, n19199) /* synthesis syn_module_defined=1 */ ;
    output [3:0]field_index;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output work_en_N_1392;
    output \tx_data[0] ;
    output [1:0]tx_state;
    output [2:0]tx_phase;
    input \tx_phase_2__N_1173[0] ;
    input sys_clk_c_enable_143;
    output [3:0]digits_left;
    input GND_net;
    input VCC_net;
    input [31:0]csi_long_packet_count_sys;
    input [31:0]csi_payload_byte_count_sys;
    input n19464;
    input [31:0]csi_byte_clk_count_sys;
    input n6616;
    input [31:0]csi_hs_sync_count_sys;
    input [5:0]csi_last_dt_sys;
    input [15:0]csi_last_wc_sys;
    input n19471;
    input [1:0]dphy_lp_state_d_s2;
    input [7:0]reg_4a00_val;
    input dphy_hs_d_en_s2;
    output \digits_left[2] ;
    output \digits_left[1] ;
    output \tx_data[6] ;
    output \tx_data[5] ;
    output \tx_data[4] ;
    output \tx_data[3] ;
    output \tx_data[2] ;
    output \tx_data[1] ;
    input n16501;
    output n4;
    input dphy_term_clk_en_s2;
    input [15:0]sensor_id;
    input n16371;
    input uart_busy;
    output n15576;
    output n19522;
    input n19486;
    input n3575;
    output n16226;
    output n19463;
    input \digits_left_3__N_1321[2] ;
    output n19514;
    input n19199;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n18353;
    wire [3:0]field_index_c;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    
    wire n18117, sec_tick, sec_cnt_25__N_1250, tx_flag_N_1355;
    wire [7:0]tx_data_7__N_1339;
    
    wire sys_clk_c_enable_145;
    wire [1:0]tx_state_1__N_1171;
    
    wire sys_clk_c_enable_144;
    wire [3:0]n418;
    wire [7:0]field_label;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(61[12:23])
    
    wire sys_clk_c_enable_140, n15236, sys_clk_c_enable_135;
    wire [3:0]digits_left_3__N_1220;
    
    wire n13952;
    wire [25:0]sec_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(24[12:19])
    wire [25:0]n109;
    
    wire n13953, n13951;
    wire [31:0]field_value;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(62[12:23])
    
    wire sys_clk_c_enable_191, n18847;
    wire [31:0]n3652;
    
    wire n17935, n17852, n17658, n17598;
    wire [15:0]n5312;
    wire [15:0]n5293;
    
    wire n18050, n13950, n19143, n19141, n19144;
    wire [31:0]n3337;
    wire [27:0]n5264;
    
    wire n19142, n6778, n13949, n17855, n16379, n17909, n17859, 
        n18037, n19140, n19138, n19136, n19139, n19527, n13948, 
        n19531, n19137, n6776, n19530, n13947, n18034, n19135, 
        n18053;
    wire [31:0]n3304;
    
    wire n18011, n6629, n18012, n18014, n6762, n18015, n18017, 
        n6764, n18018, n19543, n18676, n18662, n19542;
    wire [3:0]n2;
    
    wire n18020, n6766, n18021, n18023, n6768, n18024, n18049, 
        n18051, n18052, n18054, n19549, n20287, n19548, n18841, 
        n19484;
    wire [27:0]n5208;
    wire [7:0]n5237;
    wire [3:0]digits_left_c;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(63[12:23])
    wire [7:0]n109_adj_1489;
    
    wire n15244, n18026, n6770, n18027, n19344, n15234, n14932, 
        n18029, n6772, n18030;
    wire [2:0]tx_phase_2__N_1173;
    
    wire n19523, n18675, n18672, n19529, n18659, n19532, n19544, 
        n16506, n19473, n1, n19470;
    wire [25:0]n137;
    
    wire n19037, n19520, n19038, n18032, n6774, n18033;
    wire [6:0]n5392;
    
    wire n18674, n18673, n31, n16363, n17596, n17590, n18627, 
        n18671, n18670, n18842, n18025, n18660, n18661, n18658, 
        n18022, n18019, n18016, n19550, n18013, n19003, n19002, 
        n18010, n18999, n19000, n18844, n18845, n18656, n19005, 
        n19006, n18028, n18031, n19008, n19009, n19020, n19018, 
        n18657, n19200, n19017, n20284, n19021, n19023, n19024, 
        n20283, n19034, n20286, n16274, n19032, n19031, n18626, 
        n19035, n19040, n19041, n20285, n18041;
    wire [31:0]n3609;
    
    wire n19052, n19051, n19437, n19439, n19447, n19446, n19445, 
        n19444, n19443, n19442, n19441, n19440, n19438, n19436, 
        n6593, n13959, n13958, n13957, n13956, n13955, n13954, 
        n18846, n18843, n19528, n5, n16138;
    
    LUT4 i14400_3_lut (.A(n18353), .B(field_index[2]), .C(field_index_c[1]), 
         .Z(n18117)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i14400_3_lut.init = 16'habab;
    FD1S3DX sec_tick_79 (.D(sec_cnt_25__N_1250), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam sec_tick_79.GSR = "ENABLED";
    FD1S3DX tx_flag_80 (.D(tx_flag_N_1355), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1392)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_flag_80.GSR = "ENABLED";
    FD1P3DX tx_data_i0 (.D(tx_data_7__N_1339[0]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1P3DX tx_state_i0 (.D(tx_state_1__N_1171[0]), .SP(sys_clk_c_enable_145), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_state_i0.GSR = "ENABLED";
    FD1P3DX tx_phase_i0 (.D(\tx_phase_2__N_1173[0] ), .SP(sys_clk_c_enable_144), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i0.GSR = "ENABLED";
    FD1P3DX field_index_i0 (.D(n418[0]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i0.GSR = "ENABLED";
    FD1P3DX field_label_i0 (.D(n15236), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i0.GSR = "ENABLED";
    FD1P3DX digits_left_i0 (.D(digits_left_3__N_1220[0]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i0.GSR = "ENABLED";
    CCU2C sec_cnt_2103_add_4_13 (.A0(sec_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13952), .COUT(n13953), .S0(n109[11]), 
          .S1(n109[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_13.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_13.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_13.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_13.INJECT1_1 = "NO";
    CCU2C sec_cnt_2103_add_4_11 (.A0(sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13951), .COUT(n13952), .S0(n109[9]), .S1(n109[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_11.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_11.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_11.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_11.INJECT1_1 = "NO";
    FD1P3DX field_value_i0_i26 (.D(n18847), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i26.GSR = "ENABLED";
    FD1P3DX field_value_i0_i30 (.D(n3652[30]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i30.GSR = "ENABLED";
    LUT4 i14437_4_lut (.A(n17935), .B(n17852), .C(n17658), .D(n17598), 
         .Z(sec_cnt_25__N_1250)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[18:36])
    defparam i14437_4_lut.init = 16'h0080;
    PFUMX i14025 (.BLUT(n5312[14]), .ALUT(n5293[14]), .C0(field_index_c[1]), 
          .Z(n18050));
    CCU2C sec_cnt_2103_add_4_9 (.A0(sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13950), .COUT(n13951), .S0(n109[7]), .S1(n109[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_9.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_9.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_9.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_9.INJECT1_1 = "NO";
    L6MUX21 i14786 (.D0(n19143), .D1(n19141), .SD(n18117), .Z(n19144));
    LUT4 mux_673_i32_3_lut (.A(csi_long_packet_count_sys[31]), .B(csi_payload_byte_count_sys[31]), 
         .C(field_index_c[0]), .Z(n3337[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_673_i32_3_lut.init = 16'hcaca;
    LUT4 i6844_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[17]), 
         .Z(n5264[17])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6844_2_lut_3_lut.init = 16'h8080;
    PFUMX i14784 (.BLUT(n19142), .ALUT(n6778), .C0(field_index[2]), .Z(n19143));
    CCU2C sec_cnt_2103_add_4_7 (.A0(sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13949), .COUT(n13950), .S0(n109[5]), .S1(n109[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_7.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_7.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_7.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_7.INJECT1_1 = "NO";
    LUT4 i13920_4_lut (.A(n17855), .B(n16379), .C(n17909), .D(n17859), 
         .Z(n17935)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13920_4_lut.init = 16'h8000;
    PFUMX i14782 (.BLUT(n18037), .ALUT(n19140), .C0(n18353), .Z(n19141));
    FD1P3DX field_value_i0_i25 (.D(n19144), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i25.GSR = "ENABLED";
    L6MUX21 i14780 (.D0(n19138), .D1(n19136), .SD(n18117), .Z(n19139));
    LUT4 n17965_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[3]), .B(n6616), 
         .C(csi_hs_sync_count_sys[3]), .D(field_index_c[0]), .Z(n19527)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n17965_bdd_4_lut_else_4_lut.init = 16'h3022;
    CCU2C sec_cnt_2103_add_4_5 (.A0(sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13948), .COUT(n13949), .S0(n109[3]), .S1(n109[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_5.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_5.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_5.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_5.INJECT1_1 = "NO";
    LUT4 i6845_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[16]), 
         .Z(n5264[16])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6845_2_lut_3_lut.init = 16'h8080;
    LUT4 n17962_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[2]), .B(csi_long_packet_count_sys[2]), 
         .C(n6616), .D(field_index_c[0]), .Z(n19531)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n17962_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    PFUMX i14778 (.BLUT(n19137), .ALUT(n6776), .C0(field_index[2]), .Z(n19138));
    LUT4 n17962_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[2]), .B(n6616), 
         .C(csi_hs_sync_count_sys[2]), .D(field_index_c[0]), .Z(n19530)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n17962_bdd_4_lut_else_4_lut.init = 16'h3022;
    CCU2C sec_cnt_2103_add_4_3 (.A0(sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13947), .COUT(n13948), .S0(n109[1]), .S1(n109[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_3.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_3.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_3.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_3.INJECT1_1 = "NO";
    LUT4 i13838_4_lut (.A(sec_cnt[21]), .B(sec_cnt[15]), .C(sec_cnt[14]), 
         .D(sec_cnt[22]), .Z(n17852)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13838_4_lut.init = 16'h8000;
    PFUMX i14776 (.BLUT(n18034), .ALUT(n19135), .C0(n18353), .Z(n19136));
    LUT4 mux_1624_i14_3_lut (.A(csi_last_dt_sys[3]), .B(csi_last_wc_sys[13]), 
         .C(field_index_c[0]), .Z(n5312[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i14_3_lut.init = 16'hcaca;
    PFUMX i14028 (.BLUT(n5312[15]), .ALUT(n5293[15]), .C0(field_index_c[1]), 
          .Z(n18053));
    LUT4 i6846_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[15]), 
         .Z(n5264[15])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6846_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_672_i32_3_lut (.A(csi_byte_clk_count_sys[31]), .B(csi_hs_sync_count_sys[31]), 
         .C(field_index_c[0]), .Z(n3304[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_672_i32_3_lut.init = 16'hcaca;
    PFUMX i13987 (.BLUT(n18011), .ALUT(n6629), .C0(field_index[2]), .Z(n18012));
    PFUMX i13990 (.BLUT(n18014), .ALUT(n6762), .C0(field_index[2]), .Z(n18015));
    LUT4 i6847_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[14]), 
         .Z(n5264[14])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6847_2_lut_3_lut.init = 16'h8080;
    PFUMX i13993 (.BLUT(n18017), .ALUT(n6764), .C0(field_index[2]), .Z(n18018));
    LUT4 mux_1624_i13_3_lut (.A(csi_last_dt_sys[2]), .B(csi_last_wc_sys[12]), 
         .C(field_index_c[0]), .Z(n5312[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i13_3_lut.init = 16'hcaca;
    LUT4 n17959_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[1]), .B(csi_long_packet_count_sys[1]), 
         .C(n6616), .D(field_index_c[0]), .Z(n19543)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n17959_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    FD1P3DX field_value_i0_i29 (.D(n18676), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i29.GSR = "ENABLED";
    FD1P3DX field_value_i0_i28 (.D(n18662), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i28.GSR = "ENABLED";
    LUT4 n17959_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[1]), .B(n6616), 
         .C(csi_hs_sync_count_sys[1]), .D(field_index_c[0]), .Z(n19542)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n17959_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i6848_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[13]), 
         .Z(n5264[13])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6848_2_lut_3_lut.init = 16'h8080;
    LUT4 i6849_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[12]), 
         .Z(n5264[12])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6849_2_lut_3_lut.init = 16'h8080;
    LUT4 digits_left_0__bdd_4_lut_15364 (.A(digits_left[0]), .B(n19471), 
         .C(n2[0]), .D(tx_state[1]), .Z(digits_left_3__N_1220[0])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam digits_left_0__bdd_4_lut_15364.init = 16'h66f0;
    PFUMX i13996 (.BLUT(n18020), .ALUT(n6766), .C0(field_index[2]), .Z(n18021));
    PFUMX i13999 (.BLUT(n18023), .ALUT(n6768), .C0(field_index[2]), .Z(n18024));
    L6MUX21 i14026 (.D0(n18049), .D1(n18050), .SD(field_index[2]), .Z(n18051));
    L6MUX21 i14029 (.D0(n18052), .D1(n18053), .SD(field_index[2]), .Z(n18054));
    LUT4 n17947_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[0]), .B(csi_long_packet_count_sys[0]), 
         .C(n6616), .D(field_index_c[0]), .Z(n19549)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n17947_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    FD1P3DX field_value_i0_i27 (.D(n20287), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i27.GSR = "ENABLED";
    LUT4 n17947_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[0]), .B(n6616), 
         .C(csi_hs_sync_count_sys[0]), .D(field_index_c[0]), .Z(n19548)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n17947_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n3575_bdd_2_lut_14605 (.A(tx_state[1]), .B(field_value[22]), .Z(n18841)) /* synthesis lut_function=(A (B)) */ ;
    defparam n3575_bdd_2_lut_14605.init = 16'h8888;
    LUT4 i725_3_lut_rep_280_4_lut (.A(field_index_c[3]), .B(n19484), .C(tx_state[1]), 
         .D(n19464), .Z(n18353)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i725_3_lut_rep_280_4_lut.init = 16'hf808;
    LUT4 mux_1602_i28_3_lut (.A(dphy_lp_state_d_s2[1]), .B(field_value[27]), 
         .C(tx_state[1]), .Z(n5208[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1602_i28_3_lut.init = 16'hcaca;
    LUT4 mux_1603_i8_3_lut (.A(reg_4a00_val[7]), .B(dphy_hs_d_en_s2), .C(field_index_c[0]), 
         .Z(n5237[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1603_i8_3_lut.init = 16'hcaca;
    FD1P3DX digits_left_i3 (.D(digits_left_3__N_1220[3]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i3.GSR = "ENABLED";
    FD1P3DX digits_left_i2 (.D(digits_left_3__N_1220[2]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\digits_left[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i2.GSR = "ENABLED";
    FD1P3DX digits_left_i1 (.D(digits_left_3__N_1220[1]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\digits_left[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i1.GSR = "ENABLED";
    FD1P3DX field_label_i6 (.D(VCC_net), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i6.GSR = "ENABLED";
    FD1P3DX field_label_i4 (.D(n109_adj_1489[4]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_label[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i4.GSR = "ENABLED";
    FD1P3DX field_label_i3 (.D(n15244), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i3.GSR = "ENABLED";
    PFUMX i14002 (.BLUT(n18026), .ALUT(n6770), .C0(field_index[2]), .Z(n18027));
    FD1P3DX field_label_i2 (.D(n109_adj_1489[2]), .SP(sys_clk_c_enable_140), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_label[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i2.GSR = "ENABLED";
    FD1P3DX field_label_i1 (.D(n19344), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i1.GSR = "ENABLED";
    FD1P3DX field_index_i3 (.D(n418[3]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i3.GSR = "ENABLED";
    FD1P3DX field_index_i2 (.D(n15234), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i2.GSR = "ENABLED";
    FD1P3DX field_index_i1 (.D(n418[1]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i1.GSR = "ENABLED";
    FD1S3DX tx_phase_i2 (.D(n14932), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(tx_phase[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i2.GSR = "ENABLED";
    PFUMX i14005 (.BLUT(n18029), .ALUT(n6772), .C0(field_index[2]), .Z(n18030));
    FD1P3DX tx_phase_i1 (.D(tx_phase_2__N_1173[1]), .SP(sys_clk_c_enable_144), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i1.GSR = "ENABLED";
    FD1P3DX tx_state_i1 (.D(tx_state_1__N_1171[1]), .SP(sys_clk_c_enable_145), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_state_i1.GSR = "ENABLED";
    FD1P3DX tx_data_i6 (.D(tx_data_7__N_1339[6]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3DX tx_data_i5 (.D(tx_data_7__N_1339[5]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3DX tx_data_i4 (.D(tx_data_7__N_1339[4]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3DX tx_data_i3 (.D(tx_data_7__N_1339[3]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3DX tx_data_i2 (.D(tx_data_7__N_1339[2]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3DX tx_data_i1 (.D(tx_data_7__N_1339[1]), .SP(tx_flag_N_1355), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i1.GSR = "ENABLED";
    FD1P3DX field_value_i0_i24 (.D(n19139), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i24.GSR = "ENABLED";
    LUT4 tx_state_1__I_0_91_Mux_3_i3_4_lut (.A(n19523), .B(digits_left_c[3]), 
         .C(tx_state[1]), .D(n16501), .Z(digits_left_3__N_1220[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam tx_state_1__I_0_91_Mux_3_i3_4_lut.init = 16'h35c5;
    LUT4 i1_2_lut (.A(\digits_left[1] ), .B(digits_left[0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(163[17] 186[20])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(field_index_c[3]), .B(field_index[2]), .C(field_index_c[1]), 
         .D(field_index_c[0]), .Z(n109_adj_1489[4])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcaa;
    LUT4 i1_4_lut_adj_36 (.A(field_index_c[1]), .B(field_index_c[3]), .C(field_index_c[0]), 
         .D(field_index[2]), .Z(n109_adj_1489[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_adj_36.init = 16'hdfca;
    FD1P3DX field_value_i0_i23 (.D(n3652[23]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i23.GSR = "ENABLED";
    FD1P3DX field_value_i0_i22 (.D(n3652[22]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i22.GSR = "ENABLED";
    CCU2C sec_cnt_2103_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13947), .S1(n109[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_1.INIT0 = 16'h0000;
    defparam sec_cnt_2103_add_4_1.INIT1 = 16'h555f;
    defparam sec_cnt_2103_add_4_1.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_1602_i27_3_lut (.A(dphy_lp_state_d_s2[0]), .B(field_value[26]), 
         .C(tx_state[1]), .Z(n5208[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1602_i27_3_lut.init = 16'hcaca;
    FD1P3DX field_value_i0_i21 (.D(n3652[21]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i21.GSR = "ENABLED";
    LUT4 mux_1603_i7_3_lut (.A(reg_4a00_val[6]), .B(dphy_term_clk_en_s2), 
         .C(field_index_c[0]), .Z(n5237[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1603_i7_3_lut.init = 16'hcaca;
    FD1P3DX field_value_i0_i20 (.D(n3652[20]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i20.GSR = "ENABLED";
    FD1P3DX field_value_i0_i19 (.D(n3652[19]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i19.GSR = "ENABLED";
    FD1P3DX field_value_i0_i18 (.D(n3652[18]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i18.GSR = "ENABLED";
    LUT4 i6850_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[11]), 
         .Z(n5264[11])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6850_2_lut_3_lut.init = 16'h8080;
    FD1P3DX field_value_i0_i17 (.D(n3652[17]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i17.GSR = "ENABLED";
    FD1P3DX field_value_i0_i16 (.D(n3652[16]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i16.GSR = "ENABLED";
    FD1P3DX field_value_i0_i15 (.D(n3652[15]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i15.GSR = "ENABLED";
    FD1P3DX field_value_i0_i14 (.D(n3652[14]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i14.GSR = "ENABLED";
    FD1P3DX field_value_i0_i13 (.D(n3652[13]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i13.GSR = "ENABLED";
    FD1P3DX field_value_i0_i12 (.D(n3652[12]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i12.GSR = "ENABLED";
    FD1P3DX field_value_i0_i11 (.D(n3652[11]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i11.GSR = "ENABLED";
    FD1P3DX field_value_i0_i10 (.D(n3652[10]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i10.GSR = "ENABLED";
    FD1P3DX field_value_i0_i9 (.D(n3652[9]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i9.GSR = "ENABLED";
    FD1P3DX field_value_i0_i8 (.D(n3652[8]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i8.GSR = "ENABLED";
    FD1P3DX field_value_i0_i7 (.D(n3652[7]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i7.GSR = "ENABLED";
    FD1P3DX field_value_i0_i6 (.D(n3652[6]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i6.GSR = "ENABLED";
    FD1P3DX field_value_i0_i5 (.D(n3652[5]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i5.GSR = "ENABLED";
    FD1P3DX field_value_i0_i4 (.D(n3652[4]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i4.GSR = "ENABLED";
    LUT4 i6201_4_lut (.A(field_index[2]), .B(field_index_c[0]), .C(field_index_c[3]), 
         .D(field_index_c[1]), .Z(n418[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    defparam i6201_4_lut.init = 16'h68f0;
    L6MUX21 i14534 (.D0(n18675), .D1(n18672), .SD(n18353), .Z(n18676));
    LUT4 i13840_3_lut (.A(field_index_c[0]), .B(field_index[2]), .C(field_index_c[1]), 
         .Z(n15234)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;
    defparam i13840_3_lut.init = 16'h6c6c;
    FD1P3DX field_value_i0_i3 (.D(n19529), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i3.GSR = "ENABLED";
    LUT4 n3308_bdd_4_lut_14551 (.A(sensor_id[12]), .B(n3337[28]), .C(field_index[2]), 
         .D(field_index_c[0]), .Z(n18659)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam n3308_bdd_4_lut_14551.init = 16'hac0c;
    FD1P3DX field_value_i0_i2 (.D(n19532), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i2.GSR = "ENABLED";
    FD1P3DX field_value_i0_i1 (.D(n19544), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i1.GSR = "ENABLED";
    LUT4 i6512_2_lut (.A(field_value[23]), .B(tx_state[1]), .Z(n5208[23])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6512_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_37 (.A(tx_state[0]), .B(tx_phase[2]), .C(n16371), 
         .D(n16506), .Z(n14932)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_37.init = 16'heca8;
    LUT4 i1_3_lut (.A(tx_state[1]), .B(sec_tick), .C(uart_busy), .Z(n16506)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'hfbfb;
    LUT4 i13646_2_lut (.A(sec_cnt[4]), .B(sec_cnt[1]), .Z(n17658)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13646_2_lut.init = 16'h8888;
    LUT4 i3980_2_lut (.A(tx_state[0]), .B(tx_state[1]), .Z(tx_state_1__N_1171[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i3980_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_38 (.A(field_label[6]), .B(n15576), .C(n19473), 
         .D(tx_phase[1]), .Z(tx_data_7__N_1339[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i1_4_lut_adj_38.init = 16'h3022;
    LUT4 i1_4_lut_adj_39 (.A(tx_phase[2]), .B(n1), .C(n19470), .D(tx_phase[1]), 
         .Z(tx_data_7__N_1339[4])) /* synthesis lut_function=(!(A+(B (C (D))+!B (C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_39.init = 16'h0544;
    FD1S3DX sec_cnt_2103__i0 (.D(n137[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i0.GSR = "ENABLED";
    LUT4 mux_673_i30_3_lut (.A(csi_long_packet_count_sys[29]), .B(csi_payload_byte_count_sys[29]), 
         .C(field_index_c[0]), .Z(n3337[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_673_i30_3_lut.init = 16'hcaca;
    LUT4 i6713_2_lut (.A(sensor_id[11]), .B(field_index_c[0]), .Z(n5293[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6713_2_lut.init = 16'h8888;
    LUT4 mux_1624_i12_3_lut (.A(csi_last_dt_sys[1]), .B(csi_last_wc_sys[11]), 
         .C(field_index_c[0]), .Z(n5312[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i12_3_lut.init = 16'hcaca;
    LUT4 i6514_2_lut (.A(field_value[21]), .B(tx_state[1]), .Z(n5208[21])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6514_2_lut.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_6__bdd_3_lut_14715 (.A(csi_long_packet_count_sys[6]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[6]), .Z(n19037)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_6__bdd_3_lut_14715.init = 16'he2e2;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(uart_busy), .B(n19520), .C(n19464), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hf044;
    LUT4 csi_long_packet_count_sys_6__bdd_3_lut (.A(csi_byte_clk_count_sys[6]), 
         .B(csi_hs_sync_count_sys[6]), .C(field_index_c[0]), .Z(n19038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_6__bdd_3_lut.init = 16'hcaca;
    PFUMX i14008 (.BLUT(n18032), .ALUT(n6774), .C0(field_index[2]), .Z(n18033));
    LUT4 i6622_2_lut (.A(field_label[4]), .B(tx_phase[0]), .Z(n1)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i6622_2_lut.init = 16'heeee;
    LUT4 i6515_2_lut (.A(field_value[20]), .B(tx_state[1]), .Z(n5208[20])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6515_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_40 (.A(field_label[3]), .B(n15576), .C(n5392[3]), 
         .D(tx_phase[1]), .Z(tx_data_7__N_1339[3])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i1_4_lut_adj_40.init = 16'hfcee;
    PFUMX i14532 (.BLUT(n18674), .ALUT(n18673), .C0(field_index_c[1]), 
          .Z(n18675));
    LUT4 i1_3_lut_adj_41 (.A(tx_phase[2]), .B(tx_phase[0]), .C(n31), .Z(tx_data_7__N_1339[2])) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_3_lut_adj_41.init = 16'h5454;
    LUT4 i1_3_lut_4_lut (.A(n19522), .B(n19486), .C(tx_phase[1]), .D(tx_phase[0]), 
         .Z(tx_phase_2__N_1173[1])) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_3_lut_4_lut.init = 16'h0880;
    LUT4 i9086_4_lut (.A(field_label[2]), .B(n16363), .C(tx_phase[1]), 
         .D(field_value[30]), .Z(n31)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i9086_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_42 (.A(sec_cnt[8]), .B(n17596), .C(n17590), .D(sec_cnt[16]), 
         .Z(n17598)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hfffe;
    LUT4 i1_3_lut_adj_43 (.A(field_value[29]), .B(field_value[31]), .C(field_value[28]), 
         .Z(n16363)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(62[12:23])
    defparam i1_3_lut_adj_43.init = 16'hfbfb;
    LUT4 i1_3_lut_adj_44 (.A(tx_phase[2]), .B(tx_phase[0]), .C(n18627), 
         .Z(tx_data_7__N_1339[1])) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i1_3_lut_adj_44.init = 16'hbaba;
    LUT4 i6851_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[10]), 
         .Z(n5264[10])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6851_2_lut_3_lut.init = 16'h8080;
    PFUMX i14027 (.BLUT(n3304[31]), .ALUT(n3337[31]), .C0(field_index_c[1]), 
          .Z(n18052));
    PFUMX i14530 (.BLUT(n18671), .ALUT(n18670), .C0(n3575), .Z(n18672));
    LUT4 i11610_2_lut (.A(tx_phase[2]), .B(tx_phase[0]), .Z(n15576)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11610_2_lut.init = 16'heeee;
    LUT4 n3575_bdd_2_lut_14793 (.A(reg_4a00_val[2]), .B(field_index_c[0]), 
         .Z(n18842)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3575_bdd_2_lut_14793.init = 16'h2222;
    LUT4 i6853_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[9]), 
         .Z(n5264[9])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6853_2_lut_3_lut.init = 16'h8080;
    LUT4 i6572_2_lut (.A(n109[0]), .B(sec_cnt_25__N_1250), .Z(n137[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6572_2_lut.init = 16'h2222;
    LUT4 mux_673_i27_3_lut (.A(csi_long_packet_count_sys[26]), .B(csi_payload_byte_count_sys[26]), 
         .C(field_index_c[0]), .Z(n3337[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_673_i27_3_lut.init = 16'hcaca;
    LUT4 i6854_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[8]), 
         .Z(n5264[8])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6854_2_lut_3_lut.init = 16'h8080;
    LUT4 mux_672_i27_3_lut (.A(csi_byte_clk_count_sys[26]), .B(csi_hs_sync_count_sys[26]), 
         .C(field_index_c[0]), .Z(n3304[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_672_i27_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_45 (.A(\digits_left[2] ), .B(digits_left[0]), .C(\digits_left[1] ), 
         .D(digits_left_c[3]), .Z(n16226)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_45.init = 16'hfffb;
    LUT4 mux_672_i30_3_lut (.A(csi_byte_clk_count_sys[29]), .B(csi_hs_sync_count_sys[29]), 
         .C(field_index_c[0]), .Z(n3304[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_672_i30_3_lut.init = 16'hcaca;
    LUT4 i14000_3_lut (.A(csi_byte_clk_count_sys[21]), .B(csi_hs_sync_count_sys[21]), 
         .C(field_index_c[0]), .Z(n18025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14000_3_lut.init = 16'hcaca;
    LUT4 n3308_bdd_3_lut_14552 (.A(n3304[28]), .B(n5312[12]), .C(field_index[2]), 
         .Z(n18660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3308_bdd_3_lut_14552.init = 16'hcaca;
    LUT4 field_index_1__bdd_4_lut (.A(field_index_c[1]), .B(field_index[2]), 
         .C(field_index_c[0]), .D(field_index_c[3]), .Z(n19344)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B !(C))) */ ;
    defparam field_index_1__bdd_4_lut.init = 16'hefc9;
    L6MUX21 i14525 (.D0(n18661), .D1(n18658), .SD(n18353), .Z(n18662));
    LUT4 i13997_3_lut (.A(csi_byte_clk_count_sys[20]), .B(csi_hs_sync_count_sys[20]), 
         .C(field_index_c[0]), .Z(n18022)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13997_3_lut.init = 16'hcaca;
    LUT4 i6855_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[7]), 
         .Z(n5264[7])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6855_2_lut_3_lut.init = 16'h8080;
    LUT4 i13994_3_lut (.A(csi_byte_clk_count_sys[19]), .B(csi_hs_sync_count_sys[19]), 
         .C(field_index_c[0]), .Z(n18019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13994_3_lut.init = 16'hcaca;
    LUT4 mux_700_i32_3_lut (.A(n18054), .B(n5264[27]), .C(n18353), .Z(n3652[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_700_i32_3_lut.init = 16'hcaca;
    LUT4 i6726_2_lut (.A(n109[1]), .B(sec_cnt_25__N_1250), .Z(n137[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6726_2_lut.init = 16'h2222;
    LUT4 i6727_2_lut (.A(n109[2]), .B(sec_cnt_25__N_1250), .Z(n137[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6727_2_lut.init = 16'h2222;
    LUT4 i13841_2_lut (.A(sec_cnt[20]), .B(sec_cnt[25]), .Z(n17855)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13841_2_lut.init = 16'h8888;
    LUT4 i6728_2_lut (.A(n109[3]), .B(sec_cnt_25__N_1250), .Z(n137[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6728_2_lut.init = 16'h2222;
    LUT4 i6729_2_lut (.A(n109[4]), .B(sec_cnt_25__N_1250), .Z(n137[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6729_2_lut.init = 16'h2222;
    LUT4 i6730_2_lut (.A(n109[5]), .B(sec_cnt_25__N_1250), .Z(n137[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6730_2_lut.init = 16'h2222;
    LUT4 i6731_2_lut (.A(n109[6]), .B(sec_cnt_25__N_1250), .Z(n137[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6731_2_lut.init = 16'h2222;
    LUT4 i6732_2_lut (.A(n109[7]), .B(sec_cnt_25__N_1250), .Z(n137[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6732_2_lut.init = 16'h2222;
    LUT4 i6733_2_lut (.A(n109[8]), .B(sec_cnt_25__N_1250), .Z(n137[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6733_2_lut.init = 16'h2222;
    LUT4 i6734_2_lut (.A(n109[9]), .B(sec_cnt_25__N_1250), .Z(n137[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6734_2_lut.init = 16'h2222;
    LUT4 i6735_2_lut (.A(n109[10]), .B(sec_cnt_25__N_1250), .Z(n137[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6735_2_lut.init = 16'h2222;
    LUT4 i6736_2_lut (.A(n109[11]), .B(sec_cnt_25__N_1250), .Z(n137[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6736_2_lut.init = 16'h2222;
    LUT4 i13991_3_lut (.A(csi_byte_clk_count_sys[18]), .B(csi_hs_sync_count_sys[18]), 
         .C(field_index_c[0]), .Z(n18016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13991_3_lut.init = 16'hcaca;
    LUT4 i6737_2_lut (.A(n109[12]), .B(sec_cnt_25__N_1250), .Z(n137[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6737_2_lut.init = 16'h2222;
    LUT4 mux_673_i31_3_lut (.A(csi_long_packet_count_sys[30]), .B(csi_payload_byte_count_sys[30]), 
         .C(field_index_c[0]), .Z(n3337[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_673_i31_3_lut.init = 16'hcaca;
    LUT4 mux_672_i31_3_lut (.A(csi_byte_clk_count_sys[30]), .B(csi_hs_sync_count_sys[30]), 
         .C(field_index_c[0]), .Z(n3304[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_672_i31_3_lut.init = 16'hcaca;
    LUT4 i6738_2_lut (.A(n109[13]), .B(sec_cnt_25__N_1250), .Z(n137[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6738_2_lut.init = 16'h2222;
    LUT4 i6739_2_lut (.A(n109[14]), .B(sec_cnt_25__N_1250), .Z(n137[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6739_2_lut.init = 16'h2222;
    FD1P3DX field_value_i0_i0 (.D(n19550), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i0.GSR = "ENABLED";
    LUT4 i6740_2_lut (.A(n109[15]), .B(sec_cnt_25__N_1250), .Z(n137[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6740_2_lut.init = 16'h2222;
    LUT4 i6741_2_lut (.A(n109[16]), .B(sec_cnt_25__N_1250), .Z(n137[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6741_2_lut.init = 16'h2222;
    LUT4 i13988_3_lut (.A(csi_byte_clk_count_sys[17]), .B(csi_hs_sync_count_sys[17]), 
         .C(field_index_c[0]), .Z(n18013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13988_3_lut.init = 16'hcaca;
    LUT4 i6742_2_lut (.A(n109[17]), .B(sec_cnt_25__N_1250), .Z(n137[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6742_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_46 (.A(sec_cnt[13]), .B(sec_cnt[17]), .C(sec_cnt[6]), 
         .D(sec_cnt[3]), .Z(n16379)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h8000;
    LUT4 csi_long_packet_count_sys_14__bdd_3_lut (.A(csi_byte_clk_count_sys[14]), 
         .B(csi_hs_sync_count_sys[14]), .C(field_index_c[0]), .Z(n19003)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_14__bdd_3_lut.init = 16'hcaca;
    LUT4 i6743_2_lut (.A(n109[18]), .B(sec_cnt_25__N_1250), .Z(n137[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6743_2_lut.init = 16'h2222;
    LUT4 i6744_2_lut (.A(n109[19]), .B(sec_cnt_25__N_1250), .Z(n137[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6744_2_lut.init = 16'h2222;
    LUT4 i6745_2_lut (.A(n109[20]), .B(sec_cnt_25__N_1250), .Z(n137[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6745_2_lut.init = 16'h2222;
    LUT4 csi_long_packet_count_sys_14__bdd_3_lut_14682 (.A(csi_long_packet_count_sys[14]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[14]), .Z(n19002)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_14__bdd_3_lut_14682.init = 16'he2e2;
    LUT4 i13985_3_lut (.A(csi_byte_clk_count_sys[16]), .B(csi_hs_sync_count_sys[16]), 
         .C(field_index_c[0]), .Z(n18010)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13985_3_lut.init = 16'hcaca;
    LUT4 i6746_2_lut (.A(n109[21]), .B(sec_cnt_25__N_1250), .Z(n137[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6746_2_lut.init = 16'h2222;
    LUT4 i6747_2_lut (.A(n109[22]), .B(sec_cnt_25__N_1250), .Z(n137[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6747_2_lut.init = 16'h2222;
    LUT4 i6748_2_lut (.A(n109[23]), .B(sec_cnt_25__N_1250), .Z(n137[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6748_2_lut.init = 16'h2222;
    LUT4 i6749_2_lut (.A(n109[24]), .B(sec_cnt_25__N_1250), .Z(n137[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6749_2_lut.init = 16'h2222;
    LUT4 i6750_2_lut (.A(n109[25]), .B(sec_cnt_25__N_1250), .Z(n137[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6750_2_lut.init = 16'h2222;
    FD1P3DX field_value_i0_i31 (.D(n3652[31]), .SP(sys_clk_c_enable_191), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i31.GSR = "ENABLED";
    PFUMX i14523 (.BLUT(n18660), .ALUT(n18659), .C0(field_index_c[1]), 
          .Z(n18661));
    LUT4 i1_2_lut_rep_295_3_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(field_value[31]), .Z(n19473)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_295_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_292_3_lut_4_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(tx_phase[0]), .D(field_value[31]), .Z(n19470)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_292_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut (.A(field_value[30]), .B(field_value[29]), .C(field_value[31]), 
         .Z(n5392[3])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 csi_long_packet_count_sys_15__bdd_3_lut_14679 (.A(csi_long_packet_count_sys[15]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[15]), .Z(n18999)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_15__bdd_3_lut_14679.init = 16'he2e2;
    LUT4 i13894_4_lut (.A(sec_cnt[0]), .B(sec_cnt[5]), .C(sec_cnt[2]), 
         .D(sec_cnt[19]), .Z(n17909)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13894_4_lut.init = 16'h8000;
    LUT4 csi_long_packet_count_sys_15__bdd_3_lut (.A(csi_byte_clk_count_sys[15]), 
         .B(csi_hs_sync_count_sys[15]), .C(field_index_c[0]), .Z(n19000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_15__bdd_3_lut.init = 16'hcaca;
    LUT4 n3310_bdd_4_lut_14872 (.A(sensor_id[10]), .B(n3337[26]), .C(field_index[2]), 
         .D(field_index_c[0]), .Z(n18844)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam n3310_bdd_4_lut_14872.init = 16'hac0c;
    LUT4 i6217_3_lut_4_lut (.A(field_index[2]), .B(field_index_c[3]), .C(field_index_c[0]), 
         .D(field_index_c[1]), .Z(n418[1])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i6217_3_lut_4_lut.init = 16'h0bf0;
    LUT4 n3310_bdd_3_lut_14873 (.A(n3304[26]), .B(n5312[10]), .C(field_index[2]), 
         .Z(n18845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3310_bdd_3_lut_14873.init = 16'hcaca;
    LUT4 n3575_bdd_2_lut_14520 (.A(tx_state[1]), .B(field_value[24]), .Z(n18656)) /* synthesis lut_function=(A (B)) */ ;
    defparam n3575_bdd_2_lut_14520.init = 16'h8888;
    FD1S3DX sec_cnt_2103__i1 (.D(n137[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i1.GSR = "ENABLED";
    LUT4 csi_long_packet_count_sys_13__bdd_3_lut_14685 (.A(csi_long_packet_count_sys[13]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[13]), .Z(n19005)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_13__bdd_3_lut_14685.init = 16'he2e2;
    LUT4 csi_long_packet_count_sys_13__bdd_3_lut (.A(csi_byte_clk_count_sys[13]), 
         .B(csi_hs_sync_count_sys[13]), .C(field_index_c[0]), .Z(n19006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_13__bdd_3_lut.init = 16'hcaca;
    FD1S3DX sec_cnt_2103__i2 (.D(n137[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i2.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i3 (.D(n137[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i3.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i4 (.D(n137[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i4.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i5 (.D(n137[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i5.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i6 (.D(n137[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i6.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i7 (.D(n137[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i7.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i8 (.D(n137[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i8.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i9 (.D(n137[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i9.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i10 (.D(n137[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i10.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i11 (.D(n137[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i11.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i12 (.D(n137[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i12.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i13 (.D(n137[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i13.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i14 (.D(n137[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i14.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i15 (.D(n137[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i15.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i16 (.D(n137[16]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i16.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i17 (.D(n137[17]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i17.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i18 (.D(n137[18]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i18.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i19 (.D(n137[19]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i19.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i20 (.D(n137[20]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i20.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i21 (.D(n137[21]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i21.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i22 (.D(n137[22]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i22.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i23 (.D(n137[23]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i23.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i24 (.D(n137[24]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i24.GSR = "ENABLED";
    FD1S3DX sec_cnt_2103__i25 (.D(n137[25]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103__i25.GSR = "ENABLED";
    PFUMX i14024 (.BLUT(n3304[30]), .ALUT(n3337[30]), .C0(field_index_c[1]), 
          .Z(n18049));
    LUT4 i6856_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[6]), 
         .Z(n5264[6])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6856_2_lut_3_lut.init = 16'h8080;
    LUT4 i6857_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[5]), 
         .Z(n5264[5])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6857_2_lut_3_lut.init = 16'h8080;
    LUT4 i14003_3_lut (.A(csi_byte_clk_count_sys[22]), .B(csi_hs_sync_count_sys[22]), 
         .C(field_index_c[0]), .Z(n18028)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14003_3_lut.init = 16'hcaca;
    LUT4 i14006_3_lut (.A(csi_byte_clk_count_sys[23]), .B(csi_hs_sync_count_sys[23]), 
         .C(field_index_c[0]), .Z(n18031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14006_3_lut.init = 16'hcaca;
    LUT4 i25_4_lut (.A(field_index_c[1]), .B(field_index_c[0]), .C(field_index[2]), 
         .D(field_index_c[3]), .Z(n15236)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    defparam i25_4_lut.init = 16'h04c1;
    LUT4 i13845_2_lut (.A(sec_cnt[23]), .B(sec_cnt[12]), .Z(n17859)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13845_2_lut.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_12__bdd_3_lut_14688 (.A(csi_long_packet_count_sys[12]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[12]), .Z(n19008)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_12__bdd_3_lut_14688.init = 16'he2e2;
    LUT4 csi_long_packet_count_sys_12__bdd_3_lut (.A(csi_byte_clk_count_sys[12]), 
         .B(csi_hs_sync_count_sys[12]), .C(field_index_c[0]), .Z(n19009)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_12__bdd_3_lut.init = 16'hcaca;
    LUT4 i14009_3_lut (.A(csi_byte_clk_count_sys[24]), .B(csi_hs_sync_count_sys[24]), 
         .C(field_index_c[0]), .Z(n18034)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14009_3_lut.init = 16'hcaca;
    LUT4 i6858_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[4]), 
         .Z(n5264[4])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6858_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_47 (.A(sec_cnt[10]), .B(sec_cnt[9]), .C(sec_cnt[24]), 
         .D(sec_cnt[11]), .Z(n17596)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hfffe;
    LUT4 i14012_3_lut (.A(csi_byte_clk_count_sys[25]), .B(csi_hs_sync_count_sys[25]), 
         .C(field_index_c[0]), .Z(n18037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14012_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_48 (.A(sec_cnt[7]), .B(sec_cnt[18]), .Z(n17590)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_48.init = 16'heeee;
    LUT4 i6859_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[3]), 
         .Z(n5264[3])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6859_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_49 (.A(tx_state[1]), .B(tx_state[0]), .Z(tx_flag_N_1355)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_adj_49.init = 16'h4444;
    LUT4 csi_long_packet_count_sys_10__bdd_3_lut_14700 (.A(csi_long_packet_count_sys[10]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[10]), .Z(n19020)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_10__bdd_3_lut_14700.init = 16'he2e2;
    LUT4 i1_3_lut_4_lut_4_lut (.A(field_index_c[0]), .B(field_index_c[1]), 
         .C(field_index_c[3]), .D(field_index[2]), .Z(n418[0])) /* synthesis lut_function=(!(A+!(((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5515;
    LUT4 i6860_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[2]), 
         .Z(n5264[2])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6860_2_lut_3_lut.init = 16'h8080;
    LUT4 i6861_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[1]), 
         .Z(n5264[1])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6861_2_lut_3_lut.init = 16'h8080;
    LUT4 i6837_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[0]), 
         .Z(n5264[0])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6837_2_lut_3_lut.init = 16'h8080;
    LUT4 i6843_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[18]), 
         .Z(n5264[18])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6843_2_lut_3_lut.init = 16'h8080;
    LUT4 i6842_2_lut_3_lut (.A(tx_state[1]), .B(n19464), .C(field_value[19]), 
         .Z(n5264[19])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6842_2_lut_3_lut.init = 16'h8080;
    LUT4 i6717_2_lut (.A(sensor_id[15]), .B(field_index_c[0]), .Z(n5293[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6717_2_lut.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_11__bdd_3_lut (.A(csi_byte_clk_count_sys[11]), 
         .B(csi_hs_sync_count_sys[11]), .C(field_index_c[0]), .Z(n19018)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_11__bdd_3_lut.init = 16'hcaca;
    PFUMX i14521 (.BLUT(n18657), .ALUT(n18656), .C0(n3575), .Z(n18658));
    LUT4 n10_bdd_3_lut_4_lut (.A(field_index_c[0]), .B(field_index_c[1]), 
         .C(field_index_c[3]), .D(field_index[2]), .Z(n19200)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n10_bdd_3_lut_4_lut.init = 16'h0110;
    LUT4 csi_long_packet_count_sys_11__bdd_3_lut_14697 (.A(csi_long_packet_count_sys[11]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[11]), .Z(n19017)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_11__bdd_3_lut_14697.init = 16'he2e2;
    LUT4 i1_2_lut_rep_342 (.A(sec_tick), .B(tx_state[0]), .Z(n19520)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_342.init = 16'h2222;
    LUT4 i1_2_lut_rep_285_3_lut_4_lut (.A(sec_tick), .B(tx_state[0]), .C(field_index_c[3]), 
         .D(uart_busy), .Z(n19463)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_285_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_306_3_lut (.A(sec_tick), .B(tx_state[0]), .C(uart_busy), 
         .Z(n19484)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_306_3_lut.init = 16'h0202;
    LUT4 field_index_1__bdd_3_lut (.A(csi_byte_clk_count_sys[27]), .B(field_index_c[0]), 
         .C(csi_hs_sync_count_sys[27]), .Z(n20284)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut.init = 16'he2e2;
    LUT4 csi_long_packet_count_sys_10__bdd_3_lut (.A(csi_byte_clk_count_sys[10]), 
         .B(csi_hs_sync_count_sys[10]), .C(field_index_c[0]), .Z(n19021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_10__bdd_3_lut.init = 16'hcaca;
    LUT4 i7074_3_lut_4_lut_4_lut (.A(sec_tick), .B(tx_state[0]), .C(tx_state[1]), 
         .D(uart_busy), .Z(sys_clk_c_enable_135)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i7074_3_lut_4_lut_4_lut.init = 16'hc0c2;
    LUT4 n3307_bdd_3_lut (.A(n3304[29]), .B(n5312[13]), .C(field_index[2]), 
         .Z(n18674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3307_bdd_3_lut.init = 16'hcaca;
    LUT4 csi_long_packet_count_sys_9__bdd_3_lut_14703 (.A(csi_long_packet_count_sys[9]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[9]), .Z(n19023)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_9__bdd_3_lut_14703.init = 16'he2e2;
    LUT4 i1_2_lut_rep_291_3_lut_4_lut (.A(sec_tick), .B(tx_state[0]), .C(tx_state[1]), 
         .D(uart_busy), .Z(sys_clk_c_enable_140)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_291_3_lut_4_lut.init = 16'h0002;
    LUT4 csi_long_packet_count_sys_9__bdd_3_lut (.A(csi_byte_clk_count_sys[9]), 
         .B(csi_hs_sync_count_sys[9]), .C(field_index_c[0]), .Z(n19024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_9__bdd_3_lut.init = 16'hcaca;
    LUT4 mux_700_i31_3_lut (.A(n18051), .B(n5264[26]), .C(n18353), .Z(n3652[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_700_i31_3_lut.init = 16'hcaca;
    LUT4 field_index_1__bdd_3_lut_15351 (.A(csi_long_packet_count_sys[27]), 
         .B(csi_payload_byte_count_sys[27]), .C(field_index_c[0]), .Z(n20283)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15351.init = 16'hcaca;
    LUT4 mux_673_i29_3_lut (.A(csi_long_packet_count_sys[28]), .B(csi_payload_byte_count_sys[28]), 
         .C(field_index_c[0]), .Z(n3337[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_673_i29_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_344 (.A(tx_phase[2]), .B(tx_state[0]), .Z(n19522)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_344.init = 16'h4444;
    LUT4 csi_long_packet_count_sys_7__bdd_3_lut_14712 (.A(csi_long_packet_count_sys[7]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[7]), .Z(n19034)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_7__bdd_3_lut_14712.init = 16'he2e2;
    LUT4 n20286_bdd_3_lut (.A(n20286), .B(n5264[23]), .C(n18353), .Z(n20287)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20286_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(field_index_c[3]), .B(field_index[2]), 
         .C(field_index_c[1]), .D(field_index_c[0]), .Z(n16274)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4440;
    LUT4 i11691_2_lut_rep_345 (.A(field_index[2]), .B(field_index_c[3]), 
         .Z(n19523)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11691_2_lut_rep_345.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_50 (.A(field_index[2]), .B(field_index_c[3]), 
         .C(field_index_c[0]), .D(field_index_c[1]), .Z(n15244)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_50.init = 16'h0110;
    LUT4 csi_long_packet_count_sys_8__bdd_3_lut (.A(csi_byte_clk_count_sys[8]), 
         .B(csi_hs_sync_count_sys[8]), .C(field_index_c[0]), .Z(n19032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_8__bdd_3_lut.init = 16'hcaca;
    LUT4 csi_long_packet_count_sys_8__bdd_3_lut_14709 (.A(csi_long_packet_count_sys[8]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[8]), .Z(n19031)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_8__bdd_3_lut_14709.init = 16'he2e2;
    LUT4 field_label_1__bdd_3_lut_14906 (.A(field_label[1]), .B(n18626), 
         .C(tx_phase[1]), .Z(n18627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_label_1__bdd_3_lut_14906.init = 16'hcaca;
    LUT4 n3307_bdd_4_lut (.A(sensor_id[13]), .B(n3337[29]), .C(field_index[2]), 
         .D(field_index_c[0]), .Z(n18673)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;
    defparam n3307_bdd_4_lut.init = 16'hac0c;
    LUT4 csi_long_packet_count_sys_7__bdd_3_lut (.A(csi_byte_clk_count_sys[7]), 
         .B(csi_hs_sync_count_sys[7]), .C(field_index_c[0]), .Z(n19035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_7__bdd_3_lut.init = 16'hcaca;
    LUT4 csi_long_packet_count_sys_5__bdd_3_lut_14718 (.A(csi_long_packet_count_sys[5]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[5]), .Z(n19040)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_5__bdd_3_lut_14718.init = 16'he2e2;
    LUT4 mux_1624_i11_3_lut (.A(csi_last_dt_sys[0]), .B(csi_last_wc_sys[10]), 
         .C(field_index_c[0]), .Z(n5312[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i11_3_lut.init = 16'hcaca;
    LUT4 field_value_29__bdd_4_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[28]), .D(field_value[31]), .Z(n18626)) /* synthesis lut_function=(A (C+!(D))+!A !((C+!(D))+!B)) */ ;
    defparam field_value_29__bdd_4_lut.init = 16'ha4aa;
    LUT4 n18034_bdd_4_lut_4_lut (.A(field_index_c[0]), .B(reg_4a00_val[0]), 
         .C(n5208[20]), .D(n3575), .Z(n19135)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam n18034_bdd_4_lut_4_lut.init = 16'hf044;
    LUT4 csi_long_packet_count_sys_5__bdd_3_lut (.A(csi_byte_clk_count_sys[5]), 
         .B(csi_hs_sync_count_sys[5]), .C(field_index_c[0]), .Z(n19041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_5__bdd_3_lut.init = 16'hcaca;
    LUT4 n18037_bdd_4_lut_4_lut (.A(field_index_c[0]), .B(reg_4a00_val[1]), 
         .C(n5208[21]), .D(n3575), .Z(n19140)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam n18037_bdd_4_lut_4_lut.init = 16'hf044;
    LUT4 n3575_bdd_2_lut_14528 (.A(reg_4a00_val[4]), .B(field_index_c[0]), 
         .Z(n18657)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3575_bdd_2_lut_14528.init = 16'h2222;
    LUT4 i6500_2_lut_2_lut (.A(field_index_c[0]), .B(reg_4a00_val[3]), .Z(n5237[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i6500_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_672_i29_3_lut (.A(csi_byte_clk_count_sys[28]), .B(csi_hs_sync_count_sys[28]), 
         .C(field_index_c[0]), .Z(n3304[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_672_i29_3_lut.init = 16'hcaca;
    L6MUX21 i15354 (.D0(n20285), .D1(n18041), .SD(field_index[2]), .Z(n20286));
    L6MUX21 mux_700_i17 (.D0(n18012), .D1(n3609[16]), .SD(n18117), .Z(n3652[16]));
    L6MUX21 mux_700_i18 (.D0(n18015), .D1(n3609[17]), .SD(n18117), .Z(n3652[17]));
    L6MUX21 mux_700_i19 (.D0(n18018), .D1(n3609[18]), .SD(n18117), .Z(n3652[18]));
    L6MUX21 mux_700_i20 (.D0(n18021), .D1(n3609[19]), .SD(n18117), .Z(n3652[19]));
    L6MUX21 mux_700_i21 (.D0(n18024), .D1(n3609[20]), .SD(n18117), .Z(n3652[20]));
    L6MUX21 mux_700_i22 (.D0(n18027), .D1(n3609[21]), .SD(n18117), .Z(n3652[21]));
    L6MUX21 mux_700_i23 (.D0(n18030), .D1(n3609[22]), .SD(n18117), .Z(n3652[22]));
    L6MUX21 mux_700_i24 (.D0(n18033), .D1(n3609[23]), .SD(n18117), .Z(n3652[23]));
    PFUMX i15352 (.BLUT(n20284), .ALUT(n20283), .C0(field_index_c[1]), 
          .Z(n20285));
    LUT4 n3575_bdd_2_lut_14547 (.A(reg_4a00_val[5]), .B(field_index_c[0]), 
         .Z(n18671)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n3575_bdd_2_lut_14547.init = 16'h2222;
    LUT4 i1_4_lut_4_lut (.A(tx_phase[0]), .B(n19473), .C(tx_phase[1]), 
         .D(tx_phase[2]), .Z(tx_data_7__N_1339[5])) /* synthesis lut_function=(!(A (C+(D))+!A (B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_4_lut.init = 16'h001a;
    LUT4 n3575_bdd_2_lut_14529 (.A(tx_state[1]), .B(field_value[25]), .Z(n18670)) /* synthesis lut_function=(A (B)) */ ;
    defparam n3575_bdd_2_lut_14529.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_4__bdd_3_lut (.A(csi_byte_clk_count_sys[4]), 
         .B(csi_hs_sync_count_sys[4]), .C(field_index_c[0]), .Z(n19052)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_4__bdd_3_lut.init = 16'hcaca;
    LUT4 i6879_4_lut (.A(csi_last_wc_sys[7]), .B(field_index_c[0]), .C(sensor_id[7]), 
         .D(field_index_c[1]), .Z(n6774)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6879_4_lut.init = 16'hc088;
    LUT4 i14007_3_lut (.A(csi_long_packet_count_sys[23]), .B(csi_payload_byte_count_sys[23]), 
         .C(field_index_c[0]), .Z(n18032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14007_3_lut.init = 16'hcaca;
    LUT4 csi_long_packet_count_sys_4__bdd_3_lut_14726 (.A(csi_long_packet_count_sys[4]), 
         .B(field_index_c[0]), .C(csi_payload_byte_count_sys[4]), .Z(n19051)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_4__bdd_3_lut_14726.init = 16'he2e2;
    LUT4 i6878_4_lut (.A(csi_last_wc_sys[6]), .B(field_index_c[0]), .C(sensor_id[6]), 
         .D(field_index_c[1]), .Z(n6772)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6878_4_lut.init = 16'hc088;
    LUT4 n19041_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19040), .D(n19041), .Z(n19437)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19041_bdd_4_lut_4_lut.init = 16'h5140;
    PFUMX tx_state_1__I_0_91_Mux_2_i3 (.BLUT(n16274), .ALUT(\digits_left_3__N_1321[2] ), 
          .C0(tx_state[1]), .Z(digits_left_3__N_1220[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;
    LUT4 n19035_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19034), .D(n19035), .Z(n19439)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19035_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19000_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n18999), .D(n19000), .Z(n19447)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19000_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19003_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19002), .D(n19003), .Z(n19446)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19003_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19006_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19005), .D(n19006), .Z(n19445)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19006_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19009_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19008), .D(n19009), .Z(n19444)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19009_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19018_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19017), .D(n19018), .Z(n19443)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19018_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19021_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19020), .D(n19021), .Z(n19442)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19021_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 n19024_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19023), .D(n19024), .Z(n19441)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19024_bdd_4_lut_4_lut.init = 16'h5140;
    PFUMX mux_689_i24 (.BLUT(n18031), .ALUT(n5264[19]), .C0(n18353), .Z(n3609[23]));
    LUT4 n19032_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19031), .D(n19032), .Z(n19440)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19032_bdd_4_lut_4_lut.init = 16'h5140;
    PFUMX mux_689_i23 (.BLUT(n18028), .ALUT(n5264[18]), .C0(n18353), .Z(n3609[22]));
    LUT4 n19038_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19037), .D(n19038), .Z(n19438)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19038_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i14004_3_lut (.A(csi_long_packet_count_sys[22]), .B(csi_payload_byte_count_sys[22]), 
         .C(field_index_c[0]), .Z(n18029)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14004_3_lut.init = 16'hcaca;
    PFUMX mux_700_i5 (.BLUT(n19436), .ALUT(n5264[0]), .C0(n18353), .Z(n3652[4]));
    LUT4 i6877_4_lut (.A(csi_last_wc_sys[5]), .B(field_index_c[0]), .C(sensor_id[5]), 
         .D(field_index_c[1]), .Z(n6770)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6877_4_lut.init = 16'hc088;
    LUT4 n19052_bdd_4_lut_4_lut (.A(field_index[2]), .B(field_index_c[1]), 
         .C(n19051), .D(n19052), .Z(n19436)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19052_bdd_4_lut_4_lut.init = 16'h5140;
    PFUMX mux_700_i6 (.BLUT(n19437), .ALUT(n5264[1]), .C0(n18353), .Z(n3652[5]));
    LUT4 i14001_3_lut (.A(csi_long_packet_count_sys[21]), .B(csi_payload_byte_count_sys[21]), 
         .C(field_index_c[0]), .Z(n18026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14001_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_336 (.A(field_index_c[1]), .B(field_index[2]), .Z(n19514)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_rep_336.init = 16'heeee;
    PFUMX mux_700_i7 (.BLUT(n19438), .ALUT(n5264[2]), .C0(n18353), .Z(n3652[6]));
    PFUMX mux_700_i8 (.BLUT(n19439), .ALUT(n5264[3]), .C0(n18353), .Z(n3652[7]));
    LUT4 i1_3_lut_adj_51 (.A(tx_phase[0]), .B(tx_phase[2]), .C(n6593), 
         .Z(tx_data_7__N_1339[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i1_3_lut_adj_51.init = 16'h3232;
    LUT4 i2716_4_lut (.A(field_label[0]), .B(field_value[28]), .C(tx_phase[1]), 
         .D(n19473), .Z(n6593)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i2716_4_lut.init = 16'h3aca;
    LUT4 i6314_3_lut_4_lut (.A(field_index_c[1]), .B(field_index[2]), .C(field_index_c[3]), 
         .D(field_index_c[0]), .Z(n2[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i6314_3_lut_4_lut.init = 16'hf0e0;
    CCU2C sec_cnt_2103_add_4_27 (.A0(sec_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13959), .S0(n109[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_27.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_27.INIT1 = 16'h0000;
    defparam sec_cnt_2103_add_4_27.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_27.INJECT1_1 = "NO";
    CCU2C sec_cnt_2103_add_4_25 (.A0(sec_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13958), .COUT(n13959), .S0(n109[23]), 
          .S1(n109[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_25.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_25.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_25.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_25.INJECT1_1 = "NO";
    CCU2C sec_cnt_2103_add_4_23 (.A0(sec_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13957), .COUT(n13958), .S0(n109[21]), 
          .S1(n109[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_23.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_23.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_23.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_23.INJECT1_1 = "NO";
    PFUMX mux_700_i9 (.BLUT(n19440), .ALUT(n5264[4]), .C0(n18353), .Z(n3652[8]));
    CCU2C sec_cnt_2103_add_4_21 (.A0(sec_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13956), .COUT(n13957), .S0(n109[19]), 
          .S1(n109[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_21.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_21.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_21.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_21.INJECT1_1 = "NO";
    CCU2C sec_cnt_2103_add_4_19 (.A0(sec_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13955), .COUT(n13956), .S0(n109[17]), 
          .S1(n109[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_19.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_19.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_19.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_19.INJECT1_1 = "NO";
    PFUMX mux_700_i10 (.BLUT(n19441), .ALUT(n5264[5]), .C0(n18353), .Z(n3652[9]));
    CCU2C sec_cnt_2103_add_4_17 (.A0(sec_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13954), .COUT(n13955), .S0(n109[15]), 
          .S1(n109[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_17.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_17.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_17.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_17.INJECT1_1 = "NO";
    CCU2C sec_cnt_2103_add_4_15 (.A0(sec_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13953), .COUT(n13954), .S0(n109[13]), 
          .S1(n109[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2103_add_4_15.INIT0 = 16'haaa0;
    defparam sec_cnt_2103_add_4_15.INIT1 = 16'haaa0;
    defparam sec_cnt_2103_add_4_15.INJECT1_0 = "NO";
    defparam sec_cnt_2103_add_4_15.INJECT1_1 = "NO";
    PFUMX mux_700_i11 (.BLUT(n19442), .ALUT(n5264[6]), .C0(n18353), .Z(n3652[10]));
    PFUMX mux_700_i12 (.BLUT(n19443), .ALUT(n5264[7]), .C0(n18353), .Z(n3652[11]));
    L6MUX21 i14610 (.D0(n18846), .D1(n18843), .SD(n18353), .Z(n18847));
    PFUMX i14608 (.BLUT(n18845), .ALUT(n18844), .C0(field_index_c[1]), 
          .Z(n18846));
    PFUMX mux_700_i13 (.BLUT(n19444), .ALUT(n5264[8]), .C0(n18353), .Z(n3652[12]));
    LUT4 i6876_4_lut (.A(csi_last_wc_sys[4]), .B(field_index_c[0]), .C(sensor_id[4]), 
         .D(field_index_c[1]), .Z(n6768)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6876_4_lut.init = 16'hc088;
    LUT4 i13998_3_lut (.A(csi_long_packet_count_sys[20]), .B(csi_payload_byte_count_sys[20]), 
         .C(field_index_c[0]), .Z(n18023)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13998_3_lut.init = 16'hcaca;
    LUT4 i6875_4_lut (.A(csi_last_wc_sys[3]), .B(field_index_c[0]), .C(sensor_id[3]), 
         .D(field_index_c[1]), .Z(n6766)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6875_4_lut.init = 16'hc088;
    LUT4 i13995_3_lut (.A(csi_long_packet_count_sys[19]), .B(csi_payload_byte_count_sys[19]), 
         .C(field_index_c[0]), .Z(n18020)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13995_3_lut.init = 16'hcaca;
    PFUMX mux_700_i14 (.BLUT(n19445), .ALUT(n5264[9]), .C0(n18353), .Z(n3652[13]));
    LUT4 i6881_4_lut (.A(csi_last_wc_sys[9]), .B(field_index_c[0]), .C(sensor_id[9]), 
         .D(field_index_c[1]), .Z(n6778)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6881_4_lut.init = 16'hc088;
    PFUMX mux_700_i15 (.BLUT(n19446), .ALUT(n5264[10]), .C0(n18353), .Z(n3652[14]));
    PFUMX mux_700_i16 (.BLUT(n19447), .ALUT(n5264[11]), .C0(n18353), .Z(n3652[15]));
    LUT4 i6874_4_lut (.A(csi_last_wc_sys[2]), .B(field_index_c[0]), .C(sensor_id[2]), 
         .D(field_index_c[1]), .Z(n6764)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6874_4_lut.init = 16'hc088;
    PFUMX mux_689_i17 (.BLUT(n18010), .ALUT(n5264[12]), .C0(n18353), .Z(n3609[16]));
    PFUMX mux_689_i18 (.BLUT(n18013), .ALUT(n5264[13]), .C0(n18353), .Z(n3609[17]));
    PFUMX mux_689_i19 (.BLUT(n18016), .ALUT(n5264[14]), .C0(n18353), .Z(n3609[18]));
    PFUMX i14606 (.BLUT(n18842), .ALUT(n18841), .C0(n3575), .Z(n18843));
    PFUMX mux_689_i20 (.BLUT(n18019), .ALUT(n5264[15]), .C0(n18353), .Z(n3609[19]));
    LUT4 i23_4_lut (.A(uart_busy), .B(tx_state[0]), .C(tx_state[1]), .D(sec_tick), 
         .Z(sys_clk_c_enable_145)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C+!(D))))) */ ;
    defparam i23_4_lut.init = 16'h6d6c;
    PFUMX mux_689_i21 (.BLUT(n18022), .ALUT(n5264[16]), .C0(n18353), .Z(n3609[20]));
    LUT4 i13992_3_lut (.A(csi_long_packet_count_sys[18]), .B(csi_payload_byte_count_sys[18]), 
         .C(field_index_c[0]), .Z(n18017)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13992_3_lut.init = 16'hcaca;
    LUT4 i6873_4_lut (.A(csi_last_wc_sys[1]), .B(field_index_c[0]), .C(sensor_id[1]), 
         .D(field_index_c[1]), .Z(n6762)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6873_4_lut.init = 16'hc088;
    PFUMX mux_689_i22 (.BLUT(n18025), .ALUT(n5264[17]), .C0(n18353), .Z(n3609[21]));
    LUT4 i13989_3_lut (.A(csi_long_packet_count_sys[17]), .B(csi_payload_byte_count_sys[17]), 
         .C(field_index_c[0]), .Z(n18014)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13989_3_lut.init = 16'hcaca;
    LUT4 i6838_4_lut (.A(csi_last_wc_sys[0]), .B(field_index_c[0]), .C(sensor_id[0]), 
         .D(field_index_c[1]), .Z(n6629)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6838_4_lut.init = 16'hc088;
    LUT4 i13986_3_lut (.A(csi_long_packet_count_sys[16]), .B(csi_payload_byte_count_sys[16]), 
         .C(field_index_c[0]), .Z(n18011)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13986_3_lut.init = 16'hcaca;
    LUT4 mux_1624_i16_3_lut (.A(csi_last_dt_sys[5]), .B(csi_last_wc_sys[15]), 
         .C(field_index_c[0]), .Z(n5312[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i16_3_lut.init = 16'hcaca;
    LUT4 n17965_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[3]), .B(csi_long_packet_count_sys[3]), 
         .C(n6616), .D(field_index_c[0]), .Z(n19528)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n17965_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 i6716_2_lut (.A(sensor_id[14]), .B(field_index_c[0]), .Z(n5293[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6716_2_lut.init = 16'h8888;
    PFUMX i14016 (.BLUT(n5312[11]), .ALUT(n5293[11]), .C0(field_index_c[1]), 
          .Z(n18041));
    LUT4 n6776_bdd_3_lut_15004 (.A(csi_long_packet_count_sys[24]), .B(csi_payload_byte_count_sys[24]), 
         .C(field_index_c[0]), .Z(n19137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6776_bdd_3_lut_15004.init = 16'hcaca;
    LUT4 mux_1624_i15_3_lut (.A(csi_last_dt_sys[4]), .B(csi_last_wc_sys[14]), 
         .C(field_index_c[0]), .Z(n5312[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1624_i15_3_lut.init = 16'hcaca;
    LUT4 i11_4_lut (.A(tx_state[0]), .B(n5), .C(n19486), .D(tx_phase[1]), 
         .Z(tx_state_1__N_1171[0])) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(305[13:22])
    defparam i11_4_lut.init = 16'hf5d5;
    LUT4 n6778_bdd_3_lut_14998 (.A(csi_long_packet_count_sys[25]), .B(csi_payload_byte_count_sys[25]), 
         .C(field_index_c[0]), .Z(n19142)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6778_bdd_3_lut_14998.init = 16'hcaca;
    LUT4 i1_2_lut_adj_52 (.A(tx_phase[0]), .B(tx_phase[2]), .Z(n5)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_52.init = 16'hbbbb;
    PFUMX mux_1621_i24 (.BLUT(n5237[3]), .ALUT(n5208[23]), .C0(n3575), 
          .Z(n5264[23]));
    PFUMX mux_1621_i27 (.BLUT(n5237[6]), .ALUT(n5208[26]), .C0(n3575), 
          .Z(n5264[26]));
    LUT4 i6880_4_lut (.A(csi_last_wc_sys[8]), .B(field_index_c[0]), .C(sensor_id[8]), 
         .D(field_index_c[1]), .Z(n6776)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6880_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_53 (.A(uart_busy), .B(n19520), .C(n16138), .D(tx_state[1]), 
         .Z(sys_clk_c_enable_144)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    defparam i1_4_lut_adj_53.init = 16'h5044;
    LUT4 i1_4_lut_adj_54 (.A(n19522), .B(tx_phase[1]), .C(n16226), .D(tx_phase[0]), 
         .Z(n16138)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    defparam i1_4_lut_adj_54.init = 16'haa2a;
    PFUMX mux_1621_i28 (.BLUT(n5237[7]), .ALUT(n5208[27]), .C0(n3575), 
          .Z(n5264[27]));
    PFUMX i14981 (.BLUT(n19548), .ALUT(n19549), .C0(field_index_c[1]), 
          .Z(n19550));
    PFUMX i14827 (.BLUT(n19200), .ALUT(n19199), .C0(tx_state[1]), .Z(digits_left_3__N_1220[1]));
    PFUMX i14977 (.BLUT(n19542), .ALUT(n19543), .C0(field_index_c[1]), 
          .Z(n19544));
    PFUMX i14969 (.BLUT(n19530), .ALUT(n19531), .C0(field_index_c[1]), 
          .Z(n19532));
    PFUMX i14967 (.BLUT(n19527), .ALUT(n19528), .C0(field_index_c[1]), 
          .Z(n19529));
    
endmodule
//
// Verilog Description of module csi2dsi
//

module csi2dsi (csi_clk_byte, \reset_byte_sync[1] , VCC_net, csi_dt_c_5, 
            csi_dt_parser, csi_wc, GND_net, csi_dt_c_4, n19521, csi_sp_en_c, 
            csi_lp_en_c, sys_clk_c, csi_clk_byte_hs, csi_payload_en_c, 
            csi_dt_c_3, csi_dt_c_2, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0) /* synthesis syn_module_defined=1 */ ;
    output csi_clk_byte;
    input \reset_byte_sync[1] ;
    input VCC_net;
    output csi_dt_c_5;
    output [5:0]csi_dt_parser;
    output [15:0]csi_wc;
    input GND_net;
    output csi_dt_c_4;
    input n19521;
    output csi_sp_en_c;
    output csi_lp_en_c;
    input sys_clk_c;
    output csi_clk_byte_hs;
    output csi_payload_en_c;
    output csi_dt_c_3;
    output csi_dt_c_2;
    inout mipi_rcp_0;
    inout mipi_rcn_0;
    inout mipi_rdp_0;
    inout mipi_rdn_0;
    
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    
    \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT")  dphy_rx_inst (.csi_clk_byte(csi_clk_byte), 
            .\reset_byte_sync[1] (\reset_byte_sync[1] ), .VCC_net(VCC_net), 
            .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), .csi_wc({csi_wc}), 
            .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), .n19521(n19521), 
            .csi_sp_en_c(csi_sp_en_c), .csi_lp_en_c(csi_lp_en_c), .sys_clk_c(sys_clk_c), 
            .csi_clk_byte_hs(csi_clk_byte_hs), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .mipi_rcp_0(mipi_rcp_0), 
            .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi.v(149[1] 207[2])
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT") 
//

module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT")  (csi_clk_byte, 
            \reset_byte_sync[1] , VCC_net, csi_dt_c_5, csi_dt_parser, 
            csi_wc, GND_net, csi_dt_c_4, n19521, csi_sp_en_c, csi_lp_en_c, 
            sys_clk_c, csi_clk_byte_hs, csi_payload_en_c, csi_dt_c_3, 
            csi_dt_c_2, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, mipi_rdn_0) /* synthesis syn_module_defined=1 */ ;
    output csi_clk_byte;
    input \reset_byte_sync[1] ;
    input VCC_net;
    output csi_dt_c_5;
    output [5:0]csi_dt_parser;
    output [15:0]csi_wc;
    input GND_net;
    output csi_dt_c_4;
    input n19521;
    output csi_sp_en_c;
    output csi_lp_en_c;
    input sys_clk_c;
    output csi_clk_byte_hs;
    output csi_payload_en_c;
    output csi_dt_c_3;
    output csi_dt_c_2;
    inout mipi_rcp_0;
    inout mipi_rcn_0;
    inout mipi_rdp_0;
    inout mipi_rdn_0;
    
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    wire [7:0]bd0_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(125[46:51])
    wire [7:0]bd1_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(126[46:51])
    wire [7:0]bd2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(127[46:51])
    wire [7:0]bd3_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(128[46:51])
    
    wire capture_en_o, term_d0_en_w;
    wire [7:0]bd0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[32:35])
    wire [7:0]bd1;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[37:40])
    wire [7:0]bd2;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[42:45])
    wire [7:0]bd3;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[47:50])
    
    wire lp_d0_rx_p_o, lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
        lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, lp_clk_rx_p, lp_clk_rx_n, 
        hs_settle_en_w;
    wire [3:0]d_sot_det_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(246[20:31])
    wire [3:0]d_sote_det_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(247[20:32])
    wire [7:0]bd0_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(248[20:25])
    wire [7:0]bd1_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(249[20:25])
    wire [7:0]bd2_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(250[20:25])
    wire [7:0]bd3_w;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(251[20:25])
    
    csi2dsi_capture_ctrl \capture_ctrl_inst.capture_ctrl_inst  (.reset_n_i(\reset_byte_sync[1] ), 
            .clk_byte_i(csi_clk_byte), .bd0_i({bd0_o}), .bd1_i({bd1_o}), 
            .bd2_i({bd2_o}), .bd3_i({bd3_o}), .capture_en_i(capture_en_o), 
            .ref_dt_i({VCC_net, GND_net, VCC_net, GND_net, VCC_net, 
            VCC_net}), .lp_en_o(csi_dt_c_5), .payload_en_o(csi_dt_c_4), 
            .wc_o({csi_wc}), .dt_o({csi_dt_parser})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(423[9] 449[10])
    csi2dsi_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(n19521), .reset_lp_n_i(n19521), 
            .reset_byte_fr_n_i(\reset_byte_sync[1] ), .clk_lp_ctrl_i(sys_clk_c), 
            .clk_byte_hs_i(csi_clk_byte_hs), .clk_byte_i(csi_clk_byte), 
            .clk_byte_fr_i(csi_clk_byte), .pll_lock_i(VCC_net), .bd0_i({bd0}), 
            .bd1_i({bd1}), .bd2_i({bd2}), .bd3_i({bd3}), .lp_clk_p_i(lp_clk_rx_p), 
            .lp_clk_n_i(lp_clk_rx_n), .lp_d0_p_i(lp_d0_rx_p_o), .lp_d0_n_i(lp_d0_rx_n_o), 
            .lp_d1_p_i(lp_d1_rx_p_o), .lp_d1_n_i(lp_d1_rx_n_o), .lp_d2_p_i(lp_d2_rx_p_o), 
            .lp_d2_n_i(lp_d2_rx_n_o), .lp_d3_p_i(lp_d3_rx_p_o), .lp_d3_n_i(lp_d3_rx_n_o), 
            .hs_sync_i(csi_lp_en_c), .bd0_o({bd0_o}), .bd1_o({bd1_o}), 
            .bd2_o({bd2_o}), .bd3_o({bd3_o}), .term_clk_en_o(csi_payload_en_c), 
            .term_d0_en_o(term_d0_en_w), .hs_d0_en_o(csi_sp_en_c), .hs_sync_o(capture_en_o), 
            .hs_settle_en_o(hs_settle_en_w), .lp_hs_state_d_o({csi_dt_c_3, 
            csi_dt_c_2})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(349[1] 390[2])
    csi2dsi_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(n19521), .reset_byte_n_i(\reset_byte_sync[1] ), 
            .reset_byte_fr_n_i(\reset_byte_sync[1] ), .clk_byte_fr_i(csi_clk_byte), 
            .term_d0_en_i(term_d0_en_w), .term_d1_en_i(term_d0_en_w), .term_d2_en_i(term_d0_en_w), 
            .term_d3_en_i(term_d0_en_w), .hs_d0_en_i(csi_sp_en_c), .hs_d1_en_i(csi_sp_en_c), 
            .hs_d2_en_i(csi_sp_en_c), .hs_d3_en_i(csi_sp_en_c), .d_sot_det({d_sot_det_w}), 
            .d_sote_det({d_sote_det_w}), .clk_byte_i(csi_clk_byte), .bd0_i({bd0_w}), 
            .bd1_i({bd1_w}), .bd2_i({bd2_w}), .bd3_i({bd3_w}), .bd0_o({bd0}), 
            .bd1_o({bd1}), .bd2_o({bd2}), .bd3_o({bd3}), .hs_sync_o(csi_lp_en_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(254[1] 279[2])
    \csi2dsi_dphy_wrapper(RX_GEAR=8,NUM_RX_LANE=1)  u_dphy_wrapper (.GND_net(GND_net), 
            .VCC_net(VCC_net), .d_sot_det_w({d_sot_det_w}), .d_sote_det_w({d_sote_det_w}), 
            .bd0_w({bd0_w}), .bd1_w({bd1_w}), .bd2_w({bd2_w}), .bd3_w({bd3_w}), 
            .csi_payload_en_c(csi_payload_en_c), .term_d0_en_w(term_d0_en_w), 
            .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), .lp_d0_rx_p_o(lp_d0_rx_p_o), 
            .lp_d0_rx_n_o(lp_d0_rx_n_o), .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), 
            .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), 
            .lp_d3_rx_n_o(lp_d3_rx_n_o), .csi_clk_byte(csi_clk_byte), .csi_clk_byte_hs(csi_clk_byte_hs), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0), .hs_settle_en_w(hs_settle_en_w), .csi_sp_en_c(csi_sp_en_c)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    
endmodule
//
// Verilog Description of module csi2dsi_capture_ctrl
//

module csi2dsi_capture_ctrl (reset_n_i, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, capture_en_i, ref_dt_i, sp_en_o, sp2_en_o, lp_en_o, 
            lp2_en_o, lp_av_en_o, lp2_av_en_o, bd_o, vc_o, vc2_o, 
            payload_en_o, payload_o, wc_o, wc2_o, dt_o, dt2_o, ecc_o, 
            ecc2_o);   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(8[8:28])
    input reset_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(9[43:52])
    input clk_byte_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(10[43:53])
    input [7:0]bd0_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(11[34:39])
    input [7:0]bd1_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(12[34:39])
    input [7:0]bd2_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(13[34:39])
    input [7:0]bd3_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(14[34:39])
    input capture_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(15[43:55])
    input [5:0]ref_dt_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(16[43:51])
    output sp_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(17[43:50])
    output sp2_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(18[43:51])
    output lp_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(19[43:50])
    output lp2_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(20[43:51])
    output lp_av_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(21[43:53])
    output lp2_av_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(22[43:54])
    output [7:0]bd_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(23[30:34])
    output [1:0]vc_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(24[43:47])
    output [1:0]vc2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(25[43:48])
    output payload_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(26[43:55])
    output [7:0]payload_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(27[27:36])
    output [15:0]wc_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(28[43:47])
    output [15:0]wc2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(29[43:48])
    output [5:0]dt_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(30[43:47])
    output [5:0]dt2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(31[43:48])
    output [7:0]ecc_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(32[43:48])
    output [7:0]ecc2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(33[43:49])
    
    
    
endmodule
//
// Verilog Description of module csi2dsi_rx_global_ctrl
//

module csi2dsi_rx_global_ctrl (reset_n_i, reset_lp_n_i, reset_byte_fr_n_i, 
            clk_lp_ctrl_i, clk_byte_hs_i, clk_byte_i, clk_byte_fr_i, 
            pll_lock_i, bd0_i, bd1_i, bd2_i, bd3_i, lp_clk_p_i, 
            lp_clk_n_i, lp_d0_p_i, lp_d0_n_i, lp_d1_p_i, lp_d1_n_i, 
            lp_d2_p_i, lp_d2_n_i, lp_d3_p_i, lp_d3_n_i, hs_sync_i, 
            bd0_o, bd1_o, bd2_o, bd3_o, term_clk_en_o, term_d0_en_o, 
            hs_d0_en_o, term_d1_en_o, hs_d1_en_o, term_d2_en_o, hs_d2_en_o, 
            term_d3_en_o, hs_d3_en_o, hs_sync_o, hs_settle_en_o, lp_hs_state_clk_o, 
            lp_hs_state_d_o);   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(8[8:30])
    input reset_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(9[31:40])
    input reset_lp_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(10[31:43])
    input reset_byte_fr_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(11[31:48])
    input clk_lp_ctrl_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(12[31:44])
    input clk_byte_hs_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(13[31:44])
    input clk_byte_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(14[31:41])
    input clk_byte_fr_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(15[31:44])
    input pll_lock_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(16[31:41])
    input [7:0]bd0_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(18[25:30])
    input [7:0]bd1_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(19[25:30])
    input [7:0]bd2_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(20[25:30])
    input [7:0]bd3_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(21[25:30])
    input lp_clk_p_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(22[31:41])
    input lp_clk_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(23[31:41])
    input lp_d0_p_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(24[31:40])
    input lp_d0_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(25[31:40])
    input lp_d1_p_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(26[31:40])
    input lp_d1_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(27[31:40])
    input lp_d2_p_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(28[31:40])
    input lp_d2_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(29[31:40])
    input lp_d3_p_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(30[31:40])
    input lp_d3_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(31[31:40])
    input hs_sync_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(32[31:40])
    output [7:0]bd0_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(33[25:30])
    output [7:0]bd1_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(34[25:30])
    output [7:0]bd2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(35[25:30])
    output [7:0]bd3_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(36[25:30])
    output term_clk_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(37[31:44])
    output term_d0_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(38[31:43])
    output hs_d0_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(39[31:41])
    output term_d1_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(40[31:43])
    output hs_d1_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(41[31:41])
    output term_d2_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(42[31:43])
    output hs_d2_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(43[31:41])
    output term_d3_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(44[31:43])
    output hs_d3_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(45[31:41])
    output hs_sync_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(46[31:40])
    output hs_settle_en_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(47[31:45])
    output [1:0]lp_hs_state_clk_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(48[31:48])
    output [1:0]lp_hs_state_d_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(49[31:46])
    
    
    
endmodule
//
// Verilog Description of module csi2dsi_dphy_rx_wrap
//

module csi2dsi_dphy_rx_wrap (reset_n_i, reset_byte_n_i, reset_byte_fr_n_i, 
            clk_byte_fr_i, term_d0_en_i, term_d1_en_i, term_d2_en_i, 
            term_d3_en_i, hs_d0_en_i, hs_d1_en_i, hs_d2_en_i, hs_d3_en_i, 
            d_sot_det, d_sote_det, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, bd0_o, bd1_o, bd2_o, bd3_o, hs_sync_o);   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(8[8:28])
    input reset_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(9[31:40])
    input reset_byte_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(10[31:45])
    input reset_byte_fr_n_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(11[31:48])
    input clk_byte_fr_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(12[31:44])
    input term_d0_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(13[31:43])
    input term_d1_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(14[31:43])
    input term_d2_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(15[31:43])
    input term_d3_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(16[31:43])
    input hs_d0_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(17[31:41])
    input hs_d1_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(18[31:41])
    input hs_d2_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(19[31:41])
    input hs_d3_en_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(20[31:41])
    input [3:0]d_sot_det;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(22[31:40])
    input [3:0]d_sote_det;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(23[31:41])
    input clk_byte_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(26[31:41])
    input [7:0]bd0_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(27[25:30])
    input [7:0]bd1_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(28[25:30])
    input [7:0]bd2_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(29[25:30])
    input [7:0]bd3_i;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(30[25:30])
    output [7:0]bd0_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(31[25:30])
    output [7:0]bd1_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(32[25:30])
    output [7:0]bd2_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(33[25:30])
    output [7:0]bd3_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(34[25:30])
    output hs_sync_o;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(35[31:40])
    
    
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_wrapper(RX_GEAR=8,NUM_RX_LANE=1) 
//

module \csi2dsi_dphy_wrapper(RX_GEAR=8,NUM_RX_LANE=1)  (GND_net, VCC_net, 
            d_sot_det_w, d_sote_det_w, bd0_w, bd1_w, bd2_w, bd3_w, 
            csi_payload_en_c, term_d0_en_w, lp_clk_rx_p, lp_clk_rx_n, 
            lp_d0_rx_p_o, lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, 
            lp_d2_rx_p_o, lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, 
            csi_clk_byte, csi_clk_byte_hs, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0, hs_settle_en_w, csi_sp_en_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output [3:0]d_sot_det_w;
    output [3:0]d_sote_det_w;
    output [7:0]bd0_w;
    output [7:0]bd1_w;
    output [7:0]bd2_w;
    output [7:0]bd3_w;
    input csi_payload_en_c;
    input term_d0_en_w;
    output lp_clk_rx_p;
    output lp_clk_rx_n;
    output lp_d0_rx_p_o;
    output lp_d0_rx_n_o;
    output lp_d1_rx_p_o;
    output lp_d1_rx_n_o;
    output lp_d2_rx_p_o;
    output lp_d2_rx_n_o;
    output lp_d3_rx_p_o;
    output lp_d3_rx_n_o;
    output csi_clk_byte;
    output csi_clk_byte_hs;
    inout mipi_rcp_0;
    inout mipi_rcn_0;
    inout mipi_rdp_0;
    inout mipi_rdn_0;
    input hs_settle_en_w;
    input csi_sp_en_c;
    
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    
    wire d1_p_i, d1_n_i, d2_p_i, d2_n_i, d3_p_i, d3_n_i, d_sot_det_o_3__N_1134;
    
    MIPIDPHYA \MIXEL.mixel_dphy  (.DP0(mipi_rdp_0), .DN0(mipi_rdn_0), .DP1(d1_p_i), 
            .DN1(d1_n_i), .DP2(d2_p_i), .DN2(d2_n_i), .DP3(d3_p_i), 
            .DN3(d3_n_i), .CKP(mipi_rcp_0), .CKN(mipi_rcn_0), .D0RXHSEN(term_d0_en_w), 
            .D0HSDESEREN(d_sot_det_o_3__N_1134), .D0RXLPEN(VCC_net), .D0CDEN(VCC_net), 
            .D0TXHSEN(GND_net), .D0HSSEREN(GND_net), .D0HSTXDATA0(GND_net), 
            .D0HSTXDATA1(GND_net), .D0HSTXDATA2(GND_net), .D0HSTXDATA3(GND_net), 
            .D0HSTXDATA4(GND_net), .D0HSTXDATA5(GND_net), .D0HSTXDATA6(GND_net), 
            .D0HSTXDATA7(GND_net), .D0HSTXDATA8(GND_net), .D0HSTXDATA9(GND_net), 
            .D0HSTXDATA10(GND_net), .D0HSTXDATA11(GND_net), .D0HSTXDATA12(GND_net), 
            .D0HSTXDATA13(GND_net), .D0HSTXDATA14(GND_net), .D0HSTXDATA15(GND_net), 
            .D0TXHSPD(VCC_net), .D0DTXLPP(GND_net), .D0DTXLPN(GND_net), 
            .D0TXLPEN(GND_net), .D0HSRXDATA0(bd0_w[0]), .D0HSRXDATA1(bd0_w[1]), 
            .D0HSRXDATA2(bd0_w[2]), .D0HSRXDATA3(bd0_w[3]), .D0HSRXDATA4(bd0_w[4]), 
            .D0HSRXDATA5(bd0_w[5]), .D0HSRXDATA6(bd0_w[6]), .D0HSRXDATA7(bd0_w[7]), 
            .D0SYNC(d_sot_det_w[0]), .D0ERRSYNC(d_sote_det_w[0]), .D0DRXLPP(lp_d0_rx_p_o), 
            .D0DRXLPN(lp_d0_rx_n_o), .D1RXHSEN(GND_net), .D1HSDESEREN(GND_net), 
            .D1RXLPEN(VCC_net), .D1CDEN(GND_net), .D1TXHSEN(GND_net), 
            .D1HSSEREN(GND_net), .D1HSTXDATA0(GND_net), .D1HSTXDATA1(GND_net), 
            .D1HSTXDATA2(GND_net), .D1HSTXDATA3(GND_net), .D1HSTXDATA4(GND_net), 
            .D1HSTXDATA5(GND_net), .D1HSTXDATA6(GND_net), .D1HSTXDATA7(GND_net), 
            .D1HSTXDATA8(GND_net), .D1HSTXDATA9(GND_net), .D1HSTXDATA10(GND_net), 
            .D1HSTXDATA11(GND_net), .D1HSTXDATA12(GND_net), .D1HSTXDATA13(GND_net), 
            .D1HSTXDATA14(GND_net), .D1HSTXDATA15(GND_net), .D1TXHSPD(VCC_net), 
            .D1DTXLPP(GND_net), .D1DTXLPN(GND_net), .D1TXLPEN(GND_net), 
            .D1HSRXDATA0(bd1_w[0]), .D1HSRXDATA1(bd1_w[1]), .D1HSRXDATA2(bd1_w[2]), 
            .D1HSRXDATA3(bd1_w[3]), .D1HSRXDATA4(bd1_w[4]), .D1HSRXDATA5(bd1_w[5]), 
            .D1HSRXDATA6(bd1_w[6]), .D1HSRXDATA7(bd1_w[7]), .D1SYNC(d_sot_det_w[1]), 
            .D1ERRSYNC(d_sote_det_w[1]), .D1DRXLPP(lp_d1_rx_p_o), .D1DRXLPN(lp_d1_rx_n_o), 
            .D2RXHSEN(GND_net), .D2HSDESEREN(GND_net), .D2RXLPEN(VCC_net), 
            .D2CDEN(GND_net), .D2TXHSEN(GND_net), .D2HSSEREN(GND_net), 
            .D2HSTXDATA0(GND_net), .D2HSTXDATA1(GND_net), .D2HSTXDATA2(GND_net), 
            .D2HSTXDATA3(GND_net), .D2HSTXDATA4(GND_net), .D2HSTXDATA5(GND_net), 
            .D2HSTXDATA6(GND_net), .D2HSTXDATA7(GND_net), .D2HSTXDATA8(GND_net), 
            .D2HSTXDATA9(GND_net), .D2HSTXDATA10(GND_net), .D2HSTXDATA11(GND_net), 
            .D2HSTXDATA12(GND_net), .D2HSTXDATA13(GND_net), .D2HSTXDATA14(GND_net), 
            .D2HSTXDATA15(GND_net), .D2TXHSPD(VCC_net), .D2DTXLPP(GND_net), 
            .D2DTXLPN(GND_net), .D2TXLPEN(GND_net), .D2HSRXDATA0(bd2_w[0]), 
            .D2HSRXDATA1(bd2_w[1]), .D2HSRXDATA2(bd2_w[2]), .D2HSRXDATA3(bd2_w[3]), 
            .D2HSRXDATA4(bd2_w[4]), .D2HSRXDATA5(bd2_w[5]), .D2HSRXDATA6(bd2_w[6]), 
            .D2HSRXDATA7(bd2_w[7]), .D2SYNC(d_sot_det_w[2]), .D2ERRSYNC(d_sote_det_w[2]), 
            .D2DRXLPP(lp_d2_rx_p_o), .D2DRXLPN(lp_d2_rx_n_o), .D3RXHSEN(GND_net), 
            .D3HSDESEREN(GND_net), .D3RXLPEN(VCC_net), .D3CDEN(GND_net), 
            .D3TXHSEN(GND_net), .D3HSSEREN(GND_net), .D3HSTXDATA0(GND_net), 
            .D3HSTXDATA1(GND_net), .D3HSTXDATA2(GND_net), .D3HSTXDATA3(GND_net), 
            .D3HSTXDATA4(GND_net), .D3HSTXDATA5(GND_net), .D3HSTXDATA6(GND_net), 
            .D3HSTXDATA7(GND_net), .D3HSTXDATA8(GND_net), .D3HSTXDATA9(GND_net), 
            .D3HSTXDATA10(GND_net), .D3HSTXDATA11(GND_net), .D3HSTXDATA12(GND_net), 
            .D3HSTXDATA13(GND_net), .D3HSTXDATA14(GND_net), .D3HSTXDATA15(GND_net), 
            .D3TXHSPD(VCC_net), .D3DTXLPP(GND_net), .D3DTXLPN(GND_net), 
            .D3TXLPEN(GND_net), .D3HSRXDATA0(bd3_w[0]), .D3HSRXDATA1(bd3_w[1]), 
            .D3HSRXDATA2(bd3_w[2]), .D3HSRXDATA3(bd3_w[3]), .D3HSRXDATA4(bd3_w[4]), 
            .D3HSRXDATA5(bd3_w[5]), .D3HSRXDATA6(bd3_w[6]), .D3HSRXDATA7(bd3_w[7]), 
            .D3SYNC(d_sot_det_w[3]), .D3ERRSYNC(d_sote_det_w[3]), .D3DRXLPP(lp_d3_rx_p_o), 
            .D3DRXLPN(lp_d3_rx_n_o), .CLKRXHSEN(csi_payload_en_c), .CLKRXLPEN(VCC_net), 
            .CLKCDEN(VCC_net), .CLKTXHSEN(GND_net), .CLKTXHSGATE(GND_net), 
            .CLKTXHSPD(VCC_net), .CLKDTXLPP(GND_net), .CLKDTXLPN(GND_net), 
            .CLKTXLPEN(GND_net), .PDDPHY(GND_net), .PDPLL(VCC_net), .PDBIAS(GND_net), 
            .PDCKG(GND_net), .LBEN(GND_net), .CLKREF(GND_net), .HSBYTECLKD(csi_clk_byte), 
            .CLKHSBYTE(csi_clk_byte_hs), .CLKDRXLPP(lp_clk_rx_p), .CLKDRXLPN(lp_clk_rx_n)) /* synthesis HS_MODE="RX", DIR_PIN_DN3="INPUT", DIR_PIN_DP3="INPUT", DIR_PIN_DN2="INPUT", DIR_PIN_DP2="INPUT", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", DIR_PIN_DN0="INPUT", DIR_PIN_DP0="INPUT", FREQUENCY_PIN_HSBYTECLKD="45.0", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    defparam \MIXEL.mixel_dphy .HSEL = 0;
    defparam \MIXEL.mixel_dphy .HS_16BIT_EN = 0;
    defparam \MIXEL.mixel_dphy .CN = 5'b00000;
    defparam \MIXEL.mixel_dphy .CM = 8'b00000000;
    defparam \MIXEL.mixel_dphy .CO = 2'b00;
    defparam \MIXEL.mixel_dphy .PLL_TST = 4'b1001;
    defparam \MIXEL.mixel_dphy .ENP_DESER = 1'b1;
    LUT4 hs_settle_en_i_I_0_2_lut (.A(hs_settle_en_w), .B(csi_sp_en_c), 
         .Z(d_sot_det_o_3__N_1134)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_wrapper.v(238[29:56])
    defparam hs_settle_en_i_I_0_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (sys_clk_c, sys_rst_n_N_472, rx_data, rx_flag, uart_rxd_c, 
            GND_net, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]rx_data;
    output rx_flag;
    input uart_rxd_c;
    input GND_net;
    input VCC_net;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [12:0]baud_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    
    wire n17628, n17630, n15280;
    wire [7:0]rx_data_adj_1485;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(27[11:18])
    
    wire rx_data_7__N_1463, rx_flag_adj_1473, rx_reg2, rx_reg1, rx_reg3, 
        work_en_N_1455, start_nedge_N_1467, work_en, n7879, bit_flag, 
        bit_flag_N_1470, n19483, n13822;
    wire [12:0]n32;
    
    wire n13823, n13821;
    wire [3:0]bit_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(26[11:18])
    wire [3:0]n14;
    wire [12:0]n1;
    
    wire n13820, n31, n15250, n8057, n8055, n19540, n19539, n16373, 
        n19485, n13819, n9749, n17560, n17682, n17646, n13824;
    
    LUT4 i1_4_lut (.A(baud_cnt[12]), .B(n17628), .C(n17630), .D(baud_cnt[2]), 
         .Z(n15280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_4_lut.init = 16'hfffe;
    FD1P3DX rx_data_i0_i0 (.D(rx_data_adj_1485[1]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1P3DX po_data_i0_i0 (.D(rx_data_adj_1485[0]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i0.GSR = "ENABLED";
    FD1S3BX rx_reg2_76 (.D(rx_reg1), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(44[9:28])
    defparam rx_reg2_76.GSR = "ENABLED";
    FD1S3BX rx_reg3_77 (.D(rx_reg2), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(52[9:28])
    defparam rx_reg3_77.GSR = "ENABLED";
    FD1S3DX start_nedge_78 (.D(start_nedge_N_1467), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1455)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[10] 62[29])
    defparam start_nedge_78.GSR = "ENABLED";
    FD1S3DX work_en_79 (.D(n7879), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam work_en_79.GSR = "ENABLED";
    FD1S3DX bit_flag_81 (.D(bit_flag_N_1470), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[10] 93[26])
    defparam bit_flag_81.GSR = "ENABLED";
    FD1S3DX rx_flag_84 (.D(n19483), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag_adj_1473)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(119[10] 122[25])
    defparam rx_flag_84.GSR = "ENABLED";
    FD1S3DX po_flag_86 (.D(rx_flag_adj_1473), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(138[9:28])
    defparam po_flag_86.GSR = "ENABLED";
    FD1S3BX rx_reg1_75 (.D(uart_rxd_c), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(36[9:23])
    defparam rx_reg1_75.GSR = "ENABLED";
    CCU2C add_32_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13822), .COUT(n13823), .S0(n32[7]), .S1(n32[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_9.INIT0 = 16'haaaa;
    defparam add_32_9.INIT1 = 16'haaaa;
    defparam add_32_9.INJECT1_0 = "NO";
    defparam add_32_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(baud_cnt[9]), .B(baud_cnt[1]), .Z(n17628)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut.init = 16'heeee;
    CCU2C add_32_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13821), .COUT(n13822), .S0(n32[5]), .S1(n32[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_7.INIT0 = 16'haaaa;
    defparam add_32_7.INIT1 = 16'haaaa;
    defparam add_32_7.INJECT1_0 = "NO";
    defparam add_32_7.INJECT1_1 = "NO";
    FD1S3DX bit_cnt__i0 (.D(n14[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i0.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    CCU2C add_32_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13820), .COUT(n13821), .S0(n32[3]), .S1(n32[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_5.INIT0 = 16'haaaa;
    defparam add_32_5.INIT1 = 16'haaaa;
    defparam add_32_5.INJECT1_0 = "NO";
    defparam add_32_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_24 (.A(baud_cnt[11]), .B(baud_cnt[10]), .Z(n17630)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut_adj_24.init = 16'heeee;
    LUT4 i49_2_lut (.A(baud_cnt[4]), .B(baud_cnt[7]), .Z(n31)) /* synthesis lut_function=(A (B)) */ ;
    defparam i49_2_lut.init = 16'h8888;
    FD1P3DX bit_cnt__i1 (.D(n15250), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i1.GSR = "ENABLED";
    FD1P3DX bit_cnt__i2 (.D(n8057), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i2.GSR = "ENABLED";
    FD1P3DX bit_cnt__i3 (.D(n8055), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_then_2_lut (.A(bit_flag), .B(bit_cnt[3]), .Z(n19540)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_then_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_else_2_lut (.A(bit_flag), .B(bit_cnt[1]), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n19539)) /* synthesis lut_function=(!((B (C)+!B (C (D)+!C !(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_else_2_lut.init = 16'h0a28;
    FD1S3DX baud_cnt__i12 (.D(n1[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n1[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n1[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    FD1P3DX po_data_i0_i7 (.D(rx_data_adj_1485[7]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i7.GSR = "ENABLED";
    FD1P3DX po_data_i0_i6 (.D(rx_data_adj_1485[6]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i6.GSR = "ENABLED";
    FD1P3DX po_data_i0_i5 (.D(rx_data_adj_1485[5]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i5.GSR = "ENABLED";
    FD1P3DX po_data_i0_i4 (.D(rx_data_adj_1485[4]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i4.GSR = "ENABLED";
    FD1P3DX po_data_i0_i3 (.D(rx_data_adj_1485[3]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i3.GSR = "ENABLED";
    FD1P3DX po_data_i0_i2 (.D(rx_data_adj_1485[2]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i2.GSR = "ENABLED";
    FD1P3DX po_data_i0_i1 (.D(rx_data_adj_1485[1]), .SP(rx_flag_adj_1473), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i1.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i7 (.D(rx_reg3), .SP(rx_data_7__N_1463), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i6 (.D(rx_data_adj_1485[7]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i5 (.D(rx_data_adj_1485[6]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i4 (.D(rx_data_adj_1485[5]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i3 (.D(rx_data_adj_1485[4]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i2 (.D(rx_data_adj_1485[3]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i1 (.D(rx_data_adj_1485[2]), .SP(rx_data_7__N_1463), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1485[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_305 (.A(bit_flag), .B(n16373), .C(bit_cnt[3]), .Z(n19483)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_rep_305.init = 16'h2020;
    LUT4 i6558_3_lut_4_lut (.A(bit_flag), .B(n16373), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A !(D))) */ ;
    defparam i6558_3_lut_4_lut.init = 16'h558a;
    LUT4 i2230_2_lut_rep_307 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n19485)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i2230_2_lut_rep_307.init = 16'h8888;
    LUT4 i6496_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n19483), 
         .D(bit_cnt[2]), .Z(n8057)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i6496_3_lut_4_lut.init = 16'h0708;
    CCU2C add_32_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13819), .COUT(n13820), .S0(n32[1]), .S1(n32[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_3.INIT0 = 16'haaaa;
    defparam add_32_3.INIT1 = 16'haaaa;
    defparam add_32_3.INJECT1_0 = "NO";
    defparam add_32_3.INJECT1_1 = "NO";
    CCU2C add_32_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13819), .S1(n32[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_1.INIT0 = 16'h0000;
    defparam add_32_1.INIT1 = 16'h555a;
    defparam add_32_1.INJECT1_0 = "NO";
    defparam add_32_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Z(n16373)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_25 (.A(n9749), .B(n32[0]), .Z(n1[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_25.init = 16'h8888;
    LUT4 i1_4_lut_adj_26 (.A(n17560), .B(work_en), .C(n31), .D(n17682), 
         .Z(n9749)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_4_lut_adj_26.init = 16'h8ccc;
    LUT4 i1_4_lut_adj_27 (.A(baud_cnt[5]), .B(n15280), .C(baud_cnt[6]), 
         .D(baud_cnt[3]), .Z(n17560)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_27.init = 16'hfffd;
    LUT4 i13670_2_lut (.A(baud_cnt[8]), .B(baud_cnt[0]), .Z(n17682)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13670_2_lut.init = 16'h8888;
    LUT4 i7009_2_lut (.A(n32[12]), .B(n9749), .Z(n1[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i7009_2_lut.init = 16'h8888;
    LUT4 start_nedge_I_0_2_lut (.A(rx_reg2), .B(rx_reg3), .Z(start_nedge_N_1467)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[13:36])
    defparam start_nedge_I_0_2_lut.init = 16'h4444;
    LUT4 i3987_3_lut (.A(n19483), .B(work_en_N_1455), .C(work_en), .Z(n7879)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam i3987_3_lut.init = 16'hdcdc;
    LUT4 i14450_4_lut (.A(n15280), .B(n31), .C(n17646), .D(baud_cnt[3]), 
         .Z(bit_flag_N_1470)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i14450_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_28 (.A(baud_cnt[6]), .B(baud_cnt[0]), .C(baud_cnt[8]), 
         .D(baud_cnt[5]), .Z(n17646)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_28.init = 16'hfffd;
    CCU2C add_32_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13824), .S0(n32[11]), .S1(n32[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_13.INIT0 = 16'haaaa;
    defparam add_32_13.INIT1 = 16'haaaa;
    defparam add_32_13.INJECT1_0 = "NO";
    defparam add_32_13.INJECT1_1 = "NO";
    CCU2C add_32_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13823), .COUT(n13824), .S0(n32[9]), .S1(n32[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_11.INIT0 = 16'haaaa;
    defparam add_32_11.INIT1 = 16'haaaa;
    defparam add_32_11.INJECT1_0 = "NO";
    defparam add_32_11.INJECT1_1 = "NO";
    LUT4 i15_2_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .Z(n15250)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i6784_2_lut (.A(n32[11]), .B(n9749), .Z(n1[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6784_2_lut.init = 16'h8888;
    LUT4 i6783_2_lut (.A(n32[10]), .B(n9749), .Z(n1[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6783_2_lut.init = 16'h8888;
    LUT4 i6782_2_lut (.A(n32[9]), .B(n9749), .Z(n1[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6782_2_lut.init = 16'h8888;
    LUT4 i6495_4_lut (.A(bit_cnt[3]), .B(n19483), .C(bit_cnt[2]), .D(n19485), 
         .Z(n8055)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i6495_4_lut.init = 16'h1222;
    LUT4 i6781_2_lut (.A(n32[8]), .B(n9749), .Z(n1[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6781_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_29 (.A(n9749), .B(n32[7]), .Z(n1[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_29.init = 16'h8888;
    LUT4 i1_2_lut_adj_30 (.A(n9749), .B(n32[6]), .Z(n1[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_30.init = 16'h8888;
    LUT4 i1_2_lut_adj_31 (.A(n9749), .B(n32[5]), .Z(n1[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_31.init = 16'h8888;
    LUT4 i1_2_lut_adj_32 (.A(n9749), .B(n32[4]), .Z(n1[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_32.init = 16'h8888;
    LUT4 i1_2_lut_adj_33 (.A(n9749), .B(n32[3]), .Z(n1[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_33.init = 16'h8888;
    LUT4 i1_2_lut_adj_34 (.A(n9749), .B(n32[2]), .Z(n1[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    LUT4 i1_2_lut_adj_35 (.A(n9749), .B(n32[1]), .Z(n1[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_35.init = 16'h8888;
    PFUMX i14975 (.BLUT(n19539), .ALUT(n19540), .C0(bit_cnt[2]), .Z(rx_data_7__N_1463));
    
endmodule
