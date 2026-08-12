// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Aug 12 09:18:27 2026
//
// Verilog Description of module mipi_3ch_top
//

module mipi_3ch_top (sys_clk, sys_rstn, led, uart_txd, uart_rxd, i2c_sclk_0, 
            i2c_sda_0, xshutdn_0, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0, csi_payload_en, csi_sp_en, csi_lp_en, csi_dt) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(5[8:20])
    input sys_clk;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    input sys_rstn;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(7[16:24])
    output [3:0]led;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    output uart_txd;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(10[23:31])
    input uart_rxd;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(11[23:31])
    output i2c_sclk_0;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(13[23:33])
    inout i2c_sda_0;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(14[23:32])
    output xshutdn_0;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(15[23:32])
    inout mipi_rcp_0 /* synthesis black_box_pad_pin=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    inout mipi_rcn_0 /* synthesis black_box_pad_pin=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    inout mipi_rdp_0 /* synthesis black_box_pad_pin=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(19[22:32])
    inout mipi_rdn_0 /* synthesis black_box_pad_pin=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(20[22:32])
    output csi_payload_en;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(22[23:37])
    output csi_sp_en;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(23[23:32])
    output csi_lp_en;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(24[23:32])
    output [5:0]csi_dt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(126[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(127[25:40])
    
    wire GND_net, VCC_net, sys_rstn_c, led_c_3, led_c_2, led_c_1, 
        uart_txd_c, uart_rxd_c, i2c_sclk_0_c, xshutdn_0_c, csi_payload_en_c, 
        csi_sp_en_c, csi_lp_en_c, csi_dt_c_5, csi_dt_c_4, csi_dt_c_3, 
        csi_dt_c_2, n47, rst_n_pulse;
    wire [25:0]rst_cnt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(38[13:20])
    wire [23:0]blink_cnt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(46[12:21])
    
    wire xshutdn_r, cam_ready;
    wire [19:0]xshutdn_cnt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(68[12:23])
    wire [19:0]cam_cnt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(69[12:19])
    wire [5:0]csi_dt_parser;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(134[25:38])
    wire [15:0]csi_wc;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(136[25:31])
    wire [1:0]reset_byte_fr_sync;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(143[25:43])
    wire [1:0]reset_byte_sync;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(144[25:40])
    wire [31:0]csi_byte_clk_count;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(149[12:30])
    wire [31:0]csi_hs_sync_count;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(150[12:29])
    wire [31:0]csi_long_packet_count;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(151[12:33])
    wire [31:0]csi_payload_byte_count;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(152[12:34])
    
    wire dphy_hs_sync_d, csi_lp_en_d;
    wire [5:0]csi_last_dt;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(155[12:23])
    wire [15:0]csi_last_wc;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(156[12:23])
    wire [31:0]csi_byte_clk_count_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(185[12:35])
    wire [31:0]csi_byte_clk_count_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(185[37:59])
    wire [31:0]csi_hs_sync_count_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(186[12:34])
    wire [31:0]csi_hs_sync_count_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(186[36:57])
    wire [31:0]csi_long_packet_count_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(187[12:38])
    wire [31:0]csi_long_packet_count_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(187[40:65])
    wire [31:0]csi_payload_byte_count_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(188[12:39])
    wire [31:0]csi_payload_byte_count_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(188[41:67])
    wire [5:0]csi_last_dt_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(189[12:28])
    wire [5:0]csi_last_dt_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(189[30:45])
    wire [15:0]csi_last_wc_meta;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(190[12:28])
    wire [15:0]csi_last_wc_sys;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(190[30:45])
    wire [7:0]tx_data;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(297[13:20])
    wire [7:0]rx_data;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(298[13:20])
    
    wire rx_flag, n144, n143, n142, n141, n140, n139, n138, 
        led_3__N_1, n6005, n7092, n12577, n136, n135, n16648, 
        reset_byte_fr_sync_1__N_129, n12576, n12575, csi_hs_sync_count_31__N_349, 
        csi_long_packet_count_31__N_384, n12524, n12523, sys_clk_c_enable_147, 
        sys_clk_c_enable_139, rst_cnt_25__N_445, n1170, n1171, n1172, 
        n1173, n1174, n1175, n1176, n1177, n1178, n1179, n1180, 
        n1181, n1182, n1183, n1184, n1185, n1186, n1187, n1188, 
        n1189, n1190, n1191, n1192, n1193, n1194, n1195, rst_n_pulse_N_449, 
        n158, n157, n156, n155, n154, n153, n152, n151, n150, 
        n149, n148, n147, n146, n145, n144_adj_1535, n143_adj_1536, 
        n142_adj_1537, n141_adj_1538, n140_adj_1539, n139_adj_1540, 
        n138_adj_1541, n137, n136_adj_1542, n135_adj_1543, n134, n12574, 
        n115, n114, n113, n112, n111, n110, n109, n108, n107, 
        n133, n132, n131, n130, n129, n128, n125, n124, n123, 
        n122, flag_done, n12573, n86, n87, n88, n89, n90, n91, 
        n92, n93, n94, n95, n96, n97, n98, n99, n100, sec_tick;
    wire [1:0]tx_state;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(53[12:20])
    wire [2:0]tx_phase;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(54[12:20])
    wire [3:0]digits_left;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:23])
    
    wire n12572, n119, n15037, n12571, n12570, n102, n103, n104, 
        n105, n12569, n118;
    wire [1:0]tx_state_1__N_1163;
    
    wire work_en_N_1382, n12568, n139_adj_1544, n138_adj_1545, n12567, 
        n117;
    wire [9:0]next_state;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n120, n121, sda_transmit, n142_adj_1546, n12566, sys_clk_c_enable_106, 
        n17894, n165, n164, n163, n162, n161, n12565, n160, 
        n159, n158_adj_1547, n157_adj_1548, n12564, n17913, n7428, 
        n7426, n16237, n7424, n7422, n7420, n7418, n7416, n116, 
        n106, n7414, n7412, n7410, n7408, n17911, n16233, n7406, 
        n7404, n156_adj_1549, n155_adj_1550, n154_adj_1551, n153_adj_1552, 
        n152_adj_1553, n137_adj_1554;
    wire [23:0]reg_cfg;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(44[16:23])
    wire [7:0]reg_index;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(45[16:25])
    
    wire sys_rst_n_N_472, n6145, n16317, n151_adj_1555, n150_adj_1556, 
        n149_adj_1557, n7402, n7400, n7398, n7396, n7394, n7392, 
        n7390, n7388, n7386, n7384, n7382, n7380, n144_adj_1558, 
        n145_adj_1559, n146_adj_1560, n147_adj_1561, n148_adj_1562, 
        n149_adj_1563, n150_adj_1564, n151_adj_1565, n12563, n143_adj_1566, 
        n16727, n16265, n148_adj_1567, n12562, n134_adj_1568, n12561, 
        n147_adj_1569, n146_adj_1570, n136_adj_1571, n12560, n12559, 
        n165_adj_1572, n164_adj_1573, n163_adj_1574, n162_adj_1575, 
        n161_adj_1576, n160_adj_1577, n159_adj_1578, n101, n102_adj_1579, 
        n7313, n103_adj_1580, n104_adj_1581, n105_adj_1582, n12558, 
        n12557, n12479, n12556, n105_adj_1583, n104_adj_1584, n103_adj_1585, 
        n102_adj_1586, n101_adj_1587, n100_adj_1588, n99_adj_1589, n98_adj_1590, 
        n97_adj_1591, n96_adj_1592, n95_adj_1593, n94_adj_1594, n93_adj_1595, 
        n92_adj_1596, n91_adj_1597, n90_adj_1598, n89_adj_1599, n88_adj_1600, 
        n87_adj_1601, n86_adj_1602, n12555, n141_adj_1603, n12554, 
        n12553, n12552, n12551, n165_adj_1604, n164_adj_1605, n163_adj_1606, 
        n162_adj_1607, n161_adj_1608, n160_adj_1609, n159_adj_1610, 
        n158_adj_1611, n157_adj_1612, n156_adj_1613, n155_adj_1614, 
        n154_adj_1615, n153_adj_1616, n152_adj_1617, n151_adj_1618, 
        n150_adj_1619, n149_adj_1620, n148_adj_1621, n147_adj_1622, 
        n146_adj_1623, n145_adj_1624, n144_adj_1625, n143_adj_1626, 
        n142_adj_1627, n141_adj_1628, n140_adj_1629, n139_adj_1630, 
        n138_adj_1631, n137_adj_1632, n136_adj_1633, n135_adj_1634, 
        n134_adj_1635, n137_adj_1636, n12550, n12549, n12618, n12477, 
        n12548, n12617, n12547, n12616, n12546, n145_adj_1637, n12615, 
        n12614, n165_adj_1638, n164_adj_1639, n163_adj_1640, n162_adj_1641, 
        n161_adj_1642, n160_adj_1643, n159_adj_1644, n158_adj_1645, 
        n157_adj_1646, n156_adj_1647, n155_adj_1648, n154_adj_1649, 
        n153_adj_1650, n152_adj_1651, n151_adj_1652, n150_adj_1653, 
        n149_adj_1654, n148_adj_1655, n147_adj_1656, n146_adj_1657, 
        n145_adj_1658, n144_adj_1659, n143_adj_1660, n142_adj_1661, 
        n141_adj_1662, n140_adj_1663, n139_adj_1664, n138_adj_1665, 
        n137_adj_1666, n136_adj_1667, n135_adj_1668, n134_adj_1669, 
        n12545, n12613, n12612, n12611, n134_adj_1670, n12610, n12609, 
        n12608, sys_clk_c_enable_198, n12607, n12606, n12544, n12543, 
        sys_clk_c_enable_99, n12605, n16117, n16111, n16109, n17889, 
        i2c_sda_0_out, n16105, n16103, n12542, n12604, n12603, sys_clk_c_enable_161, 
        n12602, sys_clk_c_enable_100, n140_adj_1671, n5323, n12475, 
        n12601, n12600, n12599, n12598, n12597, n16533, n12596, 
        n12541, n12540, n12595, n12539, n135_adj_1672, n12594, n16391, 
        n12538, n12476, n12478, n12593, n5216, n12537, n12536, 
        n12473, n12472, n12471, n16055, n16051, n12592, n12474, 
        n12483, n12535, n12591, n16389, n12482, n16413, n12590, 
        n12589, n16650, n12481, n12588, n12480, n16649, n12587, 
        n17876, n12586, n12534, n16363, n12533, n16031, n12585, 
        n12584, n12532, n16029, n12531, n12530, n16027, n16025, 
        n4299, n4305, n12583, n16419, n12529, n12582, n16531, 
        n16529, n16527, n16525, n4373, n12581, n16395, n12580, 
        n17943, n12528, n15999, n15997, drive_clk_enable_4, n15991, 
        n16397, n12527, n12579, n12526, n12525, n16417, n12578, 
        sys_clk_c_enable_148, n15945, n15923, n15917, n15915, n17896, 
        n16441, n16319, n16509, n16505, n16497, n17883, n15066, 
        n16489, n16487, n15851, sys_clk_c_enable_145, sys_clk_c_enable_149, 
        n17917, n16443;
    
    VHI i2 (.Z(VCC_net));
    uart_tx u_uart_tx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .tx_state({tx_state}), .n5216(n5216), .sys_clk_c_enable_139(sys_clk_c_enable_139), 
            .\tx_data[4] (tx_data[4]), .GND_net(GND_net), .VCC_net(VCC_net), 
            .\tx_data[5] (tx_data[5]), .\tx_data[6] (tx_data[6]), .tx_phase({tx_phase}), 
            .n17911(n17911), .n6145(n6145), .uart_txd_c(uart_txd_c), .\tx_data[0] (tx_data[0]), 
            .\tx_data[1] (tx_data[1]), .work_en_N_1382(work_en_N_1382), 
            .n17896(n17896), .\tx_data[2] (tx_data[2]), .\tx_data[3] (tx_data[3]), 
            .n17943(n17943), .sys_clk_c_enable_147(sys_clk_c_enable_147), 
            .sec_tick(sec_tick), .sys_clk_c_enable_145(sys_clk_c_enable_145), 
            .sys_clk_c_enable_106(sys_clk_c_enable_106), .n7092(n7092), 
            .sys_clk_c_enable_149(sys_clk_c_enable_149), .\tx_state_1__N_1163[0] (tx_state_1__N_1163[0]), 
            .sys_clk_c_enable_148(sys_clk_c_enable_148), .n15851(n15851), 
            .\digits_left[0] (digits_left[0]), .\digits_left[1] (digits_left[1])) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(321[3] 328[2])
    FD1S3DX csi_byte_clk_count_meta_i0 (.D(csi_byte_clk_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i0.GSR = "ENABLED";
    FD1S3DX xshutdn_out_reg_99 (.D(xshutdn_r), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(xshutdn_0_c));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(79[10] 101[8])
    defparam xshutdn_out_reg_99.GSR = "ENABLED";
    FD1S3DX dphy_hs_sync_d_107 (.D(csi_lp_en_c), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(dphy_hs_sync_d));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam dphy_hs_sync_d_107.GSR = "ENABLED";
    FD1S3DX csi_lp_en_d_108 (.D(csi_dt_c_5), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(csi_lp_en_d));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_lp_en_d_108.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i0 (.D(csi_byte_clk_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i0 (.D(csi_hs_sync_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i0 (.D(csi_hs_sync_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i0 (.D(csi_long_packet_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i0 (.D(csi_long_packet_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i0 (.D(csi_payload_byte_count[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i0 (.D(csi_payload_byte_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i0 (.D(csi_last_dt[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i0 (.D(csi_last_dt_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i0 (.D(csi_last_wc[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i0 (.D(csi_last_wc_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_fr_sync_i0 (.D(VCC_net), .CK(csi_clk_byte_hs), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_fr_sync[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(222[9:61])
    defparam reset_byte_fr_sync_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_sync_i0 (.D(VCC_net), .CK(csi_clk_byte), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_sync[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(229[9:55])
    defparam reset_byte_sync_i0.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i31 (.D(n134), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i31.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_5 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[5])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF00180E00C00002002009030000004002000036C00880 */ ;
    FD1P3DX csi_long_packet_count_1907__i30 (.D(n135_adj_1543), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i30.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i29 (.D(n136_adj_1542), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i29.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i28 (.D(n137), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i28.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_6 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[6])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF0A040E02000000001809000000200000A20106900000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_7 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[7])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF4A080E00000000008109020000000000A20000800000 */ ;
    FD1P3DX csi_long_packet_count_1907__i27 (.D(n138_adj_1541), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i27.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i26 (.D(n139_adj_1540), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i26.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i25 (.D(n140_adj_1539), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i25.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_0 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[0])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF83181F190A800200200E30000001400146C38E9B8301 */ ;
    FD1P3DX csi_long_packet_count_1907__i24 (.D(n141_adj_1538), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i24.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i23 (.D(n142_adj_1537), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i23.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i22 (.D(n143_adj_1536), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i22.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i21 (.D(n144_adj_1535), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i21.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i20 (.D(n145), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i20.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i19 (.D(n146), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i19.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i18 (.D(n147), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i18.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i17 (.D(n148), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i17.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_4 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[4])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF0A140E00800000011808110000084400220107100B00 */ ;
    FD1P3DX csi_long_packet_count_1907__i16 (.D(n149), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i16.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i15 (.D(n150), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i15.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i14 (.D(n151), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i14.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i13 (.D(n152), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i13.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i0 (.D(csi_dt_parser[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i0.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i12 (.D(n153), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i12.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i11 (.D(n154), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i11.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i10 (.D(n155), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i10.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i9 (.D(n156), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i9.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i8 (.D(n157), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i8.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i7 (.D(n158), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i7.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i6 (.D(n159_adj_1578), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i6.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i5 (.D(n160_adj_1577), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i5.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i4 (.D(n161_adj_1576), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i4.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i3 (.D(n162_adj_1575), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i3.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i2 (.D(n163_adj_1574), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i2.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1907__i1 (.D(n164_adj_1573), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i1.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_33 (.A0(csi_byte_clk_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12570), .S0(n134_adj_1635));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_33.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_33.INIT1 = 16'h0000;
    defparam csi_byte_clk_count_1905_add_4_33.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_33.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_1906__i31 (.D(n134_adj_1669), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i31.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_31 (.A0(csi_byte_clk_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12569), .COUT(n12570), .S0(n136_adj_1633), 
          .S1(n135_adj_1634));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_31.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_31.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_31.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_31.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_1906__i30 (.D(n135_adj_1668), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i30.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i29 (.D(n136_adj_1667), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i29.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i28 (.D(n137_adj_1666), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i28.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i27 (.D(n138_adj_1665), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i27.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i26 (.D(n139_adj_1664), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i26.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i25 (.D(n140_adj_1663), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i25.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i24 (.D(n141_adj_1662), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i24.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i23 (.D(n142_adj_1661), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i23.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i22 (.D(n143_adj_1660), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i22.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i21 (.D(n144_adj_1659), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i21.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i20 (.D(n145_adj_1658), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i20.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i19 (.D(n146_adj_1657), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i19.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i18 (.D(n147_adj_1656), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i18.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i17 (.D(n148_adj_1655), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i17.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i16 (.D(n149_adj_1654), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i16.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i15 (.D(n150_adj_1653), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i15.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i14 (.D(n151_adj_1652), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i14.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i13 (.D(n152_adj_1651), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i13.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i12 (.D(n153_adj_1650), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i12.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i11 (.D(n154_adj_1649), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i10 (.D(n155_adj_1648), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i10.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i9 (.D(n156_adj_1647), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i14 (.D(csi_byte_clk_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i14.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i8 (.D(n157_adj_1646), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i8.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i7 (.D(n158_adj_1645), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i7.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i6 (.D(n159_adj_1644), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i6.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i5 (.D(n160_adj_1643), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i4 (.D(n161_adj_1642), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i4.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i3 (.D(n162_adj_1641), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i3.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i2 (.D(n163_adj_1640), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i2.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i1 (.D(n164_adj_1639), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i31 (.D(n134_adj_1635), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i30 (.D(n135_adj_1634), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i29 (.D(n136_adj_1633), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i28 (.D(n137_adj_1632), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i27 (.D(n138_adj_1631), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i26 (.D(n139_adj_1630), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i25 (.D(n140_adj_1629), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i24 (.D(n141_adj_1628), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i23 (.D(n142_adj_1627), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i22 (.D(n143_adj_1626), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i21 (.D(n144_adj_1625), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i18 (.D(csi_byte_clk_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i20 (.D(n145_adj_1624), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i19 (.D(n146_adj_1623), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i18 (.D(n147_adj_1622), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i17 (.D(n148_adj_1621), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i16 (.D(n149_adj_1620), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i16.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_19 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[19])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF3FC00000400001FFFE00FFFFFFC01FFFFFFC00000000 */ ;
    FD1S3DX csi_byte_clk_count_1905__i15 (.D(n150_adj_1619), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i14 (.D(n151_adj_1618), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i14.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i13 (.D(n152_adj_1617), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i12 (.D(n153_adj_1616), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i12.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_12 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[12])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF300F8000003FC00020000000000003FC00007F8003E0 */ ;
    FD1S3DX csi_byte_clk_count_1905__i11 (.D(n154_adj_1615), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i10 (.D(n155_adj_1614), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i9 (.D(n156_adj_1613), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i8 (.D(n157_adj_1612), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i7 (.D(n158_adj_1611), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i6 (.D(n159_adj_1610), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i5 (.D(n160_adj_1609), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i4 (.D(n161_adj_1608), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i4.GSR = "ENABLED";
    OB csi_sp_en_pad (.I(csi_sp_en_c), .O(csi_sp_en));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(23[23:32])
    FD1S3DX csi_byte_clk_count_1905__i3 (.D(n162_adj_1607), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i2 (.D(n163_adj_1606), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i1 (.D(n164_adj_1605), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i1.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i19 (.D(n86_adj_1602), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i19.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_29 (.A0(csi_byte_clk_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12568), .COUT(n12569), .S0(n138_adj_1631), 
          .S1(n137_adj_1632));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_29.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_29.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_29.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_29.INJECT1_1 = "NO";
    ROM256X1 reg_index_7__I_0_148_Mux_3 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[3])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF0F10E301C0000200200A110000000400028000000A40 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_10 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[10])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF03087878583C3C782430BC3C3C0610C3C3C18F41C190 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_8 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[8])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF3FC55555552AA9553D6BEAAAAAAD4AAAAAA92AEAA855 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_2 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[2])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF33114F43A00002002008120000001228C46B8E901900 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_1 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[1])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF031C1185E0000200000E30000001100393827EE04480 */ ;
    FD1S3DX csi_byte_clk_count_meta_i13 (.D(csi_byte_clk_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i13.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i18 (.D(n87_adj_1601), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i18.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i17 (.D(n88_adj_1600), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i17.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i16 (.D(n89_adj_1599), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i16.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i15 (.D(n90_adj_1598), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i15.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i14 (.D(n91_adj_1597), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i14.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i13 (.D(n92_adj_1596), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i13.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i12 (.D(n93_adj_1595), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i12.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i11 (.D(n94_adj_1594), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i11.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i10 (.D(n95_adj_1593), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i10.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i9 (.D(n96_adj_1592), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i9.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i8 (.D(n97_adj_1591), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i8.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i7 (.D(n98_adj_1590), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i7.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i6 (.D(n99_adj_1589), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i6.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i5 (.D(n100_adj_1588), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i5.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i4 (.D(n101_adj_1587), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i4.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i3 (.D(n102_adj_1586), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i3.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i2 (.D(n103_adj_1585), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i2.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i1 (.D(n104_adj_1584), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i1.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i19 (.D(n86), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i19.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_27 (.A0(csi_byte_clk_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12567), .COUT(n12568), .S0(n140_adj_1629), 
          .S1(n139_adj_1630));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_27.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_27.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_27.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_27.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_1903__i18 (.D(n87), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i18.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i17 (.D(n88), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i17.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i16 (.D(n89), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i16.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i15 (.D(n90), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i15.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i14 (.D(n91), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i14.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i13 (.D(n92), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i13.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i12 (.D(n93), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i12.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i11 (.D(n94), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i11.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i10 (.D(n95), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i10.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i9 (.D(n96), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i9.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i8 (.D(n97), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i8.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i7 (.D(n98), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i7.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i6 (.D(n99), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i6.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i5 (.D(n100), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i5.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i4 (.D(n101), .SP(sys_clk_c_enable_99), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i4.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i3 (.D(n102_adj_1579), .SP(sys_clk_c_enable_99), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i3.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i2 (.D(n103_adj_1580), .SP(sys_clk_c_enable_99), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i2.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1903__i1 (.D(n104_adj_1581), .SP(sys_clk_c_enable_99), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i1.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i23 (.D(n128), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i23.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i22 (.D(n129), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i22.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i21 (.D(n130), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i21.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i20 (.D(n131), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i20.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i19 (.D(n132), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i18 (.D(n133), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i18.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i17 (.D(n134_adj_1568), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i17.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i16 (.D(n135_adj_1672), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i16.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i15 (.D(n136_adj_1571), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i15.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i14 (.D(n137_adj_1554), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i14.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i13 (.D(n138_adj_1545), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i13.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i12 (.D(n139_adj_1544), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i12.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i11 (.D(n140_adj_1671), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i11.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i10 (.D(n141_adj_1603), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i10.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i9 (.D(n142_adj_1546), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i9.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i8 (.D(n143_adj_1566), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i8.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i7 (.D(n144_adj_1558), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i7.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i6 (.D(n145_adj_1559), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i6.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i5 (.D(n146_adj_1560), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i5.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i4 (.D(n147_adj_1561), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i4.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i3 (.D(n148_adj_1562), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i3.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i2 (.D(n149_adj_1563), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i2.GSR = "ENABLED";
    FD1S3DX blink_cnt_1902__i1 (.D(n150_adj_1564), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i1.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_25 (.A0(csi_byte_clk_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12566), .COUT(n12567), .S0(n142_adj_1627), 
          .S1(n141_adj_1628));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_25.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_25.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_25.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_25.INJECT1_1 = "NO";
    FD1S3DX blink_cnt_1902__i0 (.D(n151_adj_1565), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902__i0.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_23 (.A0(csi_byte_clk_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12565), .COUT(n12566), .S0(n144_adj_1625), 
          .S1(n143_adj_1626));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_23.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_23.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_23.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_23.INJECT1_1 = "NO";
    LUT4 i383_4_lut_rep_310 (.A(n16051), .B(xshutdn_r), .C(n16527), .D(n16055), 
         .Z(sys_clk_c_enable_161)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(90[14] 97[12])
    defparam i383_4_lut_rep_310.init = 16'hccdc;
    CCU2C csi_byte_clk_count_1905_add_4_21 (.A0(csi_byte_clk_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12564), .COUT(n12565), .S0(n146_adj_1623), 
          .S1(n145_adj_1624));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_21.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_21.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_21.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_21.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i17 (.D(csi_byte_clk_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i17.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_19 (.A0(csi_byte_clk_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12563), .COUT(n12564), .S0(n148_adj_1621), 
          .S1(n147_adj_1622));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_19.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_19.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_19.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1905_add_4_17 (.A0(csi_byte_clk_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12562), .COUT(n12563), .S0(n150_adj_1619), 
          .S1(n149_adj_1620));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_17.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_17.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_17.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_17.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i1 (.D(n7428), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i1.GSR = "ENABLED";
    FD1P3DX rst_cnt__i2 (.D(n7426), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i2.GSR = "ENABLED";
    LUT4 i3417_1_lut_4_lut (.A(n16051), .B(xshutdn_r), .C(n16527), .D(n16055), 
         .Z(sys_clk_c_enable_99)) /* synthesis lut_function=(!(A (B)+!A (B+!((D)+!C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(90[14] 97[12])
    defparam i3417_1_lut_4_lut.init = 16'h3323;
    FD1S3DX csi_byte_clk_count_meta_i16 (.D(csi_byte_clk_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i16.GSR = "ENABLED";
    FD1P3DX rst_cnt__i3 (.D(n7424), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i3.GSR = "ENABLED";
    FD1P3DX rst_cnt__i4 (.D(n7422), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i4.GSR = "ENABLED";
    FD1P3DX rst_cnt__i5 (.D(n7420), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i5.GSR = "ENABLED";
    FD1P3DX rst_cnt__i6 (.D(n7418), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i7 (.D(n7416), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i7.GSR = "ENABLED";
    FD1P3DX rst_cnt__i8 (.D(n7414), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i8.GSR = "ENABLED";
    FD1P3DX rst_cnt__i9 (.D(n7412), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i9.GSR = "ENABLED";
    FD1P3DX rst_cnt__i10 (.D(n7410), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i10.GSR = "ENABLED";
    FD1P3DX rst_cnt__i11 (.D(n7408), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i11.GSR = "ENABLED";
    FD1P3DX rst_cnt__i12 (.D(n7406), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i12.GSR = "ENABLED";
    FD1P3DX rst_cnt__i13 (.D(n7404), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i13.GSR = "ENABLED";
    FD1P3DX rst_cnt__i14 (.D(n7402), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i14.GSR = "ENABLED";
    LUT4 reset_byte_fr_sync_1__I_0_1_lut (.A(reset_byte_fr_sync[1]), .Z(reset_byte_fr_sync_1__N_129)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(159[9:25])
    defparam reset_byte_fr_sync_1__I_0_1_lut.init = 16'h5555;
    CCU2C csi_byte_clk_count_1905_add_4_15 (.A0(csi_byte_clk_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12561), .COUT(n12562), .S0(n152_adj_1617), 
          .S1(n151_adj_1618));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_15.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_15.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_15.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_15.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_1903__i0 (.D(n105_adj_1582), .SP(sys_clk_c_enable_99), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903__i0.GSR = "ENABLED";
    FD1P3DX cam_cnt_1904__i0 (.D(n105_adj_1583), .SP(sys_clk_c_enable_100), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904__i0.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1905__i0 (.D(n165_adj_1604), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905__i0.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1906__i0 (.D(n165_adj_1638), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906__i0.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i5 (.D(csi_dt_parser[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i5.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i4 (.D(csi_dt_parser[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i3 (.D(csi_dt_parser[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i2 (.D(csi_dt_parser[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i1 (.D(csi_dt_parser[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i1.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_13 (.A0(csi_byte_clk_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12560), .COUT(n12561), .S0(n154_adj_1615), 
          .S1(n153_adj_1616));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_13.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_13.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_13.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_13.INJECT1_1 = "NO";
    FD1P3DX csi_long_packet_count_1907__i0 (.D(n165_adj_1572), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907__i0.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_11 (.A0(csi_byte_clk_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12559), .COUT(n12560), .S0(n156_adj_1613), 
          .S1(n155_adj_1614));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_11.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_11.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_11.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_11.INJECT1_1 = "NO";
    FD1P3DX csi_payload_byte_count_1908__i0 (.D(n165), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i0.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1905_add_4_9 (.A0(csi_byte_clk_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12558), .COUT(n12559), .S0(n158_adj_1611), 
          .S1(n157_adj_1612));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_9.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_9.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_9.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_9.INJECT1_1 = "NO";
    LUT4 csi_dt_5__I_0_2_lut (.A(csi_dt_c_5), .B(csi_lp_en_d), .Z(csi_long_packet_count_31__N_384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(174[13:45])
    defparam csi_dt_5__I_0_2_lut.init = 16'h2222;
    ROM256X1 reg_index_7__I_0_148_Mux_18 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[18])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF000FFFFFA00001FF8180FFFFFFFFE0000003FFF00000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_17 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[17])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF000FFFFFA00001FFC1FC0000000000000003FFF00000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_16 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[16])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF802FFFFFBF8001FF807CFFFFFFFFE000000380080003 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_15 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[15])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF400FFFFF9FC000000000FFC00000000000038007FC00 */ ;
    CCU2C add_86_15 (.A0(rst_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12477), .COUT(n12478), .S0(n1182), .S1(n1181));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_15.INIT0 = 16'haaaa;
    defparam add_86_15.INIT1 = 16'haaaa;
    defparam add_86_15.INJECT1_0 = "NO";
    defparam add_86_15.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i15 (.D(csi_byte_clk_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i15.GSR = "ENABLED";
    OB csi_lp_en_pad (.I(csi_lp_en_c), .O(csi_lp_en));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(24[23:32])
    CCU2C csi_byte_clk_count_1905_add_4_7 (.A0(csi_byte_clk_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12557), .COUT(n12558), .S0(n160_adj_1609), 
          .S1(n159_adj_1610));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_7.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_7.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_7.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1905_add_4_5 (.A0(csi_byte_clk_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12556), .COUT(n12557), .S0(n162_adj_1607), 
          .S1(n161_adj_1608));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_5.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_5.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_5.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_5.INJECT1_1 = "NO";
    CCU2C add_86_11 (.A0(rst_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12475), .COUT(n12476), .S0(n1186), .S1(n1185));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_11.INIT0 = 16'haaaa;
    defparam add_86_11.INIT1 = 16'haaaa;
    defparam add_86_11.INJECT1_0 = "NO";
    defparam add_86_11.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i15 (.D(n7400), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i15.GSR = "ENABLED";
    LUT4 i1940_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(sys_clk_c_enable_198)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1940_2_lut.init = 16'hdddd;
    FD1P3DX rst_cnt__i16 (.D(n7398), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i16.GSR = "ENABLED";
    LUT4 i6189_2_lut (.A(n1194), .B(rst_cnt_25__N_445), .Z(n7428)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6189_2_lut.init = 16'h2222;
    FD1P3DX cam_ready_100 (.D(n16650), .SP(xshutdn_r), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_ready));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(79[10] 101[8])
    defparam cam_ready_100.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n16317), .B(n16319), .C(n16237), .D(n16233), .Z(rst_cnt_25__N_445)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h1000;
    LUT4 i12816_2_lut (.A(rx_data[3]), .B(rx_data[4]), .Z(n16317)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12816_2_lut.init = 16'heeee;
    OB csi_payload_en_pad (.I(csi_payload_en_c), .O(csi_payload_en));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(22[23:37])
    OB xshutdn_0_pad (.I(xshutdn_0_c), .O(xshutdn_0));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(15[23:32])
    OB i2c_sclk_0_pad (.I(i2c_sclk_0_c), .O(i2c_sclk_0));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(13[23:33])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(10[23:31])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    BB i2c_sda_0_pad (.I(sda_transmit), .T(n17913), .B(i2c_sda_0), .O(i2c_sda_0_out));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(44[17:20])
    LUT4 i12818_2_lut (.A(rx_data[0]), .B(rx_data[7]), .Z(n16319)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12818_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(rx_data[2]), .B(rx_flag), .C(rx_data[1]), .Z(n16237)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    FD1S3DX csi_byte_clk_count_meta_i12 (.D(csi_byte_clk_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i12.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(rx_data[5]), .B(rx_data[6]), .Z(n16233)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3DX rst_cnt__i17 (.D(n7396), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i11 (.D(csi_byte_clk_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i10 (.D(csi_byte_clk_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i9 (.D(csi_byte_clk_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i9.GSR = "ENABLED";
    LUT4 i5947_2_lut (.A(n1195), .B(rst_cnt_25__N_445), .Z(n7313)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i5947_2_lut.init = 16'h2222;
    FD1S3DX csi_byte_clk_count_meta_i8 (.D(csi_byte_clk_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i7 (.D(csi_byte_clk_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i6 (.D(csi_byte_clk_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i5 (.D(csi_byte_clk_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i4 (.D(csi_byte_clk_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i3 (.D(csi_byte_clk_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_217 (.A(led_c_3), .B(n47), .Z(led_3__N_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_217.init = 16'h9999;
    FD1S3DX csi_byte_clk_count_meta_i2 (.D(csi_byte_clk_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i1 (.D(csi_byte_clk_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i1.GSR = "ENABLED";
    LUT4 i394_4_lut (.A(n16531), .B(rst_n_pulse), .C(n16533), .D(n15945), 
         .Z(rst_n_pulse_N_449)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(351[10] 358[8])
    defparam i394_4_lut.init = 16'hccec;
    CCU2C csi_byte_clk_count_1905_add_4_3 (.A0(csi_byte_clk_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12555), .COUT(n12556), .S0(n164_adj_1605), 
          .S1(n163_adj_1606));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_3.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_3.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1905_add_4_3.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_3.INJECT1_1 = "NO";
    LUT4 i13029_4_lut (.A(rst_cnt[21]), .B(n16505), .C(n16441), .D(rst_cnt[1]), 
         .Z(n16531)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13029_4_lut.init = 16'h8000;
    FD1P3DX rst_cnt__i18 (.D(n7394), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i18.GSR = "ENABLED";
    FD1P3DX rst_cnt__i19 (.D(n7392), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i19.GSR = "ENABLED";
    LUT4 i13031_4_lut (.A(rst_cnt[19]), .B(n16509), .C(n16265), .D(rst_cnt[14]), 
         .Z(n16533)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13031_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_218 (.A(n16443), .B(n15915), .C(n15923), .D(n15917), 
         .Z(n15945)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_218.init = 16'hfffd;
    LUT4 i13003_4_lut (.A(rst_cnt[5]), .B(rst_cnt[15]), .C(rst_cnt[20]), 
         .D(rst_cnt[12]), .Z(n16505)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13003_4_lut.init = 16'h8000;
    LUT4 i12939_2_lut (.A(rst_cnt[3]), .B(rst_cnt[2]), .Z(n16441)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12939_2_lut.init = 16'h8888;
    FD1P3DX rst_cnt__i20 (.D(n7390), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i20.GSR = "ENABLED";
    LUT4 csi_lp_en_I_0_2_lut (.A(csi_lp_en_c), .B(dphy_hs_sync_d), .Z(csi_hs_sync_count_31__N_349)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(172[13:44])
    defparam csi_lp_en_I_0_2_lut.init = 16'h2222;
    CCU2C csi_byte_clk_count_1905_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_byte_clk_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12555), .S1(n165_adj_1604));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1905_add_4_1.INIT0 = 16'h0000;
    defparam csi_byte_clk_count_1905_add_4_1.INIT1 = 16'h555f;
    defparam csi_byte_clk_count_1905_add_4_1.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1905_add_4_1.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_21 (.A0(cam_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12554), .S0(n86_adj_1602));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_21.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_21.INIT1 = 16'h0000;
    defparam cam_cnt_1904_add_4_21.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_21.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i21 (.D(n7388), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i21.GSR = "ENABLED";
    CCU2C cam_cnt_1904_add_4_19 (.A0(cam_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12553), .COUT(n12554), .S0(n88_adj_1600), 
          .S1(n87_adj_1601));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_19.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_19.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_19.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_19.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i22 (.D(n7386), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i22.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i31 (.D(n134_adj_1670), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i31.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i30 (.D(n135), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i30.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i29 (.D(n136), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i29.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i28 (.D(n137_adj_1636), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i28.GSR = "ENABLED";
    FD1S3DX reset_byte_sync_i1 (.D(reset_byte_sync[0]), .CK(csi_clk_byte), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_sync[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(229[9:55])
    defparam reset_byte_sync_i1.GSR = "ENABLED";
    FD1S3DX reset_byte_fr_sync_i1 (.D(reset_byte_fr_sync[0]), .CK(csi_clk_byte_hs), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_fr_sync[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(222[9:61])
    defparam reset_byte_fr_sync_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i15 (.D(csi_last_wc_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i14 (.D(csi_last_wc_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i13 (.D(csi_last_wc_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i12 (.D(csi_last_wc_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i11 (.D(csi_last_wc_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i10 (.D(csi_last_wc_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i9 (.D(csi_last_wc_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i8 (.D(csi_last_wc_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i7 (.D(csi_last_wc_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i6 (.D(csi_last_wc_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i5 (.D(csi_last_wc_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i4 (.D(csi_last_wc_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i3 (.D(csi_last_wc_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i2 (.D(csi_last_wc_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i27 (.D(n138), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i27.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i1 (.D(csi_last_wc_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i15 (.D(csi_last_wc[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i26 (.D(n139), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i26.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i25 (.D(n140), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i25.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i24 (.D(n141), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i24.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i23 (.D(n142), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i23.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i22 (.D(n143), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i22.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i14 (.D(csi_last_wc[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i13 (.D(csi_last_wc[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i12 (.D(csi_last_wc[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i11 (.D(csi_last_wc[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i10 (.D(csi_last_wc[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i9 (.D(csi_last_wc[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i8 (.D(csi_last_wc[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i7 (.D(csi_last_wc[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i6 (.D(csi_last_wc[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i5 (.D(csi_last_wc[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i4 (.D(csi_last_wc[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i3 (.D(csi_last_wc[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i2 (.D(csi_last_wc[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i1 (.D(csi_last_wc[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i5 (.D(csi_last_dt_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i4 (.D(csi_last_dt_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i3 (.D(csi_last_dt_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i3.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i21 (.D(n144), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i21.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i2 (.D(csi_last_dt_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i1 (.D(csi_last_dt_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i1.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i20 (.D(n145_adj_1637), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i20.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i19 (.D(n146_adj_1570), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i19.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i18 (.D(n147_adj_1569), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i18.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i17 (.D(n148_adj_1567), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i17.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i5 (.D(csi_last_dt[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i5.GSR = "ENABLED";
    FD1P3DX rst_cnt__i23 (.D(n7384), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i23.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i16 (.D(n149_adj_1557), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i16.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i4 (.D(csi_last_dt[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i3 (.D(csi_last_dt[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i2 (.D(csi_last_dt[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i1 (.D(csi_last_dt[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i31 (.D(csi_payload_byte_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i30 (.D(csi_payload_byte_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i29 (.D(csi_payload_byte_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i28 (.D(csi_payload_byte_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i27 (.D(csi_payload_byte_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i26 (.D(csi_payload_byte_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i25 (.D(csi_payload_byte_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i24 (.D(csi_payload_byte_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i23 (.D(csi_payload_byte_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i22 (.D(csi_payload_byte_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i21 (.D(csi_payload_byte_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i20 (.D(csi_payload_byte_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i19 (.D(csi_payload_byte_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i18 (.D(csi_payload_byte_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i17 (.D(csi_payload_byte_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i16 (.D(csi_payload_byte_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i15 (.D(csi_payload_byte_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i14 (.D(csi_payload_byte_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i14.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i15 (.D(n150_adj_1556), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i14 (.D(n151_adj_1555), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i14.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i13 (.D(n152_adj_1553), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i13.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i12 (.D(n153_adj_1552), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i12.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i11 (.D(n154_adj_1551), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i13 (.D(csi_payload_byte_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i13.GSR = "ENABLED";
    FD1P3DX rst_cnt__i24 (.D(n7382), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i12 (.D(csi_payload_byte_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i11 (.D(csi_payload_byte_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i11.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i10 (.D(n155_adj_1550), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i10 (.D(csi_payload_byte_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i9 (.D(csi_payload_byte_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i8 (.D(csi_payload_byte_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i7 (.D(csi_payload_byte_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i6 (.D(csi_payload_byte_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i5 (.D(csi_payload_byte_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i4 (.D(csi_payload_byte_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i3 (.D(csi_payload_byte_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i2 (.D(csi_payload_byte_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i1 (.D(csi_payload_byte_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i31 (.D(csi_payload_byte_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i30 (.D(csi_payload_byte_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i29 (.D(csi_payload_byte_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i28 (.D(csi_payload_byte_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i27 (.D(csi_payload_byte_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i26 (.D(csi_payload_byte_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i25 (.D(csi_payload_byte_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i24 (.D(csi_payload_byte_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i23 (.D(csi_payload_byte_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i22 (.D(csi_payload_byte_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i21 (.D(csi_payload_byte_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i20 (.D(csi_payload_byte_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i19 (.D(csi_payload_byte_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i19.GSR = "ENABLED";
    FD1P3DX rst_cnt__i25 (.D(n7380), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i18 (.D(csi_payload_byte_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i18.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i9 (.D(n156_adj_1549), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i9.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i8 (.D(n157_adj_1548), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i8.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i7 (.D(n158_adj_1547), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i7.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i6 (.D(n159), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i17 (.D(csi_payload_byte_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i16 (.D(csi_payload_byte_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i15 (.D(csi_payload_byte_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i5 (.D(n160), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i14 (.D(csi_payload_byte_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i13 (.D(csi_payload_byte_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i13.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i4 (.D(n161), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i12 (.D(csi_payload_byte_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i12.GSR = "ENABLED";
    FD1S3BX rst_n_pulse_127 (.D(n5323), .CK(sys_clk_c), .PD(led_c_2), 
            .Q(rst_n_pulse));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_n_pulse_127.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i11 (.D(csi_payload_byte_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i10 (.D(csi_payload_byte_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i9 (.D(csi_payload_byte_count[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i8 (.D(csi_payload_byte_count[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i7 (.D(csi_payload_byte_count[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i6 (.D(csi_payload_byte_count[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i5 (.D(csi_payload_byte_count[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i4 (.D(csi_payload_byte_count[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i3 (.D(csi_payload_byte_count[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i2 (.D(csi_payload_byte_count[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i1 (.D(csi_payload_byte_count[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i31 (.D(csi_long_packet_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i30 (.D(csi_long_packet_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i29 (.D(csi_long_packet_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i28 (.D(csi_long_packet_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i27 (.D(csi_long_packet_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i26 (.D(csi_long_packet_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i25 (.D(csi_long_packet_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i24 (.D(csi_long_packet_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i23 (.D(csi_long_packet_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i22 (.D(csi_long_packet_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i22.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i3 (.D(n162), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i3.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i2 (.D(n163), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1908__i1 (.D(n164), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908__i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i21 (.D(csi_long_packet_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i20 (.D(csi_long_packet_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i19 (.D(csi_long_packet_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i18 (.D(csi_long_packet_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i17 (.D(csi_long_packet_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i16 (.D(csi_long_packet_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i15 (.D(csi_long_packet_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i14 (.D(csi_long_packet_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i13 (.D(csi_long_packet_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i12 (.D(csi_long_packet_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i11 (.D(csi_long_packet_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i10 (.D(csi_long_packet_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i9 (.D(csi_long_packet_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i8 (.D(csi_long_packet_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i7 (.D(csi_long_packet_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i6 (.D(csi_long_packet_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i5 (.D(csi_long_packet_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i4 (.D(csi_long_packet_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i3 (.D(csi_long_packet_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i2 (.D(csi_long_packet_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i1 (.D(csi_long_packet_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i31 (.D(csi_long_packet_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i30 (.D(csi_long_packet_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i29 (.D(csi_long_packet_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i28 (.D(csi_long_packet_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i27 (.D(csi_long_packet_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i27.GSR = "ENABLED";
    LUT4 i13007_4_lut (.A(rst_cnt[22]), .B(rst_cnt[23]), .C(rst_cnt[17]), 
         .D(rst_cnt[0]), .Z(n16509)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13007_4_lut.init = 16'h8000;
    LUT4 i12765_2_lut (.A(rst_cnt[25]), .B(rst_cnt[13]), .Z(n16265)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12765_2_lut.init = 16'h8888;
    FD1S3DX csi_long_packet_count_meta_i26 (.D(csi_long_packet_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i25 (.D(csi_long_packet_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i24 (.D(csi_long_packet_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i23 (.D(csi_long_packet_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i22 (.D(csi_long_packet_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i21 (.D(csi_long_packet_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i20 (.D(csi_long_packet_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i19 (.D(csi_long_packet_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i18 (.D(csi_long_packet_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i17 (.D(csi_long_packet_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i16 (.D(csi_long_packet_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i15 (.D(csi_long_packet_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i14 (.D(csi_long_packet_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i13 (.D(csi_long_packet_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i12 (.D(csi_long_packet_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i12.GSR = "ENABLED";
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(11[23:31])
    IB sys_rstn_pad (.I(sys_rstn), .O(sys_rstn_c));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(7[16:24])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    OB csi_dt_pad_0 (.I(VCC_net), .O(csi_dt[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_1 (.I(VCC_net), .O(csi_dt[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_2 (.I(csi_dt_c_2), .O(csi_dt[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    LUT4 i12941_2_lut (.A(rst_cnt[6]), .B(rst_cnt[4]), .Z(n16443)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12941_2_lut.init = 16'h8888;
    OB csi_dt_pad_3 (.I(csi_dt_c_3), .O(csi_dt[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_long_packet_count_meta_i11 (.D(csi_long_packet_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i10 (.D(csi_long_packet_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i9 (.D(csi_long_packet_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i8 (.D(csi_long_packet_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i7 (.D(csi_long_packet_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i7.GSR = "ENABLED";
    OB csi_dt_pad_4 (.I(csi_dt_c_4), .O(csi_dt[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_long_packet_count_meta_i6 (.D(csi_long_packet_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i5 (.D(csi_long_packet_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i4 (.D(csi_long_packet_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i3 (.D(csi_long_packet_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i2 (.D(csi_long_packet_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i2.GSR = "ENABLED";
    OB csi_dt_pad_5 (.I(csi_dt_c_5), .O(csi_dt[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_long_packet_count_meta_i1 (.D(csi_long_packet_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i31 (.D(csi_hs_sync_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i30 (.D(csi_hs_sync_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i29 (.D(csi_hs_sync_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i28 (.D(csi_hs_sync_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i27 (.D(csi_hs_sync_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i26 (.D(csi_hs_sync_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i25 (.D(csi_hs_sync_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i24 (.D(csi_hs_sync_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i23 (.D(csi_hs_sync_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i22 (.D(csi_hs_sync_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i21 (.D(csi_hs_sync_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i20 (.D(csi_hs_sync_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i19 (.D(csi_hs_sync_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i18 (.D(csi_hs_sync_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i17 (.D(csi_hs_sync_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i17.GSR = "ENABLED";
    CCU2C cam_cnt_1904_add_4_17 (.A0(cam_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12552), .COUT(n12553), .S0(n90_adj_1598), 
          .S1(n89_adj_1599));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_17.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_17.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_17.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_17.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i16 (.D(csi_hs_sync_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i16.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_219 (.A(rst_cnt[11]), .B(rst_cnt[18]), .Z(n15915)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_219.init = 16'heeee;
    FD1S3DX csi_hs_sync_count_sys_i15 (.D(csi_hs_sync_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i14 (.D(csi_hs_sync_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i13 (.D(csi_hs_sync_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i12 (.D(csi_hs_sync_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i11 (.D(csi_hs_sync_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i10 (.D(csi_hs_sync_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i9 (.D(csi_hs_sync_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i8 (.D(csi_hs_sync_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i7 (.D(csi_hs_sync_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i6 (.D(csi_hs_sync_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i5 (.D(csi_hs_sync_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i4 (.D(csi_hs_sync_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i3 (.D(csi_hs_sync_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i2 (.D(csi_hs_sync_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i1 (.D(csi_hs_sync_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i31 (.D(csi_hs_sync_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i30 (.D(csi_hs_sync_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i29 (.D(csi_hs_sync_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i28 (.D(csi_hs_sync_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i27 (.D(csi_hs_sync_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i26 (.D(csi_hs_sync_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i25 (.D(csi_hs_sync_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i24 (.D(csi_hs_sync_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i23 (.D(csi_hs_sync_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i22 (.D(csi_hs_sync_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i21 (.D(csi_hs_sync_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i20 (.D(csi_hs_sync_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i19 (.D(csi_hs_sync_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i19.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_220 (.A(rst_cnt[10]), .B(rst_cnt[8]), .C(rst_cnt[9]), 
         .D(rst_cnt[7]), .Z(n15923)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_220.init = 16'hfffe;
    FD1S3DX csi_hs_sync_count_meta_i18 (.D(csi_hs_sync_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i17 (.D(csi_hs_sync_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i16 (.D(csi_hs_sync_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i15 (.D(csi_hs_sync_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i14 (.D(csi_hs_sync_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i13 (.D(csi_hs_sync_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i12 (.D(csi_hs_sync_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i11 (.D(csi_hs_sync_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i10 (.D(csi_hs_sync_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i9 (.D(csi_hs_sync_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i8 (.D(csi_hs_sync_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i7 (.D(csi_hs_sync_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i6 (.D(csi_hs_sync_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i5 (.D(csi_hs_sync_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i4 (.D(csi_hs_sync_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i3 (.D(csi_hs_sync_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i2 (.D(csi_hs_sync_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i1 (.D(csi_hs_sync_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i31 (.D(csi_byte_clk_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i30 (.D(csi_byte_clk_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i29 (.D(csi_byte_clk_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i28 (.D(csi_byte_clk_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i28.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_221 (.A(rst_cnt[24]), .B(rst_cnt[16]), .Z(n15917)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_221.init = 16'heeee;
    FD1P3DX csi_last_wc_i0_i0 (.D(csi_wc[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i0.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i27 (.D(csi_byte_clk_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i26 (.D(csi_byte_clk_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i25 (.D(csi_byte_clk_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i24 (.D(csi_byte_clk_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i23 (.D(csi_byte_clk_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i22 (.D(csi_byte_clk_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i21 (.D(csi_byte_clk_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i20 (.D(csi_byte_clk_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i19 (.D(csi_byte_clk_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i18 (.D(csi_byte_clk_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[18]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i17 (.D(csi_byte_clk_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[17]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i16 (.D(csi_byte_clk_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[16]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i15 (.D(csi_byte_clk_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i14 (.D(csi_byte_clk_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i14.GSR = "ENABLED";
    LUT4 i6188_2_lut (.A(n1193), .B(rst_cnt_25__N_445), .Z(n7426)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6188_2_lut.init = 16'h2222;
    FD1S3DX csi_byte_clk_count_sys_i13 (.D(csi_byte_clk_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i12 (.D(csi_byte_clk_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i11 (.D(csi_byte_clk_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i10 (.D(csi_byte_clk_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i9 (.D(csi_byte_clk_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i8 (.D(csi_byte_clk_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i7 (.D(csi_byte_clk_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i6 (.D(csi_byte_clk_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i5 (.D(csi_byte_clk_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i5.GSR = "ENABLED";
    CCU2C cam_cnt_1904_add_4_15 (.A0(cam_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12551), .COUT(n12552), .S0(n92_adj_1596), 
          .S1(n91_adj_1597));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_15.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_15.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_15.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_15.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i4 (.D(csi_byte_clk_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i3 (.D(csi_byte_clk_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i2 (.D(csi_byte_clk_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i1 (.D(csi_byte_clk_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i1.GSR = "ENABLED";
    FD1P3DX xshutdn_r_98 (.D(VCC_net), .SP(sys_clk_c_enable_161), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_r));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(79[10] 101[8])
    defparam xshutdn_r_98.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i31 (.D(csi_byte_clk_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[31]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i30 (.D(csi_byte_clk_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[30]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i29 (.D(csi_byte_clk_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[29]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i28 (.D(csi_byte_clk_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[28]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i27 (.D(csi_byte_clk_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[27]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i26 (.D(csi_byte_clk_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[26]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i25 (.D(csi_byte_clk_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[25]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i24 (.D(csi_byte_clk_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[24]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i23 (.D(csi_byte_clk_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[23]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i22 (.D(csi_byte_clk_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[22]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i21 (.D(csi_byte_clk_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[21]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i20 (.D(csi_byte_clk_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[20]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i19 (.D(csi_byte_clk_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[19]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i19.GSR = "ENABLED";
    CCU2C cam_cnt_1904_add_4_13 (.A0(cam_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12550), .COUT(n12551), .S0(n94_adj_1594), 
          .S1(n93_adj_1595));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_13.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_13.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_13.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_13.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_11 (.A0(cam_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12549), .COUT(n12550), .S0(n96_adj_1592), 
          .S1(n95_adj_1593));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_11.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_11.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_11.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_33 (.A0(csi_payload_byte_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12618), .S0(n134_adj_1670));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_33.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_33.INIT1 = 16'h0000;
    defparam csi_payload_byte_count_1908_add_4_33.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_31 (.A0(csi_payload_byte_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12617), .COUT(n12618), 
          .S0(n136), .S1(n135));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_31.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_31.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_31.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_31.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_29 (.A0(csi_payload_byte_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12616), .COUT(n12617), 
          .S0(n138), .S1(n137_adj_1636));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_29.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_29.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_29.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_29.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_9 (.A0(cam_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12548), .COUT(n12549), .S0(n98_adj_1590), 
          .S1(n97_adj_1591));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_9.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_9.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_9.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_9.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_7 (.A0(cam_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12547), .COUT(n12548), .S0(n100_adj_1588), 
          .S1(n99_adj_1589));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_7.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_7.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_7.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_27 (.A0(csi_payload_byte_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12615), .COUT(n12616), 
          .S0(n140), .S1(n139));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_27.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_27.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_27.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_27.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_5 (.A0(cam_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12546), .COUT(n12547), .S0(n102_adj_1586), 
          .S1(n101_adj_1587));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_5.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_5.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_5.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_25 (.A0(csi_payload_byte_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12614), .COUT(n12615), 
          .S0(n142), .S1(n141));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_25.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_25.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_25.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_25.INJECT1_1 = "NO";
    LUT4 i13143_4_lut (.A(flag_done), .B(n6005), .C(drive_clk_enable_4), 
         .D(n17889), .Z(n16648)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B+((D)+!C))) */ ;
    defparam i13143_4_lut.init = 16'haa3a;
    CCU2C csi_payload_byte_count_1908_add_4_23 (.A0(csi_payload_byte_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12613), .COUT(n12614), 
          .S0(n144), .S1(n143));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_23.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_23.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_23.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_23.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_21 (.A0(csi_payload_byte_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12612), .COUT(n12613), 
          .S0(n146_adj_1570), .S1(n145_adj_1637));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_21.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_21.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_21.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_21.INJECT1_1 = "NO";
    CCU2C cam_cnt_1904_add_4_3 (.A0(cam_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12545), .COUT(n12546), .S0(n104_adj_1584), 
          .S1(n103_adj_1585));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_3.INIT0 = 16'haaa0;
    defparam cam_cnt_1904_add_4_3.INIT1 = 16'haaa0;
    defparam cam_cnt_1904_add_4_3.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_19 (.A0(csi_payload_byte_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12611), .COUT(n12612), 
          .S0(n148_adj_1567), .S1(n147_adj_1569));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_19.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_19.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_19.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_17 (.A0(csi_payload_byte_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12610), .COUT(n12611), 
          .S0(n150_adj_1556), .S1(n149_adj_1557));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_17.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_17.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_17.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_15 (.A0(csi_payload_byte_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12609), .COUT(n12610), 
          .S0(n152_adj_1553), .S1(n151_adj_1555));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_15.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_15.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_15.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_13 (.A0(csi_payload_byte_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12608), .COUT(n12609), 
          .S0(n154_adj_1551), .S1(n153_adj_1552));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_13.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_13.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_13.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_11 (.A0(csi_payload_byte_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12607), .COUT(n12608), 
          .S0(n156_adj_1549), .S1(n155_adj_1550));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_11.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_11.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_11.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_9 (.A0(csi_payload_byte_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12606), .COUT(n12607), 
          .S0(n158_adj_1547), .S1(n157_adj_1548));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_9.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_9.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_9.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_7 (.A0(csi_payload_byte_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12605), .COUT(n12606), 
          .S0(n160), .S1(n159));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_7.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_7.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_7.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_7.INJECT1_1 = "NO";
    LUT4 i6187_2_lut (.A(n1192), .B(rst_cnt_25__N_445), .Z(n7424)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6187_2_lut.init = 16'h2222;
    CCU2C csi_payload_byte_count_1908_add_4_5 (.A0(csi_payload_byte_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12604), .COUT(n12605), 
          .S0(n162), .S1(n161));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_5.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_5.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_5.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_5.INJECT1_1 = "NO";
    LUT4 i6186_2_lut (.A(n1191), .B(rst_cnt_25__N_445), .Z(n7422)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6186_2_lut.init = 16'h2222;
    LUT4 i6181_2_lut (.A(n1190), .B(rst_cnt_25__N_445), .Z(n7420)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6181_2_lut.init = 16'h2222;
    LUT4 i6180_2_lut (.A(n1189), .B(rst_cnt_25__N_445), .Z(n7418)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6180_2_lut.init = 16'h2222;
    LUT4 i6179_2_lut (.A(n1188), .B(rst_cnt_25__N_445), .Z(n7416)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6179_2_lut.init = 16'h2222;
    LUT4 i6178_2_lut (.A(n1187), .B(rst_cnt_25__N_445), .Z(n7414)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6178_2_lut.init = 16'h2222;
    LUT4 i6177_2_lut (.A(n1186), .B(rst_cnt_25__N_445), .Z(n7412)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6177_2_lut.init = 16'h2222;
    LUT4 i6176_2_lut (.A(n1185), .B(rst_cnt_25__N_445), .Z(n7410)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6176_2_lut.init = 16'h2222;
    LUT4 i6175_2_lut (.A(n1184), .B(rst_cnt_25__N_445), .Z(n7408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6175_2_lut.init = 16'h2222;
    LUT4 i6174_2_lut (.A(n1183), .B(rst_cnt_25__N_445), .Z(n7406)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6174_2_lut.init = 16'h2222;
    FD1P3DX rst_cnt__i0 (.D(n7313), .SP(sys_clk_c_enable_198), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[0]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i0.GSR = "ENABLED";
    FD1S3DX blink_toggle_97 (.D(led_3__N_1), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(led_c_3));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[10] 59[8])
    defparam blink_toggle_97.GSR = "ENABLED";
    LUT4 i6173_2_lut (.A(n1182), .B(rst_cnt_25__N_445), .Z(n7404)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6173_2_lut.init = 16'h2222;
    FD1P3DX csi_last_wc_i0_i1 (.D(csi_wc[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[1]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i1.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i2 (.D(csi_wc[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[2]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i3 (.D(csi_wc[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[3]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i4 (.D(csi_wc[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[4]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i5 (.D(csi_wc[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[5]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i5.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i6 (.D(csi_wc[6]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[6]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i6.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i7 (.D(csi_wc[7]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[7]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i7.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i8 (.D(csi_wc[8]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[8]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i8.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i9 (.D(csi_wc[9]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[9]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i9.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i10 (.D(csi_wc[10]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[10]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i10.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i11 (.D(csi_wc[11]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[11]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i11.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i12 (.D(csi_wc[12]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[12]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i12.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i13 (.D(csi_wc[13]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[13]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i13.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i14 (.D(csi_wc[14]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[14]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i14.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i15 (.D(csi_wc[15]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[15]));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i15.GSR = "ENABLED";
    CCU2C cam_cnt_1904_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cam_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12545), .S1(n105_adj_1583));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1904_add_4_1.INIT0 = 16'h0000;
    defparam cam_cnt_1904_add_4_1.INIT1 = 16'h555f;
    defparam cam_cnt_1904_add_4_1.INJECT1_0 = "NO";
    defparam cam_cnt_1904_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_3 (.A0(csi_payload_byte_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12603), .COUT(n12604), 
          .S0(n164), .S1(n163));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_3.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_3.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1908_add_4_3.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1908_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_payload_byte_count[0]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n12603), .S1(n165));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1908_add_4_1.INIT0 = 16'h0000;
    defparam csi_payload_byte_count_1908_add_4_1.INIT1 = 16'h555f;
    defparam csi_payload_byte_count_1908_add_4_1.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1908_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_33 (.A0(csi_long_packet_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12602), .S0(n134));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_33.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_33.INIT1 = 16'h0000;
    defparam csi_long_packet_count_1907_add_4_33.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_31 (.A0(csi_long_packet_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12601), .COUT(n12602), 
          .S0(n136_adj_1542), .S1(n135_adj_1543));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_31.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_31.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_31.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_31.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_29 (.A0(csi_long_packet_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12600), .COUT(n12601), 
          .S0(n138_adj_1541), .S1(n137));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_29.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_29.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_29.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_29.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_21 (.A0(xshutdn_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12544), .S0(n86));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_21.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_21.INIT1 = 16'h0000;
    defparam xshutdn_cnt_1903_add_4_21.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_21.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C csi_long_packet_count_1907_add_4_27 (.A0(csi_long_packet_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12599), .COUT(n12600), 
          .S0(n140_adj_1539), .S1(n139_adj_1540));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_27.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_27.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_27.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_27.INJECT1_1 = "NO";
    LUT4 mux_1341_i7_4_lut_4_lut (.A(n17894), .B(n17876), .C(next_state[6]), 
         .D(n17883), .Z(n4373)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam mux_1341_i7_4_lut_4_lut.init = 16'hd1c0;
    CCU2C csi_long_packet_count_1907_add_4_25 (.A0(csi_long_packet_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12598), .COUT(n12599), 
          .S0(n142_adj_1537), .S1(n141_adj_1538));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_25.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_25.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_25.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_25.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_19 (.A0(xshutdn_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12543), .COUT(n12544), .S0(n88), 
          .S1(n87));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_19.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_19.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_19.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_19.INJECT1_1 = "NO";
    LUT4 i6170_2_lut (.A(n1181), .B(rst_cnt_25__N_445), .Z(n7402)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6170_2_lut.init = 16'h2222;
    CCU2C xshutdn_cnt_1903_add_4_17 (.A0(xshutdn_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12542), .COUT(n12543), .S0(n90), 
          .S1(n89));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_17.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_17.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_17.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_23 (.A0(csi_long_packet_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12597), .COUT(n12598), 
          .S0(n144_adj_1535), .S1(n143_adj_1536));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_23.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_23.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_23.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_23.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_15 (.A0(xshutdn_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12541), .COUT(n12542), .S0(n92), 
          .S1(n91));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_15.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_15.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_15.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_15.INJECT1_1 = "NO";
    CCU2C add_86_13 (.A0(rst_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12476), .COUT(n12477), .S0(n1184), .S1(n1183));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_13.INIT0 = 16'haaaa;
    defparam add_86_13.INIT1 = 16'haaaa;
    defparam add_86_13.INJECT1_0 = "NO";
    defparam add_86_13.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_13 (.A0(xshutdn_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12540), .COUT(n12541), .S0(n94), 
          .S1(n93));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_13.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_13.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_13.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_21 (.A0(csi_long_packet_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12596), .COUT(n12597), 
          .S0(n146), .S1(n145));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_21.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_21.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_21.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_21.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_19 (.A0(csi_long_packet_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12595), .COUT(n12596), 
          .S0(n148), .S1(n147));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_19.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_19.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_19.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_19.INJECT1_1 = "NO";
    CCU2C add_86_7 (.A0(rst_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12473), .COUT(n12474), .S0(n1190), .S1(n1189));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_7.INIT0 = 16'haaaa;
    defparam add_86_7.INIT1 = 16'haaaa;
    defparam add_86_7.INJECT1_0 = "NO";
    defparam add_86_7.INJECT1_1 = "NO";
    CCU2C add_86_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rst_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12471), .S1(n1195));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_1.INIT0 = 16'h0000;
    defparam add_86_1.INIT1 = 16'h555a;
    defparam add_86_1.INJECT1_0 = "NO";
    defparam add_86_1.INJECT1_1 = "NO";
    CCU2C add_86_9 (.A0(rst_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12474), .COUT(n12475), .S0(n1188), .S1(n1187));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_9.INIT0 = 16'haaaa;
    defparam add_86_9.INIT1 = 16'haaaa;
    defparam add_86_9.INJECT1_0 = "NO";
    defparam add_86_9.INJECT1_1 = "NO";
    CCU2C add_86_27 (.A0(rst_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12483), 
          .S0(n1170));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_27.INIT0 = 16'haaaa;
    defparam add_86_27.INIT1 = 16'h0000;
    defparam add_86_27.INJECT1_0 = "NO";
    defparam add_86_27.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_11 (.A0(xshutdn_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12539), .COUT(n12540), .S0(n96), 
          .S1(n95));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_11.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_11.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_11.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_17 (.A0(csi_long_packet_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12594), .COUT(n12595), 
          .S0(n150), .S1(n149));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_17.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_17.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_17.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_15 (.A0(csi_long_packet_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12593), .COUT(n12594), 
          .S0(n152), .S1(n151));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_15.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_15.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_15.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_15.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_9 (.A0(xshutdn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12538), .COUT(n12539), .S0(n98), .S1(n97));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_9.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_9.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_9.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_9.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_7 (.A0(xshutdn_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12537), .COUT(n12538), .S0(n100), .S1(n99));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_7.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_7.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_7.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_7.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_5 (.A0(xshutdn_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12536), .COUT(n12537), .S0(n102_adj_1579), 
          .S1(n101));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_5.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_5.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_5.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_13 (.A0(csi_long_packet_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12592), .COUT(n12593), 
          .S0(n154), .S1(n153));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_13.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_13.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_13.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_13.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_3 (.A0(xshutdn_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12535), .COUT(n12536), .S0(n104_adj_1581), 
          .S1(n103_adj_1580));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_3.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_3.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1903_add_4_3.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_11 (.A0(csi_long_packet_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12591), .COUT(n12592), 
          .S0(n156), .S1(n155));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_11.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_11.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_11.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_9 (.A0(csi_long_packet_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12590), .COUT(n12591), 
          .S0(n158), .S1(n157));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_9.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_9.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_9.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_9.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1903_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xshutdn_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12535), .S1(n105_adj_1582));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1903_add_4_1.INIT0 = 16'h0000;
    defparam xshutdn_cnt_1903_add_4_1.INIT1 = 16'h555f;
    defparam xshutdn_cnt_1903_add_4_1.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1903_add_4_1.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_25 (.A0(blink_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12534), .S0(n102));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_25.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_25.INIT1 = 16'h0000;
    defparam blink_cnt_1902_add_4_25.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_25.INJECT1_1 = "NO";
    CCU2C add_86_3 (.A0(rst_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12471), .COUT(n12472), .S0(n1194), .S1(n1193));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_3.INIT0 = 16'haaaa;
    defparam add_86_3.INIT1 = 16'haaaa;
    defparam add_86_3.INJECT1_0 = "NO";
    defparam add_86_3.INJECT1_1 = "NO";
    CCU2C add_86_25 (.A0(rst_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12482), .COUT(n12483), .S0(n1172), .S1(n1171));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_25.INIT0 = 16'haaaa;
    defparam add_86_25.INIT1 = 16'haaaa;
    defparam add_86_25.INJECT1_0 = "NO";
    defparam add_86_25.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_23 (.A0(blink_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12533), .COUT(n12534), .S0(n104), .S1(n103));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_23.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_23.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_23.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_23.INJECT1_1 = "NO";
    CCU2C add_86_23 (.A0(rst_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12481), .COUT(n12482), .S0(n1174), .S1(n1173));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_23.INIT0 = 16'haaaa;
    defparam add_86_23.INIT1 = 16'haaaa;
    defparam add_86_23.INJECT1_0 = "NO";
    defparam add_86_23.INJECT1_1 = "NO";
    LUT4 i5989_2_lut (.A(n103), .B(n47), .Z(n129)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5989_2_lut.init = 16'h8888;
    LUT4 i5990_2_lut (.A(n104), .B(n47), .Z(n130)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5990_2_lut.init = 16'h8888;
    CCU2C add_86_5 (.A0(rst_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12472), .COUT(n12473), .S0(n1192), .S1(n1191));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_5.INIT0 = 16'haaaa;
    defparam add_86_5.INIT1 = 16'haaaa;
    defparam add_86_5.INJECT1_0 = "NO";
    defparam add_86_5.INJECT1_1 = "NO";
    LUT4 i5991_2_lut (.A(n105), .B(n47), .Z(n131)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5991_2_lut.init = 16'h8888;
    CCU2C csi_long_packet_count_1907_add_4_7 (.A0(csi_long_packet_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12589), .COUT(n12590), 
          .S0(n160_adj_1577), .S1(n159_adj_1578));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_7.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_7.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_7.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_5 (.A0(csi_long_packet_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12588), .COUT(n12589), 
          .S0(n162_adj_1575), .S1(n161_adj_1576));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_5.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_5.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_5.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_5.INJECT1_1 = "NO";
    CCU2C add_86_21 (.A0(rst_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12480), .COUT(n12481), .S0(n1176), .S1(n1175));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_21.INIT0 = 16'haaaa;
    defparam add_86_21.INIT1 = 16'haaaa;
    defparam add_86_21.INJECT1_0 = "NO";
    defparam add_86_21.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_21 (.A0(blink_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12532), .COUT(n12533), .S0(n106), .S1(n105));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_21.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_21.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_21.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_21.INJECT1_1 = "NO";
    LUT4 sys_rstn_I_0_132_1_lut (.A(sys_rstn_c), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(49[9:18])
    defparam sys_rstn_I_0_132_1_lut.init = 16'h5555;
    CCU2C csi_long_packet_count_1907_add_4_3 (.A0(csi_long_packet_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n12587), .COUT(n12588), 
          .S0(n164_adj_1573), .S1(n163_adj_1574));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_3.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_3.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1907_add_4_3.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1907_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_long_packet_count[0]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n12587), .S1(n165_adj_1572));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1907_add_4_1.INIT0 = 16'h0000;
    defparam csi_long_packet_count_1907_add_4_1.INIT1 = 16'h555f;
    defparam csi_long_packet_count_1907_add_4_1.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1907_add_4_1.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_19 (.A0(blink_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12531), .COUT(n12532), .S0(n108), .S1(n107));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_19.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_19.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_19.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_19.INJECT1_1 = "NO";
    LUT4 i5992_2_lut (.A(n106), .B(n47), .Z(n132)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5992_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_33 (.A0(csi_hs_sync_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12586), .S0(n134_adj_1669));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_33.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_33.INIT1 = 16'h0000;
    defparam csi_hs_sync_count_1906_add_4_33.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_33.INJECT1_1 = "NO";
    LUT4 i5993_2_lut (.A(n107), .B(n47), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5993_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_31 (.A0(csi_hs_sync_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12585), .COUT(n12586), .S0(n136_adj_1667), 
          .S1(n135_adj_1668));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_31.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_31.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_31.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_31.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_17 (.A0(blink_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12530), .COUT(n12531), .S0(n110), .S1(n109));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_17.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_17.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_17.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_17.INJECT1_1 = "NO";
    LUT4 i5994_2_lut (.A(n108), .B(n47), .Z(n134_adj_1568)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5994_2_lut.init = 16'h8888;
    LUT4 i5995_2_lut (.A(n109), .B(n47), .Z(n135_adj_1672)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5995_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_29 (.A0(csi_hs_sync_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12584), .COUT(n12585), .S0(n138_adj_1665), 
          .S1(n137_adj_1666));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_29.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_29.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_29.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_29.INJECT1_1 = "NO";
    LUT4 i5996_2_lut (.A(n110), .B(n47), .Z(n136_adj_1571)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5996_2_lut.init = 16'h8888;
    CCU2C blink_cnt_1902_add_4_15 (.A0(blink_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12529), .COUT(n12530), .S0(n112), .S1(n111));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_15.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_15.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_15.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_27 (.A0(csi_hs_sync_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12583), .COUT(n12584), .S0(n140_adj_1663), 
          .S1(n139_adj_1664));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_27.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_27.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_27.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_27.INJECT1_1 = "NO";
    LUT4 i5997_2_lut (.A(n111), .B(n47), .Z(n137_adj_1554)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5997_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_25 (.A0(csi_hs_sync_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12582), .COUT(n12583), .S0(n142_adj_1661), 
          .S1(n141_adj_1662));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_25.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_25.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_25.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_25.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_13 (.A0(blink_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12528), .COUT(n12529), .S0(n114), .S1(n113));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_13.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_13.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_13.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_13.INJECT1_1 = "NO";
    LUT4 i5998_2_lut (.A(n112), .B(n47), .Z(n138_adj_1545)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5998_2_lut.init = 16'h8888;
    LUT4 i5999_2_lut (.A(n113), .B(n47), .Z(n139_adj_1544)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5999_2_lut.init = 16'h8888;
    LUT4 i6000_2_lut (.A(n114), .B(n47), .Z(n140_adj_1671)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6000_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_23 (.A0(csi_hs_sync_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12581), .COUT(n12582), .S0(n144_adj_1659), 
          .S1(n143_adj_1660));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_23.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_23.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_23.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_23.INJECT1_1 = "NO";
    LUT4 i6001_2_lut (.A(n115), .B(n47), .Z(n141_adj_1603)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6001_2_lut.init = 16'h8888;
    LUT4 i6002_2_lut (.A(n116), .B(n47), .Z(n142_adj_1546)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6002_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_21 (.A0(csi_hs_sync_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12580), .COUT(n12581), .S0(n146_adj_1657), 
          .S1(n145_adj_1658));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_21.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_21.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_21.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_21.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_11 (.A0(blink_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12527), .COUT(n12528), .S0(n116), .S1(n115));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_11.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_11.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_11.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_19 (.A0(csi_hs_sync_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12579), .COUT(n12580), .S0(n148_adj_1655), 
          .S1(n147_adj_1656));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_19.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_19.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_19.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_19.INJECT1_1 = "NO";
    LUT4 i6003_2_lut (.A(n117), .B(n47), .Z(n143_adj_1566)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6003_2_lut.init = 16'h8888;
    CCU2C blink_cnt_1902_add_4_9 (.A0(blink_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12526), .COUT(n12527), .S0(n118), .S1(n117));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_9.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_9.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_9.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_9.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_7 (.A0(blink_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12525), .COUT(n12526), .S0(n120), .S1(n119));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_7.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_7.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_7.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_7.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_5 (.A0(blink_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12524), .COUT(n12525), .S0(n122), .S1(n121));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_5.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_5.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_5.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_17 (.A0(csi_hs_sync_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12578), .COUT(n12579), .S0(n150_adj_1653), 
          .S1(n149_adj_1654));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_17.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_17.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_17.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_15 (.A0(csi_hs_sync_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12577), .COUT(n12578), .S0(n152_adj_1651), 
          .S1(n151_adj_1652));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_15.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_15.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_15.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_13 (.A0(csi_hs_sync_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12576), .COUT(n12577), .S0(n154_adj_1649), 
          .S1(n153_adj_1650));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_13.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_13.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_13.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_13.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_3 (.A0(blink_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12523), .COUT(n12524), .S0(n124), .S1(n123));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_3.INIT0 = 16'haaa0;
    defparam blink_cnt_1902_add_4_3.INIT1 = 16'haaa0;
    defparam blink_cnt_1902_add_4_3.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_11 (.A0(csi_hs_sync_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12575), .COUT(n12576), .S0(n156_adj_1647), 
          .S1(n155_adj_1648));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_11.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_11.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_11.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_11.INJECT1_1 = "NO";
    CCU2C add_86_19 (.A0(rst_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12479), .COUT(n12480), .S0(n1178), .S1(n1177));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_19.INIT0 = 16'haaaa;
    defparam add_86_19.INIT1 = 16'haaaa;
    defparam add_86_19.INJECT1_0 = "NO";
    defparam add_86_19.INJECT1_1 = "NO";
    LUT4 i6004_2_lut (.A(n118), .B(n47), .Z(n144_adj_1558)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6004_2_lut.init = 16'h8888;
    CCU2C add_86_17 (.A0(rst_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12478), .COUT(n12479), .S0(n1180), .S1(n1179));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(356[24:38])
    defparam add_86_17.INIT0 = 16'haaaa;
    defparam add_86_17.INIT1 = 16'haaaa;
    defparam add_86_17.INJECT1_0 = "NO";
    defparam add_86_17.INJECT1_1 = "NO";
    CCU2C blink_cnt_1902_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(blink_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12523), .S1(n125));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1902_add_4_1.INIT0 = 16'h0000;
    defparam blink_cnt_1902_add_4_1.INIT1 = 16'h555f;
    defparam blink_cnt_1902_add_4_1.INJECT1_0 = "NO";
    defparam blink_cnt_1902_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1906_add_4_9 (.A0(csi_hs_sync_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12574), .COUT(n12575), .S0(n158_adj_1645), 
          .S1(n157_adj_1646));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_9.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_9.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_9.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_9.INJECT1_1 = "NO";
    LUT4 i6005_2_lut (.A(n119), .B(n47), .Z(n145_adj_1559)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6005_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_7 (.A0(csi_hs_sync_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12573), .COUT(n12574), .S0(n160_adj_1643), 
          .S1(n159_adj_1644));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_7.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_7.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_7.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_7.INJECT1_1 = "NO";
    LUT4 i6006_2_lut (.A(n120), .B(n47), .Z(n146_adj_1560)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6006_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_5 (.A0(csi_hs_sync_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12572), .COUT(n12573), .S0(n162_adj_1641), 
          .S1(n161_adj_1642));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_5.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_5.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_5.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_5.INJECT1_1 = "NO";
    LUT4 i6007_2_lut (.A(n121), .B(n47), .Z(n147_adj_1561)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6007_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_3 (.A0(csi_hs_sync_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12571), .COUT(n12572), .S0(n164_adj_1639), 
          .S1(n163_adj_1640));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_3.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_3.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1906_add_4_3.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_3.INJECT1_1 = "NO";
    LUT4 i6008_2_lut (.A(n122), .B(n47), .Z(n148_adj_1562)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6008_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1906_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_hs_sync_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12571), .S1(n165_adj_1638));   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1906_add_4_1.INIT0 = 16'h0000;
    defparam csi_hs_sync_count_1906_add_4_1.INIT1 = 16'h555f;
    defparam csi_hs_sync_count_1906_add_4_1.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1906_add_4_1.INJECT1_1 = "NO";
    LUT4 i6009_2_lut (.A(n123), .B(n47), .Z(n149_adj_1563)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6009_2_lut.init = 16'h8888;
    LUT4 i6010_2_lut (.A(n124), .B(n47), .Z(n150_adj_1564)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6010_2_lut.init = 16'h8888;
    LUT4 i6143_2_lut (.A(n125), .B(n47), .Z(n151_adj_1565)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i6143_2_lut.init = 16'h8888;
    PFUMX i13144 (.BLUT(n4299), .ALUT(n4305), .C0(n16727), .Z(n16649));
    LUT4 sys_rstn_I_0_2_lut_rep_340 (.A(sys_rstn_c), .B(rst_n_pulse), .Z(n17917)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(39[21:43])
    defparam sys_rstn_I_0_2_lut_rep_340.init = 16'h8888;
    LUT4 i13499_3_lut (.A(xshutdn_r), .B(n15066), .C(cam_ready), .Z(sys_clk_c_enable_100)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(90[14] 97[12])
    defparam i13499_3_lut.init = 16'h0808;
    LUT4 i1_4_lut_adj_222 (.A(n16413), .B(n16529), .C(n16497), .D(n15999), 
         .Z(n15066)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_222.init = 16'hff7f;
    LUT4 i12911_2_lut (.A(cam_cnt[18]), .B(cam_cnt[2]), .Z(n16413)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12911_2_lut.init = 16'h8888;
    LUT4 i13027_4_lut (.A(cam_cnt[3]), .B(n16419), .C(n16417), .D(cam_cnt[19]), 
         .Z(n16529)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13027_4_lut.init = 16'h8000;
    LUT4 i12995_4_lut (.A(cam_cnt[0]), .B(cam_cnt[9]), .C(cam_cnt[4]), 
         .D(cam_cnt[16]), .Z(n16497)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12995_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_223 (.A(cam_cnt[8]), .B(n15997), .C(n15991), .D(cam_cnt[12]), 
         .Z(n15999)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_223.init = 16'hfffe;
    LUT4 i12917_2_lut (.A(cam_cnt[5]), .B(cam_cnt[17]), .Z(n16419)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12917_2_lut.init = 16'h8888;
    LUT4 i12915_2_lut (.A(cam_cnt[1]), .B(cam_cnt[14]), .Z(n16417)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12915_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_224 (.A(cam_cnt[11]), .B(cam_cnt[10]), .C(cam_cnt[6]), 
         .D(cam_cnt[15]), .Z(n15997)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_224.init = 16'hfffe;
    LUT4 i1_2_lut_adj_225 (.A(cam_cnt[7]), .B(cam_cnt[13]), .Z(n15991)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_225.init = 16'heeee;
    LUT4 sys_rst_n_I_0_1_lut_2_lut (.A(sys_rstn_c), .B(rst_n_pulse), .Z(sys_rst_n_N_472)) /* synthesis lut_function=(!(A (B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(39[21:43])
    defparam sys_rst_n_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_adj_226 (.A(blink_cnt[18]), .B(blink_cnt[22]), .Z(n16103)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_2_lut_adj_226.init = 16'heeee;
    LUT4 i1_4_lut_adj_227 (.A(n16391), .B(n16031), .C(n16025), .D(n16029), 
         .Z(n16051)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_227.init = 16'hfffd;
    LUT4 i13025_4_lut (.A(xshutdn_cnt[15]), .B(n16397), .C(n16395), .D(xshutdn_cnt[3]), 
         .Z(n16527)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13025_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_228 (.A(xshutdn_cnt[13]), .B(n16389), .C(n16027), 
         .D(xshutdn_cnt[14]), .Z(n16055)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_228.init = 16'hfff7;
    LUT4 i12889_2_lut (.A(xshutdn_cnt[17]), .B(xshutdn_cnt[8]), .Z(n16391)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12889_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_229 (.A(xshutdn_cnt[19]), .B(xshutdn_cnt[12]), .Z(n16031)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_229.init = 16'heeee;
    LUT4 i1_2_lut_adj_230 (.A(xshutdn_cnt[5]), .B(xshutdn_cnt[10]), .Z(n16025)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_230.init = 16'heeee;
    LUT4 i6169_2_lut (.A(n1180), .B(rst_cnt_25__N_445), .Z(n7400)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6169_2_lut.init = 16'h2222;
    LUT4 i6167_2_lut (.A(n1179), .B(rst_cnt_25__N_445), .Z(n7398)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6167_2_lut.init = 16'h2222;
    LUT4 i13145_3_lut (.A(cam_ready), .B(n15066), .Z(n16650)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i13145_3_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_231 (.A(xshutdn_cnt[7]), .B(xshutdn_cnt[9]), .Z(n16029)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_231.init = 16'heeee;
    LUT4 i6164_2_lut (.A(n1178), .B(rst_cnt_25__N_445), .Z(n7396)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6164_2_lut.init = 16'h2222;
    LUT4 i12895_2_lut (.A(xshutdn_cnt[1]), .B(xshutdn_cnt[4]), .Z(n16397)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12895_2_lut.init = 16'h8888;
    LUT4 i12893_2_lut (.A(xshutdn_cnt[16]), .B(xshutdn_cnt[18]), .Z(n16395)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12893_2_lut.init = 16'h8888;
    LUT4 i6162_2_lut (.A(n1177), .B(rst_cnt_25__N_445), .Z(n7394)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6162_2_lut.init = 16'h2222;
    LUT4 i12887_2_lut (.A(xshutdn_cnt[0]), .B(xshutdn_cnt[2]), .Z(n16389)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12887_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_232 (.A(xshutdn_cnt[6]), .B(xshutdn_cnt[11]), .Z(n16027)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_232.init = 16'heeee;
    LUT4 i5988_2_lut (.A(n102), .B(n47), .Z(n128)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(58[22:38])
    defparam i5988_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_233 (.A(n16487), .B(n16525), .C(n15037), .D(n16489), 
         .Z(n47)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_233.init = 16'hf7ff;
    LUT4 i12985_4_lut (.A(blink_cnt[6]), .B(blink_cnt[10]), .C(blink_cnt[19]), 
         .D(blink_cnt[4]), .Z(n16487)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12985_4_lut.init = 16'h8000;
    LUT4 i13023_4_lut (.A(blink_cnt[12]), .B(n16363), .C(blink_cnt[9]), 
         .D(blink_cnt[5]), .Z(n16525)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13023_4_lut.init = 16'h8000;
    LUT4 i6161_2_lut (.A(n1176), .B(rst_cnt_25__N_445), .Z(n7392)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6161_2_lut.init = 16'h2222;
    LUT4 i6160_2_lut (.A(n1175), .B(rst_cnt_25__N_445), .Z(n7390)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6160_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_234 (.A(blink_cnt[20]), .B(n16117), .C(n16111), 
         .D(n16109), .Z(n15037)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_4_lut_adj_234.init = 16'hfffd;
    LUT4 i6159_2_lut (.A(n1174), .B(rst_cnt_25__N_445), .Z(n7388)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6159_2_lut.init = 16'h2222;
    LUT4 i6158_2_lut (.A(n1173), .B(rst_cnt_25__N_445), .Z(n7386)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6158_2_lut.init = 16'h2222;
    LUT4 i12987_4_lut (.A(blink_cnt[3]), .B(blink_cnt[23]), .C(blink_cnt[2]), 
         .D(blink_cnt[0]), .Z(n16489)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12987_4_lut.init = 16'h8000;
    LUT4 i6156_2_lut (.A(n1172), .B(rst_cnt_25__N_445), .Z(n7384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6156_2_lut.init = 16'h2222;
    LUT4 i6155_2_lut (.A(n1171), .B(rst_cnt_25__N_445), .Z(n7382)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6155_2_lut.init = 16'h2222;
    LUT4 i12861_2_lut (.A(blink_cnt[1]), .B(blink_cnt[15]), .Z(n16363)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12861_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_235 (.A(blink_cnt[7]), .B(n16105), .C(n16103), .D(blink_cnt[21]), 
         .Z(n16117)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_4_lut_adj_235.init = 16'hfffe;
    VLO i1 (.Z(GND_net));
    \top_iic(IIC_CLK=26'b011000011010100000)  u_top_iic (.sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .reg_index({reg_index}), 
            .flag_done(flag_done), .GND_net(GND_net), .VCC_net(VCC_net), 
            .\reg_cfg[1] (reg_cfg[1]), .cam_ready(cam_ready), .\reg_cfg[3] (reg_cfg[3]), 
            .\reg_cfg[7] (reg_cfg[7]), .led_c_1(led_c_1), .\reg_cfg[19] (reg_cfg[19]), 
            .\reg_cfg[2] (reg_cfg[2]), .\reg_cfg[0] (reg_cfg[0]), .\reg_cfg[17] (reg_cfg[17]), 
            .\reg_cfg[12] (reg_cfg[12]), .\reg_cfg[10] (reg_cfg[10]), .\reg_cfg[8] (reg_cfg[8]), 
            .\reg_cfg[6] (reg_cfg[6]), .\reg_cfg[5] (reg_cfg[5]), .\reg_cfg[4] (reg_cfg[4]), 
            .\reg_cfg[15] (reg_cfg[15]), .\reg_cfg[16] (reg_cfg[16]), .\reg_cfg[18] (reg_cfg[18]), 
            .sda_transmit(sda_transmit), .n16648(n16648), .drive_clk_enable_4(drive_clk_enable_4), 
            .n16649(n16649), .n17894(n17894), .n17876(n17876), .i2c_sclk_0_c(i2c_sclk_0_c), 
            .\next_state[6] (next_state[6]), .n17889(n17889), .n16727(n16727), 
            .n17883(n17883), .n6005(n6005), .n4304({n4305}), .n4298({n4299}), 
            .n17913(n17913), .i2c_sda_0_out(i2c_sda_0_out), .n4373(n4373)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(111[3] 123[2])
    LUT4 i1_2_lut_adj_236 (.A(blink_cnt[11]), .B(blink_cnt[17]), .Z(n16111)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_2_lut_adj_236.init = 16'heeee;
    LUT4 i1_2_lut_adj_237 (.A(blink_cnt[13]), .B(blink_cnt[16]), .Z(n16109)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_2_lut_adj_237.init = 16'heeee;
    LUT4 i6154_2_lut (.A(n1170), .B(rst_cnt_25__N_445), .Z(n7380)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i6154_2_lut.init = 16'h2222;
    LUT4 i5938_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(n5323)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(347[10] 358[8])
    defparam i5938_2_lut.init = 16'h2222;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_2_lut_adj_238 (.A(blink_cnt[14]), .B(blink_cnt[8]), .Z(n16105)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(53[14:38])
    defparam i1_2_lut_adj_238.init = 16'heeee;
    uart_rx u_uart_rx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .rx_data({rx_data}), .rx_flag(rx_flag), .uart_rxd_c(uart_rxd_c), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(333[3] 339[2])
    uart_send_ctrl u_send_ctrl (.sec_tick(sec_tick), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .work_en_N_1382(work_en_N_1382), 
            .\tx_data[0] (tx_data[0]), .tx_state({tx_state}), .sys_clk_c_enable_149(sys_clk_c_enable_149), 
            .tx_state_1__N_1163({Open_0, tx_state_1__N_1163[0]}), .tx_phase({tx_phase}), 
            .sys_clk_c_enable_148(sys_clk_c_enable_148), .sys_clk_c_enable_147(sys_clk_c_enable_147), 
            .sys_clk_c_enable_145(sys_clk_c_enable_145), .sys_clk_c_enable_139(sys_clk_c_enable_139), 
            .digits_left({Open_1, Open_2, Open_3, digits_left[0]}), 
            .sys_clk_c_enable_106(sys_clk_c_enable_106), .csi_long_packet_count_sys({csi_long_packet_count_sys}), 
            .csi_payload_byte_count_sys({csi_payload_byte_count_sys}), .csi_byte_clk_count_sys({csi_byte_clk_count_sys}), 
            .csi_hs_sync_count_sys({csi_hs_sync_count_sys}), .n17896(n17896), 
            .n5216(n5216), .csi_last_wc_sys({csi_last_wc_sys}), .\digits_left[1] (digits_left[1]), 
            .VCC_net(VCC_net), .csi_last_dt_sys({csi_last_dt_sys}), .\tx_data[6] (tx_data[6]), 
            .\tx_data[5] (tx_data[5]), .\tx_data[4] (tx_data[4]), .\tx_data[3] (tx_data[3]), 
            .\tx_data[2] (tx_data[2]), .\tx_data[1] (tx_data[1]), .GND_net(GND_net), 
            .n7092(n7092), .n6145(n6145), .n17911(n17911), .n15851(n15851), 
            .n17943(n17943)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(302[16] 316[2])
    csi2dsi u_csi2dsi (.csi_clk_byte_hs(csi_clk_byte_hs), .\reset_byte_fr_sync[1] (reset_byte_fr_sync[1]), 
            .VCC_net(VCC_net), .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), 
            .csi_wc({csi_wc}), .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), 
            .n17917(n17917), .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), 
            .csi_lp_en_c(csi_lp_en_c), .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (reset_byte_sync[1]), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(247[9] 293[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (sys_clk_c, sys_rst_n_N_472, tx_state, n5216, sys_clk_c_enable_139, 
            \tx_data[4] , GND_net, VCC_net, \tx_data[5] , \tx_data[6] , 
            tx_phase, n17911, n6145, uart_txd_c, \tx_data[0] , \tx_data[1] , 
            work_en_N_1382, n17896, \tx_data[2] , \tx_data[3] , n17943, 
            sys_clk_c_enable_147, sec_tick, sys_clk_c_enable_145, sys_clk_c_enable_106, 
            n7092, sys_clk_c_enable_149, \tx_state_1__N_1163[0] , sys_clk_c_enable_148, 
            n15851, \digits_left[0] , \digits_left[1] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    input [1:0]tx_state;
    output n5216;
    output sys_clk_c_enable_139;
    input \tx_data[4] ;
    input GND_net;
    input VCC_net;
    input \tx_data[5] ;
    input \tx_data[6] ;
    input [2:0]tx_phase;
    output n17911;
    output n6145;
    output uart_txd_c;
    input \tx_data[0] ;
    input \tx_data[1] ;
    input work_en_N_1382;
    output n17896;
    input \tx_data[2] ;
    input \tx_data[3] ;
    output n17943;
    output sys_clk_c_enable_147;
    input sec_tick;
    output sys_clk_c_enable_145;
    output sys_clk_c_enable_106;
    output n7092;
    output sys_clk_c_enable_149;
    output \tx_state_1__N_1163[0] ;
    output sys_clk_c_enable_148;
    input n15851;
    input \digits_left[0] ;
    input \digits_left[1] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire bit_flag, bit_flag_N_1392, uart_busy, n7261;
    wire [12:0]baud_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(19[12:20])
    wire [12:0]n41;
    wire [15:0]n2329;
    
    wire sys_clk_c_enable_192;
    wire [15:0]n2364;
    
    wire n17912, n7348, n7346, n7344, n7342, n7340, n7338, n7336, 
        n7334, work_en_N_1385, n7332, n7330, n7328, n5863, n5864, 
        n12489;
    wire [12:0]n18;
    
    wire n7326, n6200, n12488, n13941, n16251, n16079, n16085, 
        n16081, n16493, n12487, n7324, tx_N_1391;
    wire [0:0]n3346;
    
    wire n12486, n12485, n7322, n7320, n12484, n17885, n16749, 
        n16758, n6201, n79, n16249, n16247, n6199, n15751, n15035;
    
    FD1S3DX bit_flag_47 (.D(bit_flag_N_1392), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[10] 50[26])
    defparam bit_flag_47.GSR = "ENABLED";
    FD1S3DX work_en_45 (.D(n7261), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam work_en_45.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n41[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    FD1P3BX bit_cnt_FSM_i0 (.D(n2364[0]), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(n2329[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i5061_4_lut (.A(n17912), .B(tx_state[0]), .C(tx_state[1]), .D(n5216), 
         .Z(sys_clk_c_enable_139)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(53[12:20])
    defparam i5061_4_lut.init = 16'hca0a;
    FD1P3DX bit_cnt_FSM_i1 (.D(n7348), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[1]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i1.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i2 (.D(n7346), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i2.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i3 (.D(n7344), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[3]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i3.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i4 (.D(n7342), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i5 (.D(n7340), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[5]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i6 (.D(n7338), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i7 (.D(n7336), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[7]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i8 (.D(n7334), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i9 (.D(n7332), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(work_en_N_1385));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i10 (.D(n7330), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i11 (.D(n7328), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[11]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i11.GSR = "ENABLED";
    LUT4 i2509_3_lut (.A(n5863), .B(\tx_data[4] ), .C(n2329[5]), .Z(n5864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2509_3_lut.init = 16'hcaca;
    CCU2C add_18_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12489), .S0(n18[11]), .S1(n18[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_13.INIT0 = 16'haaaa;
    defparam add_18_13.INIT1 = 16'haaaa;
    defparam add_18_13.INJECT1_0 = "NO";
    defparam add_18_13.INJECT1_1 = "NO";
    FD1S3DX baud_cnt__i12 (.D(n41[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n41[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n41[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n41[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n41[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n41[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n41[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n41[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n41[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n41[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n41[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n41[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i12 (.D(n7326), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i12.GSR = "ENABLED";
    LUT4 i2841_3_lut (.A(\tx_data[5] ), .B(\tx_data[6] ), .C(n2329[7]), 
         .Z(n6200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2841_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(tx_phase[1]), .B(tx_phase[2]), .C(n17911), .D(tx_phase[0]), 
         .Z(n6145)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(54[12:20])
    defparam i1_4_lut.init = 16'heccc;
    LUT4 i6026_2_lut (.A(work_en_N_1385), .B(bit_flag), .Z(n7330)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6026_2_lut.init = 16'h2222;
    CCU2C add_18_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12488), .COUT(n12489), .S0(n18[9]), .S1(n18[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_11.INIT0 = 16'haaaa;
    defparam add_18_11.INIT1 = 16'haaaa;
    defparam add_18_11.INJECT1_0 = "NO";
    defparam add_18_11.INJECT1_1 = "NO";
    LUT4 i13522_4_lut (.A(baud_cnt[5]), .B(n13941), .C(n16251), .D(baud_cnt[4]), 
         .Z(bit_flag_N_1392)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i13522_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(baud_cnt[7]), .B(baud_cnt[8]), .Z(n16251)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_201 (.A(n16079), .B(baud_cnt[0]), .C(n16085), .D(n16081), 
         .Z(n13941)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i1_4_lut_adj_201.init = 16'hfffb;
    LUT4 i1_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[0]), 
         .Z(n41[0])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut.init = 16'ha200;
    LUT4 i6250_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[12]), 
         .Z(n41[12])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6250_2_lut_4_lut.init = 16'ha200;
    LUT4 i6251_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[11]), 
         .Z(n41[11])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6251_2_lut_4_lut.init = 16'ha200;
    LUT4 i6252_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[10]), 
         .Z(n41[10])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6252_2_lut_4_lut.init = 16'ha200;
    LUT4 i1_2_lut_adj_202 (.A(baud_cnt[10]), .B(baud_cnt[12]), .Z(n16079)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i1_2_lut_adj_202.init = 16'heeee;
    LUT4 i6253_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[9]), 
         .Z(n41[9])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6253_2_lut_4_lut.init = 16'ha200;
    LUT4 i6254_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[8]), 
         .Z(n41[8])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6254_2_lut_4_lut.init = 16'ha200;
    LUT4 i6255_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[7]), 
         .Z(n41[7])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6255_2_lut_4_lut.init = 16'ha200;
    LUT4 i6636_2_lut_4_lut (.A(uart_busy), .B(n16493), .C(n13941), .D(n18[6]), 
         .Z(n41[6])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i6636_2_lut_4_lut.init = 16'ha200;
    LUT4 i1_4_lut_adj_203 (.A(baud_cnt[6]), .B(baud_cnt[1]), .C(baud_cnt[2]), 
         .D(baud_cnt[3]), .Z(n16085)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i1_4_lut_adj_203.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_204 (.A(uart_busy), .B(n16493), .C(n13941), 
         .D(n18[5]), .Z(n41[5])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut_adj_204.init = 16'ha200;
    LUT4 i1_2_lut_4_lut_adj_205 (.A(uart_busy), .B(n16493), .C(n13941), 
         .D(n18[4]), .Z(n41[4])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut_adj_205.init = 16'ha200;
    LUT4 i1_2_lut_adj_206 (.A(baud_cnt[11]), .B(baud_cnt[9]), .Z(n16081)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[13:30])
    defparam i1_2_lut_adj_206.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_207 (.A(uart_busy), .B(n16493), .C(n13941), 
         .D(n18[3]), .Z(n41[3])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut_adj_207.init = 16'ha200;
    LUT4 i1_2_lut_4_lut_adj_208 (.A(uart_busy), .B(n16493), .C(n13941), 
         .D(n18[2]), .Z(n41[2])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut_adj_208.init = 16'ha200;
    LUT4 i1_2_lut_4_lut_adj_209 (.A(uart_busy), .B(n16493), .C(n13941), 
         .D(n18[1]), .Z(n41[1])) /* synthesis lut_function=(A (B (C (D))+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_4_lut_adj_209.init = 16'ha200;
    CCU2C add_18_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12487), .COUT(n12488), .S0(n18[7]), .S1(n18[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_9.INIT0 = 16'haaaa;
    defparam add_18_9.INIT1 = 16'haaaa;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i13 (.D(n7324), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[13]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3BX tx_50 (.D(tx_N_1391), .SP(bit_flag), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(67[10] 80[16])
    defparam tx_50.GSR = "ENABLED";
    LUT4 mux_653_i1_3_lut (.A(\tx_data[0] ), .B(\tx_data[1] ), .C(n2329[2]), 
         .Z(n3346[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam mux_653_i1_3_lut.init = 16'hcaca;
    CCU2C add_18_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12486), .COUT(n12487), .S0(n18[5]), .S1(n18[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_7.INIT0 = 16'haaaa;
    defparam add_18_7.INIT1 = 16'haaaa;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    CCU2C add_18_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12485), .COUT(n12486), .S0(n18[3]), .S1(n18[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_5.INIT0 = 16'haaaa;
    defparam add_18_5.INIT1 = 16'haaaa;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i14 (.D(n7322), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[14]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i15 (.D(n7320), .SP(sys_clk_c_enable_192), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2329[15]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i12991_4_lut (.A(baud_cnt[4]), .B(baud_cnt[8]), .C(baud_cnt[7]), 
         .D(baud_cnt[5]), .Z(n16493)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12991_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_334 (.A(uart_busy), .B(tx_state[0]), .Z(n17911)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_334.init = 16'h4444;
    LUT4 i6011_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[14]), 
         .Z(n7320)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6011_2_lut_3_lut.init = 16'h7070;
    LUT4 i6022_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[13]), 
         .Z(n7322)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6022_2_lut_3_lut.init = 16'h7070;
    LUT4 i3896_3_lut_4_lut (.A(bit_flag), .B(work_en_N_1385), .C(uart_busy), 
         .D(work_en_N_1382), .Z(n7261)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i3896_3_lut_4_lut.init = 16'hff70;
    CCU2C add_18_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12484), .COUT(n12485), .S0(n18[1]), .S1(n18[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_3.INIT0 = 16'haaaa;
    defparam add_18_3.INIT1 = 16'haaaa;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    LUT4 i5977_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[15]), 
         .Z(n2364[0])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i5977_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6023_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[12]), 
         .Z(n7324)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6023_2_lut_3_lut.init = 16'h7070;
    LUT4 i6035_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[0]), 
         .Z(n7348)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6035_2_lut_3_lut.init = 16'h7070;
    LUT4 i6024_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[11]), 
         .Z(n7326)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6024_2_lut_3_lut.init = 16'h7070;
    LUT4 i6034_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[1]), 
         .Z(n7346)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6034_2_lut_3_lut.init = 16'h7070;
    LUT4 i6025_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[10]), 
         .Z(n7328)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6025_2_lut_3_lut.init = 16'h7070;
    LUT4 i6033_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[2]), 
         .Z(n7344)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6033_2_lut_3_lut.init = 16'h7070;
    LUT4 i6027_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[8]), 
         .Z(n7332)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6027_2_lut_3_lut.init = 16'h7070;
    LUT4 i6032_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[3]), 
         .Z(n7342)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6032_2_lut_3_lut.init = 16'h7070;
    LUT4 i6028_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[7]), 
         .Z(n7334)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6028_2_lut_3_lut.init = 16'h7070;
    LUT4 i6031_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[4]), 
         .Z(n7340)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6031_2_lut_3_lut.init = 16'h7070;
    LUT4 i6029_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[6]), 
         .Z(n7336)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6029_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_308_3_lut_4_lut (.A(uart_busy), .B(tx_state[0]), .C(tx_phase[2]), 
         .D(tx_state[1]), .Z(n17885)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_308_3_lut_4_lut.init = 16'h0400;
    LUT4 i6030_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1385), .C(n2329[5]), 
         .Z(n7338)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:52])
    defparam i6030_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_rep_319_3_lut (.A(uart_busy), .B(tx_state[0]), .C(tx_state[1]), 
         .Z(n17896)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_rep_319_3_lut.init = 16'h4040;
    LUT4 i2508_3_lut (.A(\tx_data[2] ), .B(\tx_data[3] ), .C(n2329[4]), 
         .Z(n5863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2508_3_lut.init = 16'hcaca;
    LUT4 i13531_4_lut_4_lut (.A(n2329[6]), .B(n16749), .C(n2329[5]), .D(n2329[7]), 
         .Z(n16758)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i13531_4_lut_4_lut.init = 16'hffae;
    LUT4 i13343_4_lut_4_lut_4_lut (.A(n2329[7]), .B(n3346[0]), .C(n6200), 
         .D(n2329[6]), .Z(n6201)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i13343_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 i13244_2_lut (.A(n2329[4]), .B(n2329[3]), .Z(n16749)) /* synthesis lut_function=(!(A+(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i13244_2_lut.init = 16'h1111;
    LUT4 i10781_2_lut_rep_366 (.A(tx_phase[2]), .B(tx_phase[0]), .Z(n17943)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10781_2_lut_rep_366.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(tx_phase[2]), .B(tx_phase[0]), .C(uart_busy), 
         .D(n79), .Z(n5216)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0100;
    CCU2C add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12484), .S1(n18[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_1.INIT0 = 16'h0000;
    defparam add_18_1.INIT1 = 16'h555a;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(uart_busy), .B(tx_state[0]), .C(tx_phase[2]), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_147)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_rep_335 (.A(tx_state[0]), .B(uart_busy), .C(sec_tick), 
         .Z(n17912)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(300[13:22])
    defparam i1_3_lut_rep_335.init = 16'h1010;
    LUT4 i1_2_lut_rep_318_4_lut (.A(tx_state[0]), .B(uart_busy), .C(sec_tick), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_145)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(300[13:22])
    defparam i1_2_lut_rep_318_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_3_lut_4_lut (.A(tx_state[0]), .B(uart_busy), .C(sec_tick), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_106)) /* synthesis lut_function=(A (D)+!A !(B+((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(300[13:22])
    defparam i1_3_lut_3_lut_4_lut.init = 16'haa10;
    LUT4 i1_2_lut_4_lut_adj_210 (.A(tx_state[0]), .B(uart_busy), .C(sec_tick), 
         .D(tx_phase[2]), .Z(n7092)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(300[13:22])
    defparam i1_2_lut_4_lut_adj_210.init = 16'hef00;
    LUT4 i13541_4_lut (.A(tx_state[0]), .B(tx_state[1]), .C(sec_tick), 
         .D(uart_busy), .Z(sys_clk_c_enable_149)) /* synthesis lut_function=(!(A (B (D))+!A !(B (D)+!B !((D)+!C)))) */ ;
    defparam i13541_4_lut.init = 16'h66ba;
    LUT4 i6109_3_lut (.A(bit_flag), .B(uart_busy), .C(work_en_N_1385), 
         .Z(sys_clk_c_enable_192)) /* synthesis lut_function=(A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6109_3_lut.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_211 (.A(n16249), .B(tx_state[0]), .C(n16247), .D(tx_phase[2]), 
         .Z(\tx_state_1__N_1163[0] )) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(53[12:20])
    defparam i1_4_lut_adj_211.init = 16'hb3bb;
    LUT4 i1_2_lut_adj_212 (.A(uart_busy), .B(tx_state[1]), .Z(n16249)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(54[12:20])
    defparam i1_2_lut_adj_212.init = 16'h4444;
    LUT4 i1_2_lut_adj_213 (.A(tx_phase[0]), .B(tx_phase[1]), .Z(n16247)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(54[12:20])
    defparam i1_2_lut_adj_213.init = 16'heeee;
    LUT4 i1_4_lut_adj_214 (.A(tx_phase[0]), .B(sys_clk_c_enable_145), .C(n17885), 
         .D(n79), .Z(sys_clk_c_enable_148)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_214.init = 16'hecfc;
    PFUMX i2840 (.BLUT(n5864), .ALUT(n6201), .C0(n16758), .Z(n6199));
    LUT4 i6291_4_lut (.A(n15751), .B(n2329[0]), .C(n6199), .D(n2329[8]), 
         .Z(tx_N_1391)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i6291_4_lut.init = 16'h2232;
    LUT4 i1_4_lut_adj_215 (.A(tx_phase[1]), .B(n15851), .C(\digits_left[0] ), 
         .D(\digits_left[1] ), .Z(n79)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_215.init = 16'haa8a;
    LUT4 i1_4_lut_adj_216 (.A(n15035), .B(n2329[10]), .C(work_en_N_1385), 
         .D(n2329[15]), .Z(n15751)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i1_4_lut_adj_216.init = 16'hfffe;
    LUT4 i3_4_lut (.A(n2329[12]), .B(n2329[11]), .C(n2329[13]), .D(n2329[14]), 
         .Z(n15035)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i3_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module \top_iic(IIC_CLK=26'b011000011010100000) 
//

module \top_iic(IIC_CLK=26'b011000011010100000)  (sys_clk_c, sys_rst_n_N_472, 
            reg_index, flag_done, GND_net, VCC_net, \reg_cfg[1] , 
            cam_ready, \reg_cfg[3] , \reg_cfg[7] , led_c_1, \reg_cfg[19] , 
            \reg_cfg[2] , \reg_cfg[0] , \reg_cfg[17] , \reg_cfg[12] , 
            \reg_cfg[10] , \reg_cfg[8] , \reg_cfg[6] , \reg_cfg[5] , 
            \reg_cfg[4] , \reg_cfg[15] , \reg_cfg[16] , \reg_cfg[18] , 
            sda_transmit, n16648, drive_clk_enable_4, n16649, n17894, 
            n17876, i2c_sclk_0_c, \next_state[6] , n17889, n16727, 
            n17883, n6005, n4304, n4298, n17913, i2c_sda_0_out, 
            n4373) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]reg_index;
    output flag_done;
    input GND_net;
    input VCC_net;
    input \reg_cfg[1] ;
    input cam_ready;
    input \reg_cfg[3] ;
    input \reg_cfg[7] ;
    output led_c_1;
    input \reg_cfg[19] ;
    input \reg_cfg[2] ;
    input \reg_cfg[0] ;
    input \reg_cfg[17] ;
    input \reg_cfg[12] ;
    input \reg_cfg[10] ;
    input \reg_cfg[8] ;
    input \reg_cfg[6] ;
    input \reg_cfg[5] ;
    input \reg_cfg[4] ;
    input \reg_cfg[15] ;
    input \reg_cfg[16] ;
    input \reg_cfg[18] ;
    output sda_transmit;
    input n16648;
    output drive_clk_enable_4;
    input n16649;
    output n17894;
    output n17876;
    output i2c_sclk_0_c;
    output \next_state[6] ;
    output n17889;
    output n16727;
    output n17883;
    output n6005;
    output [0:0]n4304;
    output [0:0]n4298;
    output n17913;
    input i2c_sda_0_out;
    input n4373;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [15:0]addr;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/top_iic.v(27[17:21])
    
    wire ctrl_w0_r1;
    wire [3:0]rd_byte_num;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/top_iic.v(16[19:30])
    
    wire start;
    wire [7:0]n5567;
    wire [9:0]current_state;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n17752, n17758, n17761, n17779, n17598;
    wire [9:0]next_state_9__N_967;
    wire [9:0]n4383;
    
    wire n17605;
    wire [9:0]next_state_9__N_917;
    wire [9:0]next_state;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n19, n26;
    
    ov9734_ctrl inst_ov9734_ctrl (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .reg_index({reg_index}), .addr({addr}), .ctrl_w0_r1(ctrl_w0_r1), 
            .\rd_byte_num[0] (rd_byte_num[0]), .flag_done(flag_done), .start(start), 
            .GND_net(GND_net), .VCC_net(VCC_net), .n5567({n5567}), .\reg_cfg[1] (\reg_cfg[1] ), 
            .\rd_byte_num[1] (rd_byte_num[1]), .cam_ready(cam_ready), .\reg_cfg[3] (\reg_cfg[3] ), 
            .\reg_cfg[7] (\reg_cfg[7] ), .led_c_1(led_c_1), .\current_state[5] (current_state[5]), 
            .n17752(n17752), .\current_state[4] (current_state[4]), .n17758(n17758), 
            .\current_state[3] (current_state[3]), .n17761(n17761), .\current_state[2] (current_state[2]), 
            .n17779(n17779), .\current_state[9] (current_state[9]), .n17598(n17598), 
            .\next_state_9__N_967[7] (next_state_9__N_967[7]), .\current_state[0] (current_state[0]), 
            .\current_state[7] (current_state[7]), .n4386(n4383[7]), .\current_state[8] (current_state[8]), 
            .n17605(n17605), .\current_state[6] (current_state[6]), .\next_state_9__N_917[6] (next_state_9__N_917[6]), 
            .\next_state[0] (next_state[0]), .n19(n19), .n26(n26), .\reg_cfg[19] (\reg_cfg[19] ), 
            .\reg_cfg[2] (\reg_cfg[2] ), .\reg_cfg[0] (\reg_cfg[0] ), .\reg_cfg[17] (\reg_cfg[17] ), 
            .\reg_cfg[12] (\reg_cfg[12] ), .\reg_cfg[10] (\reg_cfg[10] ), 
            .\reg_cfg[8] (\reg_cfg[8] ), .\reg_cfg[6] (\reg_cfg[6] ), .\reg_cfg[5] (\reg_cfg[5] ), 
            .\reg_cfg[4] (\reg_cfg[4] ), .\reg_cfg[15] (\reg_cfg[15] ), 
            .\reg_cfg[16] (\reg_cfg[16] ), .\reg_cfg[18] (\reg_cfg[18] )) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/top_iic.v(36[17] 56[6])
    \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100)  inst_i2c_drive (.current_state({Open_4, 
            Open_5, current_state[7], Open_6, current_state[5], Open_7, 
            Open_8, Open_9, Open_10, Open_11}), .\current_state[4] (current_state[4]), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), .\current_state[0] (current_state[0]), 
            .next_state({Open_12, Open_13, Open_14, Open_15, Open_16, 
            Open_17, Open_18, Open_19, Open_20, next_state[0]}), .sda_transmit(sda_transmit), 
            .flag_done(flag_done), .n16648(n16648), .drive_clk_enable_4(drive_clk_enable_4), 
            .n16649(n16649), .\current_state[2] (current_state[2]), .\rd_byte_num[1] (rd_byte_num[1]), 
            .\rd_byte_num[0] (rd_byte_num[0]), .\current_state[3] (current_state[3]), 
            .\current_state[6] (current_state[6]), .n17894(n17894), .n17876(n17876), 
            .i2c_sclk_0_c(i2c_sclk_0_c), .\next_state[6] (\next_state[6] ), 
            .\current_state[9] (current_state[9]), .\current_state[8] (current_state[8]), 
            .addr({addr}), .start(start), .n17889(n17889), .n16727(n16727), 
            .n17883(n17883), .n5567({n5567}), .n19(n19), .n17779(n17779), 
            .n17761(n17761), .n17758(n17758), .ctrl_w0_r1(ctrl_w0_r1), 
            .n17752(n17752), .GND_net(GND_net), .VCC_net(VCC_net), .n6005(n6005), 
            .\next_state_9__N_967[7] (next_state_9__N_967[7]), .n26(n26), 
            .n4386(n4383[7]), .n4304({n4304}), .n4298({n4298}), .n17913(n17913), 
            .i2c_sda_0_out(i2c_sda_0_out), .n17598(n17598), .n4373(n4373), 
            .n17605(n17605), .\next_state_9__N_917[6] (next_state_9__N_917[6])) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/top_iic.v(64[7] 78[6])
    
endmodule
//
// Verilog Description of module ov9734_ctrl
//

module ov9734_ctrl (sys_clk_c, sys_rst_n_N_472, reg_index, addr, ctrl_w0_r1, 
            \rd_byte_num[0] , flag_done, start, GND_net, VCC_net, 
            n5567, \reg_cfg[1] , \rd_byte_num[1] , cam_ready, \reg_cfg[3] , 
            \reg_cfg[7] , led_c_1, \current_state[5] , n17752, \current_state[4] , 
            n17758, \current_state[3] , n17761, \current_state[2] , 
            n17779, \current_state[9] , n17598, \next_state_9__N_967[7] , 
            \current_state[0] , \current_state[7] , n4386, \current_state[8] , 
            n17605, \current_state[6] , \next_state_9__N_917[6] , \next_state[0] , 
            n19, n26, \reg_cfg[19] , \reg_cfg[2] , \reg_cfg[0] , \reg_cfg[17] , 
            \reg_cfg[12] , \reg_cfg[10] , \reg_cfg[8] , \reg_cfg[6] , 
            \reg_cfg[5] , \reg_cfg[4] , \reg_cfg[15] , \reg_cfg[16] , 
            \reg_cfg[18] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]reg_index;
    output [15:0]addr;
    output ctrl_w0_r1;
    output \rd_byte_num[0] ;
    input flag_done;
    output start;
    input GND_net;
    input VCC_net;
    output [7:0]n5567;
    input \reg_cfg[1] ;
    output \rd_byte_num[1] ;
    input cam_ready;
    input \reg_cfg[3] ;
    input \reg_cfg[7] ;
    output led_c_1;
    input \current_state[5] ;
    output n17752;
    input \current_state[4] ;
    output n17758;
    input \current_state[3] ;
    output n17761;
    input \current_state[2] ;
    output n17779;
    input \current_state[9] ;
    output n17598;
    input \next_state_9__N_967[7] ;
    input \current_state[0] ;
    input \current_state[7] ;
    output n4386;
    input \current_state[8] ;
    output n17605;
    input \current_state[6] ;
    output \next_state_9__N_917[6] ;
    input \next_state[0] ;
    input n19;
    output n26;
    input \reg_cfg[19] ;
    input \reg_cfg[2] ;
    input \reg_cfg[0] ;
    input \reg_cfg[17] ;
    input \reg_cfg[12] ;
    input \reg_cfg[10] ;
    input \reg_cfg[8] ;
    input \reg_cfg[6] ;
    input \reg_cfg[5] ;
    input \reg_cfg[4] ;
    input \reg_cfg[15] ;
    input \reg_cfg[16] ;
    input \reg_cfg[18] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [22:0]n464;
    
    wire n7290;
    wire [22:0]wait_cnt_22__N_520;
    wire [7:0]n1977;
    
    wire n5793;
    wire [23:0]reg_cfg;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(44[16:23])
    
    wire flag_done_d2, flag_done_d1;
    wire [3:0]rd_byte_num_3__N_481;
    wire [15:0]n2258;
    wire [15:0]addr_15__N_455;
    
    wire sys_clk_c_enable_203, n7354, n7151;
    wire [22:0]wait_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(278[16:24])
    
    wire sys_clk_c_enable_71, n7177, n17867, n173, n14083, n5831, 
        n17898, n17951, n17950, n12520, n12521, n17873, n7089, 
        n14092, n14729, n7352, n14941, n12645;
    wire [19:0]final_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(280[16:25])
    wire [19:0]n85;
    
    wire n12519, n12644, n12643, n12642, n12641, sys_clk_c_enable_169, 
        n4, n1992, n17874, n14566, n12640, n15963, n126, n127, 
        n254, n108, n12518, n12639, n12638, n12637;
    wire [7:0]n37;
    
    wire sys_clk_c_enable_188;
    wire [19:0]n107;
    
    wire n12517, n12516;
    wire [1:0]rd_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(281[16:22])
    
    wire sys_clk_c_enable_189, n14296, n31, n14033, n17869, n7085, 
        n12636, n15839, n15837, sys_clk_c_enable_193, n45_adj_1522, 
        n45_adj_1523, delay_swrst, start_N_744, n39, n5786, n17897, 
        n15, n5788, n17922, n7362, n7073, n12635, n12634, n12515, 
        n12633, n12632, n12514, n12513, n12512, n12511, n7091, 
        n16651, n5790, sys_clk_c_enable_162, n13864, n7372, n17939, 
        n14872, n14032, start_N_727, n7317, n7370, n7368, n17915, 
        n15567, n15813, n7366, n5871, n7364, n15569, n15565, n7087, 
        n7082, n7078, n7075, n7360, n7358, n7356, n15435, n15439, 
        n16379, n15829, n62, n63, n17921, n15415, n15413, n15417, 
        n15431, n15411, n16655, n17918, n15893, n15819, start_N_728, 
        n17916, n10010, n15485, n15477, n10, n17920, n14413, n16359, 
        n16485, n15461, n14985, n15889, n17900, n15451, n15463, 
        n16467, n15821, n16345, n16521, n16181, n16163, n16351, 
        n16349, n127_adj_1527, n16343, n16153, n16151, n16155, n16653;
    
    LUT4 i6046_2_lut (.A(n464[15]), .B(n7290), .Z(wait_cnt_22__N_520[15])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6046_2_lut.init = 16'h8888;
    LUT4 i6047_2_lut (.A(n464[14]), .B(n7290), .Z(wait_cnt_22__N_520[14])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6047_2_lut.init = 16'h8888;
    LUT4 i6048_2_lut (.A(n464[13]), .B(n7290), .Z(wait_cnt_22__N_520[13])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6048_2_lut.init = 16'h8888;
    FD1S3BX state_FSM_i1 (.D(n5793), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(n1977[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i6049_2_lut (.A(n464[12]), .B(n7290), .Z(wait_cnt_22__N_520[12])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6049_2_lut.init = 16'h8888;
    ROM256X1 reg_index_7__I_0_148_Mux_11 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[11])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF0C007F8060003D800042C03FC0381303FC0070060100 */ ;
    LUT4 i6050_2_lut (.A(n464[11]), .B(n7290), .Z(wait_cnt_22__N_520[11])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6050_2_lut.init = 16'h8888;
    LUT4 i6053_2_lut (.A(n464[10]), .B(n7290), .Z(wait_cnt_22__N_520[10])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6053_2_lut.init = 16'h8888;
    LUT4 i6054_2_lut (.A(n464[9]), .B(n7290), .Z(wait_cnt_22__N_520[9])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6054_2_lut.init = 16'h8888;
    LUT4 i6055_2_lut (.A(n464[8]), .B(n7290), .Z(wait_cnt_22__N_520[8])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6055_2_lut.init = 16'h8888;
    LUT4 i6056_2_lut (.A(n464[7]), .B(n7290), .Z(wait_cnt_22__N_520[7])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6056_2_lut.init = 16'h8888;
    LUT4 i6057_2_lut (.A(n464[6]), .B(n7290), .Z(wait_cnt_22__N_520[6])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6057_2_lut.init = 16'h8888;
    LUT4 i6058_2_lut (.A(n464[5]), .B(n7290), .Z(wait_cnt_22__N_520[5])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6058_2_lut.init = 16'h8888;
    LUT4 i6059_2_lut (.A(n464[4]), .B(n7290), .Z(wait_cnt_22__N_520[4])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6059_2_lut.init = 16'h8888;
    LUT4 i6060_2_lut (.A(n464[3]), .B(n7290), .Z(wait_cnt_22__N_520[3])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6060_2_lut.init = 16'h8888;
    FD1S3DX flag_done_d2_111 (.D(flag_done_d1), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(36[14] 39[12])
    defparam flag_done_d2_111.GSR = "ENABLED";
    LUT4 i6061_2_lut (.A(n464[2]), .B(n7290), .Z(wait_cnt_22__N_520[2])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6061_2_lut.init = 16'h8888;
    LUT4 i6062_2_lut (.A(n464[1]), .B(n7290), .Z(wait_cnt_22__N_520[1])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6062_2_lut.init = 16'h8888;
    LUT4 i2443_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(n2258[14]), 
         .Z(addr_15__N_455[14])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2443_3_lut.init = 16'hdcdc;
    FD1P3DX addr_i12 (.D(n7354), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i12.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_21 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[21])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF3FC00000400000000000FFFFFFFFFFFFFFFFFFFFFFFC */ ;
    FD1S3DX ctrl_w0_r1_115 (.D(n7151), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(ctrl_w0_r1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam ctrl_w0_r1_115.GSR = "ENABLED";
    FD1P3DX wait_cnt_i0 (.D(wait_cnt_22__N_520[0]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i0.GSR = "ENABLED";
    FD1S3DX rd_byte_num_i0 (.D(n7177), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\rd_byte_num[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam rd_byte_num_i0.GSR = "ENABLED";
    FD1S3DX flag_done_d1_110 (.D(flag_done), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(36[14] 39[12])
    defparam flag_done_d1_110.GSR = "ENABLED";
    LUT4 reg_index_7__I_0_148_Mux_22_i255_4_lut (.A(reg_index[5]), .B(n17867), 
         .C(reg_index[7]), .D(reg_index[6]), .Z(reg_cfg[22])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C)+!B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam reg_index_7__I_0_148_Mux_22_i255_4_lut.init = 16'hfac0;
    LUT4 i2445_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(n2258[11]), 
         .Z(addr_15__N_455[11])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2445_3_lut.init = 16'hdcdc;
    LUT4 i13337_3_lut_4_lut_4_lut (.A(reg_index[0]), .B(reg_index[1]), .C(reg_index[2]), 
         .D(reg_index[3]), .Z(n173)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i13337_3_lut_4_lut_4_lut.init = 16'h401f;
    LUT4 i2447_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(n2258[9]), 
         .Z(addr_15__N_455[9])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2447_3_lut.init = 16'hdcdc;
    ROM256X1 reg_index_7__I_0_148_Mux_9 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[9])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF2A866666463330663000F333333180F333304C0D3119 */ ;
    LUT4 reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut (.A(rd_byte_num_3__N_481[0]), 
         .B(n14083), .C(n1977[4]), .D(n5831), .Z(reg_cfg[20])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut.init = 16'h5554;
    LUT4 i19_4_lut_then_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n1977[4]), 
         .D(n17898), .Z(n17951)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B+!(C (D))))) */ ;
    defparam i19_4_lut_then_4_lut.init = 16'h47ff;
    LUT4 i19_4_lut_else_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n1977[4]), 
         .D(n17898), .Z(n17950)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam i19_4_lut_else_4_lut.init = 16'h44fc;
    CCU2C add_65_21 (.A0(wait_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12520), .COUT(n12521), .S0(n464[19]), .S1(n464[20]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_21.INIT0 = 16'haaaa;
    defparam add_65_21.INIT1 = 16'haaaa;
    defparam add_65_21.INJECT1_0 = "NO";
    defparam add_65_21.INJECT1_1 = "NO";
    LUT4 i3725_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[1]), .D(\reg_cfg[1] ), 
         .Z(n7089)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3725_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut (.A(reg_index[2]), .B(n14092), .C(reg_index[1]), .D(reg_index[4]), 
         .Z(n14729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_4_lut.init = 16'hfffe;
    FD1P3DX addr_i13 (.D(n7352), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i13.GSR = "ENABLED";
    FD1P3DX addr_i15 (.D(n14941), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i15.GSR = "ENABLED";
    CCU2C final_cnt_1912_add_4_21 (.A0(final_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12645), .S0(n85[19]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_21.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_21.INIT1 = 16'h0000;
    defparam final_cnt_1912_add_4_21.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_21.INJECT1_1 = "NO";
    CCU2C add_65_19 (.A0(wait_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12519), .COUT(n12520), .S0(n464[17]), .S1(n464[18]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_19.INIT0 = 16'haaaa;
    defparam add_65_19.INIT1 = 16'haaaa;
    defparam add_65_19.INJECT1_0 = "NO";
    defparam add_65_19.INJECT1_1 = "NO";
    CCU2C final_cnt_1912_add_4_19 (.A0(final_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12644), .COUT(n12645), .S0(n85[17]), .S1(n85[18]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_19.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_19.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_19.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_19.INJECT1_1 = "NO";
    FD1S3BX rd_byte_num_i1 (.D(rd_byte_num_3__N_481[1]), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(\rd_byte_num[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam rd_byte_num_i1.GSR = "ENABLED";
    FD1P3DX wait_cnt_i22 (.D(wait_cnt_22__N_520[22]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i22.GSR = "ENABLED";
    FD1P3DX wait_cnt_i21 (.D(wait_cnt_22__N_520[21]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i21.GSR = "ENABLED";
    FD1P3DX wait_cnt_i20 (.D(wait_cnt_22__N_520[20]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i20.GSR = "ENABLED";
    FD1P3DX wait_cnt_i19 (.D(wait_cnt_22__N_520[19]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i19.GSR = "ENABLED";
    CCU2C final_cnt_1912_add_4_17 (.A0(final_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12643), .COUT(n12644), .S0(n85[15]), .S1(n85[16]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_17.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_17.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_17.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_17.INJECT1_1 = "NO";
    FD1P3DX wait_cnt_i18 (.D(wait_cnt_22__N_520[18]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i18.GSR = "ENABLED";
    FD1P3DX wait_cnt_i17 (.D(wait_cnt_22__N_520[17]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i17.GSR = "ENABLED";
    FD1P3DX wait_cnt_i16 (.D(wait_cnt_22__N_520[16]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i16.GSR = "ENABLED";
    FD1P3DX wait_cnt_i15 (.D(wait_cnt_22__N_520[15]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i15.GSR = "ENABLED";
    FD1P3DX wait_cnt_i14 (.D(wait_cnt_22__N_520[14]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i14.GSR = "ENABLED";
    FD1P3DX wait_cnt_i13 (.D(wait_cnt_22__N_520[13]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i13.GSR = "ENABLED";
    FD1P3DX wait_cnt_i12 (.D(wait_cnt_22__N_520[12]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i12.GSR = "ENABLED";
    FD1P3DX wait_cnt_i11 (.D(wait_cnt_22__N_520[11]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i11.GSR = "ENABLED";
    FD1P3DX wait_cnt_i10 (.D(wait_cnt_22__N_520[10]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i10.GSR = "ENABLED";
    FD1P3DX wait_cnt_i9 (.D(wait_cnt_22__N_520[9]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i9.GSR = "ENABLED";
    FD1P3DX wait_cnt_i8 (.D(wait_cnt_22__N_520[8]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i8.GSR = "ENABLED";
    FD1P3DX wait_cnt_i7 (.D(wait_cnt_22__N_520[7]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i7.GSR = "ENABLED";
    FD1P3DX wait_cnt_i6 (.D(wait_cnt_22__N_520[6]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i6.GSR = "ENABLED";
    FD1P3DX wait_cnt_i5 (.D(wait_cnt_22__N_520[5]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i5.GSR = "ENABLED";
    FD1P3DX wait_cnt_i4 (.D(wait_cnt_22__N_520[4]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i4.GSR = "ENABLED";
    FD1P3DX wait_cnt_i3 (.D(wait_cnt_22__N_520[3]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i3.GSR = "ENABLED";
    FD1P3DX wait_cnt_i2 (.D(wait_cnt_22__N_520[2]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i2.GSR = "ENABLED";
    FD1P3DX wait_cnt_i1 (.D(wait_cnt_22__N_520[1]), .SP(sys_clk_c_enable_71), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam wait_cnt_i1.GSR = "ENABLED";
    FD1S3DX addr_i14 (.D(addr_15__N_455[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i14.GSR = "ENABLED";
    FD1S3DX addr_i11 (.D(addr_15__N_455[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i11.GSR = "ENABLED";
    FD1S3DX addr_i9 (.D(addr_15__N_455[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i9.GSR = "ENABLED";
    CCU2C final_cnt_1912_add_4_15 (.A0(final_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12642), .COUT(n12643), .S0(n85[13]), .S1(n85[14]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_15.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_15.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_15.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_15.INJECT1_1 = "NO";
    CCU2C final_cnt_1912_add_4_13 (.A0(final_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12641), .COUT(n12642), .S0(n85[11]), .S1(n85[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_13.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_13.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_13.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_162 (.A(sys_clk_c_enable_169), .B(n4), .C(n1992), 
         .D(n17874), .Z(n14566)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i1_4_lut_adj_162.init = 16'hfefa;
    LUT4 i202_2_lut (.A(cam_ready), .B(n1977[0]), .Z(n1992)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i202_2_lut.init = 16'h8888;
    CCU2C final_cnt_1912_add_4_11 (.A0(final_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12640), .COUT(n12641), .S0(n85[9]), .S1(n85[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_11.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_11.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_11.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(reg_index[4]), .B(reg_index[5]), .C(reg_index[3]), 
         .Z(n15963)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_3_lut.init = 16'h4040;
    LUT4 i13345_3_lut (.A(n14729), .B(n126), .C(reg_index[6]), .Z(n127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam i13345_3_lut.init = 16'hcaca;
    LUT4 i6192_3_lut (.A(reg_index[4]), .B(reg_index[6]), .C(reg_index[5]), 
         .Z(n254)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i6192_3_lut.init = 16'hecec;
    LUT4 reg_index_7__I_0_148_Mux_13_i108_3_lut (.A(reg_index[0]), .B(reg_index[2]), 
         .C(reg_index[1]), .Z(n108)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam reg_index_7__I_0_148_Mux_13_i108_3_lut.init = 16'h2c2c;
    CCU2C add_65_17 (.A0(wait_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12518), .COUT(n12519), .S0(n464[15]), .S1(n464[16]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_17.INIT0 = 16'haaaa;
    defparam add_65_17.INIT1 = 16'haaaa;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    CCU2C final_cnt_1912_add_4_9 (.A0(final_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12639), .COUT(n12640), .S0(n85[7]), .S1(n85[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_9.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_9.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_9.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_9.INJECT1_1 = "NO";
    CCU2C final_cnt_1912_add_4_7 (.A0(final_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12638), .COUT(n12639), .S0(n85[5]), .S1(n85[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_7.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_7.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_7.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_7.INJECT1_1 = "NO";
    CCU2C final_cnt_1912_add_4_5 (.A0(final_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12637), .COUT(n12638), .S0(n85[3]), .S1(n85[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_5.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_5.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_5.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_5.INJECT1_1 = "NO";
    FD1P3DX reg_index_1910__i0 (.D(n37[0]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i0.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i0 (.D(n107[0]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i0.GSR = "ENABLED";
    CCU2C add_65_15 (.A0(wait_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12517), .COUT(n12518), .S0(n464[13]), .S1(n464[14]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_15.INIT0 = 16'haaaa;
    defparam add_65_15.INIT1 = 16'haaaa;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    CCU2C add_65_13 (.A0(wait_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12516), .COUT(n12517), .S0(n464[11]), .S1(n464[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_13.INIT0 = 16'haaaa;
    defparam add_65_13.INIT1 = 16'haaaa;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    FD1P3DX rd_cnt_1914__i0 (.D(n14296), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(391[35:48])
    defparam rd_cnt_1914__i0.GSR = "ENABLED";
    LUT4 n31_bdd_4_lut (.A(n31), .B(n14033), .C(reg_index[5]), .D(reg_index[6]), 
         .Z(n17869)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n31_bdd_4_lut.init = 16'h00ca;
    LUT4 i3721_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[3]), .D(\reg_cfg[3] ), 
         .Z(n7085)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3721_3_lut_4_lut.init = 16'hf4b0;
    CCU2C final_cnt_1912_add_4_3 (.A0(final_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12636), .COUT(n12637), .S0(n85[1]), .S1(n85[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_3.INIT0 = 16'haaa0;
    defparam final_cnt_1912_add_4_3.INIT1 = 16'haaa0;
    defparam final_cnt_1912_add_4_3.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_3.INJECT1_1 = "NO";
    LUT4 i13487_4_lut (.A(n1977[1]), .B(n15839), .C(n15837), .D(n17898), 
         .Z(sys_clk_c_enable_193)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;
    defparam i13487_4_lut.init = 16'habbb;
    LUT4 i1_2_lut (.A(n1977[3]), .B(n1977[0]), .Z(n15839)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    CCU2C final_cnt_1912_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(final_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12636), .S1(n85[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912_add_4_1.INIT0 = 16'h0000;
    defparam final_cnt_1912_add_4_1.INIT1 = 16'h555f;
    defparam final_cnt_1912_add_4_1.INJECT1_0 = "NO";
    defparam final_cnt_1912_add_4_1.INJECT1_1 = "NO";
    LUT4 i460_2_lut_rep_296_4_lut (.A(n45_adj_1522), .B(n45_adj_1523), .C(delay_swrst), 
         .D(start_N_744), .Z(n17873)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(335[30] 346[28])
    defparam i460_2_lut_rep_296_4_lut.init = 16'h00ca;
    LUT4 i2433_3_lut_4_lut (.A(n39), .B(n1977[3]), .C(n17898), .D(n1977[4]), 
         .Z(n5786)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2433_3_lut_4_lut.init = 16'hf444;
    LUT4 i6157_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[0]), .Z(n107[0])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6157_2_lut_3_lut.init = 16'h8080;
    LUT4 i2435_3_lut_4_lut (.A(n1977[3]), .B(n39), .C(n17897), .D(n15), 
         .Z(n5788)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2435_3_lut_4_lut.init = 16'h88f8;
    LUT4 i6424_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[8]), .Z(n107[8])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6424_2_lut_3_lut.init = 16'h8080;
    LUT4 i6423_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[7]), .Z(n107[7])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6423_2_lut_3_lut.init = 16'h8080;
    LUT4 i6422_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[6]), .Z(n107[6])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6422_2_lut_3_lut.init = 16'h8080;
    LUT4 i6082_4_lut (.A(n17869), .B(n17922), .C(n254), .D(reg_index[7]), 
         .Z(n7362)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam i6082_4_lut.init = 16'h3022;
    LUT4 i6421_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[5]), .Z(n107[5])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6421_2_lut_3_lut.init = 16'h8080;
    LUT4 i6420_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[4]), .Z(n107[4])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6420_2_lut_3_lut.init = 16'h8080;
    LUT4 i6419_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[3]), .Z(n107[3])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6419_2_lut_3_lut.init = 16'h8080;
    LUT4 i3709_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[7]), .D(\reg_cfg[7] ), 
         .Z(n7073)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3709_3_lut_4_lut.init = 16'hf4b0;
    CCU2C reg_index_1910_add_4_9 (.A0(reg_index[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12635), .S0(n37[7]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910_add_4_9.INIT0 = 16'haaa0;
    defparam reg_index_1910_add_4_9.INIT1 = 16'h0000;
    defparam reg_index_1910_add_4_9.INJECT1_0 = "NO";
    defparam reg_index_1910_add_4_9.INJECT1_1 = "NO";
    LUT4 i6418_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[2]), .Z(n107[2])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6418_2_lut_3_lut.init = 16'h8080;
    CCU2C reg_index_1910_add_4_7 (.A0(reg_index[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12634), .COUT(n12635), .S0(n37[5]), .S1(n37[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910_add_4_7.INIT0 = 16'haaa0;
    defparam reg_index_1910_add_4_7.INIT1 = 16'haaa0;
    defparam reg_index_1910_add_4_7.INJECT1_0 = "NO";
    defparam reg_index_1910_add_4_7.INJECT1_1 = "NO";
    LUT4 i6417_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[1]), .Z(n107[1])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6417_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_11 (.A0(wait_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12515), .COUT(n12516), .S0(n464[9]), .S1(n464[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_11.INIT0 = 16'haaaa;
    defparam add_65_11.INIT1 = 16'haaaa;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    CCU2C reg_index_1910_add_4_5 (.A0(reg_index[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12633), .COUT(n12634), .S0(n37[3]), .S1(n37[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910_add_4_5.INIT0 = 16'haaa0;
    defparam reg_index_1910_add_4_5.INIT1 = 16'haaa0;
    defparam reg_index_1910_add_4_5.INJECT1_0 = "NO";
    defparam reg_index_1910_add_4_5.INJECT1_1 = "NO";
    CCU2C reg_index_1910_add_4_3 (.A0(reg_index[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12632), .COUT(n12633), .S0(n37[1]), .S1(n37[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910_add_4_3.INIT0 = 16'haaa0;
    defparam reg_index_1910_add_4_3.INIT1 = 16'haaa0;
    defparam reg_index_1910_add_4_3.INJECT1_0 = "NO";
    defparam reg_index_1910_add_4_3.INJECT1_1 = "NO";
    CCU2C reg_index_1910_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(reg_index[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12632), .S1(n37[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910_add_4_1.INIT0 = 16'h0000;
    defparam reg_index_1910_add_4_1.INIT1 = 16'h555f;
    defparam reg_index_1910_add_4_1.INJECT1_0 = "NO";
    defparam reg_index_1910_add_4_1.INJECT1_1 = "NO";
    LUT4 i6425_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[9]), .Z(n107[9])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6425_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_9 (.A0(wait_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12514), .COUT(n12515), .S0(n464[7]), .S1(n464[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_9.INIT0 = 16'haaaa;
    defparam add_65_9.INIT1 = 16'haaaa;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    CCU2C add_65_7 (.A0(wait_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12513), .COUT(n12514), .S0(n464[5]), .S1(n464[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_7.INIT0 = 16'haaaa;
    defparam add_65_7.INIT1 = 16'haaaa;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    CCU2C add_65_5 (.A0(wait_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12512), .COUT(n12513), .S0(n464[3]), .S1(n464[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_5.INIT0 = 16'haaaa;
    defparam add_65_5.INIT1 = 16'haaaa;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    LUT4 i6426_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[10]), .Z(n107[10])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6426_2_lut_3_lut.init = 16'h8080;
    LUT4 i6427_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[11]), .Z(n107[11])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6427_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_3 (.A0(wait_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12511), .COUT(n12512), .S0(n464[1]), .S1(n464[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_3.INIT0 = 16'haaaa;
    defparam add_65_3.INIT1 = 16'haaaa;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    LUT4 i6428_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[12]), .Z(n107[12])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6428_2_lut_3_lut.init = 16'h8080;
    LUT4 i6429_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[13]), .Z(n107[13])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6429_2_lut_3_lut.init = 16'h8080;
    LUT4 i6430_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[14]), .Z(n107[14])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6430_2_lut_3_lut.init = 16'h8080;
    CCU2C add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12511), .S1(n464[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_1.INIT0 = 16'h0000;
    defparam add_65_1.INIT1 = 16'h555a;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    LUT4 i6431_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[15]), .Z(n107[15])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6431_2_lut_3_lut.init = 16'h8080;
    LUT4 i6432_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[16]), .Z(n107[16])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6432_2_lut_3_lut.init = 16'h8080;
    LUT4 i6433_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[17]), .Z(n107[17])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6433_2_lut_3_lut.init = 16'h8080;
    LUT4 i6434_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[18]), .Z(n107[18])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6434_2_lut_3_lut.init = 16'h8080;
    LUT4 i6435_2_lut_3_lut (.A(n1977[3]), .B(n39), .C(n85[19]), .Z(n107[19])) /* synthesis lut_function=(A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6435_2_lut_3_lut.init = 16'h8080;
    FD1S3DX data_write__ret0_i0 (.D(n7091), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i0.GSR = "ENABLED";
    LUT4 i5975_2_lut (.A(n464[0]), .B(n7290), .Z(wait_cnt_22__N_520[0])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i5975_2_lut.init = 16'h8888;
    FD1P3DX delay_swrst_128 (.D(start_N_744), .SP(sys_clk_c_enable_169), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(delay_swrst)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam delay_swrst_128.GSR = "ENABLED";
    FD1P3DX state_FSM_i6 (.D(n16651), .SP(n1977[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rd_byte_num_3__N_481[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3DX state_FSM_i5 (.D(n5786), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n1977[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3DX state_FSM_i4 (.D(n5788), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n1977[3]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3DX state_FSM_i3 (.D(n5790), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n1977[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1P3DX cfg_done_120 (.D(VCC_net), .SP(sys_clk_c_enable_162), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam cfg_done_120.GSR = "ENABLED";
    FD1S3DX state_FSM_i2 (.D(n14566), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n1977[1]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i1 (.D(n37[1]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i1.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i2 (.D(n37[2]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i2.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i3 (.D(n37[3]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i3.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i4 (.D(n37[4]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i4.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i5 (.D(n37[5]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i5.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i6 (.D(n37[6]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i6.GSR = "ENABLED";
    FD1P3DX reg_index_1910__i7 (.D(n37[7]), .SP(sys_clk_c_enable_169), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(358[44:60])
    defparam reg_index_1910__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i1 (.D(n107[1]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i1.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i2 (.D(n107[2]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i2.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i3 (.D(n107[3]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i3.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i4 (.D(n107[4]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i4.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i5 (.D(n107[5]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i5.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i6 (.D(n107[6]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i6.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i7 (.D(n107[7]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i8 (.D(n107[8]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i8.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i9 (.D(n107[9]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i9.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i10 (.D(n107[10]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i10.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i11 (.D(n107[11]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i11.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i12 (.D(n107[12]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i12.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i13 (.D(n107[13]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i13.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i14 (.D(n107[14]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i14.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i15 (.D(n107[15]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i15.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i16 (.D(n107[16]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i16.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i17 (.D(n107[17]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i17.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i18 (.D(n107[18]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i18.GSR = "ENABLED";
    FD1P3DX final_cnt_1912__i19 (.D(n107[19]), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(373[38:54])
    defparam final_cnt_1912__i19.GSR = "ENABLED";
    FD1P3DX rd_cnt_1914__i1 (.D(n13864), .SP(sys_clk_c_enable_189), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(391[35:48])
    defparam rd_cnt_1914__i1.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i1 (.D(n7089), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[1]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i1.GSR = "ENABLED";
    FD1P3DX addr_i1 (.D(n7372), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(reg_index[3]), .B(reg_index[4]), .C(reg_index[0]), 
         .D(n17939), .Z(n14872)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(353[29:54])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 n173_bdd_4_lut (.A(n173), .B(reg_index[4]), .C(n14872), .D(reg_index[5]), 
         .Z(n17867)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n173_bdd_4_lut.init = 16'heef0;
    LUT4 i1_2_lut_2_lut (.A(reg_index[3]), .B(n14032), .Z(n14033)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(353[29:54])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_362 (.A(reg_index[1]), .B(reg_index[2]), .Z(n17939)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_2_lut_rep_362.init = 16'h8888;
    LUT4 i2477_4_lut_3_lut (.A(reg_index[1]), .B(reg_index[2]), .C(reg_index[3]), 
         .Z(n5831)) /* synthesis lut_function=(!(A (B (C))+!A !((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i2477_4_lut_3_lut.init = 16'h7b7b;
    FD1P3DX start_114 (.D(start_N_727), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(start)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam start_114.GSR = "ENABLED";
    FD1P3DX addr_i0 (.D(n7317), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i0.GSR = "ENABLED";
    FD1P3DX addr_i2 (.D(n7370), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i2.GSR = "ENABLED";
    FD1P3DX addr_i3 (.D(n7368), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i3.GSR = "ENABLED";
    LUT4 i6142_4_lut_4_lut (.A(reg_index[5]), .B(reg_index[1]), .C(n17915), 
         .D(n15567), .Z(n126)) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(353[29:54])
    defparam i6142_4_lut_4_lut.init = 16'hf5d5;
    LUT4 i1_4_lut_adj_163 (.A(wait_cnt[14]), .B(wait_cnt[11]), .C(wait_cnt[16]), 
         .D(wait_cnt[22]), .Z(n15813)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_163.init = 16'hf7ff;
    FD1P3DX addr_i4 (.D(n7366), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i4.GSR = "ENABLED";
    LUT4 start_N_755_bdd_2_lut_13799_2_lut (.A(start), .B(\current_state[5] ), 
         .Z(n17752)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam start_N_755_bdd_2_lut_13799_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_13803_2_lut (.A(start), .B(\current_state[4] ), 
         .Z(n17758)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam start_N_755_bdd_2_lut_13803_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_13814_2_lut (.A(start), .B(\current_state[3] ), 
         .Z(n17761)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam start_N_755_bdd_2_lut_13814_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_2_lut (.A(start), .B(\current_state[2] ), 
         .Z(n17779)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam start_N_755_bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_640_i1_3_lut_4_lut (.A(n17874), .B(start_N_744), .C(n1977[1]), 
         .D(n5871), .Z(start_N_727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam mux_640_i1_3_lut_4_lut.init = 16'hdfd0;
    LUT4 n4926_bdd_2_lut_13714_2_lut (.A(start), .B(\current_state[9] ), 
         .Z(n17598)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam n4926_bdd_2_lut_13714_2_lut.init = 16'h4444;
    LUT4 i13395_3_lut_4_lut_4_lut (.A(start), .B(\next_state_9__N_967[7] ), 
         .C(\current_state[0] ), .D(\current_state[7] ), .Z(n4386)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam i13395_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n4926_bdd_2_lut_13722_2_lut (.A(start), .B(\current_state[8] ), 
         .Z(n17605)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam n4926_bdd_2_lut_13722_2_lut.init = 16'h4444;
    FD1P3DX addr_i5 (.D(n7364), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i5.GSR = "ENABLED";
    LUT4 i6136_2_lut_2_lut (.A(start), .B(\current_state[6] ), .Z(\next_state_9__N_917[6] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam i6136_2_lut_2_lut.init = 16'h4444;
    FD1P3DX addr_i6 (.D(n7362), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i6.GSR = "ENABLED";
    LUT4 i47_4_lut_4_lut (.A(start), .B(\next_state[0] ), .C(\current_state[0] ), 
         .D(n19), .Z(n26)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(410[30:36])
    defparam i47_4_lut_4_lut.init = 16'h5c50;
    LUT4 mux_247_i15_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(addr[14]), 
         .D(reg_cfg[22]), .Z(n2258[14])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam mux_247_i15_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_247_i12_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(addr[11]), 
         .D(\reg_cfg[19] ), .Z(n2258[11])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam mux_247_i12_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3988_2_lut_3_lut_4_lut (.A(n17874), .B(start_N_744), .C(n17922), 
         .D(n1977[1]), .Z(sys_clk_c_enable_203)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i3988_2_lut_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i13516_4_lut (.A(n15567), .B(n14092), .C(n15569), .D(n15565), 
         .Z(start_N_744)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(316[25:39])
    defparam i13516_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_164 (.A(reg_index[1]), .B(reg_index[6]), .Z(n15569)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_2_lut_adj_164.init = 16'heeee;
    LUT4 i1_2_lut_adj_165 (.A(reg_index[4]), .B(reg_index[7]), .Z(n15565)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_2_lut_adj_165.init = 16'heeee;
    FD1S3DX data_write__ret0_i2 (.D(n7087), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i2.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i3 (.D(n7085), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[3]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i3.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i4 (.D(n7082), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i4.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i5 (.D(n7078), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[5]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i5.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i6 (.D(n7075), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i6.GSR = "ENABLED";
    FD1S3DX data_write__ret0_i7 (.D(n7073), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n5567[7]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam data_write__ret0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_166 (.A(reg_index[2]), .B(reg_index[0]), .Z(n15567)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i1_2_lut_adj_166.init = 16'heeee;
    FD1P3DX addr_i7 (.D(n7360), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i7.GSR = "ENABLED";
    FD1P3DX addr_i8 (.D(n7358), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i8.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_167 (.A(reg_index[5]), .B(reg_index[3]), .Z(n14092)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(316[25:39])
    defparam i1_2_lut_adj_167.init = 16'heeee;
    FD1P3DX addr_i10 (.D(n7356), .SP(sys_clk_c_enable_203), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam addr_i10.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_168 (.A(n15435), .B(n15439), .C(n16379), .D(n15829), 
         .Z(n45_adj_1522)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_168.init = 16'hffef;
    LUT4 i13340_3_lut_4_lut (.A(reg_index[3]), .B(n14032), .C(reg_index[5]), 
         .D(n62), .Z(n63)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13340_3_lut_4_lut.init = 16'hf808;
    LUT4 i213_2_lut_rep_307 (.A(n39), .B(n1977[3]), .Z(sys_clk_c_enable_162)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i213_2_lut_rep_307.init = 16'h4444;
    LUT4 i1_4_lut_adj_169 (.A(n17921), .B(wait_cnt[13]), .C(n15415), .D(n15413), 
         .Z(n15435)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_169.init = 16'hfff7;
    LUT4 i1_4_lut_adj_170 (.A(n15417), .B(n15431), .C(wait_cnt[8]), .D(n15411), 
         .Z(n15439)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_170.init = 16'hffef;
    LUT4 i13524_2_lut (.A(reg_index[7]), .B(reg_index[6]), .Z(n16655)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i13524_2_lut.init = 16'heeee;
    LUT4 i5970_4_lut_4_lut (.A(n17918), .B(start), .C(n15893), .D(n15819), 
         .Z(start_N_728)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(403[25:51])
    defparam i5970_4_lut_4_lut.init = 16'h4447;
    LUT4 i6645_3_lut_4_lut_4_lut (.A(n17918), .B(start), .C(n1977[4]), 
         .D(n17916), .Z(n10010)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(403[25:51])
    defparam i6645_3_lut_4_lut_4_lut.init = 16'h7505;
    LUT4 i6643_2_lut_3_lut_4_lut (.A(n17918), .B(start), .C(n1977[4]), 
         .D(n17916), .Z(sys_clk_c_enable_189)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(403[25:51])
    defparam i6643_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i1_3_lut_4_lut (.A(n17918), .B(start), .C(rd_cnt[1]), .D(rd_cnt[0]), 
         .Z(n13864)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(403[25:51])
    defparam i1_3_lut_4_lut.init = 16'h0770;
    LUT4 i12877_2_lut (.A(wait_cnt[1]), .B(wait_cnt[10]), .Z(n16379)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12877_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_171 (.A(wait_cnt[14]), .B(wait_cnt[11]), .Z(n15415)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_171.init = 16'heeee;
    CCU2C add_65_23 (.A0(wait_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12521), .S0(n464[21]), .S1(n464[22]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(418[41:56])
    defparam add_65_23.INIT0 = 16'haaaa;
    defparam add_65_23.INIT1 = 16'haaaa;
    defparam add_65_23.INJECT1_0 = "NO";
    defparam add_65_23.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_172 (.A(wait_cnt[19]), .B(wait_cnt[20]), .Z(n15413)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_172.init = 16'heeee;
    LUT4 i1_3_lut_adj_173 (.A(wait_cnt[22]), .B(wait_cnt[16]), .C(wait_cnt[4]), 
         .Z(n15417)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_173.init = 16'hfefe;
    LUT4 i1_2_lut_adj_174 (.A(wait_cnt[18]), .B(wait_cnt[5]), .Z(n15411)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_174.init = 16'heeee;
    LUT4 i1_4_lut_adj_175 (.A(n15485), .B(n15477), .C(wait_cnt[0]), .D(n10), 
         .Z(n45_adj_1523)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_4_lut_adj_175.init = 16'hffef;
    LUT4 i1_3_lut_4_lut_adj_176 (.A(n17920), .B(wait_cnt[8]), .C(n14413), 
         .D(n15813), .Z(n15819)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_176.init = 16'hfffb;
    LUT4 i1_4_lut_adj_177 (.A(n16359), .B(n16485), .C(wait_cnt[16]), .D(n15461), 
         .Z(n15485)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_4_lut_adj_177.init = 16'hff7f;
    LUT4 i3929_4_lut (.A(n17874), .B(n14985), .C(n17922), .D(n17898), 
         .Z(n7290)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i3929_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_178 (.A(n254), .B(n17873), .C(n17922), .D(reg_index[7]), 
         .Z(n14941)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam i1_4_lut_adj_178.init = 16'h0200;
    LUT4 i6036_3_lut (.A(\rd_byte_num[1] ), .B(rd_byte_num_3__N_481[0]), 
         .C(n1977[4]), .Z(rd_byte_num_3__N_481[1])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6036_3_lut.init = 16'h3232;
    LUT4 i2440_2_lut (.A(n1977[0]), .B(cam_ready), .Z(n5793)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i2440_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_179 (.A(n15889), .B(n15893), .C(n14413), .D(n17900), 
         .Z(n14985)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_179.init = 16'hfffe;
    LUT4 i6039_2_lut (.A(n464[22]), .B(n7290), .Z(wait_cnt_22__N_520[22])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6039_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_180 (.A(n15451), .B(n15463), .C(wait_cnt[15]), .D(wait_cnt[13]), 
         .Z(n15477)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_4_lut_adj_180.init = 16'hffef;
    LUT4 i6040_2_lut (.A(n464[21]), .B(n7290), .Z(wait_cnt_22__N_520[21])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6040_2_lut.init = 16'h8888;
    LUT4 i6041_2_lut (.A(n464[20]), .B(n7290), .Z(wait_cnt_22__N_520[20])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6041_2_lut.init = 16'h8888;
    LUT4 i6042_2_lut (.A(n464[19]), .B(n7290), .Z(wait_cnt_22__N_520[19])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6042_2_lut.init = 16'h8888;
    LUT4 i6043_2_lut (.A(n464[18]), .B(n7290), .Z(wait_cnt_22__N_520[18])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6043_2_lut.init = 16'h8888;
    LUT4 i6044_2_lut (.A(n464[17]), .B(n7290), .Z(wait_cnt_22__N_520[17])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6044_2_lut.init = 16'h8888;
    LUT4 i6045_2_lut (.A(n464[16]), .B(n7290), .Z(wait_cnt_22__N_520[16])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6045_2_lut.init = 16'h8888;
    LUT4 i1498_3_lut_rep_297 (.A(n45_adj_1522), .B(n45_adj_1523), .C(delay_swrst), 
         .Z(n17874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(335[30] 346[28])
    defparam i1498_3_lut_rep_297.init = 16'hcaca;
    LUT4 i12857_2_lut (.A(wait_cnt[10]), .B(wait_cnt[3]), .Z(n16359)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12857_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_181 (.A(wait_cnt[22]), .B(wait_cnt[5]), .C(wait_cnt[14]), 
         .D(wait_cnt[19]), .Z(n15461)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_4_lut_adj_181.init = 16'hfffe;
    LUT4 i1_2_lut_adj_182 (.A(wait_cnt[11]), .B(wait_cnt[8]), .Z(n15451)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_2_lut_adj_182.init = 16'heeee;
    LUT4 i1_3_lut_adj_183 (.A(wait_cnt[7]), .B(wait_cnt[18]), .C(wait_cnt[20]), 
         .Z(n15463)) /* synthesis lut_function=((B+(C))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(324[33:55])
    defparam i1_3_lut_adj_183.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_184 (.A(wait_cnt[21]), .B(wait_cnt[12]), .C(wait_cnt[17]), 
         .D(wait_cnt[6]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(336[33:56])
    defparam i1_4_lut_adj_184.init = 16'hfffe;
    LUT4 i1_2_lut_adj_185 (.A(wait_cnt[3]), .B(n10), .Z(n15829)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_185.init = 16'hdddd;
    LUT4 i1_4_lut_adj_186 (.A(wait_cnt[22]), .B(wait_cnt[11]), .C(wait_cnt[16]), 
         .D(wait_cnt[14]), .Z(n15889)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_186.init = 16'hf7ff;
    LUT4 i1_4_lut_adj_187 (.A(wait_cnt[19]), .B(wait_cnt[5]), .C(wait_cnt[10]), 
         .D(wait_cnt[18]), .Z(n15893)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_187.init = 16'hf7ff;
    LUT4 i1_4_lut_adj_188 (.A(wait_cnt[0]), .B(n16467), .C(n15829), .D(n15821), 
         .Z(n14413)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_188.init = 16'hfff7;
    LUT4 i3723_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[2]), .D(\reg_cfg[2] ), 
         .Z(n7087)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3723_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i6382_4_lut_4_lut (.A(reg_index[0]), .B(reg_index[1]), .C(reg_index[2]), 
         .D(n17915), .Z(n62)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam i6382_4_lut_4_lut.init = 16'h1c00;
    LUT4 i12965_4_lut (.A(wait_cnt[4]), .B(wait_cnt[9]), .C(wait_cnt[2]), 
         .D(wait_cnt[1]), .Z(n16467)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12965_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_189 (.A(wait_cnt[13]), .B(wait_cnt[20]), .Z(n15821)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_189.init = 16'heeee;
    LUT4 i3727_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[0]), .D(\reg_cfg[0] ), 
         .Z(n7091)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3727_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_adj_190 (.A(start_N_744), .B(n1977[1]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_190.init = 16'h4444;
    LUT4 i2468_2_lut_rep_338 (.A(reg_index[3]), .B(reg_index[4]), .Z(n17915)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i2468_2_lut_rep_338.init = 16'h8888;
    PFUMX i2516 (.BLUT(n10010), .ALUT(start_N_728), .C0(rd_byte_num_3__N_481[0]), 
          .Z(n5871));
    LUT4 i6449_3_lut_4_lut (.A(reg_index[3]), .B(reg_index[4]), .C(n17939), 
         .D(reg_index[0]), .Z(n31)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam i6449_3_lut_4_lut.init = 16'h0888;
    LUT4 i1_2_lut_rep_323_3_lut (.A(wait_cnt[15]), .B(wait_cnt[7]), .C(wait_cnt[8]), 
         .Z(n17900)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_323_3_lut.init = 16'hefef;
    LUT4 i1_4_lut_adj_191 (.A(n17939), .B(n14083), .C(reg_index[3]), .D(reg_index[7]), 
         .Z(n15)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_191.init = 16'hdfff;
    LUT4 i6110_3_lut (.A(\rd_byte_num[0] ), .B(rd_byte_num_3__N_481[0]), 
         .C(n1977[4]), .Z(n7177)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(304[14] 426[12])
    defparam i6110_3_lut.init = 16'hcece;
    LUT4 i1_4_lut_adj_192 (.A(reg_index[1]), .B(reg_index[4]), .C(reg_index[2]), 
         .D(reg_index[0]), .Z(n14032)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_192.init = 16'h0100;
    LUT4 i6614_2_lut_rep_339 (.A(rd_cnt[0]), .B(rd_cnt[1]), .Z(n17916)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6614_2_lut_rep_339.init = 16'h8888;
    LUT4 i1_4_lut_adj_193 (.A(reg_index[5]), .B(reg_index[0]), .C(reg_index[4]), 
         .D(reg_index[6]), .Z(n14083)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(353[29:54])
    defparam i1_4_lut_adj_193.init = 16'hfff7;
    LUT4 i1501_3_lut (.A(n1977[1]), .B(n39), .C(n1977[3]), .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i1501_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_194 (.A(n16345), .B(n16521), .C(n16181), .D(n16163), 
         .Z(n39)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_194.init = 16'hfff7;
    LUT4 i12843_2_lut (.A(final_cnt[4]), .B(final_cnt[0]), .Z(n16345)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12843_2_lut.init = 16'h8888;
    LUT4 i13019_4_lut (.A(final_cnt[8]), .B(n16351), .C(n16349), .D(final_cnt[1]), 
         .Z(n16521)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13019_4_lut.init = 16'h8000;
    LUT4 reg_index_7__I_0_148_Mux_13_i127_4_lut (.A(n15963), .B(n254), .C(reg_index[7]), 
         .D(n108), .Z(n127_adj_1527)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 266[16])
    defparam reg_index_7__I_0_148_Mux_13_i127_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut_4_lut_adj_195 (.A(rd_cnt[0]), .B(rd_cnt[1]), .C(n1977[4]), 
         .D(rd_byte_num_3__N_481[0]), .Z(n15837)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_195.init = 16'h0070;
    LUT4 i1_4_lut_adj_196 (.A(final_cnt[2]), .B(n16343), .C(n16153), .D(final_cnt[9]), 
         .Z(n16181)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_196.init = 16'hfff7;
    LUT4 i1_4_lut_adj_197 (.A(final_cnt[5]), .B(n16151), .C(n16155), .D(final_cnt[7]), 
         .Z(n16163)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_197.init = 16'hfffe;
    LUT4 i12849_2_lut (.A(final_cnt[3]), .B(final_cnt[18]), .Z(n16351)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12849_2_lut.init = 16'h8888;
    LUT4 i12847_2_lut (.A(final_cnt[13]), .B(final_cnt[16]), .Z(n16349)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12847_2_lut.init = 16'h8888;
    LUT4 i12841_2_lut (.A(final_cnt[15]), .B(final_cnt[17]), .Z(n16343)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12841_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_198 (.A(final_cnt[19]), .B(final_cnt[12]), .Z(n16153)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_198.init = 16'heeee;
    LUT4 i1_2_lut_adj_199 (.A(final_cnt[6]), .B(final_cnt[14]), .Z(n16151)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_199.init = 16'heeee;
    LUT4 i1_2_lut_adj_200 (.A(final_cnt[10]), .B(final_cnt[11]), .Z(n16155)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_200.init = 16'heeee;
    LUT4 flag_done_I_0_2_lut_rep_341 (.A(flag_done), .B(flag_done_d2), .Z(n17918)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam flag_done_I_0_2_lut_rep_341.init = 16'h2222;
    LUT4 i13538_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_cnt[0]), 
         .D(start), .Z(n14296)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i13538_2_lut_3_lut_4_lut.init = 16'h0d0f;
    LUT4 i13457_2_lut_rep_321_3_lut (.A(flag_done), .B(flag_done_d2), .C(start), 
         .Z(n17898)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i13457_2_lut_rep_321_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_320_3_lut (.A(flag_done), .B(flag_done_d2), .C(n1977[2]), 
         .Z(n17897)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i1_2_lut_rep_320_3_lut.init = 16'h2020;
    LUT4 mux_247_i10_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(addr[9]), 
         .D(\reg_cfg[17] ), .Z(n2258[9])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam mux_247_i10_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut (.A(wait_cnt[15]), .B(wait_cnt[7]), .C(wait_cnt[0]), 
         .Z(n15431)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(n15), 
         .D(n1977[2]), .Z(sys_clk_c_enable_169)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_343 (.A(wait_cnt[15]), .B(wait_cnt[7]), .Z(n17920)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_343.init = 16'heeee;
    LUT4 i12855_2_lut_rep_344 (.A(wait_cnt[9]), .B(wait_cnt[2]), .Z(n17921)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12855_2_lut_rep_344.init = 16'h8888;
    LUT4 i12983_3_lut_4_lut (.A(wait_cnt[9]), .B(wait_cnt[2]), .C(wait_cnt[1]), 
         .D(wait_cnt[4]), .Z(n16485)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12983_3_lut_4_lut.init = 16'h8000;
    LUT4 i250_2_lut_rep_345 (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), 
         .Z(n17922)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i250_2_lut_rep_345.init = 16'heeee;
    LUT4 i6083_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[13]), 
         .Z(n7364)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6083_2_lut_3_lut.init = 16'h1010;
    LUT4 i6084_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[12] ), 
         .Z(n7366)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6084_2_lut_3_lut.init = 16'h1010;
    LUT4 i4003_3_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[11]), 
         .Z(n7368)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i4003_3_lut_3_lut.init = 16'h3232;
    LUT4 i6085_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[10] ), 
         .Z(n7370)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6085_2_lut_3_lut.init = 16'h1010;
    LUT4 i5972_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[8] ), 
         .Z(n7317)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i5972_2_lut_3_lut.init = 16'h1010;
    LUT4 i4007_3_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[9]), 
         .Z(n7372)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i4007_3_lut_3_lut.init = 16'h3232;
    LUT4 i3711_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[6]), .D(\reg_cfg[6] ), 
         .Z(n7075)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3711_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3714_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[5]), .D(\reg_cfg[5] ), 
         .Z(n7078)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3714_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3718_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n5567[4]), .D(\reg_cfg[4] ), 
         .Z(n7082)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;
    defparam i3718_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i3987_3_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[21]), 
         .Z(n7352)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i3987_3_lut_3_lut.init = 16'h3232;
    LUT4 i6114_3_lut_4_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(n1977[1]), 
         .D(ctrl_w0_r1), .Z(n7151)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6114_3_lut_4_lut.init = 16'hefee;
    LUT4 i6081_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[15] ), 
         .Z(n7360)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6081_2_lut_3_lut.init = 16'h1010;
    LUT4 i13146_3_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_byte_num_3__N_481[0]), 
         .D(start), .Z(n16651)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i13146_3_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i6080_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[16] ), 
         .Z(n7358)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6080_2_lut_3_lut.init = 16'h1010;
    LUT4 i6079_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[18] ), 
         .Z(n7356)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i6079_2_lut_3_lut.init = 16'h1010;
    LUT4 i13525_2_lut_3_lut (.A(n1977[4]), .B(rd_byte_num_3__N_481[0]), 
         .C(reg_index[7]), .Z(n16653)) /* synthesis lut_function=(A+(B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(305[13] 425[20])
    defparam i13525_2_lut_3_lut.init = 16'hfefe;
    PFUMX i3989 (.BLUT(n127), .ALUT(reg_cfg[20]), .C0(n16653), .Z(n7354));
    PFUMX reg_index_7__I_0_148_Mux_13_i255 (.BLUT(n63), .ALUT(n127_adj_1527), 
          .C0(n16655), .Z(reg_cfg[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;
    LUT4 i2437_3_lut_4_lut (.A(n17873), .B(n1977[1]), .C(n17918), .D(n1977[2]), 
         .Z(n5790)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;
    defparam i2437_3_lut_4_lut.init = 16'h4f44;
    PFUMX i13862 (.BLUT(n17950), .ALUT(n17951), .C0(n4), .Z(sys_clk_c_enable_71));
    
endmodule
//
// Verilog Description of module \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100) 
//

module \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100)  (current_state, 
            \current_state[4] , sys_clk_c, sys_rst_n_N_472, \current_state[0] , 
            next_state, sda_transmit, flag_done, n16648, drive_clk_enable_4, 
            n16649, \current_state[2] , \rd_byte_num[1] , \rd_byte_num[0] , 
            \current_state[3] , \current_state[6] , n17894, n17876, 
            i2c_sclk_0_c, \next_state[6] , \current_state[9] , \current_state[8] , 
            addr, start, n17889, n16727, n17883, n5567, n19, n17779, 
            n17761, n17758, ctrl_w0_r1, n17752, GND_net, VCC_net, 
            n6005, \next_state_9__N_967[7] , n26, n4386, n4304, n4298, 
            n17913, i2c_sda_0_out, n17598, n4373, n17605, \next_state_9__N_917[6] ) /* synthesis syn_module_defined=1 */ ;
    output [9:0]current_state;
    output \current_state[4] ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output \current_state[0] ;
    output [9:0]next_state;
    output sda_transmit;
    output flag_done;
    input n16648;
    output drive_clk_enable_4;
    input n16649;
    output \current_state[2] ;
    input \rd_byte_num[1] ;
    input \rd_byte_num[0] ;
    output \current_state[3] ;
    output \current_state[6] ;
    output n17894;
    output n17876;
    output i2c_sclk_0_c;
    output \next_state[6] ;
    output \current_state[9] ;
    output \current_state[8] ;
    input [15:0]addr;
    input start;
    output n17889;
    output n16727;
    output n17883;
    input [7:0]n5567;
    output n19;
    input n17779;
    input n17761;
    input n17758;
    input ctrl_w0_r1;
    input n17752;
    input GND_net;
    input VCC_net;
    output n6005;
    output \next_state_9__N_967[7] ;
    input n26;
    input n4386;
    output [0:0]n4304;
    output [0:0]n4298;
    output n17913;
    input i2c_sda_0_out;
    input n17598;
    input n4373;
    input n17605;
    input \next_state_9__N_917[6] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire drive_clk /* synthesis is_clock=1, SET_AS_NETWORK=\u_top_iic/inst_i2c_drive/drive_clk */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(32[18:27])
    
    wire n17936;
    wire [9:0]cnt_scl;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(34[18:25])
    
    wire n18761, n17929, n15007;
    wire [9:0]current_state_c;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n15186;
    wire [14:0]cnt_div;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(33[18:25])
    
    wire n14684;
    wire [9:0]cnt_scl_9__N_793;
    
    wire n17880, n17762;
    wire [9:0]next_state_9__N_967;
    wire [9:0]n4425;
    wire [9:0]next_state_9__N_803;
    
    wire sda_transmit_en, drive_clk_enable_1;
    wire [0:0]n4510;
    
    wire drive_clk_enable_2, n17552, drive_clk_enable_3, flag_ack, drive_clk_N_1034, 
        n17933, n17934, n14076, n14089, n17906, n16483;
    wire [3:0]rd_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(41[17:23])
    
    wire n15777, n22, n31, n83, n16459, n81, n14841, n6, n15729, 
        n5044, n23, n133, n17902, n17881, n3711, n15633, n4, 
        n17927, n14175, n16451, n17935, n17960, n4_adj_1496, n16513, 
        n17661, n4031, n17954, n17953, n17905, n14373, n16821, 
        n17879, n14903, n5426, n17957, n17956, n17890, n17907, 
        n15655, n16423, n14627, n17941, n58, n11, n14, n15647, 
        n14661, n17659;
    wire [9:0]next_state_c;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n17660, n17662, sys_clk_c_enable_83, n9967, n17930, n35, 
        n17931, n39, n14687, n14685, n14682, n14683, n14681, n14679, 
        n14686;
    wire [14:0]n1;
    
    wire n17925, n17805, n17893, n17865, n38, n4_adj_1498, n17606, 
        n17607, n17608, n15763, n17940, n17670, n17613, n17614, 
        n17615, n17878, n16405, n17669, n4424, n17877, n4_adj_1499, 
        n16741, n16541, n14114, n12, n13, n17505, n6304, n16985, 
        n21, drive_clk_enable_8, n15311, n15547, n16546, n14804, 
        n14659, n15799, n17799, n6_adj_1500, n17959, n16549, n12_adj_1501, 
        n16767, n17798, n17797, n10019, n14490, n17909, n15247, 
        n15253, n17888, n14752, n5011, n5003, n15391, n17891, 
        n17875, n5008, n17938, n15515, n17901, n16369, n14467, 
        n17778, n16730, n17780, n17760, n17435, n16316, n14896, 
        n6533, n15491, n17757, n17759, n55, n17926, n14732, n16341, 
        n4999, n6632, n6572, n30, n14978, n15375, n15381, n16315, 
        n15685, n5001, n15679, n14660, n17751, n17753, n13280;
    wire [0:0]n4504;
    
    wire n5983, n5987, n15675, n5000, n17892, n14724;
    wire [0:0]n3820;
    
    wire n17549, n12510;
    wire [9:0]cnt_scl_9__N_899;
    
    wire n15669, n17720, n17721, n16572, n17548, n17674, n66;
    wire [9:0]n4437;
    
    wire n15241, n15637, n17550, n17551, n17567, n17568, n17663, 
        n14953, n15335, n56, sda_transmit_N_1103, n14451;
    wire [0:0]n3802;
    
    wire n15713, n16311, n12_adj_1502, n15313, flag_ack_N_1056, n14722, 
        n62, n86, n17736, n17732, n16297, n7262, n14733, n12695, 
        n49, n12509;
    wire [14:0]n2;
    
    wire n4650, n15281, n7, n17882, n15631, n33, n12508, n16465, 
        n15619;
    wire [0:0]n3904;
    wire [0:0]n3916;
    
    wire n12507, n9680, n16, n12506, n34, n17942, n9929, n17733, 
        n17734, n15861, n14583, n15291, n14929, n14945, n14573, 
        n16313, n6_adj_1504, n15793, n15789, n15259, n15151, n16301, 
        n15557, n15559, n15783, n17566, n13_adj_1505, n17923, n15004, 
        n17565, n15577, n17602, n15003, n17735, n23_adj_1506, n15357, 
        n14865;
    wire [0:0]n3919;
    
    wire n17603, n14760, n16829, n10, n14435, n14607, n17609;
    wire [9:0]n4449;
    
    wire n9987;
    wire [0:0]n4484;
    
    wire n20, n17864, n5989, n16455, n23_adj_1507, n17, n17604, 
        n12504, n17673, n17600, n17597, n17616, n17808, n17664, 
        n17611, n17599, n17601, n15745, n14669, n15269, n16307, 
        n15741, n16966, n13224, n17958, n14910, n16377, n12503, 
        n12502, n17596, n12501, n12500;
    wire [0:0]n4339;
    
    wire n12499, n15227, n12498, n4_adj_1520, n17610, n15183, n17612;
    wire [9:0]n4383;
    
    wire n10045;
    wire [6:0]n4702;
    
    wire n10043, n15, n18, n16570, n16571, n14656, n14799;
    
    LUT4 i1_3_lut_4_lut (.A(n17936), .B(cnt_scl[3]), .C(n18761), .D(n17929), 
         .Z(n15007)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(current_state[7]), .B(current_state[5]), .C(current_state_c[1]), 
         .D(\current_state[4] ), .Z(n15186)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0104;
    FD1S3DX cnt_div__i0 (.D(n14684), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i0.GSR = "ENABLED";
    FD1S3BX current_state_i0 (.D(next_state[0]), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(\current_state[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i0.GSR = "ENABLED";
    FD1S3DX cnt_scl_i0 (.D(cnt_scl_9__N_793[0]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i0.GSR = "ENABLED";
    LUT4 i13427_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17762), 
         .D(next_state_9__N_967[3]), .Z(n4425[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13427_3_lut_4_lut.init = 16'hf2d0;
    FD1S3BX next_state_i0 (.D(next_state_9__N_803[0]), .CK(drive_clk), .PD(sys_rst_n_N_472), 
            .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i0.GSR = "ENABLED";
    FD1P3BX sda_transmit_en_263 (.D(n4510[0]), .SP(drive_clk_enable_1), 
            .CK(drive_clk), .PD(sys_rst_n_N_472), .Q(sda_transmit_en)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam sda_transmit_en_263.GSR = "ENABLED";
    FD1P3BX sda_transmit_264 (.D(n17552), .SP(drive_clk_enable_2), .CK(drive_clk), 
            .PD(sys_rst_n_N_472), .Q(sda_transmit)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam sda_transmit_264.GSR = "ENABLED";
    FD1P3DX flag_done_265 (.D(n16648), .SP(drive_clk_enable_3), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam flag_done_265.GSR = "ENABLED";
    FD1P3DX flag_ack_266 (.D(n16649), .SP(drive_clk_enable_4), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_ack)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam flag_ack_266.GSR = "ENABLED";
    FD1S3BX drive_clk_259 (.D(drive_clk_N_1034), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(drive_clk)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam drive_clk_259.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(\current_state[2] ), .B(n17933), .C(n17934), 
         .D(current_state_c[1]), .Z(n14076)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_scl[5]), .B(cnt_scl[0]), .Z(n14089)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12981_3_lut_4_lut (.A(cnt_scl[3]), .B(n17929), .C(\current_state[0] ), 
         .D(n17906), .Z(n16483)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i12981_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(cnt_scl[1]), .B(cnt_scl[0]), .C(rd_cnt[0]), .Z(n15777)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .D(cnt_scl[5]), .Z(n22)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h01ef;
    LUT4 i1_4_lut_4_lut (.A(cnt_div[1]), .B(cnt_div[3]), .C(cnt_div[2]), 
         .D(cnt_div[7]), .Z(n31)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h2008;
    LUT4 i2_4_lut_4_lut (.A(n17934), .B(n83), .C(n16459), .D(n81), .Z(n14841)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h0f04;
    LUT4 i2050_2_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(336[42:57])
    defparam i2050_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n15729), .B(n5044), .C(current_state[5]), .D(n23), 
         .Z(n133)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut_adj_45 (.A(\current_state[4] ), .B(\current_state[3] ), 
         .C(current_state_c[1]), .D(n17902), .Z(n15729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hfffe;
    LUT4 i2384_3_lut (.A(\current_state[0] ), .B(n17881), .C(current_state[7]), 
         .Z(n5044)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i2384_3_lut.init = 16'h3a3a;
    LUT4 i3681_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n3711), 
         .D(n15633), .Z(n4)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B !(C))) */ ;
    defparam i3681_4_lut_4_lut.init = 16'hefe3;
    LUT4 i1550_2_lut_rep_350 (.A(cnt_scl[5]), .B(cnt_scl[0]), .Z(n17927)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i1550_2_lut_rep_350.init = 16'h8888;
    LUT4 i12949_2_lut_4_lut (.A(\current_state[3] ), .B(n14175), .C(n17933), 
         .D(\current_state[0] ), .Z(n16451)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12949_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_then_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[0]), 
         .D(n17935), .Z(n17960)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_then_3_lut_4_lut.init = 16'hfffe;
    LUT4 i3680_3_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[0]), .C(n3711), 
         .Z(n4_adj_1496)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i3680_3_lut_3_lut.init = 16'h3838;
    LUT4 cnt_scl_1__bdd_4_lut_14170 (.A(cnt_scl[1]), .B(n16513), .C(cnt_scl[0]), 
         .D(cnt_scl[5]), .Z(n17661)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam cnt_scl_1__bdd_4_lut_14170.init = 16'h0100;
    LUT4 i10725_2_lut (.A(\current_state[4] ), .B(\current_state[2] ), .Z(n14175)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10725_2_lut.init = 16'heeee;
    LUT4 i3683_4_lut_then_3_lut (.A(cnt_scl[1]), .B(n4031), .C(cnt_scl[2]), 
         .Z(n17954)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i3683_4_lut_then_3_lut.init = 16'hefef;
    LUT4 i3683_4_lut_else_3_lut (.A(cnt_scl[4]), .B(n4031), .C(cnt_scl[3]), 
         .Z(n17953)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i3683_4_lut_else_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut (.A(current_state_c[1]), .B(n17905), .C(current_state[5]), 
         .D(n23), .Z(n14373)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i13527_4_lut (.A(n5044), .B(n16821), .C(n17879), .D(n14373), 
         .Z(n14903)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i13527_4_lut.init = 16'h0c04;
    LUT4 i13434_2_lut (.A(rd_cnt[2]), .B(n5426), .Z(n16821)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i13434_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_then_4_lut (.A(\current_state[4] ), .B(\current_state[0] ), 
         .C(\current_state[2] ), .D(\current_state[6] ), .Z(n17957)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1_3_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_else_4_lut (.A(\current_state[4] ), .B(\current_state[0] ), 
         .C(\current_state[2] ), .D(\current_state[6] ), .Z(n17956)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_else_4_lut.init = 16'h0114;
    LUT4 i1_4_lut_adj_46 (.A(n17890), .B(n17894), .C(n17907), .D(n15655), 
         .Z(n5426)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h0100;
    LUT4 i1_4_lut_adj_47 (.A(n16423), .B(n14627), .C(n17941), .D(n17936), 
         .Z(n58)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hccdc;
    LUT4 i1_3_lut_4_lut_adj_48 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .D(n11), .Z(n14)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_3_lut_4_lut_adj_48.init = 16'hffef;
    LUT4 i1_2_lut_rep_352 (.A(cnt_scl[5]), .B(cnt_scl[4]), .Z(n17929)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_352.init = 16'heeee;
    LUT4 i1_4_lut_adj_49 (.A(n15647), .B(rd_cnt[3]), .C(n5426), .D(rd_cnt[2]), 
         .Z(n14661)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_49.init = 16'h2888;
    LUT4 n17659_bdd_3_lut (.A(n17659), .B(next_state_c[7]), .C(n17876), 
         .Z(n17660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17659_bdd_3_lut.init = 16'hcaca;
    LUT4 n13936_bdd_4_lut (.A(n17929), .B(cnt_scl[0]), .C(cnt_scl[1]), 
         .D(cnt_scl[3]), .Z(n17662)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n13936_bdd_4_lut.init = 16'h0010;
    FD1P3BX scl_260 (.D(n9967), .SP(sys_clk_c_enable_83), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(i2c_sclk_0_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam scl_260.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_353 (.A(cnt_scl[5]), .B(cnt_scl[2]), .Z(n17930)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_rep_353.init = 16'h8888;
    FD1S3DX next_state_i9 (.D(next_state_9__N_803[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i9.GSR = "ENABLED";
    LUT4 i52_3_lut_4_lut (.A(cnt_scl[5]), .B(cnt_scl[2]), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n35)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i52_3_lut_4_lut.init = 16'h808f;
    LUT4 i6016_2_lut_rep_354 (.A(current_state[5]), .B(\current_state[0] ), 
         .Z(n17931)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6016_2_lut_rep_354.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_50 (.A(current_state[5]), .B(\current_state[0] ), 
         .C(\current_state[6] ), .D(current_state[7]), .Z(n81)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_50.init = 16'h0110;
    FD1S3DX next_state_i8 (.D(next_state_9__N_803[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i8.GSR = "ENABLED";
    FD1S3DX next_state_i7 (.D(next_state_9__N_803[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i7.GSR = "ENABLED";
    FD1S3DX next_state_i6 (.D(next_state_9__N_803[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(\next_state[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i6.GSR = "ENABLED";
    FD1S3DX next_state_i5 (.D(next_state_9__N_803[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i5.GSR = "ENABLED";
    FD1S3DX next_state_i4 (.D(next_state_9__N_803[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i4.GSR = "ENABLED";
    FD1S3DX next_state_i3 (.D(next_state_9__N_803[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i3.GSR = "ENABLED";
    FD1S3DX next_state_i2 (.D(next_state_9__N_803[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i2.GSR = "ENABLED";
    FD1S3DX next_state_i1 (.D(next_state_9__N_803[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i1.GSR = "ENABLED";
    FD1S3DX cnt_scl_i9 (.D(cnt_scl_9__N_793[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_51 (.A(drive_clk_enable_4), .B(n39), .Z(next_state_9__N_803[0])) /* synthesis lut_function=((B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_51.init = 16'hdddd;
    FD1S3DX cnt_scl_i8 (.D(cnt_scl_9__N_793[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i8.GSR = "ENABLED";
    FD1S3DX cnt_scl_i7 (.D(cnt_scl_9__N_793[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i7.GSR = "ENABLED";
    FD1S3DX cnt_scl_i6 (.D(cnt_scl_9__N_793[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i6.GSR = "ENABLED";
    FD1S3DX cnt_scl_i5 (.D(cnt_scl_9__N_793[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i5.GSR = "ENABLED";
    FD1S3DX cnt_scl_i4 (.D(cnt_scl_9__N_793[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i4.GSR = "ENABLED";
    FD1S3DX cnt_scl_i3 (.D(cnt_scl_9__N_793[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i3.GSR = "ENABLED";
    FD1S3DX cnt_scl_i2 (.D(cnt_scl_9__N_793[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i2.GSR = "ENABLED";
    FD1S3DX cnt_scl_i1 (.D(cnt_scl_9__N_793[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i1.GSR = "ENABLED";
    FD1S3DX current_state_i9 (.D(next_state_c[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i9.GSR = "ENABLED";
    FD1S3DX current_state_i8 (.D(next_state_c[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i8.GSR = "ENABLED";
    FD1S3DX current_state_i7 (.D(next_state_c[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i7.GSR = "ENABLED";
    FD1S3DX current_state_i6 (.D(\next_state[6] ), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i6.GSR = "ENABLED";
    FD1S3DX current_state_i5 (.D(next_state_c[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i5.GSR = "ENABLED";
    FD1S3DX current_state_i4 (.D(next_state_c[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i4.GSR = "ENABLED";
    FD1S3DX current_state_i3 (.D(next_state_c[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i3.GSR = "ENABLED";
    FD1S3DX current_state_i2 (.D(next_state_c[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i2.GSR = "ENABLED";
    FD1S3DX current_state_i1 (.D(next_state_c[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i1.GSR = "ENABLED";
    FD1S3DX cnt_div__i14 (.D(n14687), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i14.GSR = "ENABLED";
    FD1S3DX cnt_div__i13 (.D(n14685), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i13.GSR = "ENABLED";
    FD1S3DX cnt_div__i12 (.D(n14682), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i12.GSR = "ENABLED";
    FD1S3DX cnt_div__i11 (.D(n14683), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i11.GSR = "ENABLED";
    FD1S3DX cnt_div__i10 (.D(n14681), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i10.GSR = "ENABLED";
    FD1S3DX cnt_div__i9 (.D(n14679), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i9.GSR = "ENABLED";
    FD1S3DX cnt_div__i8 (.D(n14686), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i8.GSR = "ENABLED";
    FD1S3DX cnt_div__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i7.GSR = "ENABLED";
    FD1S3DX cnt_div__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i6.GSR = "ENABLED";
    FD1S3DX cnt_div__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i5.GSR = "ENABLED";
    FD1S3DX cnt_div__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i4.GSR = "ENABLED";
    FD1S3DX cnt_div__i3 (.D(n1[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i3.GSR = "ENABLED";
    FD1S3DX cnt_div__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i2.GSR = "ENABLED";
    FD1S3DX cnt_div__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i1.GSR = "ENABLED";
    LUT4 n4857_bdd_4_lut (.A(n17925), .B(addr[7]), .C(n17805), .D(n17893), 
         .Z(n17865)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n4857_bdd_4_lut.init = 16'h44f0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n18761), .B(n17936), .C(cnt_scl[1]), 
         .D(n38), .Z(n4_adj_1498)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 n17607_bdd_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17606), 
         .D(n17607), .Z(n17608)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n17607_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n15007_bdd_4_lut (.A(n15763), .B(n17935), .C(n17940), .D(cnt_scl[5]), 
         .Z(n17670)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n15007_bdd_4_lut.init = 16'h0100;
    LUT4 n17614_bdd_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17613), 
         .D(n17614), .Z(n17615)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n17614_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n4098_bdd_4_lut (.A(n17878), .B(n4031), .C(n16405), .D(\current_state[0] ), 
         .Z(n17669)) /* synthesis lut_function=(A (B+((D)+!C))+!A (D)) */ ;
    defparam n4098_bdd_4_lut.init = 16'hff8a;
    LUT4 i1_2_lut_rep_356 (.A(\current_state[8] ), .B(\current_state[9] ), 
         .Z(n17933)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_356.init = 16'heeee;
    LUT4 i1_2_lut_rep_300 (.A(flag_ack), .B(n4424), .Z(n17877)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_rep_300.init = 16'h8888;
    LUT4 i13497_2_lut_3_lut_4_lut (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(n17880), .D(n4_adj_1499), .Z(n16741)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i13497_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i13036_3_lut (.A(addr[9]), .B(addr[8]), .C(cnt_scl[2]), .Z(n16541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13036_3_lut.init = 16'hcaca;
    LUT4 i13489_2_lut (.A(start), .B(n14114), .Z(sys_clk_c_enable_83)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i13489_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_52 (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(n12), .D(n4_adj_1499), .Z(n13)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_52.init = 16'h1000;
    LUT4 current_state_1__bdd_4_lut_14064 (.A(current_state_c[1]), .B(\current_state[3] ), 
         .C(\current_state[4] ), .D(\current_state[2] ), .Z(n17505)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam current_state_1__bdd_4_lut_14064.init = 16'h0116;
    LUT4 i1_2_lut_rep_325_3_lut (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(\current_state[2] ), .Z(n17902)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_325_3_lut.init = 16'hfefe;
    LUT4 i6295_2_lut_rep_367 (.A(cnt_scl[9]), .B(cnt_scl[7]), .Z(n18761)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6295_2_lut_rep_367.init = 16'heeee;
    LUT4 i13492_3_lut (.A(i2c_sclk_0_c), .B(start), .C(n6304), .Z(n9967)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i13492_3_lut.init = 16'hb7b7;
    LUT4 i2_3_lut_rep_328_4_lut (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(n14175), .D(\current_state[3] ), .Z(n17905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_328_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_53 (.A(n17505), .B(n17933), .C(n14841), .D(n16985), 
         .Z(drive_clk_enable_4)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i2_4_lut_adj_53.init = 16'h3032;
    LUT4 i2_rep_70_2_lut_3_lut (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(n4_adj_1499), .Z(n17889)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_rep_70_2_lut_3_lut.init = 16'h1010;
    LUT4 i13510_2_lut_3_lut_4_lut (.A(\current_state[8] ), .B(\current_state[9] ), 
         .C(n21), .D(n4_adj_1499), .Z(n16727)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i13510_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i5982_2_lut_rep_357 (.A(current_state[7]), .B(\current_state[6] ), 
         .Z(n17934)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5982_2_lut_rep_357.init = 16'heeee;
    LUT4 i13505_2_lut_3_lut (.A(current_state[7]), .B(n17881), .C(n14373), 
         .Z(drive_clk_enable_8)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i13505_2_lut_3_lut.init = 16'h0707;
    LUT4 i1_3_lut_4_lut_adj_54 (.A(n18761), .B(n17936), .C(cnt_scl[2]), 
         .D(cnt_scl[1]), .Z(n15311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_54.init = 16'hfffe;
    LUT4 i1_2_lut_rep_306_3_lut_4_lut (.A(n18761), .B(n17936), .C(n15547), 
         .D(cnt_scl[5]), .Z(n17883)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_306_3_lut_4_lut.init = 16'h1000;
    LUT4 i13041_3_lut (.A(addr[3]), .B(addr[2]), .C(cnt_scl[2]), .Z(n16546)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13041_3_lut.init = 16'hcaca;
    LUT4 i10748_rep_122_2_lut_3_lut_4_lut (.A(current_state[7]), .B(\current_state[6] ), 
         .C(\current_state[0] ), .D(current_state[5]), .Z(n16985)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10748_rep_122_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_55 (.A(rd_cnt[0]), .B(n133), .C(n17879), .D(n14804), 
         .Z(n14659)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C+(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_55.init = 16'h0804;
    LUT4 i1_4_lut_adj_56 (.A(n17890), .B(n17894), .C(n15799), .D(cnt_scl[0]), 
         .Z(n14804)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_56.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut (.A(current_state[7]), .B(\current_state[6] ), .C(n17799), 
         .Z(n6_adj_1500)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_else_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n17935), 
         .D(cnt_scl[1]), .Z(n17959)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_else_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13044_3_lut (.A(n5567[3]), .B(n5567[2]), .C(cnt_scl[2]), .Z(n16549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13044_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_57 (.A(current_state[7]), .B(n17881), .C(n133), 
         .Z(n15647)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_2_lut_3_lut_adj_57.init = 16'h7070;
    LUT4 i1_2_lut_rep_358 (.A(cnt_scl[3]), .B(cnt_scl[4]), .Z(n17935)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_358.init = 16'heeee;
    LUT4 i13529_2_lut_4_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n12_adj_1501), 
         .D(n16513), .Z(n16767)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i13529_2_lut_4_lut_4_lut.init = 16'hccdc;
    PFUMX i13824 (.BLUT(n17798), .ALUT(n17797), .C0(current_state[5]), 
          .Z(n17799));
    LUT4 i1_3_lut_rep_316_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n12_adj_1501), 
         .D(n16513), .Z(n17893)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_316_4_lut.init = 16'h0010;
    LUT4 i6654_2_lut_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(cnt_scl[2]), .Z(n10019)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i6654_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 mux_481_i7_4_lut (.A(\current_state[6] ), .B(\next_state[6] ), 
         .C(n19), .D(flag_ack), .Z(next_state_9__N_967[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam mux_481_i7_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut_adj_58 (.A(n14490), .B(cnt_scl[2]), .C(n17909), .D(n15247), 
         .Z(n15253)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_58.init = 16'hfff7;
    LUT4 n19_bdd_2_lut_14117 (.A(n19), .B(current_state_c[1]), .Z(n17797)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n19_bdd_2_lut_14117.init = 16'h2222;
    LUT4 i1_2_lut_adj_59 (.A(cnt_scl[0]), .B(\current_state[0] ), .Z(n15247)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_59.init = 16'heeee;
    LUT4 i1_2_lut_rep_330_3_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .Z(n17907)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_330_3_lut.init = 16'hfefe;
    LUT4 i12957_4_lut (.A(\current_state[4] ), .B(\current_state[3] ), .C(current_state_c[1]), 
         .D(\current_state[2] ), .Z(n16459)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12957_4_lut.init = 16'hfffe;
    LUT4 i28_2_lut (.A(\current_state[0] ), .B(current_state[5]), .Z(n83)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_60 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(cnt_scl[2]), .Z(n15799)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_60.init = 16'hffef;
    LUT4 i1_2_lut_rep_311_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[8]), 
         .D(cnt_scl[2]), .Z(n17888)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_rep_311_3_lut_4_lut.init = 16'h0f0e;
    LUT4 mux_1706_i8_4_lut (.A(n14752), .B(current_state[7]), .C(flag_ack), 
         .D(n5011), .Z(n5003)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1706_i8_4_lut.init = 16'h5c0c;
    LUT4 i1_4_lut_adj_61 (.A(n17907), .B(n17890), .C(n15391), .D(cnt_scl[0]), 
         .Z(n14752)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_61.init = 16'h1000;
    LUT4 i1_2_lut_adj_62 (.A(cnt_scl[1]), .B(\current_state[3] ), .Z(n15391)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_62.init = 16'h8888;
    LUT4 i2525_4_lut (.A(n17890), .B(n17891), .C(n14), .D(n17875), .Z(n5008)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i2525_4_lut.init = 16'hfaee;
    LUT4 i1_2_lut_rep_314_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n17938), 
         .D(cnt_scl[2]), .Z(n17891)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_314_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[0]), 
         .D(cnt_scl[2]), .Z(n15515)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'hfffe;
    LUT4 i6020_2_lut_rep_359 (.A(cnt_scl[8]), .B(cnt_scl[6]), .Z(n17936)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6020_2_lut_rep_359.init = 16'heeee;
    LUT4 i2_2_lut_rep_301_3_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(n38), 
         .D(n18761), .Z(n17878)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_rep_301_3_lut_4_lut.init = 16'h0010;
    LUT4 i12899_2_lut_rep_324_3_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[1]), 
         .Z(n17901)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i12899_2_lut_rep_324_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_64 (.A(cnt_scl[8]), .B(n17907), .C(cnt_scl[0]), 
         .D(n16369), .Z(n14467)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_64.init = 16'h0004;
    LUT4 i1_3_lut_4_lut_adj_65 (.A(n17901), .B(n18761), .C(cnt_scl[0]), 
         .D(n22), .Z(n4031)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_65.init = 16'h0100;
    PFUMX i13816 (.BLUT(n17779), .ALUT(n17778), .C0(n16730), .Z(n17780));
    PFUMX i13805 (.BLUT(n17761), .ALUT(n17760), .C0(n16730), .Z(n17762));
    LUT4 i2_3_lut_4_lut_adj_66 (.A(n17901), .B(n18761), .C(n17435), .D(cnt_scl[4]), 
         .Z(n3711)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_66.init = 16'h0010;
    LUT4 i13534_4_lut (.A(n16316), .B(n13), .C(n14896), .D(drive_clk_enable_4), 
         .Z(drive_clk_enable_1)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i13534_4_lut.init = 16'h0100;
    LUT4 i13508_3_lut_4_lut (.A(n17901), .B(n18761), .C(n22), .D(cnt_scl[0]), 
         .Z(n14490)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i13508_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_67 (.A(n16741), .B(n38), .C(n6533), .D(n15491), 
         .Z(n14896)) /* synthesis lut_function=(!(A+!((C+(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_67.init = 16'h5551;
    PFUMX i13801 (.BLUT(n17758), .ALUT(n17757), .C0(n16730), .Z(n17759));
    LUT4 i1_4_lut_adj_68 (.A(n3711), .B(n55), .C(n18761), .D(n17926), 
         .Z(n14732)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_68.init = 16'h0008;
    LUT4 mux_1706_i4_4_lut (.A(n17890), .B(\current_state[3] ), .C(flag_ack), 
         .D(n16341), .Z(n4999)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1706_i4_4_lut.init = 16'hacfc;
    LUT4 i1_4_lut_adj_69 (.A(n17934), .B(n6632), .C(n17931), .D(n6572), 
         .Z(n4_adj_1499)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_69.init = 16'h0504;
    LUT4 i1_4_lut_adj_70 (.A(n17893), .B(n30), .C(n18761), .D(n17925), 
         .Z(n14978)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_70.init = 16'h0008;
    LUT4 i1_4_lut_adj_71 (.A(n17935), .B(n11), .C(n15375), .D(cnt_scl[2]), 
         .Z(n15381)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_71.init = 16'h1000;
    LUT4 i1_2_lut_adj_72 (.A(flag_ack), .B(current_state_c[1]), .Z(n15375)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_72.init = 16'h8888;
    LUT4 i12815_3_lut_4_lut (.A(n17933), .B(n4_adj_1499), .C(n17880), 
         .D(n16315), .Z(n16316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i12815_3_lut_4_lut.init = 16'h0b00;
    LUT4 mux_1706_i6_4_lut (.A(n15685), .B(current_state[5]), .C(flag_ack), 
         .D(n17890), .Z(n5001)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1706_i6_4_lut.init = 16'h0cac;
    LUT4 i1_4_lut_adj_73 (.A(n17907), .B(n15679), .C(n17877), .D(cnt_scl[0]), 
         .Z(n15685)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_73.init = 16'h4000;
    LUT4 i1_3_lut_adj_74 (.A(cnt_scl[1]), .B(ctrl_w0_r1), .C(\current_state[3] ), 
         .Z(n15679)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_74.init = 16'h8080;
    LUT4 i1_4_lut_adj_75 (.A(current_state_c[1]), .B(\current_state[3] ), 
         .C(\current_state[4] ), .D(\current_state[2] ), .Z(n6632)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_75.init = 16'h0012;
    LUT4 i1_4_lut_adj_76 (.A(\current_state[3] ), .B(\current_state[4] ), 
         .C(\current_state[2] ), .D(current_state_c[1]), .Z(n6572)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_76.init = 16'h0012;
    LUT4 i1_2_lut_rep_313_3_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[5]), 
         .D(n18761), .Z(n17890)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_313_3_lut_4_lut.init = 16'hffef;
    LUT4 i13011_3_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[2]), 
         .D(n18761), .Z(n16513)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13011_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(\current_state[0] ), 
         .D(n18761), .Z(n15491)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'hfffe;
    FD1P3DX rd_cnt__i1 (.D(n14660), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i1.GSR = "ENABLED";
    PFUMX i13795 (.BLUT(n17752), .ALUT(n17751), .C0(n16730), .Z(n17753));
    LUT4 i1_4_lut_adj_78 (.A(n10019), .B(n35), .C(n14089), .D(n17935), 
         .Z(n38)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_78.init = 16'h05cd;
    FD1P3DX rd_cnt__i2 (.D(n14903), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i2.GSR = "ENABLED";
    LUT4 i13542_3_lut_4_lut (.A(n17933), .B(n4_adj_1499), .C(n13280), 
         .D(n4504[0]), .Z(n4510[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i13542_3_lut_4_lut.init = 16'hfb40;
    LUT4 i2631_3_lut (.A(n5567[5]), .B(n5983), .C(cnt_scl[2]), .Z(n5987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2631_3_lut.init = 16'hcaca;
    LUT4 mux_1706_i5_4_lut (.A(n15675), .B(\current_state[4] ), .C(flag_ack), 
         .D(n17890), .Z(n5000)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1706_i5_4_lut.init = 16'h0cac;
    LUT4 i1_2_lut_rep_315_3_lut_4_lut (.A(n17935), .B(cnt_scl[2]), .C(n17936), 
         .D(n18761), .Z(n17892)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_2_lut_rep_315_3_lut_4_lut.init = 16'hfffe;
    LUT4 sda_transmit_N_1103_bdd_4_lut_13776 (.A(n30), .B(n14724), .C(n18761), 
         .D(n3820[0]), .Z(n17549)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam sda_transmit_N_1103_bdd_4_lut_13776.init = 16'h0200;
    LUT4 i2836_2_lut_rep_298 (.A(current_state_c[1]), .B(n4424), .Z(n17875)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i2836_2_lut_rep_298.init = 16'h2222;
    CCU2C add_47_11 (.A0(cnt_scl[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12510), 
          .S0(cnt_scl_9__N_899[9]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_11.INIT0 = 16'haaaa;
    defparam add_47_11.INIT1 = 16'h0000;
    defparam add_47_11.INJECT1_0 = "NO";
    defparam add_47_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_79 (.A(n17907), .B(n15669), .C(n17877), .D(cnt_scl[0]), 
         .Z(n15675)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_79.init = 16'h4000;
    LUT4 i1_3_lut_adj_80 (.A(cnt_scl[1]), .B(ctrl_w0_r1), .C(\current_state[3] ), 
         .Z(n15669)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_80.init = 16'h2020;
    LUT4 current_state_2__bdd_3_lut (.A(\current_state[2] ), .B(n17720), 
         .C(flag_ack), .Z(n17721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam current_state_2__bdd_3_lut.init = 16'hcaca;
    LUT4 n16572_bdd_4_lut_13689 (.A(n16572), .B(n30), .C(n14724), .D(n18761), 
         .Z(n17548)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam n16572_bdd_4_lut_13689.init = 16'h0008;
    LUT4 i1_4_lut_adj_81 (.A(drive_clk_enable_4), .B(n17674), .C(n66), 
         .D(n17889), .Z(drive_clk_enable_2)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_81.init = 16'ha088;
    LUT4 mux_1359_i3_3_lut (.A(n17721), .B(next_state_c[2]), .C(n5008), 
         .Z(n4437[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1359_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_82 (.A(n15241), .B(n15637), .C(n4_adj_1496), .D(n30), 
         .Z(n66)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hce0a;
    LUT4 n17550_bdd_3_lut (.A(n17550), .B(n17548), .C(n4424), .Z(n17551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17550_bdd_3_lut.init = 16'hcaca;
    LUT4 n15547_bdd_3_lut_4_lut (.A(cnt_scl[5]), .B(n17906), .C(n17894), 
         .D(n15547), .Z(n17659)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam n15547_bdd_3_lut_4_lut.init = 16'h2000;
    LUT4 n17567_bdd_2_lut_3_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n17567), 
         .Z(n17568)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n17567_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_1359_i4_3_lut (.A(n4999), .B(next_state_c[3]), .C(n5008), 
         .Z(n4437[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1359_i4_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_83 (.A(n14724), .B(n18761), .C(n4424), .D(current_state_c[1]), 
         .Z(n15637)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_83.init = 16'h1011;
    LUT4 n17662_bdd_2_lut_4_lut (.A(n17936), .B(n18761), .C(cnt_scl[2]), 
         .D(n17662), .Z(n17663)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n17662_bdd_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_4_lut_adj_84 (.A(n18761), .B(cnt_scl[1]), .C(n30), .D(n17893), 
         .Z(n14953)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_84.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_85 (.A(n18761), .B(n15335), .C(n56), .D(n3711), 
         .Z(sda_transmit_N_1103)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_85.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_86 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n55), 
         .D(n4), .Z(n14451)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_86.init = 16'hffef;
    LUT4 mux_920_i1_3_lut (.A(addr[14]), .B(addr[12]), .C(cnt_scl[3]), 
         .Z(n3802[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam mux_920_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_87 (.A(n15713), .B(n12_adj_1501), .C(n17935), .D(n16311), 
         .Z(n14724)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_87.init = 16'h0008;
    FD1P3DX rd_cnt__i3 (.D(n14661), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i3.GSR = "ENABLED";
    LUT4 i12811_2_lut (.A(cnt_scl[2]), .B(cnt_scl[6]), .Z(n16311)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12811_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_88 (.A(current_state[5]), .B(n14076), .C(n12_adj_1502), 
         .D(\current_state[0] ), .Z(n4424)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut_adj_88.init = 16'h0010;
    LUT4 i26_2_lut (.A(\current_state[3] ), .B(\current_state[4] ), .Z(n12_adj_1502)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i26_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_rep_303 (.A(n83), .B(\current_state[3] ), .C(n14076), 
         .D(\current_state[4] ), .Z(n17880)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_rep_303.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[4]), 
         .D(cnt_scl[3]), .Z(n15313)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'hfffe;
    LUT4 n19_bdd_3_lut_4_lut (.A(cnt_scl[5]), .B(n17906), .C(current_state_c[1]), 
         .D(n14), .Z(n17798)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam n19_bdd_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i1_3_lut_4_lut_adj_90 (.A(current_state_c[1]), .B(n4424), .C(n18761), 
         .D(n56), .Z(n15241)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_3_lut_4_lut_adj_90.init = 16'h0200;
    LUT4 i23_3_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(cnt_scl[1]), .Z(n12_adj_1501)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i23_3_lut.init = 16'hc5c5;
    LUT4 flag_ack_N_1056_bdd_4_lut (.A(flag_ack_N_1056), .B(n4424), .C(n17890), 
         .D(n15381), .Z(n17720)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam flag_ack_N_1056_bdd_4_lut.init = 16'h0700;
    LUT4 i10759_2_lut_rep_329_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), 
         .C(cnt_scl[6]), .D(cnt_scl[8]), .Z(n17906)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10759_2_lut_rep_329_3_lut_4_lut.init = 16'hfffe;
    LUT4 i88_4_lut (.A(n14722), .B(n62), .C(cnt_scl[4]), .D(n86), .Z(n56)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i88_4_lut.init = 16'hcfca;
    PFUMX i13784 (.BLUT(n17736), .ALUT(n17732), .C0(n17893), .Z(n3820[0]));
    LUT4 i12797_2_lut (.A(cnt_scl[3]), .B(cnt_scl[6]), .Z(n16297)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12797_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n55), 
         .D(n7262), .Z(n14733)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_rep_30_4_lut (.A(n12695), .B(n16369), .C(n11), .D(n17888), 
         .Z(n30)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i1_rep_30_4_lut.init = 16'habaa;
    LUT4 mux_1359_i5_3_lut (.A(n5000), .B(next_state_c[4]), .C(n5008), 
         .Z(n4437[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1359_i5_3_lut.init = 16'hcaca;
    LUT4 i86_3_lut (.A(n49), .B(n62), .C(cnt_scl[4]), .Z(n55)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i86_3_lut.init = 16'hcaca;
    LUT4 i12865_2_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12865_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_361 (.A(cnt_scl[0]), .B(cnt_scl[1]), .Z(n17938)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_361.init = 16'h8888;
    CCU2C add_47_9 (.A0(cnt_scl[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12509), .COUT(n12510), .S0(cnt_scl_9__N_899[7]), .S1(cnt_scl_9__N_899[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_9.INIT0 = 16'haaaa;
    defparam add_47_9.INIT1 = 16'haaaa;
    defparam add_47_9.INJECT1_0 = "NO";
    defparam add_47_9.INJECT1_1 = "NO";
    LUT4 mux_1359_i6_3_lut (.A(n5001), .B(next_state_c[5]), .C(n5008), 
         .Z(n4437[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1359_i6_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_91 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(rd_cnt[1]), 
         .D(rd_cnt[0]), .Z(n15655)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_91.init = 16'h8000;
    LUT4 i13225_1_lut_4_lut (.A(n83), .B(\current_state[3] ), .C(n14076), 
         .D(\current_state[4] ), .Z(n16730)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i13225_1_lut_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_adj_92 (.A(n2[0]), .B(n4650), .C(start), .Z(n14684)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_92.init = 16'h2020;
    LUT4 i1_4_lut_adj_93 (.A(n17936), .B(n15281), .C(n7), .D(cnt_scl[0]), 
         .Z(n49)) /* synthesis lut_function=(!(A+!((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_93.init = 16'h5111;
    LUT4 i1_4_lut_adj_94 (.A(cnt_scl[2]), .B(n16423), .C(cnt_scl[5]), 
         .D(cnt_scl[0]), .Z(n15281)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_94.init = 16'hffde;
    LUT4 start_N_755_bdd_2_lut_13800_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[4]), .Z(n17757)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_13800_4_lut.init = 16'hca00;
    LUT4 i3_4_lut_adj_95 (.A(cnt_div[4]), .B(n15631), .C(cnt_div[0]), 
         .D(n33), .Z(n4650)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_95.init = 16'h8000;
    LUT4 i12921_2_lut (.A(cnt_scl[1]), .B(cnt_scl[3]), .Z(n16423)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12921_2_lut.init = 16'heeee;
    CCU2C add_47_7 (.A0(cnt_scl[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12508), .COUT(n12509), .S0(cnt_scl_9__N_899[5]), .S1(cnt_scl_9__N_899[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_7.INIT0 = 16'haaaa;
    defparam add_47_7.INIT1 = 16'haaaa;
    defparam add_47_7.INJECT1_0 = "NO";
    defparam add_47_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_96 (.A(n16465), .B(cnt_div[14]), .C(n15619), .D(cnt_div[13]), 
         .Z(n15631)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_96.init = 16'h0010;
    LUT4 i12963_4_lut (.A(cnt_div[9]), .B(cnt_div[11]), .C(cnt_div[8]), 
         .D(cnt_div[10]), .Z(n16465)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12963_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_97 (.A(cnt_div[12]), .B(cnt_div[5]), .Z(n15619)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_97.init = 16'h4444;
    LUT4 mux_1005_i1_3_lut (.A(addr[5]), .B(n3904[0]), .C(cnt_scl[2]), 
         .Z(n3916[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_1005_i1_3_lut.init = 16'hcaca;
    CCU2C add_47_5 (.A0(cnt_scl[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12507), .COUT(n12508), .S0(cnt_scl_9__N_899[3]), .S1(cnt_scl_9__N_899[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_5.INIT0 = 16'haaaa;
    defparam add_47_5.INIT1 = 16'haaaa;
    defparam add_47_5.INJECT1_0 = "NO";
    defparam add_47_5.INJECT1_1 = "NO";
    LUT4 i6321_2_lut (.A(cnt_scl[4]), .B(cnt_scl[2]), .Z(n9680)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6321_2_lut.init = 16'heeee;
    LUT4 i12867_2_lut (.A(cnt_scl[5]), .B(cnt_scl[6]), .Z(n16369)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12867_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_98 (.A(n17907), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .D(\current_state[6] ), .Z(n15547)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_98.init = 16'h4000;
    LUT4 i1_2_lut_adj_99 (.A(cnt_scl_9__N_899[0]), .B(n16), .Z(cnt_scl_9__N_793[0])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_99.init = 16'h8888;
    LUT4 i19_4_lut (.A(n17881), .B(\current_state[0] ), .C(n17880), .D(\current_state[6] ), 
         .Z(drive_clk_enable_3)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hc0c5;
    CCU2C add_47_3 (.A0(cnt_scl[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12506), .COUT(n12507), .S0(cnt_scl_9__N_899[1]), .S1(cnt_scl_9__N_899[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_3.INIT0 = 16'haaaa;
    defparam add_47_3.INIT1 = 16'haaaa;
    defparam add_47_3.INJECT1_0 = "NO";
    defparam add_47_3.INJECT1_1 = "NO";
    LUT4 i2649_2_lut (.A(\current_state[6] ), .B(n17880), .Z(n6005)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i2649_2_lut.init = 16'heeee;
    CCU2C add_47_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_scl[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12506), .S1(cnt_scl_9__N_899[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_1.INIT0 = 16'h0000;
    defparam add_47_1.INIT1 = 16'h555a;
    defparam add_47_1.INJECT1_0 = "NO";
    defparam add_47_1.INJECT1_1 = "NO";
    LUT4 i6567_4_lut (.A(n17936), .B(n34), .C(n17942), .D(n15515), .Z(n9929)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;
    defparam i6567_4_lut.init = 16'hcccd;
    PFUMX i13781 (.BLUT(n17733), .ALUT(n16541), .C0(cnt_scl[3]), .Z(n17734));
    LUT4 i13450_4_lut (.A(n6304), .B(start), .C(drive_clk), .D(n14114), 
         .Z(drive_clk_N_1034)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B (C))) */ ;
    defparam i13450_4_lut.init = 16'hb73f;
    LUT4 i1_4_lut_adj_100 (.A(n15861), .B(n14583), .C(cnt_div[2]), .D(cnt_div[7]), 
         .Z(n6304)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_100.init = 16'hefff;
    LUT4 i1_3_lut_adj_101 (.A(cnt_div[6]), .B(cnt_div[1]), .C(cnt_div[3]), 
         .Z(n15861)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_adj_101.init = 16'hf7f7;
    LUT4 i1_4_lut_adj_102 (.A(cnt_scl[1]), .B(n15291), .C(n14467), .D(n9680), 
         .Z(n34)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_102.init = 16'ha0a8;
    LUT4 i1_2_lut_rep_302_4_lut (.A(cnt_scl[1]), .B(n17892), .C(n14089), 
         .D(current_state[7]), .Z(n17879)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_rep_302_4_lut.init = 16'hfd00;
    LUT4 n16541_bdd_3_lut_13783 (.A(addr[11]), .B(addr[10]), .C(cnt_scl[2]), 
         .Z(n17733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16541_bdd_3_lut_13783.init = 16'hcaca;
    LUT4 i1_4_lut_adj_103 (.A(n14929), .B(cnt_div[2]), .C(n14945), .D(n14573), 
         .Z(n14114)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_103.init = 16'ha888;
    LUT4 i1_3_lut_4_lut_adj_104 (.A(cnt_scl[5]), .B(n17906), .C(n17938), 
         .D(n17907), .Z(flag_ack_N_1056)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_3_lut_4_lut_adj_104.init = 16'h0020;
    LUT4 i1_4_lut_adj_105 (.A(n16313), .B(n6_adj_1504), .C(n15793), .D(n15789), 
         .Z(n14929)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_105.init = 16'hfffd;
    LUT4 i1_4_lut_adj_106 (.A(n17878), .B(n16405), .C(n15259), .D(n14490), 
         .Z(n15151)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;
    defparam i1_4_lut_adj_106.init = 16'h20a0;
    LUT4 i1_4_lut_adj_107 (.A(n16301), .B(n14583), .C(cnt_div[6]), .D(cnt_div[7]), 
         .Z(n14945)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_107.init = 16'hffdf;
    LUT4 i1_4_lut_adj_108 (.A(n15557), .B(n6_adj_1504), .C(n15559), .D(n16313), 
         .Z(n14573)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_108.init = 16'hfeff;
    LUT4 i1_4_lut_adj_109 (.A(cnt_div[0]), .B(cnt_div[2]), .C(n15783), 
         .D(cnt_div[1]), .Z(n15793)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_109.init = 16'hfff7;
    FD1P3DX rd_cnt__i0 (.D(n14659), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_110 (.A(cnt_div[7]), .B(cnt_div[9]), .Z(n15783)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_adj_110.init = 16'heeee;
    LUT4 i1_4_lut_adj_111 (.A(cnt_scl[3]), .B(cnt_scl[6]), .C(cnt_scl[8]), 
         .D(n17927), .Z(n15291)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_111.init = 16'h0100;
    LUT4 n5033_bdd_3_lut_13772 (.A(cnt_scl[0]), .B(n30), .C(n17893), .Z(n17566)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam n5033_bdd_3_lut_13772.init = 16'hbfbf;
    LUT4 i12801_2_lut (.A(cnt_div[1]), .B(cnt_div[3]), .Z(n16301)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12801_2_lut.init = 16'h8888;
    LUT4 cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_305_3_lut_4_lut (.A(n17907), 
         .B(n17938), .C(n17906), .D(cnt_scl[5]), .Z(n17882)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_305_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_adj_112 (.A(cnt_div[0]), .B(n13_adj_1505), .Z(n15557)) /* synthesis lut_function=((B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_adj_112.init = 16'hdddd;
    LUT4 i1_4_lut_adj_113 (.A(n17923), .B(cnt_div[7]), .C(cnt_div[1]), 
         .D(cnt_div[9]), .Z(n15559)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_113.init = 16'hfffb;
    LUT4 i1_4_lut_adj_114 (.A(cnt_div[13]), .B(cnt_div[14]), .C(cnt_div[10]), 
         .D(cnt_div[8]), .Z(n13_adj_1505)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_114.init = 16'hfffe;
    LUT4 i1_3_lut_rep_304_4_lut (.A(n17907), .B(n17906), .C(n14089), .D(cnt_scl[1]), 
         .Z(n17881)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_3_lut_rep_304_4_lut.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_115 (.A(n17907), .B(n17906), .C(cnt_scl[5]), 
         .D(n11), .Z(n15004)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_3_lut_4_lut_adj_115.init = 16'hfffe;
    LUT4 n5033_bdd_4_lut_13771 (.A(n55), .B(cnt_scl[0]), .C(n3711), .D(cnt_scl[5]), 
         .Z(n17565)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam n5033_bdd_4_lut_13771.init = 16'hf7ff;
    LUT4 i2_2_lut (.A(cnt_div[3]), .B(cnt_div[6]), .Z(n6_adj_1504)) /* synthesis lut_function=((B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(63[22:56])
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 i12813_2_lut (.A(cnt_div[4]), .B(cnt_div[5]), .Z(n16313)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12813_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_116 (.A(n16313), .B(n13_adj_1505), .C(n15577), .D(cnt_div[9]), 
         .Z(n14583)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_116.init = 16'hfffd;
    LUT4 i6502_2_lut (.A(n17602), .B(drive_clk_enable_4), .Z(next_state_9__N_803[9])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6502_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_363 (.A(cnt_scl[8]), .B(cnt_scl[9]), .Z(n17940)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_2_lut_rep_363.init = 16'heeee;
    LUT4 mux_1359_i8_3_lut (.A(n5003), .B(next_state_c[7]), .C(n5008), 
         .Z(n4437[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1359_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_117 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n15335)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_117.init = 16'h4444;
    LUT4 i1_2_lut_adj_118 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n15633)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_118.init = 16'hdddd;
    LUT4 i1_4_lut_adj_119 (.A(n12_adj_1501), .B(n30), .C(n15313), .D(n15311), 
         .Z(n15003)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_119.init = 16'hfff7;
    LUT4 n16541_bdd_3_lut_14016 (.A(n3802[0]), .B(addr[13]), .C(cnt_scl[2]), 
         .Z(n17735)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n16541_bdd_3_lut_14016.init = 16'hacac;
    LUT4 i1_4_lut_adj_120 (.A(n14490), .B(\current_state[0] ), .C(n4_adj_1498), 
         .D(cnt_scl[2]), .Z(n23_adj_1506)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_120.init = 16'heccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_121 (.A(cnt_scl[7]), .B(cnt_scl[6]), .C(cnt_scl[9]), 
         .D(cnt_scl[8]), .Z(n15357)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_2_lut_3_lut_4_lut_adj_121.init = 16'hfffe;
    LUT4 i1_3_lut_adj_122 (.A(n17894), .B(flag_ack_N_1056), .C(\current_state[6] ), 
         .Z(n14865)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_122.init = 16'h8080;
    LUT4 i2391_3_lut_rep_299_4_lut (.A(n17891), .B(n17890), .C(\current_state[6] ), 
         .D(n17881), .Z(n17876)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i2391_3_lut_rep_299_4_lut.init = 16'hefe0;
    LUT4 i13389_3_lut_4_lut (.A(n17893), .B(cnt_scl[3]), .C(n17865), .D(n16546), 
         .Z(n3919[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam i13389_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n16746_bdd_4_lut_13718 (.A(n5008), .B(\current_state[8] ), .C(next_state_c[8]), 
         .D(flag_ack), .Z(n17603)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13718.init = 16'ha0e4;
    LUT4 n17735_bdd_3_lut (.A(n17735), .B(n17734), .C(cnt_scl[4]), .Z(n17736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17735_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_123 (.A(cnt_scl[7]), .B(cnt_scl[6]), .C(cnt_scl[1]), 
         .Z(n15763)) /* synthesis lut_function=(A+(B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_2_lut_3_lut_adj_123.init = 16'hfefe;
    PFUMX i50 (.BLUT(n14760), .ALUT(n31), .C0(cnt_div[6]), .Z(n33));
    LUT4 i1_4_lut_adj_124 (.A(n16829), .B(n9929), .C(n10), .D(n16513), 
         .Z(n14435)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_124.init = 16'hfff7;
    LUT4 start_N_755_bdd_2_lut_13794_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[5]), .Z(n17751)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_13794_4_lut.init = 16'hca00;
    LUT4 i1_4_lut_adj_125 (.A(n38), .B(n6533), .C(n4031), .D(n16483), 
         .Z(n14607)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_125.init = 16'h0020;
    LUT4 i3_2_lut_rep_364 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n17941)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_364.init = 16'h2222;
    LUT4 i13421_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17759), 
         .D(next_state_9__N_967[4]), .Z(n4425[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13421_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3682_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n3711), 
         .D(n17942), .Z(n7262)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam i3682_4_lut_4_lut.init = 16'h2c20;
    LUT4 i6342_2_lut_rep_365 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n17942)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6342_2_lut_rep_365.init = 16'h8888;
    LUT4 i6501_2_lut (.A(n17609), .B(drive_clk_enable_4), .Z(next_state_9__N_803[8])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6501_2_lut.init = 16'h8888;
    LUT4 i6500_2_lut (.A(n4449[7]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[7])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6500_2_lut.init = 16'h8888;
    LUT4 i6499_2_lut (.A(n4449[6]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[6])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6499_2_lut.init = 16'h8888;
    LUT4 i6498_2_lut (.A(n4449[5]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[5])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6498_2_lut.init = 16'h8888;
    LUT4 i13442_2_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .Z(n16829)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;
    defparam i13442_2_lut_3_lut.init = 16'h8787;
    LUT4 i6708_4_lut_rep_317 (.A(n9987), .B(n6), .C(rd_cnt[2]), .D(rd_cnt[3]), 
         .Z(n17894)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i6708_4_lut_rep_317.init = 16'hccc8;
    LUT4 i6497_2_lut (.A(n4449[4]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[4])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6497_2_lut.init = 16'h8888;
    LUT4 i6380_4_lut_4_lut (.A(\current_state[6] ), .B(n17661), .C(n9929), 
         .D(n10), .Z(n4484[0])) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6380_4_lut_4_lut.init = 16'h55d5;
    LUT4 i6496_2_lut (.A(n4449[3]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[3])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6496_2_lut.init = 16'h8888;
    LUT4 i45_4_lut_4_lut (.A(flag_ack), .B(\current_state[0] ), .C(n5008), 
         .D(next_state[0]), .Z(n20)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i45_4_lut_4_lut.init = 16'hf404;
    LUT4 i13372_3_lut_4_lut (.A(n17893), .B(cnt_scl[3]), .C(n17864), .D(n16549), 
         .Z(n5989)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam i13372_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_481_i8_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[7]), 
         .D(current_state[7]), .Z(\next_state_9__N_967[7] )) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_481_i8_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_4_lut_adj_126 (.A(n4031), .B(cnt_scl[2]), .C(n16455), .D(cnt_scl[3]), 
         .Z(n15259)) /* synthesis lut_function=(!((B (C)+!B (C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_126.init = 16'h080a;
    LUT4 i12953_2_lut (.A(cnt_scl[4]), .B(\current_state[0] ), .Z(n16455)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12953_2_lut.init = 16'heeee;
    LUT4 mux_1359_i7_4_lut_4_lut (.A(flag_ack), .B(n5008), .C(\next_state[6] ), 
         .D(\current_state[6] ), .Z(n4437[6])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_1359_i7_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i13405_3_lut (.A(n23_adj_1507), .B(n26), .C(n17880), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13405_3_lut.init = 16'hcaca;
    LUT4 mux_481_i4_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[3]), 
         .D(\current_state[3] ), .Z(next_state_9__N_967[3])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_481_i4_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n4926_bdd_2_lut_13715_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[8]), .Z(n17604)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n4926_bdd_2_lut_13715_4_lut.init = 16'hca00;
    LUT4 mux_481_i5_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[4]), 
         .D(\current_state[4] ), .Z(next_state_9__N_967[4])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_481_i5_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_481_i3_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[2]), 
         .D(\current_state[2] ), .Z(next_state_9__N_967[2])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_481_i3_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_481_i6_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[5]), 
         .D(current_state[5]), .Z(next_state_9__N_967[5])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_481_i6_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_4_lut (.A(n17907), .B(n17877), .C(n17938), .D(n17890), 
         .Z(n5011)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_127 (.A(n17930), .B(n17938), .C(n17935), .D(n15357), 
         .Z(n19)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(299[25:31])
    defparam i1_4_lut_adj_127.init = 16'hfff7;
    CCU2C add_23_15 (.A0(cnt_div[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12504), .S0(n2[13]), .S1(n2[14]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_15.INIT0 = 16'haaaa;
    defparam add_23_15.INIT1 = 16'haaaa;
    defparam add_23_15.INJECT1_0 = "NO";
    defparam add_23_15.INJECT1_1 = "NO";
    PFUMX i13755 (.BLUT(n17673), .ALUT(n17669), .C0(n17880), .Z(n17674));
    LUT4 i6495_2_lut (.A(n4449[2]), .B(drive_clk_enable_4), .Z(next_state_9__N_803[2])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6495_2_lut.init = 16'h8888;
    LUT4 i2627_3_lut (.A(n5567[6]), .B(n5567[4]), .C(cnt_scl[3]), .Z(n5983)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2627_3_lut.init = 16'hcaca;
    LUT4 start_N_755_bdd_2_lut_13815_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[2]), .Z(n17778)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_13815_4_lut.init = 16'hca00;
    LUT4 n16746_bdd_4_lut_13713 (.A(n19), .B(\current_state[9] ), .C(next_state_c[9]), 
         .D(flag_ack), .Z(n17600)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13713.init = 16'ha0e4;
    LUT4 n4926_bdd_2_lut_13707_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[9]), .Z(n17597)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n4926_bdd_2_lut_13707_4_lut.init = 16'hca00;
    LUT4 start_N_755_bdd_2_lut_13804_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[3]), .Z(n17760)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_13804_4_lut.init = 16'hca00;
    LUT4 i46_3_lut_4_lut (.A(n17890), .B(n15547), .C(n17876), .D(next_state[0]), 
         .Z(n23_adj_1507)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i46_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i6494_2_lut (.A(n17616), .B(drive_clk_enable_4), .Z(next_state_9__N_803[1])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6494_2_lut.init = 16'h8888;
    LUT4 n4857_bdd_4_lut_13857 (.A(n17925), .B(n5567[7]), .C(n17808), 
         .D(n17893), .Z(n17864)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n4857_bdd_4_lut_13857.init = 16'h44f0;
    LUT4 i6670_2_lut_4_lut (.A(n17907), .B(n17877), .C(n17938), .D(n15381), 
         .Z(n16341)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i6670_2_lut_4_lut.init = 16'hff40;
    PFUMX i13750 (.BLUT(n17663), .ALUT(n17894), .C0(\current_state[6] ), 
          .Z(n17664));
    LUT4 i1_4_lut_4_lut_adj_128 (.A(cnt_div[1]), .B(cnt_div[7]), .C(cnt_div[3]), 
         .D(cnt_div[2]), .Z(n14760)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_128.init = 16'h1040;
    LUT4 n17672_bdd_2_lut_4_lut (.A(n15007), .B(n17670), .C(\current_state[6] ), 
         .D(n17926), .Z(n17673)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D))))) */ ;
    defparam n17672_bdd_2_lut_4_lut.init = 16'h00c5;
    LUT4 i1_2_lut_adj_129 (.A(cnt_scl_9__N_899[9]), .B(n16), .Z(cnt_scl_9__N_793[9])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_129.init = 16'h8888;
    LUT4 n4926_bdd_2_lut_13723_4_lut (.A(n17881), .B(n17882), .C(\current_state[6] ), 
         .D(next_state_c[1]), .Z(n17611)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n4926_bdd_2_lut_13723_4_lut.init = 16'hca00;
    LUT4 n17600_bdd_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17599), 
         .D(n17600), .Z(n17601)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n17600_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_130 (.A(n15745), .B(n14669), .C(n15269), .D(n17882), 
         .Z(n16)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i1_4_lut_adj_130.init = 16'hfefc;
    LUT4 i1_4_lut_adj_131 (.A(n16307), .B(n15741), .C(n17933), .D(\current_state[0] ), 
         .Z(n15745)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_131.init = 16'h0004;
    LUT4 i1_4_lut_adj_132 (.A(n16451), .B(n6_adj_1500), .C(n16966), .D(n13224), 
         .Z(n14669)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_132.init = 16'h4544;
    LUT4 i1_4_lut_adj_133 (.A(n17933), .B(n17958), .C(n14910), .D(n16377), 
         .Z(n15269)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_133.init = 16'hafab;
    LUT4 i13423_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17753), 
         .D(next_state_9__N_967[5]), .Z(n4425[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13423_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_134 (.A(cnt_scl_9__N_899[8]), .B(n16), .Z(cnt_scl_9__N_793[8])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_134.init = 16'h8888;
    LUT4 i12807_3_lut (.A(\current_state[6] ), .B(current_state[5]), .C(current_state[7]), 
         .Z(n16307)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i12807_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_135 (.A(cnt_scl_9__N_899[7]), .B(n16), .Z(cnt_scl_9__N_793[7])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_135.init = 16'h8888;
    LUT4 i1_2_lut_adj_136 (.A(cnt_scl_9__N_899[6]), .B(n16), .Z(cnt_scl_9__N_793[6])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_136.init = 16'h8888;
    LUT4 i1_2_lut_adj_137 (.A(cnt_scl_9__N_899[5]), .B(n16), .Z(cnt_scl_9__N_793[5])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_137.init = 16'h8888;
    LUT4 i1_2_lut_adj_138 (.A(cnt_scl_9__N_899[4]), .B(n16), .Z(cnt_scl_9__N_793[4])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_138.init = 16'h8888;
    LUT4 i1_2_lut_adj_139 (.A(cnt_scl_9__N_899[3]), .B(n16), .Z(cnt_scl_9__N_793[3])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_139.init = 16'h8888;
    LUT4 LessThan_686_i4_4_lut_4_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .C(rd_cnt[0]), .D(rd_cnt[1]), .Z(n9987)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C (D)))) */ ;
    defparam LessThan_686_i4_4_lut_4_lut.init = 16'hfe64;
    CCU2C add_23_13 (.A0(cnt_div[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12503), .COUT(n12504), .S0(n2[11]), .S1(n2[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_13.INIT0 = 16'haaaa;
    defparam add_23_13.INIT1 = 16'haaaa;
    defparam add_23_13.INJECT1_0 = "NO";
    defparam add_23_13.INJECT1_1 = "NO";
    CCU2C add_23_11 (.A0(cnt_div[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12502), .COUT(n12503), .S0(n2[9]), .S1(n2[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_11.INIT0 = 16'haaaa;
    defparam add_23_11.INIT1 = 16'haaaa;
    defparam add_23_11.INJECT1_0 = "NO";
    defparam add_23_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_140 (.A(cnt_scl_9__N_899[2]), .B(n16), .Z(cnt_scl_9__N_793[2])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_140.init = 16'h8888;
    LUT4 n16746_bdd_4_lut_13710 (.A(n5008), .B(\current_state[9] ), .C(next_state_c[9]), 
         .D(flag_ack), .Z(n17596)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13710.init = 16'ha0e4;
    LUT4 i1_2_lut_adj_141 (.A(cnt_scl_9__N_899[1]), .B(n16), .Z(cnt_scl_9__N_793[1])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_141.init = 16'h8888;
    CCU2C add_23_9 (.A0(cnt_div[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12501), .COUT(n12502), .S0(n2[7]), .S1(n2[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_9.INIT0 = 16'haaaa;
    defparam add_23_9.INIT1 = 16'haaaa;
    defparam add_23_9.INJECT1_0 = "NO";
    defparam add_23_9.INJECT1_1 = "NO";
    CCU2C add_23_7 (.A0(cnt_div[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12500), .COUT(n12501), .S0(n2[5]), .S1(n2[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_7.INIT0 = 16'haaaa;
    defparam add_23_7.INIT1 = 16'haaaa;
    defparam add_23_7.INJECT1_0 = "NO";
    defparam add_23_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_142 (.A(current_state_c[1]), .B(\current_state[4] ), 
         .C(\current_state[2] ), .D(\current_state[3] ), .Z(n15741)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_142.init = 16'h0114;
    LUT4 i37_4_lut_3_lut (.A(current_state[7]), .B(\current_state[0] ), 
         .C(\current_state[6] ), .Z(n23)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i37_4_lut_3_lut.init = 16'h1616;
    LUT4 i13425_3_lut (.A(n17664), .B(n15151), .C(n17880), .Z(n4339[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13425_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_143 (.A(n2[14]), .B(n4650), .C(start), .Z(n14687)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_143.init = 16'h2020;
    LUT4 i13429_3_lut (.A(n17660), .B(n4386), .C(n17880), .Z(n4425[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13429_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_144 (.A(n2[13]), .B(n4650), .C(start), .Z(n14685)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_144.init = 16'h2020;
    CCU2C add_23_5 (.A0(cnt_div[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12499), .COUT(n12500), .S0(n2[3]), .S1(n2[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_5.INIT0 = 16'haaaa;
    defparam add_23_5.INIT1 = 16'haaaa;
    defparam add_23_5.INJECT1_0 = "NO";
    defparam add_23_5.INJECT1_1 = "NO";
    LUT4 mux_1297_i1_4_lut (.A(n15227), .B(flag_ack), .C(n21), .D(n17568), 
         .Z(n4304[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1297_i1_4_lut.init = 16'h0c5c;
    CCU2C add_23_3 (.A0(cnt_div[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12498), .COUT(n12499), .S0(n2[1]), .S1(n2[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_3.INIT0 = 16'haaaa;
    defparam add_23_3.INIT1 = 16'haaaa;
    defparam add_23_3.INJECT1_0 = "NO";
    defparam add_23_3.INJECT1_1 = "NO";
    LUT4 mux_1293_i1_4_lut (.A(\current_state[6] ), .B(n15253), .C(n17880), 
         .D(n4_adj_1498), .Z(n4298[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1293_i1_4_lut.init = 16'h3a0a;
    LUT4 i1_rep_103_2_lut (.A(current_state_c[1]), .B(current_state[5]), 
         .Z(n16966)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_rep_103_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_adj_145 (.A(n2[12]), .B(n4650), .C(start), .Z(n14682)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_145.init = 16'h2020;
    LUT4 i1_3_lut_adj_146 (.A(n2[11]), .B(n4650), .C(start), .Z(n14683)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_146.init = 16'h2020;
    LUT4 i9784_4_lut (.A(\current_state[6] ), .B(current_state[7]), .C(n17882), 
         .D(n17881), .Z(n13224)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i9784_4_lut.init = 16'h6420;
    LUT4 n16746_bdd_4_lut_13721 (.A(n19), .B(\current_state[8] ), .C(next_state_c[8]), 
         .D(flag_ack), .Z(n17607)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13721.init = 16'ha0e4;
    LUT4 i1_3_lut_adj_147 (.A(n2[10]), .B(n4650), .C(start), .Z(n14681)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_147.init = 16'h2020;
    CCU2C add_23_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_div[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12498), .S1(n2[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_1.INIT0 = 16'h0000;
    defparam add_23_1.INIT1 = 16'h555a;
    defparam add_23_1.INJECT1_0 = "NO";
    defparam add_23_1.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(\current_state[3] ), .B(n4_adj_1520), .C(\current_state[6] ), 
         .Z(n14910)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(205[17:26])
    defparam i2_3_lut.init = 16'h0404;
    LUT4 i12875_3_lut (.A(current_state[5]), .B(current_state_c[1]), .C(current_state[7]), 
         .Z(n16377)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i12875_3_lut.init = 16'hfefe;
    PFUMX i13727 (.BLUT(n17615), .ALUT(n17610), .C0(n17889), .Z(n17616));
    LUT4 i1_4_lut_adj_148 (.A(\current_state[0] ), .B(n15183), .C(\current_state[2] ), 
         .D(n15186), .Z(n4_adj_1520)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(205[17:26])
    defparam i1_4_lut_adj_148.init = 16'h0504;
    PFUMX i13724 (.BLUT(n17612), .ALUT(n17611), .C0(n16730), .Z(n17613));
    LUT4 n16746_bdd_4_lut_13726 (.A(n5008), .B(current_state_c[1]), .C(next_state_c[1]), 
         .D(flag_ack), .Z(n17610)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13726.init = 16'ha0e4;
    LUT4 i2_4_lut_adj_149 (.A(current_state[5]), .B(current_state[7]), .C(\current_state[4] ), 
         .D(current_state_c[1]), .Z(n15183)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_149.init = 16'h0104;
    LUT4 n4926_bdd_2_lut_13730 (.A(start), .B(current_state_c[1]), .Z(n17612)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n4926_bdd_2_lut_13730.init = 16'heeee;
    LUT4 n16746_bdd_4_lut_13729 (.A(n19), .B(current_state_c[1]), .C(next_state_c[1]), 
         .D(flag_ack), .Z(n17614)) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;
    defparam n16746_bdd_4_lut_13729.init = 16'ha0e4;
    PFUMX i13719 (.BLUT(n17608), .ALUT(n17603), .C0(n17889), .Z(n17609));
    LUT4 i1_3_lut_4_lut_adj_150 (.A(n17936), .B(cnt_scl[3]), .C(n9680), 
         .D(n12_adj_1501), .Z(n12695)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_150.init = 16'h0100;
    PFUMX mux_1361_i8 (.BLUT(n4425[7]), .ALUT(n4437[7]), .C0(n17889), 
          .Z(n4449[7]));
    PFUMX mux_1361_i4 (.BLUT(n4425[3]), .ALUT(n4437[3]), .C0(n17889), 
          .Z(n4449[3]));
    PFUMX mux_1361_i6 (.BLUT(n4425[5]), .ALUT(n4437[5]), .C0(n17889), 
          .Z(n4449[5]));
    PFUMX mux_1361_i5 (.BLUT(n4425[4]), .ALUT(n4437[4]), .C0(n17889), 
          .Z(n4449[4]));
    L6MUX21 mux_1361_i7 (.D0(n4383[6]), .D1(n4425[6]), .SD(n16741), .Z(n4449[6]));
    PFUMX mux_1361_i3 (.BLUT(n4425[2]), .ALUT(n4437[2]), .C0(n17889), 
          .Z(n4449[2]));
    LUT4 addr_1__bdd_3_lut (.A(addr[1]), .B(cnt_scl[2]), .C(addr[0]), 
         .Z(n17805)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam addr_1__bdd_3_lut.init = 16'he2e2;
    LUT4 sda_transmit_en_I_0_1_lut_rep_336 (.A(sda_transmit_en), .Z(n17913)) /* synthesis lut_function=(!(A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[31:59])
    defparam sda_transmit_en_I_0_1_lut_rep_336.init = 16'h5555;
    LUT4 i2240_2_lut_rep_332_2_lut (.A(sda_transmit_en), .B(i2c_sda_0_out), 
         .Z(n17909)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[31:59])
    defparam i2240_2_lut_rep_332_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_3_lut (.A(sda_transmit_en), .B(cnt_scl[1]), .C(i2c_sda_0_out), 
         .Z(n15227)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[31:59])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h7373;
    LUT4 i1_3_lut_adj_151 (.A(n2[9]), .B(n4650), .C(start), .Z(n14679)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_151.init = 16'h2020;
    LUT4 i1_3_lut_adj_152 (.A(n2[8]), .B(n4650), .C(start), .Z(n14686)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_152.init = 16'h2020;
    LUT4 i6446_4_lut (.A(n2[7]), .B(start), .C(n10045), .D(n4650), .Z(n1[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6446_4_lut.init = 16'h0c88;
    LUT4 i13418_3_lut_4_lut (.A(n17880), .B(\current_state[0] ), .C(n17780), 
         .D(next_state_9__N_967[2]), .Z(n4425[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i13418_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6679_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n10045)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6679_2_lut.init = 16'heeee;
    PFUMX i13708 (.BLUT(n17598), .ALUT(n17597), .C0(n16730), .Z(n17599));
    LUT4 i6445_4_lut (.A(n2[6]), .B(start), .C(n4702[5]), .D(n4650), 
         .Z(n1[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6445_4_lut.init = 16'hc088;
    LUT4 i6485_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n4702[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6485_2_lut.init = 16'h4444;
    LUT4 n5574_bdd_3_lut (.A(n5567[1]), .B(n5567[0]), .C(cnt_scl[2]), 
         .Z(n17808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n5574_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_996_i1_3_lut (.A(addr[6]), .B(addr[4]), .C(cnt_scl[3]), .Z(n3904[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_996_i1_3_lut.init = 16'hcaca;
    PFUMX mux_1357_i7 (.BLUT(n4373), .ALUT(n4437[6]), .C0(n17889), .Z(n4425[6]));
    LUT4 i6444_4_lut (.A(n2[5]), .B(start), .C(n10043), .D(n4650), .Z(n1[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6444_4_lut.init = 16'h0c88;
    PFUMX i43 (.BLUT(n17), .ALUT(n20), .C0(n17889), .Z(n39));
    LUT4 i6677_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n10043)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6677_2_lut.init = 16'h8888;
    PFUMX i13711 (.BLUT(n17601), .ALUT(n17596), .C0(n17889), .Z(n17602));
    LUT4 i6443_4_lut (.A(n2[4]), .B(start), .C(n10043), .D(n4650), .Z(n1[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6443_4_lut.init = 16'h0c88;
    PFUMX mux_1390_i1 (.BLUT(n4484[0]), .ALUT(n14607), .C0(n17880), .Z(n4504[0]));
    LUT4 i6442_4_lut (.A(n2[3]), .B(start), .C(n10043), .D(n4650), .Z(n1[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6442_4_lut.init = 16'h0c88;
    PFUMX i13716 (.BLUT(n17605), .ALUT(n17604), .C0(n16730), .Z(n17606));
    LUT4 i6441_4_lut (.A(n2[2]), .B(start), .C(n4702[1]), .D(n4650), 
         .Z(n1[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6441_4_lut.init = 16'hc088;
    LUT4 i2398_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n4702[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i2398_2_lut.init = 16'h6666;
    LUT4 i6440_4_lut (.A(n2[1]), .B(start), .C(cnt_div[1]), .D(n4650), 
         .Z(n1[1])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6440_4_lut.init = 16'h0c88;
    L6MUX21 i39 (.D0(n15), .D1(n18), .SD(n17889), .Z(n21));
    PFUMX i25 (.BLUT(n15004), .ALUT(n14435), .C0(\current_state[6] ), 
          .Z(n16315));
    PFUMX i41 (.BLUT(n14865), .ALUT(n23_adj_1506), .C0(n17880), .Z(n15));
    PFUMX i13265 (.BLUT(n15003), .ALUT(n14451), .C0(n17875), .Z(n12));
    L6MUX21 i13067 (.D0(n16570), .D1(n16571), .SD(\current_state[3] ), 
            .Z(n16572));
    PFUMX i40 (.BLUT(n14953), .ALUT(n14733), .C0(n17875), .Z(n18));
    LUT4 i6284_2_lut_rep_349 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n17926)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6284_2_lut_rep_349.init = 16'heeee;
    PFUMX i13066 (.BLUT(n3916[0]), .ALUT(n3919[0]), .C0(n16767), .Z(n16571));
    PFUMX i13690 (.BLUT(n17566), .ALUT(n17565), .C0(n17875), .Z(n17567));
    PFUMX i13687 (.BLUT(n4339[0]), .ALUT(n17551), .C0(n17889), .Z(n17552));
    PFUMX i13065 (.BLUT(n5987), .ALUT(n5989), .C0(n16767), .Z(n16570));
    LUT4 cnt_scl_2__bdd_4_lut_13752 (.A(cnt_scl[2]), .B(cnt_scl[5]), .C(cnt_scl[0]), 
         .D(cnt_scl[3]), .Z(n17435)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B+!(C (D)+!C !(D))))) */ ;
    defparam cnt_scl_2__bdd_4_lut_13752.init = 16'h3009;
    PFUMX i16 (.BLUT(n14978), .ALUT(n14732), .C0(n17875), .Z(n13280));
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n17901), 
         .D(cnt_scl[3]), .Z(n14656)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h0c01;
    PFUMX mux_1345_i7 (.BLUT(next_state_9__N_967[6]), .ALUT(\next_state_9__N_917[6] ), 
          .C0(\current_state[0] ), .Z(n4383[6]));
    PFUMX i13685 (.BLUT(n17549), .ALUT(sda_transmit_N_1103), .C0(current_state_c[1]), 
          .Z(n17550));
    LUT4 i1_4_lut_adj_153 (.A(rd_cnt[1]), .B(n133), .C(n17879), .D(n14799), 
         .Z(n14660)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_4_lut_adj_153.init = 16'h0408;
    LUT4 i3_2_lut_rep_346 (.A(cnt_div[12]), .B(cnt_div[11]), .Z(n17923)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i3_2_lut_rep_346.init = 16'heeee;
    LUT4 i1_4_lut_adj_154 (.A(n17890), .B(n17894), .C(n17907), .D(n15777), 
         .Z(n14799)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_154.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_155 (.A(cnt_div[12]), .B(cnt_div[11]), .C(n13_adj_1505), 
         .Z(n15789)) /* synthesis lut_function=(A+(B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_3_lut_adj_155.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_156 (.A(cnt_div[12]), .B(cnt_div[11]), .C(cnt_div[0]), 
         .Z(n15577)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_3_lut_adj_156.init = 16'hefef;
    LUT4 i1_3_lut_4_lut_adj_157 (.A(cnt_scl[8]), .B(cnt_scl[0]), .C(n17925), 
         .D(n16297), .Z(n14722)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_157.init = 16'h0004;
    LUT4 i1_3_lut_4_lut_adj_158 (.A(cnt_scl[8]), .B(cnt_scl[0]), .C(cnt_scl[2]), 
         .D(n16297), .Z(n14627)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_158.init = 16'h0004;
    LUT4 i1_3_lut_4_lut_adj_159 (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[0]), 
         .D(n17936), .Z(n62)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_159.init = 16'h0002;
    LUT4 i6051_2_lut_rep_348 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n17925)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6051_2_lut_rep_348.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_160 (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(n18761), 
         .D(cnt_scl[8]), .Z(n15713)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_160.init = 16'h000e;
    LUT4 i1_4_lut_4_lut_adj_161 (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(cnt_scl[2]), 
         .D(cnt_scl[3]), .Z(n7)) /* synthesis lut_function=(!(A (C+(D))+!A (B))) */ ;
    defparam i1_4_lut_4_lut_adj_161.init = 16'h111b;
    LUT4 n4857_bdd_2_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(addr[15]), 
         .Z(n17732)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n4857_bdd_2_lut_3_lut.init = 16'h1010;
    PFUMX i86 (.BLUT(n14656), .ALUT(n58), .C0(cnt_scl[5]), .Z(n86));
    PFUMX i13868 (.BLUT(n17959), .ALUT(n17960), .C0(cnt_scl[5]), .Z(n10));
    PFUMX i13866 (.BLUT(n17956), .ALUT(n17957), .C0(\current_state[3] ), 
          .Z(n17958));
    LUT4 i12903_2_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(cnt_scl[2]), 
         .Z(n16405)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i12903_2_lut_3_lut.init = 16'he0e0;
    PFUMX i13864 (.BLUT(n17953), .ALUT(n17954), .C0(cnt_scl[5]), .Z(n6533));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

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
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [3:0]bit_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(26[11:18])
    wire [3:0]n14;
    
    wire n13916;
    wire [7:0]rx_data_adj_1495;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(27[11:18])
    
    wire rx_data_7__N_1453, rx_reg2, rx_reg1, rx_reg3, work_en_N_1445, 
        start_nedge_N_1457, work_en, n7258;
    wire [12:0]baud_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    wire [12:0]n1;
    
    wire bit_flag, bit_flag_N_1460, rx_flag_adj_1484, n17904, n12493;
    wire [12:0]n32;
    
    wire n12494, n14965, n12492, n12491, n17963, n17962, n7435, 
        n7433, n17932, n8991, n16387, n13938, n16065, n16381, 
        n16095, n16091, n16093, n16259, n12496, n12495;
    
    FD1S3DX bit_cnt__i0 (.D(n14[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i0.GSR = "ENABLED";
    LUT4 i15_2_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .Z(n13916)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i15_2_lut.init = 16'h6666;
    FD1P3DX rx_data_i0_i0 (.D(rx_data_adj_1495[1]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3BX rx_reg2_76 (.D(rx_reg1), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(44[9:28])
    defparam rx_reg2_76.GSR = "ENABLED";
    FD1S3BX rx_reg3_77 (.D(rx_reg2), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(52[9:28])
    defparam rx_reg3_77.GSR = "ENABLED";
    FD1S3DX start_nedge_78 (.D(start_nedge_N_1457), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1445)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[10] 62[29])
    defparam start_nedge_78.GSR = "ENABLED";
    FD1S3DX work_en_79 (.D(n7258), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam work_en_79.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    FD1S3DX bit_flag_81 (.D(bit_flag_N_1460), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[10] 93[26])
    defparam bit_flag_81.GSR = "ENABLED";
    FD1P3DX po_data_i0_i0 (.D(rx_data_adj_1495[0]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i0.GSR = "ENABLED";
    FD1S3DX rx_flag_84 (.D(n17904), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag_adj_1484)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(119[10] 122[25])
    defparam rx_flag_84.GSR = "ENABLED";
    FD1S3DX po_flag_86 (.D(rx_flag_adj_1484), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(138[9:28])
    defparam po_flag_86.GSR = "ENABLED";
    FD1S3BX rx_reg1_75 (.D(uart_rxd_c), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(36[9:23])
    defparam rx_reg1_75.GSR = "ENABLED";
    CCU2C add_32_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12493), .COUT(n12494), .S0(n32[5]), .S1(n32[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_7.INIT0 = 16'haaaa;
    defparam add_32_7.INIT1 = 16'haaaa;
    defparam add_32_7.INJECT1_0 = "NO";
    defparam add_32_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_327 (.A(bit_flag), .B(n14965), .C(bit_cnt[3]), .Z(n17904)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_rep_327.init = 16'h2020;
    LUT4 i6301_3_lut_4_lut (.A(bit_flag), .B(n14965), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A !(D))) */ ;
    defparam i6301_3_lut_4_lut.init = 16'h558a;
    CCU2C add_32_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12492), .COUT(n12493), .S0(n32[3]), .S1(n32[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_5.INIT0 = 16'haaaa;
    defparam add_32_5.INIT1 = 16'haaaa;
    defparam add_32_5.INJECT1_0 = "NO";
    defparam add_32_5.INJECT1_1 = "NO";
    CCU2C add_32_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12491), .COUT(n12492), .S0(n32[1]), .S1(n32[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_3.INIT0 = 16'haaaa;
    defparam add_32_3.INIT1 = 16'haaaa;
    defparam add_32_3.INJECT1_0 = "NO";
    defparam add_32_3.INJECT1_1 = "NO";
    FD1P3DX bit_cnt__i1 (.D(n13916), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_then_2_lut (.A(bit_flag), .B(bit_cnt[3]), .Z(n17963)) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_then_2_lut.init = 16'h2222;
    CCU2C add_32_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n12491), .S1(n32[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_1.INIT0 = 16'h0000;
    defparam add_32_1.INIT1 = 16'h555a;
    defparam add_32_1.INJECT1_0 = "NO";
    defparam add_32_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_2_lut (.A(bit_flag), .B(bit_cnt[2]), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n17962)) /* synthesis lut_function=(!((B (C)+!B (C (D)+!C !(D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_else_2_lut.init = 16'h0a28;
    FD1P3DX bit_cnt__i2 (.D(n7435), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i2.GSR = "ENABLED";
    FD1P3DX bit_cnt__i3 (.D(n7433), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i3.GSR = "ENABLED";
    LUT4 i2018_2_lut_rep_355 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n17932)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i2018_2_lut_rep_355.init = 16'h8888;
    LUT4 i6318_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n17904), 
         .D(bit_cnt[2]), .Z(n7435)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i6318_3_lut_4_lut.init = 16'h0708;
    LUT4 i1_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), .Z(n14965)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    FD1P3DX po_data_i0_i7 (.D(rx_data_adj_1495[7]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i7.GSR = "ENABLED";
    FD1P3DX po_data_i0_i6 (.D(rx_data_adj_1495[6]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i6.GSR = "ENABLED";
    FD1P3DX po_data_i0_i5 (.D(rx_data_adj_1495[5]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i5.GSR = "ENABLED";
    FD1P3DX po_data_i0_i4 (.D(rx_data_adj_1495[4]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i4.GSR = "ENABLED";
    FD1P3DX po_data_i0_i3 (.D(rx_data_adj_1495[3]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i3.GSR = "ENABLED";
    FD1P3DX po_data_i0_i2 (.D(rx_data_adj_1495[2]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i2.GSR = "ENABLED";
    FD1P3DX po_data_i0_i1 (.D(rx_data_adj_1495[1]), .SP(rx_flag_adj_1484), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i1.GSR = "ENABLED";
    FD1S3DX baud_cnt__i12 (.D(n1[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n1[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n1[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    LUT4 i6280_4_lut (.A(bit_cnt[3]), .B(n17904), .C(bit_cnt[2]), .D(n17932), 
         .Z(n7433)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i6280_4_lut.init = 16'h1222;
    FD1P3DX rx_data_i0_i7 (.D(rx_reg3), .SP(rx_data_7__N_1453), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i6 (.D(rx_data_adj_1495[7]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i5 (.D(rx_data_adj_1495[6]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i4 (.D(rx_data_adj_1495[5]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i3 (.D(rx_data_adj_1495[4]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i2 (.D(rx_data_adj_1495[3]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i1 (.D(rx_data_adj_1495[2]), .SP(rx_data_7__N_1453), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1495[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    LUT4 start_nedge_I_0_2_lut (.A(rx_reg2), .B(rx_reg3), .Z(start_nedge_N_1457)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[13:36])
    defparam start_nedge_I_0_2_lut.init = 16'h4444;
    LUT4 i3893_3_lut (.A(n17904), .B(work_en_N_1445), .C(work_en), .Z(n7258)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam i3893_3_lut.init = 16'hdcdc;
    LUT4 i1_2_lut (.A(n8991), .B(n32[0]), .Z(n1[0])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n16387), .B(work_en), .C(n13938), .D(n16065), 
         .Z(n8991)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_4_lut.init = 16'hccc4;
    LUT4 i12885_2_lut (.A(baud_cnt[5]), .B(baud_cnt[8]), .Z(n16387)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12885_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_32 (.A(baud_cnt[0]), .B(baud_cnt[6]), .C(baud_cnt[3]), 
         .Z(n16065)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_32.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_33 (.A(n16381), .B(n16095), .C(n16091), .D(n16093), 
         .Z(n13938)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i1_4_lut_adj_33.init = 16'hfffd;
    LUT4 i12879_2_lut (.A(baud_cnt[4]), .B(baud_cnt[7]), .Z(n16381)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12879_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_34 (.A(baud_cnt[10]), .B(baud_cnt[1]), .Z(n16095)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i1_2_lut_adj_34.init = 16'heeee;
    LUT4 i1_2_lut_adj_35 (.A(baud_cnt[9]), .B(baud_cnt[2]), .Z(n16091)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i1_2_lut_adj_35.init = 16'heeee;
    LUT4 i1_2_lut_adj_36 (.A(baud_cnt[11]), .B(baud_cnt[12]), .Z(n16093)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i1_2_lut_adj_36.init = 16'heeee;
    LUT4 i13519_4_lut (.A(baud_cnt[3]), .B(n13938), .C(baud_cnt[6]), .D(n16259), 
         .Z(bit_flag_N_1460)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i13519_4_lut.init = 16'h0020;
    LUT4 i1_3_lut_adj_37 (.A(baud_cnt[8]), .B(baud_cnt[5]), .C(baud_cnt[0]), 
         .Z(n16259)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_37.init = 16'hfefe;
    CCU2C add_32_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12496), .S0(n32[11]), .S1(n32[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_13.INIT0 = 16'haaaa;
    defparam add_32_13.INIT1 = 16'haaaa;
    defparam add_32_13.INJECT1_0 = "NO";
    defparam add_32_13.INJECT1_1 = "NO";
    CCU2C add_32_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12495), .COUT(n12496), .S0(n32[9]), .S1(n32[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_11.INIT0 = 16'haaaa;
    defparam add_32_11.INIT1 = 16'haaaa;
    defparam add_32_11.INJECT1_0 = "NO";
    defparam add_32_11.INJECT1_1 = "NO";
    CCU2C add_32_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n12494), .COUT(n12495), .S0(n32[7]), .S1(n32[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_9.INIT0 = 16'haaaa;
    defparam add_32_9.INIT1 = 16'haaaa;
    defparam add_32_9.INJECT1_0 = "NO";
    defparam add_32_9.INJECT1_1 = "NO";
    LUT4 i6012_2_lut (.A(n32[12]), .B(n8991), .Z(n1[12])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6012_2_lut.init = 16'h8888;
    LUT4 i6013_2_lut (.A(n32[11]), .B(n8991), .Z(n1[11])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6013_2_lut.init = 16'h8888;
    LUT4 i6014_2_lut (.A(n32[10]), .B(n8991), .Z(n1[10])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6014_2_lut.init = 16'h8888;
    LUT4 i6015_2_lut (.A(n32[9]), .B(n8991), .Z(n1[9])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6015_2_lut.init = 16'h8888;
    LUT4 i6588_2_lut (.A(n32[8]), .B(n8991), .Z(n1[8])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6588_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_38 (.A(n8991), .B(n32[7]), .Z(n1[7])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_38.init = 16'h8888;
    LUT4 i1_2_lut_adj_39 (.A(n8991), .B(n32[6]), .Z(n1[6])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_39.init = 16'h8888;
    LUT4 i1_2_lut_adj_40 (.A(n8991), .B(n32[5]), .Z(n1[5])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_40.init = 16'h8888;
    LUT4 i1_2_lut_adj_41 (.A(n8991), .B(n32[4]), .Z(n1[4])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_41.init = 16'h8888;
    LUT4 i1_2_lut_adj_42 (.A(n8991), .B(n32[3]), .Z(n1[3])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_42.init = 16'h8888;
    LUT4 i1_2_lut_adj_43 (.A(n8991), .B(n32[2]), .Z(n1[2])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_43.init = 16'h8888;
    LUT4 i1_2_lut_adj_44 (.A(n8991), .B(n32[1]), .Z(n1[1])) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_44.init = 16'h8888;
    PFUMX i13870 (.BLUT(n17962), .ALUT(n17963), .C0(bit_cnt[1]), .Z(rx_data_7__N_1453));
    
endmodule
//
// Verilog Description of module uart_send_ctrl
//

module uart_send_ctrl (sec_tick, sys_clk_c, sys_rst_n_N_472, work_en_N_1382, 
            \tx_data[0] , tx_state, sys_clk_c_enable_149, tx_state_1__N_1163, 
            tx_phase, sys_clk_c_enable_148, sys_clk_c_enable_147, sys_clk_c_enable_145, 
            sys_clk_c_enable_139, digits_left, sys_clk_c_enable_106, csi_long_packet_count_sys, 
            csi_payload_byte_count_sys, csi_byte_clk_count_sys, csi_hs_sync_count_sys, 
            n17896, n5216, csi_last_wc_sys, \digits_left[1] , VCC_net, 
            csi_last_dt_sys, \tx_data[6] , \tx_data[5] , \tx_data[4] , 
            \tx_data[3] , \tx_data[2] , \tx_data[1] , GND_net, n7092, 
            n6145, n17911, n15851, n17943) /* synthesis syn_module_defined=1 */ ;
    output sec_tick;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output work_en_N_1382;
    output \tx_data[0] ;
    output [1:0]tx_state;
    input sys_clk_c_enable_149;
    input [1:0]tx_state_1__N_1163;
    output [2:0]tx_phase;
    input sys_clk_c_enable_148;
    input sys_clk_c_enable_147;
    input sys_clk_c_enable_145;
    input sys_clk_c_enable_139;
    output [3:0]digits_left;
    input sys_clk_c_enable_106;
    input [31:0]csi_long_packet_count_sys;
    input [31:0]csi_payload_byte_count_sys;
    input [31:0]csi_byte_clk_count_sys;
    input [31:0]csi_hs_sync_count_sys;
    input n17896;
    input n5216;
    input [15:0]csi_last_wc_sys;
    output \digits_left[1] ;
    input VCC_net;
    input [5:0]csi_last_dt_sys;
    output \tx_data[6] ;
    output \tx_data[5] ;
    output \tx_data[4] ;
    output \tx_data[3] ;
    output \tx_data[2] ;
    output \tx_data[1] ;
    input GND_net;
    input n7092;
    input n6145;
    input n17911;
    output n15851;
    input n17943;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n16593;
    wire [31:0]n2;
    
    wire n16931;
    wire [31:0]field_value_31__N_1179;
    
    wire n16590, sec_cnt_25__N_1241, tx_flag_N_1345, n16587;
    wire [25:0]sec_cnt;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(19[12:19])
    wire [25:0]n137;
    wire [7:0]tx_data_7__N_1329;
    
    wire n16584;
    wire [2:0]tx_phase_2__N_1165;
    wire [2:0]field_index;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(55[12:23])
    
    wire n14318;
    wire [7:0]field_label;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(56[12:23])
    
    wire n9565;
    wire [31:0]field_value;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(57[12:23])
    wire [3:0]digits_left_3__N_1211;
    
    wire n16581, n16631, n16562, n16564, n16578;
    wire [25:0]n109;
    
    wire n16594, n16597, n16600, n17919, n14195, n16569, n16603, 
        n16566, n17966, n17965, n17969, n17968, n16561, n16630, 
        n17910, n16577, n16580, n16640, n16639, n16628, n16627, 
        n16588, n16563, n16583, n16586, n16589;
    wire [3:0]digits_left_c;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:23])
    
    wire n16592, n16595, n16596, n16560, n16598, n16599, n16601, 
        n16602, n16604, n16605, n16637, n17945, n17944, n6, n2475, 
        n2477, n2479, n16827, n13890, n17218, n7093;
    wire [1:0]tx_state_1__N_1163_c;
    
    wire n16591, n6_adj_1463, n5824, n16636, n12631, n12630, n12629, 
        n12628, n12627, n12626, n12625, n16535, n16199, n16473, 
        n16625, n12624, n16557, n16559, n6_adj_1473, n16606, n16607, 
        n16608, n16609, n16610, n16611, n16323, n16515, n16325, 
        n16333, n12623, n16195, n16191, n16612, n16613, n16614, 
        n12622, n16615, n16616, n16617, n12621, n12620, n16554, 
        n16618, n16619, n16620, n12619, n16621, n16622, n16623, 
        n16579, n17729, n16624, n16626, n17948, n17730, n16553, 
        n6_adj_1475, n16477, n17947, n16556, n16629, n6_adj_1478, 
        n16634, n16633, n16632, n16585, n16582, n16576, n16568, 
        n16567, n16565, n16635, n16558, n2463, n6_adj_1481, n16555;
    wire [3:0]digits_left_3__N_1312;
    
    wire n15149, n16552;
    wire [6:0]n4710;
    
    wire n16638, n16641, n17, n17886, n1, n6028, n6030;
    
    PFUMX i3841 (.BLUT(n16593), .ALUT(n2[20]), .C0(n16931), .Z(field_value_31__N_1179[20]));
    PFUMX i3839 (.BLUT(n16590), .ALUT(n2[21]), .C0(n16931), .Z(field_value_31__N_1179[21]));
    FD1S3DX sec_tick_79 (.D(sec_cnt_25__N_1241), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(26[14] 32[8])
    defparam sec_tick_79.GSR = "ENABLED";
    FD1S3DX tx_flag_80 (.D(tx_flag_N_1345), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1382)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_flag_80.GSR = "ENABLED";
    PFUMX i3837 (.BLUT(n16587), .ALUT(n2[22]), .C0(n16931), .Z(field_value_31__N_1179[22]));
    FD1S3DX sec_cnt_1909__i25 (.D(n137[25]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i25.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i24 (.D(n137[24]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i24.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i23 (.D(n137[23]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i23.GSR = "ENABLED";
    FD1P3DX tx_data_i0 (.D(tx_data_7__N_1329[0]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i0.GSR = "ENABLED";
    PFUMX i3835 (.BLUT(n16584), .ALUT(n2[23]), .C0(n16931), .Z(field_value_31__N_1179[23]));
    FD1P3DX tx_state_i0 (.D(tx_state_1__N_1163[0]), .SP(sys_clk_c_enable_149), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_state_i0.GSR = "ENABLED";
    FD1P3DX tx_phase_i0 (.D(tx_phase_2__N_1165[0]), .SP(sys_clk_c_enable_148), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i0.GSR = "ENABLED";
    FD1P3DX field_index_i0 (.D(n14318), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i0.GSR = "ENABLED";
    FD1P3DX field_label_i0 (.D(n9565), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i0.GSR = "ENABLED";
    FD1P3DX field_value_i0 (.D(field_value_31__N_1179[0]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i0.GSR = "ENABLED";
    FD1P3DX digits_left_i0 (.D(digits_left_3__N_1211[0]), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i0.GSR = "ENABLED";
    PFUMX i3833 (.BLUT(n16581), .ALUT(n2[24]), .C0(n16931), .Z(field_value_31__N_1179[24]));
    FD1S3DX sec_cnt_1909__i22 (.D(n137[22]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i22.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i21 (.D(n137[21]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i21.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i20 (.D(n137[20]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i20.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i19 (.D(n137[19]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i19.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i18 (.D(n137[18]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i18.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i17 (.D(n137[17]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i17.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i16 (.D(n137[16]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i16.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i15 (.D(n137[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i15.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i14 (.D(n137[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i14.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i13 (.D(n137[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i13.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i12 (.D(n137[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i12.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i11 (.D(n137[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i11.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i10 (.D(n137[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i10.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i9 (.D(n137[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i9.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i8 (.D(n137[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i8.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i7 (.D(n137[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i7.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i6 (.D(n137[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i6.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i5 (.D(n137[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i5.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i4 (.D(n137[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i4.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i3 (.D(n137[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i3.GSR = "ENABLED";
    FD1S3DX sec_cnt_1909__i2 (.D(n137[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i2.GSR = "ENABLED";
    LUT4 i13126_3_lut (.A(csi_long_packet_count_sys[7]), .B(csi_payload_byte_count_sys[7]), 
         .C(field_index[0]), .Z(n16631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13126_3_lut.init = 16'hcaca;
    LUT4 i13057_3_lut (.A(csi_long_packet_count_sys[28]), .B(csi_payload_byte_count_sys[28]), 
         .C(field_index[0]), .Z(n16562)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13057_3_lut.init = 16'hcaca;
    FD1S3DX sec_cnt_1909__i1 (.D(n137[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i1.GSR = "ENABLED";
    LUT4 i13059_3_lut (.A(csi_byte_clk_count_sys[27]), .B(csi_hs_sync_count_sys[27]), 
         .C(field_index[0]), .Z(n16564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13059_3_lut.init = 16'hcaca;
    PFUMX i3831 (.BLUT(n16578), .ALUT(n2[25]), .C0(n16931), .Z(field_value_31__N_1179[25]));
    LUT4 i6411_2_lut (.A(n109[22]), .B(sec_cnt_25__N_1241), .Z(n137[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6411_2_lut.init = 16'h2222;
    LUT4 i6410_2_lut (.A(n109[21]), .B(sec_cnt_25__N_1241), .Z(n137[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6410_2_lut.init = 16'h2222;
    LUT4 i6409_2_lut (.A(n109[20]), .B(sec_cnt_25__N_1241), .Z(n137[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6409_2_lut.init = 16'h2222;
    LUT4 i6408_2_lut (.A(n109[19]), .B(sec_cnt_25__N_1241), .Z(n137[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6408_2_lut.init = 16'h2222;
    LUT4 i6407_2_lut (.A(n109[18]), .B(sec_cnt_25__N_1241), .Z(n137[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6407_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut (.A(tx_phase[2]), .B(n17896), .C(tx_phase[0]), 
         .D(tx_phase[1]), .Z(tx_phase_2__N_1165[1])) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam i1_3_lut_4_lut.init = 16'h0440;
    LUT4 i13089_3_lut (.A(csi_byte_clk_count_sys[19]), .B(csi_hs_sync_count_sys[19]), 
         .C(field_index[0]), .Z(n16594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13089_3_lut.init = 16'hcaca;
    LUT4 i13092_3_lut (.A(csi_byte_clk_count_sys[18]), .B(csi_hs_sync_count_sys[18]), 
         .C(field_index[0]), .Z(n16597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13092_3_lut.init = 16'hcaca;
    LUT4 i13095_3_lut (.A(csi_byte_clk_count_sys[17]), .B(csi_hs_sync_count_sys[17]), 
         .C(field_index[0]), .Z(n16600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13095_3_lut.init = 16'hcaca;
    LUT4 i6123_4_lut_4_lut (.A(n17919), .B(tx_phase[0]), .C(tx_phase[1]), 
         .D(tx_phase[2]), .Z(tx_data_7__N_1329[5])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i6123_4_lut_4_lut.init = 16'h001c;
    LUT4 i10745_2_lut (.A(field_index[2]), .B(tx_state[1]), .Z(n14195)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10745_2_lut.init = 16'heeee;
    PFUMX i3829 (.BLUT(n16569), .ALUT(n2[26]), .C0(n16931), .Z(field_value_31__N_1179[26]));
    LUT4 i13098_3_lut (.A(csi_byte_clk_count_sys[16]), .B(csi_hs_sync_count_sys[16]), 
         .C(field_index[0]), .Z(n16603)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13098_3_lut.init = 16'hcaca;
    PFUMX i3827 (.BLUT(n16566), .ALUT(n2[27]), .C0(n16931), .Z(field_value_31__N_1179[27]));
    LUT4 i6406_2_lut (.A(n109[17]), .B(sec_cnt_25__N_1241), .Z(n137[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6406_2_lut.init = 16'h2222;
    LUT4 n16642_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[3]), .B(csi_long_packet_count_sys[3]), 
         .C(n14195), .D(field_index[0]), .Z(n17966)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16642_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16642_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[3]), .B(n14195), 
         .C(csi_hs_sync_count_sys[3]), .D(field_index[0]), .Z(n17965)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16642_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i6405_2_lut (.A(n109[16]), .B(sec_cnt_25__N_1241), .Z(n137[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6405_2_lut.init = 16'h2222;
    LUT4 n16645_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[2]), .B(csi_long_packet_count_sys[2]), 
         .C(n14195), .D(field_index[0]), .Z(n17969)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16645_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16645_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[2]), .B(n14195), 
         .C(csi_hs_sync_count_sys[2]), .D(field_index[0]), .Z(n17968)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16645_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i6404_2_lut (.A(n109[15]), .B(sec_cnt_25__N_1241), .Z(n137[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6404_2_lut.init = 16'h2222;
    LUT4 mux_16_Mux_28_i7_3_lut (.A(n16561), .B(field_value[24]), .C(tx_state[1]), 
         .Z(n2[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_28_i7_3_lut.init = 16'hcaca;
    LUT4 i6403_2_lut (.A(n109[14]), .B(sec_cnt_25__N_1241), .Z(n137[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6403_2_lut.init = 16'h2222;
    LUT4 i13125_3_lut (.A(csi_byte_clk_count_sys[7]), .B(csi_hs_sync_count_sys[7]), 
         .C(field_index[0]), .Z(n16630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13125_3_lut.init = 16'hcaca;
    LUT4 i6113_3_lut (.A(digits_left[0]), .B(tx_state[1]), .C(n5216), 
         .Z(digits_left_3__N_1211[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i6113_3_lut.init = 16'h4848;
    LUT4 i13317_3_lut_4_lut (.A(csi_last_wc_sys[9]), .B(n17910), .C(field_index[2]), 
         .D(n16577), .Z(n16578)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13317_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13319_3_lut_4_lut (.A(csi_last_wc_sys[8]), .B(n17910), .C(field_index[2]), 
         .D(n16580), .Z(n16581)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13319_3_lut_4_lut.init = 16'h8f80;
    LUT4 i6402_2_lut (.A(n109[13]), .B(sec_cnt_25__N_1241), .Z(n137[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6402_2_lut.init = 16'h2222;
    LUT4 i13135_3_lut (.A(csi_long_packet_count_sys[4]), .B(csi_payload_byte_count_sys[4]), 
         .C(field_index[0]), .Z(n16640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13135_3_lut.init = 16'hcaca;
    LUT4 i13134_3_lut (.A(csi_byte_clk_count_sys[4]), .B(csi_hs_sync_count_sys[4]), 
         .C(field_index[0]), .Z(n16639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13134_3_lut.init = 16'hcaca;
    LUT4 i13123_3_lut (.A(csi_long_packet_count_sys[8]), .B(csi_payload_byte_count_sys[8]), 
         .C(field_index[0]), .Z(n16628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13123_3_lut.init = 16'hcaca;
    LUT4 i13122_3_lut (.A(csi_byte_clk_count_sys[8]), .B(csi_hs_sync_count_sys[8]), 
         .C(field_index[0]), .Z(n16627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13122_3_lut.init = 16'hcaca;
    FD1S3DX sec_cnt_1909__i0 (.D(n137[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909__i0.GSR = "ENABLED";
    LUT4 i13083_3_lut (.A(csi_byte_clk_count_sys[21]), .B(csi_hs_sync_count_sys[21]), 
         .C(field_index[0]), .Z(n16588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13083_3_lut.init = 16'hcaca;
    PFUMX i3825 (.BLUT(n16563), .ALUT(n2[28]), .C0(n16931), .Z(field_value_31__N_1179[28]));
    LUT4 i13321_3_lut_4_lut (.A(csi_last_wc_sys[7]), .B(n17910), .C(field_index[2]), 
         .D(n16583), .Z(n16584)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13321_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13323_3_lut_4_lut (.A(csi_last_wc_sys[6]), .B(n17910), .C(field_index[2]), 
         .D(n16586), .Z(n16587)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13323_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13325_3_lut_4_lut (.A(csi_last_wc_sys[5]), .B(n17910), .C(field_index[2]), 
         .D(n16589), .Z(n16590)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13325_3_lut_4_lut.init = 16'h8f80;
    FD1P3DX digits_left_i3 (.D(digits_left_3__N_1211[3]), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i3.GSR = "ENABLED";
    FD1P3DX digits_left_i2 (.D(digits_left_3__N_1211[2]), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i2.GSR = "ENABLED";
    FD1P3DX digits_left_i1 (.D(digits_left_3__N_1211[1]), .SP(sys_clk_c_enable_106), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\digits_left[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i1.GSR = "ENABLED";
    FD1P3DX field_value_i31 (.D(field_value_31__N_1179[31]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i31.GSR = "ENABLED";
    FD1P3DX field_value_i30 (.D(field_value_31__N_1179[30]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i30.GSR = "ENABLED";
    FD1P3DX field_value_i29 (.D(field_value_31__N_1179[29]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i29.GSR = "ENABLED";
    LUT4 i13327_3_lut_4_lut (.A(csi_last_wc_sys[4]), .B(n17910), .C(field_index[2]), 
         .D(n16592), .Z(n16593)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13327_3_lut_4_lut.init = 16'h8f80;
    FD1P3DX field_value_i28 (.D(field_value_31__N_1179[28]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i28.GSR = "ENABLED";
    FD1P3DX field_value_i27 (.D(field_value_31__N_1179[27]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i27.GSR = "ENABLED";
    FD1P3DX field_value_i26 (.D(field_value_31__N_1179[26]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i26.GSR = "ENABLED";
    FD1P3DX field_value_i25 (.D(field_value_31__N_1179[25]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i25.GSR = "ENABLED";
    FD1P3DX field_value_i24 (.D(field_value_31__N_1179[24]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i24.GSR = "ENABLED";
    FD1P3DX field_value_i23 (.D(field_value_31__N_1179[23]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i23.GSR = "ENABLED";
    FD1P3DX field_value_i22 (.D(field_value_31__N_1179[22]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i22.GSR = "ENABLED";
    LUT4 i13329_3_lut_4_lut (.A(csi_last_wc_sys[3]), .B(n17910), .C(field_index[2]), 
         .D(n16595), .Z(n16596)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13329_3_lut_4_lut.init = 16'h8f80;
    FD1P3DX field_value_i21 (.D(field_value_31__N_1179[21]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i21.GSR = "ENABLED";
    FD1P3DX field_value_i20 (.D(field_value_31__N_1179[20]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i20.GSR = "ENABLED";
    FD1P3DX field_value_i19 (.D(field_value_31__N_1179[19]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i19.GSR = "ENABLED";
    FD1P3DX field_value_i18 (.D(field_value_31__N_1179[18]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i18.GSR = "ENABLED";
    FD1P3DX field_value_i17 (.D(field_value_31__N_1179[17]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i17.GSR = "ENABLED";
    PFUMX i3823 (.BLUT(n16560), .ALUT(n2[29]), .C0(n16931), .Z(field_value_31__N_1179[29]));
    FD1P3DX field_value_i16 (.D(field_value_31__N_1179[16]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i16.GSR = "ENABLED";
    FD1P3DX field_value_i15 (.D(field_value_31__N_1179[15]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i15.GSR = "ENABLED";
    FD1P3DX field_value_i14 (.D(field_value_31__N_1179[14]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i14.GSR = "ENABLED";
    FD1P3DX field_value_i13 (.D(field_value_31__N_1179[13]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i13.GSR = "ENABLED";
    FD1P3DX field_value_i12 (.D(field_value_31__N_1179[12]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i12.GSR = "ENABLED";
    FD1P3DX field_value_i11 (.D(field_value_31__N_1179[11]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i11.GSR = "ENABLED";
    FD1P3DX field_value_i10 (.D(field_value_31__N_1179[10]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i10.GSR = "ENABLED";
    FD1P3DX field_value_i9 (.D(field_value_31__N_1179[9]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i9.GSR = "ENABLED";
    LUT4 i13331_3_lut_4_lut (.A(csi_last_wc_sys[2]), .B(n17910), .C(field_index[2]), 
         .D(n16598), .Z(n16599)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13331_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13333_3_lut_4_lut (.A(csi_last_wc_sys[1]), .B(n17910), .C(field_index[2]), 
         .D(n16601), .Z(n16602)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13333_3_lut_4_lut.init = 16'h8f80;
    FD1P3DX field_value_i8 (.D(field_value_31__N_1179[8]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i8.GSR = "ENABLED";
    FD1P3DX field_value_i7 (.D(field_value_31__N_1179[7]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i7.GSR = "ENABLED";
    FD1P3DX field_value_i6 (.D(field_value_31__N_1179[6]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i6.GSR = "ENABLED";
    FD1P3DX field_value_i5 (.D(field_value_31__N_1179[5]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i5.GSR = "ENABLED";
    FD1P3DX field_value_i4 (.D(field_value_31__N_1179[4]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i4.GSR = "ENABLED";
    FD1P3DX field_value_i3 (.D(field_value_31__N_1179[3]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i3.GSR = "ENABLED";
    FD1P3DX field_value_i2 (.D(field_value_31__N_1179[2]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i2.GSR = "ENABLED";
    LUT4 i13335_3_lut_4_lut (.A(csi_last_wc_sys[0]), .B(n17910), .C(field_index[2]), 
         .D(n16604), .Z(n16605)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13335_3_lut_4_lut.init = 16'h8f80;
    FD1P3DX field_value_i1 (.D(field_value_31__N_1179[1]), .SP(sys_clk_c_enable_139), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i1.GSR = "ENABLED";
    LUT4 i13132_3_lut (.A(csi_long_packet_count_sys[5]), .B(csi_payload_byte_count_sys[5]), 
         .C(field_index[0]), .Z(n16637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13132_3_lut.init = 16'hcaca;
    LUT4 n16573_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[1]), .B(csi_long_packet_count_sys[1]), 
         .C(n14195), .D(field_index[0]), .Z(n17945)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16573_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    FD1P3DX field_label_i6 (.D(VCC_net), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i6.GSR = "ENABLED";
    LUT4 n16573_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[1]), .B(n14195), 
         .C(csi_hs_sync_count_sys[1]), .D(field_index[0]), .Z(n17944)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16573_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i6456_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[14]), 
         .D(csi_last_dt_sys[4]), .Z(n6)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6456_4_lut_4_lut.init = 16'h5140;
    FD1P3DX field_label_i4 (.D(n2475), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i4.GSR = "ENABLED";
    FD1P3DX field_label_i3 (.D(n2477), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i3.GSR = "ENABLED";
    FD1P3DX field_label_i2 (.D(n2479), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i2.GSR = "ENABLED";
    FD1P3DX field_label_i1 (.D(n16827), .SP(sys_clk_c_enable_145), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i1.GSR = "ENABLED";
    FD1P3DX field_index_i2 (.D(n13890), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i2.GSR = "ENABLED";
    FD1P3DX field_index_i1 (.D(n17218), .SP(sys_clk_c_enable_147), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i1.GSR = "ENABLED";
    FD1S3DX tx_phase_i2 (.D(n7093), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(tx_phase[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i2.GSR = "ENABLED";
    FD1P3DX tx_phase_i1 (.D(tx_phase_2__N_1165[1]), .SP(sys_clk_c_enable_148), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i1.GSR = "ENABLED";
    FD1P3DX tx_state_i1 (.D(tx_state_1__N_1163_c[1]), .SP(sys_clk_c_enable_149), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_state_i1.GSR = "ENABLED";
    LUT4 i13086_3_lut (.A(csi_byte_clk_count_sys[20]), .B(csi_hs_sync_count_sys[20]), 
         .C(field_index[0]), .Z(n16591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13086_3_lut.init = 16'hcaca;
    LUT4 i6457_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[13]), 
         .D(csi_last_dt_sys[3]), .Z(n6_adj_1463)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6457_4_lut_4_lut.init = 16'h5140;
    LUT4 field_index_2__bdd_3_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(field_index[1]), .Z(n17218)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam field_index_2__bdd_3_lut.init = 16'h1c1c;
    FD1P3DX tx_data_i6 (.D(tx_data_7__N_1329[6]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3DX tx_data_i5 (.D(tx_data_7__N_1329[5]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3DX tx_data_i4 (.D(tx_data_7__N_1329[4]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3DX tx_data_i3 (.D(tx_data_7__N_1329[3]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3DX tx_data_i2 (.D(tx_data_7__N_1329[2]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3DX tx_data_i1 (.D(tx_data_7__N_1329[1]), .SP(tx_flag_N_1345), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 i5961_3_lut (.A(n5824), .B(tx_phase[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1329[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i5961_3_lut.init = 16'h3232;
    LUT4 i13131_3_lut (.A(csi_byte_clk_count_sys[5]), .B(csi_hs_sync_count_sys[5]), 
         .C(field_index[0]), .Z(n16636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13131_3_lut.init = 16'hcaca;
    LUT4 i6401_2_lut (.A(n109[12]), .B(sec_cnt_25__N_1241), .Z(n137[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6401_2_lut.init = 16'h2222;
    LUT4 i6400_2_lut (.A(n109[11]), .B(sec_cnt_25__N_1241), .Z(n137[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6400_2_lut.init = 16'h2222;
    LUT4 i6399_2_lut (.A(n109[10]), .B(sec_cnt_25__N_1241), .Z(n137[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6399_2_lut.init = 16'h2222;
    PFUMX i13858 (.BLUT(n17944), .ALUT(n17945), .C0(field_index[1]), .Z(field_value_31__N_1179[1]));
    LUT4 i6398_2_lut (.A(n109[9]), .B(sec_cnt_25__N_1241), .Z(n137[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6398_2_lut.init = 16'h2222;
    LUT4 i6397_2_lut (.A(n109[8]), .B(sec_cnt_25__N_1241), .Z(n137[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6397_2_lut.init = 16'h2222;
    CCU2C sec_cnt_1909_add_4_27 (.A0(sec_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12631), .S0(n109[25]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_27.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_27.INIT1 = 16'h0000;
    defparam sec_cnt_1909_add_4_27.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_27.INJECT1_1 = "NO";
    CCU2C sec_cnt_1909_add_4_25 (.A0(sec_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12630), .COUT(n12631), .S0(n109[23]), 
          .S1(n109[24]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_25.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_25.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_25.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_25.INJECT1_1 = "NO";
    LUT4 i6396_2_lut (.A(n109[7]), .B(sec_cnt_25__N_1241), .Z(n137[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6396_2_lut.init = 16'h2222;
    CCU2C sec_cnt_1909_add_4_23 (.A0(sec_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12629), .COUT(n12630), .S0(n109[21]), 
          .S1(n109[22]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_23.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_23.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_23.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_23.INJECT1_1 = "NO";
    LUT4 i6395_2_lut (.A(n109[6]), .B(sec_cnt_25__N_1241), .Z(n137[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6395_2_lut.init = 16'h2222;
    CCU2C sec_cnt_1909_add_4_21 (.A0(sec_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12628), .COUT(n12629), .S0(n109[19]), 
          .S1(n109[20]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_21.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_21.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_21.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_21.INJECT1_1 = "NO";
    CCU2C sec_cnt_1909_add_4_19 (.A0(sec_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12627), .COUT(n12628), .S0(n109[17]), 
          .S1(n109[18]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_19.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_19.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_19.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_19.INJECT1_1 = "NO";
    LUT4 i6394_2_lut (.A(n109[5]), .B(sec_cnt_25__N_1241), .Z(n137[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6394_2_lut.init = 16'h2222;
    CCU2C sec_cnt_1909_add_4_17 (.A0(sec_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12626), .COUT(n12627), .S0(n109[15]), 
          .S1(n109[16]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_17.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_17.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_17.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_17.INJECT1_1 = "NO";
    LUT4 i6393_2_lut (.A(n109[4]), .B(sec_cnt_25__N_1241), .Z(n137[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6393_2_lut.init = 16'h2222;
    LUT4 i6392_2_lut (.A(n109[3]), .B(sec_cnt_25__N_1241), .Z(n137[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6392_2_lut.init = 16'h2222;
    CCU2C sec_cnt_1909_add_4_15 (.A0(sec_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12625), .COUT(n12626), .S0(n109[13]), 
          .S1(n109[14]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_15.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_15.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_15.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_15.INJECT1_1 = "NO";
    LUT4 i13485_4_lut (.A(n16535), .B(n16199), .C(n16473), .D(sec_cnt[1]), 
         .Z(sec_cnt_25__N_1241)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(26[18:36])
    defparam i13485_4_lut.init = 16'h2000;
    LUT4 i13120_3_lut (.A(csi_long_packet_count_sys[9]), .B(csi_payload_byte_count_sys[9]), 
         .C(field_index[0]), .Z(n16625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13120_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_1909_add_4_13 (.A0(sec_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12624), .COUT(n12625), .S0(n109[11]), 
          .S1(n109[12]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_13.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_13.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_13.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_13.INJECT1_1 = "NO";
    PFUMX i3821 (.BLUT(n16557), .ALUT(n2[30]), .C0(n16931), .Z(field_value_31__N_1179[30]));
    LUT4 i13054_3_lut (.A(csi_long_packet_count_sys[29]), .B(csi_payload_byte_count_sys[29]), 
         .C(field_index[0]), .Z(n16559)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13054_3_lut.init = 16'hcaca;
    LUT4 i6459_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[12]), 
         .D(csi_last_dt_sys[2]), .Z(n6_adj_1473)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6459_4_lut_4_lut.init = 16'h5140;
    LUT4 i2470_4_lut (.A(field_label[0]), .B(field_value[28]), .C(tx_phase[1]), 
         .D(n17919), .Z(n5824)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2470_4_lut.init = 16'h3aca;
    PFUMX i13103 (.BLUT(n16606), .ALUT(n16607), .C0(field_index[1]), .Z(n16608));
    PFUMX i13106 (.BLUT(n16609), .ALUT(n16610), .C0(field_index[1]), .Z(n16611));
    LUT4 i13033_4_lut (.A(n16323), .B(n16515), .C(n16325), .D(n16333), 
         .Z(n16535)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13033_4_lut.init = 16'h8000;
    CCU2C sec_cnt_1909_add_4_11 (.A0(sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12623), .COUT(n12624), .S0(n109[9]), .S1(n109[10]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_11.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_11.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_11.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(sec_cnt[16]), .B(n16195), .C(n16191), .D(sec_cnt[11]), 
         .Z(n16199)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(26[18:36])
    defparam i1_4_lut.init = 16'hfffe;
    PFUMX i13109 (.BLUT(n16612), .ALUT(n16613), .C0(field_index[1]), .Z(n16614));
    CCU2C sec_cnt_1909_add_4_9 (.A0(sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12622), .COUT(n12623), .S0(n109[7]), .S1(n109[8]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_9.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_9.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_9.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_9.INJECT1_1 = "NO";
    PFUMX i13112 (.BLUT(n16615), .ALUT(n16616), .C0(field_index[1]), .Z(n16617));
    CCU2C sec_cnt_1909_add_4_7 (.A0(sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12621), .COUT(n12622), .S0(n109[5]), .S1(n109[6]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_7.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_7.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_7.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_7.INJECT1_1 = "NO";
    CCU2C sec_cnt_1909_add_4_5 (.A0(sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12620), .COUT(n12621), .S0(n109[3]), .S1(n109[4]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_5.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_5.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_5.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_5.INJECT1_1 = "NO";
    PFUMX i3819 (.BLUT(n16554), .ALUT(n2[31]), .C0(n16931), .Z(field_value_31__N_1179[31]));
    PFUMX i13115 (.BLUT(n16618), .ALUT(n16619), .C0(field_index[1]), .Z(n16620));
    CCU2C sec_cnt_1909_add_4_3 (.A0(sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12619), .COUT(n12620), .S0(n109[1]), .S1(n109[2]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_3.INIT0 = 16'haaa0;
    defparam sec_cnt_1909_add_4_3.INIT1 = 16'haaa0;
    defparam sec_cnt_1909_add_4_3.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_3.INJECT1_1 = "NO";
    CCU2C sec_cnt_1909_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12619), .S1(n109[0]));   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1909_add_4_1.INIT0 = 16'h0000;
    defparam sec_cnt_1909_add_4_1.INIT1 = 16'h555f;
    defparam sec_cnt_1909_add_4_1.INJECT1_0 = "NO";
    defparam sec_cnt_1909_add_4_1.INJECT1_1 = "NO";
    PFUMX i13118 (.BLUT(n16621), .ALUT(n16622), .C0(field_index[1]), .Z(n16623));
    LUT4 i13074_3_lut (.A(csi_byte_clk_count_sys[24]), .B(csi_hs_sync_count_sys[24]), 
         .C(field_index[0]), .Z(n16579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13074_3_lut.init = 16'hcaca;
    LUT4 n4_bdd_3_lut (.A(n5216), .B(\digits_left[1] ), .C(digits_left[0]), 
         .Z(n17729)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;
    defparam n4_bdd_3_lut.init = 16'hc6c6;
    LUT4 i12971_4_lut (.A(sec_cnt[20]), .B(sec_cnt[13]), .C(sec_cnt[23]), 
         .D(sec_cnt[6]), .Z(n16473)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12971_4_lut.init = 16'h8000;
    LUT4 i12822_2_lut (.A(sec_cnt[2]), .B(sec_cnt[19]), .Z(n16323)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12822_2_lut.init = 16'h8888;
    PFUMX i13121 (.BLUT(n16624), .ALUT(n16625), .C0(field_index[1]), .Z(n16626));
    LUT4 i13119_3_lut (.A(csi_byte_clk_count_sys[9]), .B(csi_hs_sync_count_sys[9]), 
         .C(field_index[0]), .Z(n16624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13119_3_lut.init = 16'hcaca;
    LUT4 i13117_3_lut (.A(csi_long_packet_count_sys[10]), .B(csi_payload_byte_count_sys[10]), 
         .C(field_index[0]), .Z(n16622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13117_3_lut.init = 16'hcaca;
    LUT4 i13511_rep_69_2_lut_3_lut (.A(field_index[2]), .B(field_index[1]), 
         .C(tx_state[1]), .Z(n16931)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13511_rep_69_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i13116_3_lut (.A(csi_byte_clk_count_sys[10]), .B(csi_hs_sync_count_sys[10]), 
         .C(field_index[0]), .Z(n16621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13116_3_lut.init = 16'hcaca;
    LUT4 n16543_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[0]), .B(csi_long_packet_count_sys[0]), 
         .C(n14195), .D(field_index[0]), .Z(n17948)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16543_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    PFUMX i13779 (.BLUT(n17730), .ALUT(n17729), .C0(tx_state[1]), .Z(digits_left_3__N_1211[1]));
    LUT4 i13114_3_lut (.A(csi_long_packet_count_sys[11]), .B(csi_payload_byte_count_sys[11]), 
         .C(field_index[0]), .Z(n16619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13114_3_lut.init = 16'hcaca;
    LUT4 i13113_3_lut (.A(csi_byte_clk_count_sys[11]), .B(csi_hs_sync_count_sys[11]), 
         .C(field_index[0]), .Z(n16618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13113_3_lut.init = 16'hcaca;
    LUT4 i13305_3_lut (.A(n16553), .B(n6_adj_1475), .C(field_index[2]), 
         .Z(n16554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13305_3_lut.init = 16'hcaca;
    LUT4 i13111_3_lut (.A(csi_long_packet_count_sys[12]), .B(csi_payload_byte_count_sys[12]), 
         .C(field_index[0]), .Z(n16616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13111_3_lut.init = 16'hcaca;
    LUT4 i13110_3_lut (.A(csi_byte_clk_count_sys[12]), .B(csi_hs_sync_count_sys[12]), 
         .C(field_index[0]), .Z(n16615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13110_3_lut.init = 16'hcaca;
    LUT4 i5939_2_lut (.A(n109[2]), .B(sec_cnt_25__N_1241), .Z(n137[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i5939_2_lut.init = 16'h2222;
    LUT4 i13108_3_lut (.A(csi_long_packet_count_sys[13]), .B(csi_payload_byte_count_sys[13]), 
         .C(field_index[0]), .Z(n16613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13108_3_lut.init = 16'hcaca;
    LUT4 i13107_3_lut (.A(csi_byte_clk_count_sys[13]), .B(csi_hs_sync_count_sys[13]), 
         .C(field_index[0]), .Z(n16612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13107_3_lut.init = 16'hcaca;
    LUT4 i13013_4_lut (.A(sec_cnt[4]), .B(n16477), .C(sec_cnt[25]), .D(sec_cnt[3]), 
         .Z(n16515)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13013_4_lut.init = 16'h8000;
    LUT4 i13105_3_lut (.A(csi_long_packet_count_sys[14]), .B(csi_payload_byte_count_sys[14]), 
         .C(field_index[0]), .Z(n16610)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13105_3_lut.init = 16'hcaca;
    LUT4 i13104_3_lut (.A(csi_byte_clk_count_sys[14]), .B(csi_hs_sync_count_sys[14]), 
         .C(field_index[0]), .Z(n16609)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13104_3_lut.init = 16'hcaca;
    PFUMX i13860 (.BLUT(n17947), .ALUT(n17948), .C0(field_index[1]), .Z(field_value_31__N_1179[0]));
    LUT4 i13102_3_lut (.A(csi_long_packet_count_sys[15]), .B(csi_payload_byte_count_sys[15]), 
         .C(field_index[0]), .Z(n16607)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13102_3_lut.init = 16'hcaca;
    LUT4 i12824_2_lut (.A(sec_cnt[22]), .B(sec_cnt[12]), .Z(n16325)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12824_2_lut.init = 16'h8888;
    LUT4 i13101_3_lut (.A(csi_byte_clk_count_sys[15]), .B(csi_hs_sync_count_sys[15]), 
         .C(field_index[0]), .Z(n16606)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13101_3_lut.init = 16'hcaca;
    LUT4 i13447_2_lut_3_lut (.A(field_index[2]), .B(field_index[1]), .C(field_index[0]), 
         .Z(n14318)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i13447_2_lut_3_lut.init = 16'h0707;
    LUT4 i2795_2_lut_rep_333_2_lut (.A(field_index[1]), .B(field_index[0]), 
         .Z(n17910)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i2795_2_lut_rep_333_2_lut.init = 16'h4444;
    LUT4 i13099_3_lut (.A(csi_long_packet_count_sys[16]), .B(csi_payload_byte_count_sys[16]), 
         .C(field_index[0]), .Z(n16604)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13099_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_16_i7_3_lut (.A(n16603), .B(field_value[12]), .C(tx_state[1]), 
         .Z(n2[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_16_i7_3_lut.init = 16'hcaca;
    LUT4 i13307_3_lut (.A(n16556), .B(n6), .C(field_index[2]), .Z(n16557)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13307_3_lut.init = 16'hcaca;
    LUT4 i13096_3_lut (.A(csi_long_packet_count_sys[17]), .B(csi_payload_byte_count_sys[17]), 
         .C(field_index[0]), .Z(n16601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13096_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_17_i7_3_lut (.A(n16600), .B(field_value[13]), .C(tx_state[1]), 
         .Z(n2[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_17_i7_3_lut.init = 16'hcaca;
    LUT4 i13093_3_lut (.A(csi_long_packet_count_sys[18]), .B(csi_payload_byte_count_sys[18]), 
         .C(field_index[0]), .Z(n16598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13093_3_lut.init = 16'hcaca;
    LUT4 i12832_2_lut (.A(sec_cnt[15]), .B(sec_cnt[5]), .Z(n16333)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12832_2_lut.init = 16'h8888;
    PFUMX i13124 (.BLUT(n16627), .ALUT(n16628), .C0(field_index[1]), .Z(n16629));
    LUT4 i6460_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[11]), 
         .D(csi_last_dt_sys[1]), .Z(n6_adj_1478)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6460_4_lut_4_lut.init = 16'h5140;
    LUT4 mux_16_Mux_18_i7_3_lut (.A(n16597), .B(field_value[14]), .C(tx_state[1]), 
         .Z(n2[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_18_i7_3_lut.init = 16'hcaca;
    LUT4 i13129_3_lut (.A(csi_long_packet_count_sys[6]), .B(csi_payload_byte_count_sys[6]), 
         .C(field_index[0]), .Z(n16634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13129_3_lut.init = 16'hcaca;
    LUT4 i13090_3_lut (.A(csi_long_packet_count_sys[19]), .B(csi_payload_byte_count_sys[19]), 
         .C(field_index[0]), .Z(n16595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13090_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_19_i7_3_lut (.A(n16594), .B(field_value[15]), .C(tx_state[1]), 
         .Z(n2[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_19_i7_3_lut.init = 16'hcaca;
    LUT4 i13087_3_lut (.A(csi_long_packet_count_sys[20]), .B(csi_payload_byte_count_sys[20]), 
         .C(field_index[0]), .Z(n16592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13087_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_20_i7_3_lut (.A(n16591), .B(field_value[16]), .C(tx_state[1]), 
         .Z(n2[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_20_i7_3_lut.init = 16'hcaca;
    PFUMX i3729 (.BLUT(n7092), .ALUT(n6145), .C0(tx_state[1]), .Z(n7093));
    LUT4 i1_4_lut_adj_24 (.A(sec_cnt[18]), .B(sec_cnt[7]), .C(sec_cnt[24]), 
         .D(sec_cnt[10]), .Z(n16195)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(26[18:36])
    defparam i1_4_lut_adj_24.init = 16'hfffe;
    LUT4 i13084_3_lut (.A(csi_long_packet_count_sys[21]), .B(csi_payload_byte_count_sys[21]), 
         .C(field_index[0]), .Z(n16589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13084_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(tx_state[1]), .B(n17911), .C(tx_phase[0]), 
         .D(tx_phase[2]), .Z(tx_phase_2__N_1165[0])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 mux_16_Mux_21_i7_3_lut (.A(n16588), .B(field_value[17]), .C(tx_state[1]), 
         .Z(n2[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_21_i7_3_lut.init = 16'hcaca;
    LUT4 i13128_3_lut (.A(csi_byte_clk_count_sys[6]), .B(csi_hs_sync_count_sys[6]), 
         .C(field_index[0]), .Z(n16633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13128_3_lut.init = 16'hcaca;
    PFUMX i13127 (.BLUT(n16630), .ALUT(n16631), .C0(field_index[1]), .Z(n16632));
    LUT4 i13081_3_lut (.A(csi_long_packet_count_sys[22]), .B(csi_payload_byte_count_sys[22]), 
         .C(field_index[0]), .Z(n16586)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13081_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_22_i7_3_lut (.A(n16585), .B(field_value[18]), .C(tx_state[1]), 
         .Z(n2[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_22_i7_3_lut.init = 16'hcaca;
    LUT4 i13078_3_lut (.A(csi_long_packet_count_sys[23]), .B(csi_payload_byte_count_sys[23]), 
         .C(field_index[0]), .Z(n16583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13078_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_23_i7_3_lut (.A(n16582), .B(field_value[19]), .C(tx_state[1]), 
         .Z(n2[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_23_i7_3_lut.init = 16'hcaca;
    LUT4 i13075_3_lut (.A(csi_long_packet_count_sys[24]), .B(csi_payload_byte_count_sys[24]), 
         .C(field_index[0]), .Z(n16580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13075_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_24_i7_3_lut (.A(n16579), .B(field_value[20]), .C(tx_state[1]), 
         .Z(n2[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_24_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(sec_cnt[8]), .B(sec_cnt[9]), .Z(n16191)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(26[18:36])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i13072_3_lut (.A(csi_long_packet_count_sys[25]), .B(csi_payload_byte_count_sys[25]), 
         .C(field_index[0]), .Z(n16577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13072_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_25_i7_3_lut (.A(n16576), .B(field_value[21]), .C(tx_state[1]), 
         .Z(n2[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_25_i7_3_lut.init = 16'hcaca;
    LUT4 i13063_3_lut (.A(csi_long_packet_count_sys[26]), .B(csi_payload_byte_count_sys[26]), 
         .C(field_index[0]), .Z(n16568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13063_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_26_i7_3_lut (.A(n16567), .B(field_value[22]), .C(tx_state[1]), 
         .Z(n2[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_26_i7_3_lut.init = 16'hcaca;
    LUT4 i13060_3_lut (.A(csi_long_packet_count_sys[27]), .B(csi_payload_byte_count_sys[27]), 
         .C(field_index[0]), .Z(n16565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13060_3_lut.init = 16'hcaca;
    LUT4 i12975_4_lut (.A(sec_cnt[0]), .B(sec_cnt[21]), .C(sec_cnt[17]), 
         .D(sec_cnt[14]), .Z(n16477)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12975_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_25 (.A(tx_state[1]), .B(tx_state[0]), .Z(tx_flag_N_1345)) /* synthesis lut_function=(!(A+!(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam i1_2_lut_adj_25.init = 16'h4444;
    LUT4 mux_16_Mux_27_i7_3_lut (.A(n16564), .B(field_value[23]), .C(tx_state[1]), 
         .Z(n2[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_27_i7_3_lut.init = 16'hcaca;
    PFUMX i13130 (.BLUT(n16633), .ALUT(n16634), .C0(field_index[1]), .Z(n16635));
    LUT4 mux_16_Mux_29_i7_3_lut (.A(n16558), .B(field_value[25]), .C(tx_state[1]), 
         .Z(n2[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_29_i7_3_lut.init = 16'hcaca;
    LUT4 i13062_3_lut (.A(csi_byte_clk_count_sys[26]), .B(csi_hs_sync_count_sys[26]), 
         .C(field_index[0]), .Z(n16567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13062_3_lut.init = 16'hcaca;
    LUT4 n16543_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[0]), .B(n14195), 
         .C(csi_hs_sync_count_sys[0]), .D(field_index[0]), .Z(n17947)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16543_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i13080_3_lut (.A(csi_byte_clk_count_sys[22]), .B(csi_hs_sync_count_sys[22]), 
         .C(field_index[0]), .Z(n16585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13080_3_lut.init = 16'hcaca;
    LUT4 i13440_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n16827)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13440_2_lut_3_lut.init = 16'he1e1;
    LUT4 i1_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n2463)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 n4_bdd_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n17730)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam n4_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i6414_2_lut (.A(n109[25]), .B(sec_cnt_25__N_1241), .Z(n137[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6414_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(field_index[1]), .B(field_index[0]), 
         .C(field_index[2]), .Z(n2477)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_2_lut_3_lut_adj_26.init = 16'h0606;
    LUT4 i6412_2_lut (.A(n109[23]), .B(sec_cnt_25__N_1241), .Z(n137[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6412_2_lut.init = 16'h2222;
    LUT4 i6413_2_lut (.A(n109[24]), .B(sec_cnt_25__N_1241), .Z(n137[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6413_2_lut.init = 16'h2222;
    LUT4 i13309_3_lut (.A(n16559), .B(n6_adj_1463), .C(field_index[2]), 
         .Z(n16560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13309_3_lut.init = 16'hcaca;
    LUT4 i13051_3_lut (.A(csi_long_packet_count_sys[30]), .B(csi_payload_byte_count_sys[30]), 
         .C(field_index[0]), .Z(n16556)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13051_3_lut.init = 16'hcaca;
    LUT4 i6461_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[10]), 
         .D(csi_last_dt_sys[0]), .Z(n6_adj_1481)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6461_4_lut_4_lut.init = 16'h5140;
    LUT4 i6455_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[15]), 
         .D(csi_last_dt_sys[5]), .Z(n6_adj_1475)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i6455_4_lut_4_lut.init = 16'h5140;
    LUT4 mux_16_Mux_30_i7_3_lut (.A(n16555), .B(field_value[26]), .C(tx_state[1]), 
         .Z(n2[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_30_i7_3_lut.init = 16'hcaca;
    LUT4 i5940_2_lut (.A(n109[1]), .B(sec_cnt_25__N_1241), .Z(n137[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i5940_2_lut.init = 16'h2222;
    LUT4 i12_4_lut_3_lut (.A(field_index[1]), .B(field_index[0]), .C(field_index[2]), 
         .Z(n13890)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i12_4_lut_3_lut.init = 16'h5858;
    LUT4 i2_3_lut_4_lut (.A(\digits_left[1] ), .B(digits_left[0]), .C(digits_left_c[2]), 
         .D(n5216), .Z(digits_left_3__N_1312[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i2_3_lut_4_lut.init = 16'he1f0;
    LUT4 i1_3_lut_4_lut_adj_27 (.A(\digits_left[1] ), .B(digits_left[0]), 
         .C(digits_left_c[2]), .D(n5216), .Z(n15149)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i1_3_lut_4_lut_adj_27.init = 16'h0100;
    LUT4 i13077_3_lut (.A(csi_byte_clk_count_sys[23]), .B(csi_hs_sync_count_sys[23]), 
         .C(field_index[0]), .Z(n16582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13077_3_lut.init = 16'hcaca;
    LUT4 i6145_2_lut (.A(n109[0]), .B(sec_cnt_25__N_1241), .Z(n137[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6145_2_lut.init = 16'h2222;
    LUT4 i13048_3_lut (.A(csi_long_packet_count_sys[31]), .B(csi_payload_byte_count_sys[31]), 
         .C(field_index[0]), .Z(n16553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13048_3_lut.init = 16'hcaca;
    LUT4 i13311_3_lut (.A(n16562), .B(n6_adj_1473), .C(field_index[2]), 
         .Z(n16563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13311_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_31_i7_3_lut (.A(n16552), .B(field_value[27]), .C(tx_state[1]), 
         .Z(n2[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_31_i7_3_lut.init = 16'hcaca;
    LUT4 i6610_2_lut_rep_342 (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[31]), .Z(n17919)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i6610_2_lut_rep_342.init = 16'he0e0;
    LUT4 i13047_3_lut (.A(csi_byte_clk_count_sys[31]), .B(csi_hs_sync_count_sys[31]), 
         .C(field_index[0]), .Z(n16552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13047_3_lut.init = 16'hcaca;
    LUT4 i13056_3_lut (.A(csi_byte_clk_count_sys[28]), .B(csi_hs_sync_count_sys[28]), 
         .C(field_index[0]), .Z(n16561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13056_3_lut.init = 16'hcaca;
    LUT4 tx_state_1__I_0_91_Mux_3_i3_4_lut (.A(field_index[2]), .B(n15149), 
         .C(tx_state[1]), .D(digits_left_c[3]), .Z(digits_left_3__N_1211[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam tx_state_1__I_0_91_Mux_3_i3_4_lut.init = 16'h35c5;
    LUT4 i13053_3_lut (.A(csi_byte_clk_count_sys[29]), .B(csi_hs_sync_count_sys[29]), 
         .C(field_index[0]), .Z(n16558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13053_3_lut.init = 16'hcaca;
    LUT4 i13313_3_lut (.A(n16565), .B(n6_adj_1478), .C(field_index[2]), 
         .Z(n16566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13313_3_lut.init = 16'hcaca;
    PFUMX tx_state_1__I_0_91_Mux_2_i3 (.BLUT(n2463), .ALUT(digits_left_3__N_1312[2]), 
          .C0(tx_state[1]), .Z(digits_left_3__N_1211[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i3851_4_lut (.A(n16608), .B(field_value[11]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3851_4_lut.init = 16'hc0ca;
    LUT4 i3853_4_lut (.A(n16611), .B(field_value[10]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3853_4_lut.init = 16'hc0ca;
    LUT4 mux_1475_i3_4_lut_4_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[31]), .D(field_value[28]), .Z(n4710[2])) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam mux_1475_i3_4_lut_4_lut.init = 16'hcc8c;
    LUT4 i3855_4_lut (.A(n16614), .B(field_value[9]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3855_4_lut.init = 16'hc0ca;
    LUT4 i3857_4_lut (.A(n16617), .B(field_value[8]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3857_4_lut.init = 16'hc0ca;
    LUT4 i3859_4_lut (.A(n16620), .B(field_value[7]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3859_4_lut.init = 16'hc0ca;
    LUT4 i3861_4_lut (.A(n16623), .B(field_value[6]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3861_4_lut.init = 16'hc0ca;
    PFUMX i13133 (.BLUT(n16636), .ALUT(n16637), .C0(field_index[1]), .Z(n16638));
    LUT4 i13315_3_lut (.A(n16568), .B(n6_adj_1481), .C(field_index[2]), 
         .Z(n16569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13315_3_lut.init = 16'hcaca;
    LUT4 i3863_4_lut (.A(n16626), .B(field_value[5]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3863_4_lut.init = 16'hc0ca;
    LUT4 i13050_3_lut (.A(csi_byte_clk_count_sys[30]), .B(csi_hs_sync_count_sys[30]), 
         .C(field_index[0]), .Z(n16555)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13050_3_lut.init = 16'hcaca;
    LUT4 i3865_4_lut (.A(n16629), .B(field_value[4]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3865_4_lut.init = 16'hc0ca;
    LUT4 i3867_4_lut (.A(n16632), .B(field_value[3]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3867_4_lut.init = 16'hc0ca;
    LUT4 i3869_4_lut (.A(n16635), .B(field_value[2]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3869_4_lut.init = 16'hc0ca;
    LUT4 i3871_4_lut (.A(n16638), .B(field_value[1]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3871_4_lut.init = 16'hc0ca;
    LUT4 i3873_4_lut (.A(n16641), .B(field_value[0]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1179[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3873_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut (.A(field_index[0]), .B(field_index[2]), .C(field_index[1]), 
         .Z(n2475)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_3_lut.init = 16'h2828;
    LUT4 i1_3_lut_adj_28 (.A(field_index[0]), .B(field_index[2]), .C(field_index[1]), 
         .Z(n2479)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_3_lut_adj_28.init = 16'hdcdc;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[31]), .Z(n17)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'hefef;
    LUT4 i3946_2_lut (.A(tx_state[0]), .B(tx_state[1]), .Z(tx_state_1__N_1163_c[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3946_2_lut.init = 16'h6666;
    PFUMX i13136 (.BLUT(n16639), .ALUT(n16640), .C0(field_index[1]), .Z(n16641));
    LUT4 i1_2_lut_adj_30 (.A(digits_left_c[2]), .B(digits_left_c[3]), .Z(n15851)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(141[33:52])
    defparam i1_2_lut_adj_30.init = 16'heeee;
    LUT4 i13071_3_lut (.A(csi_byte_clk_count_sys[25]), .B(csi_hs_sync_count_sys[25]), 
         .C(field_index[0]), .Z(n16576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13071_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_31 (.A(field_label[6]), .B(n17943), .C(n17919), 
         .D(tx_phase[1]), .Z(tx_data_7__N_1329[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i1_4_lut_adj_31.init = 16'h3022;
    LUT4 i6723_2_lut_rep_309_3_lut_4_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(tx_phase[0]), .D(field_value[31]), .Z(n17886)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i6723_2_lut_rep_309_3_lut_4_lut.init = 16'hfef0;
    LUT4 i6124_4_lut (.A(n1), .B(tx_phase[2]), .C(n17886), .D(tx_phase[1]), 
         .Z(tx_data_7__N_1329[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6124_4_lut.init = 16'h0322;
    LUT4 i6196_2_lut (.A(field_label[4]), .B(tx_phase[0]), .Z(n1)) /* synthesis lut_function=(A+(B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6196_2_lut.init = 16'heeee;
    LUT4 i13536_4_lut (.A(field_label[3]), .B(n17943), .C(n17), .D(tx_phase[1]), 
         .Z(tx_data_7__N_1329[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i13536_4_lut.init = 16'hcfee;
    LUT4 i6126_3_lut (.A(n6028), .B(tx_phase[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1329[2])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6126_3_lut.init = 16'h3232;
    LUT4 i2671_3_lut (.A(field_label[2]), .B(n4710[2]), .C(tx_phase[1]), 
         .Z(n6028)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2671_3_lut.init = 16'hcaca;
    LUT4 i6127_3_lut (.A(n6030), .B(tx_phase[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1329[1])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6127_3_lut.init = 16'hcece;
    LUT4 i2673_3_lut (.A(field_label[1]), .B(n4710[1]), .C(tx_phase[1]), 
         .Z(n6030)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // g:/shita/git/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2673_3_lut.init = 16'hcaca;
    LUT4 mux_1475_i2_3_lut_4_lut_4_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[28]), .D(field_value[31]), .Z(n4710[1])) /* synthesis lut_function=(A (C+!(D))+!A !((C+!(D))+!B)) */ ;
    defparam mux_1475_i2_3_lut_4_lut_4_lut.init = 16'ha4aa;
    PFUMX i13874 (.BLUT(n17968), .ALUT(n17969), .C0(field_index[1]), .Z(field_value_31__N_1179[2]));
    PFUMX i13872 (.BLUT(n17965), .ALUT(n17966), .C0(field_index[1]), .Z(field_value_31__N_1179[3]));
    LUT4 i13502_3_lut (.A(field_index[1]), .B(field_index[2]), .C(field_index[0]), 
         .Z(n9565)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i13502_3_lut.init = 16'h4141;
    PFUMX i3849 (.BLUT(n16605), .ALUT(n2[16]), .C0(n16931), .Z(field_value_31__N_1179[16]));
    PFUMX i3847 (.BLUT(n16602), .ALUT(n2[17]), .C0(n16931), .Z(field_value_31__N_1179[17]));
    PFUMX i3845 (.BLUT(n16599), .ALUT(n2[18]), .C0(n16931), .Z(field_value_31__N_1179[18]));
    PFUMX i3843 (.BLUT(n16596), .ALUT(n2[19]), .C0(n16931), .Z(field_value_31__N_1179[19]));
    
endmodule
//
// Verilog Description of module csi2dsi
//

module csi2dsi (csi_clk_byte_hs, \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, 
            csi_dt_parser, csi_wc, GND_net, csi_dt_c_4, n17917, csi_clk_byte, 
            csi_sp_en_c, csi_lp_en_c, sys_clk_c, csi_payload_en_c, csi_dt_c_3, 
            csi_dt_c_2, \reset_byte_sync[1] , mipi_rcp_0, mipi_rcn_0, 
            mipi_rdp_0, mipi_rdn_0) /* synthesis syn_module_defined=1 */ ;
    output csi_clk_byte_hs;
    input \reset_byte_fr_sync[1] ;
    input VCC_net;
    output csi_dt_c_5;
    output [5:0]csi_dt_parser;
    output [15:0]csi_wc;
    input GND_net;
    output csi_dt_c_4;
    input n17917;
    output csi_clk_byte;
    output csi_sp_en_c;
    output csi_lp_en_c;
    input sys_clk_c;
    output csi_payload_en_c;
    output csi_dt_c_3;
    output csi_dt_c_2;
    input \reset_byte_sync[1] ;
    inout mipi_rcp_0;
    inout mipi_rcn_0;
    inout mipi_rdp_0;
    inout mipi_rdn_0;
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(127[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(126[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    
    \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT")  dphy_rx_inst (.csi_clk_byte_hs(csi_clk_byte_hs), 
            .\reset_byte_fr_sync[1] (\reset_byte_fr_sync[1] ), .VCC_net(VCC_net), 
            .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), .csi_wc({csi_wc}), 
            .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), .n17917(n17917), 
            .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), .csi_lp_en_c(csi_lp_en_c), 
            .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (\reset_byte_sync[1] ), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi.v(149[1] 207[2])
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT") 
//

module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT")  (csi_clk_byte_hs, 
            \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, csi_dt_parser, 
            csi_wc, GND_net, csi_dt_c_4, n17917, csi_clk_byte, csi_sp_en_c, 
            csi_lp_en_c, sys_clk_c, csi_payload_en_c, csi_dt_c_3, csi_dt_c_2, 
            \reset_byte_sync[1] , mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0) /* synthesis syn_module_defined=1 */ ;
    output csi_clk_byte_hs;
    input \reset_byte_fr_sync[1] ;
    input VCC_net;
    output csi_dt_c_5;
    output [5:0]csi_dt_parser;
    output [15:0]csi_wc;
    input GND_net;
    output csi_dt_c_4;
    input n17917;
    output csi_clk_byte;
    output csi_sp_en_c;
    output csi_lp_en_c;
    input sys_clk_c;
    output csi_payload_en_c;
    output csi_dt_c_3;
    output csi_dt_c_2;
    input \reset_byte_sync[1] ;
    inout mipi_rcp_0;
    inout mipi_rcn_0;
    inout mipi_rdp_0;
    inout mipi_rdn_0;
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(127[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(126[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    wire [7:0]bd0_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(125[46:51])
    wire [7:0]bd1_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(126[46:51])
    wire [7:0]bd2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(127[46:51])
    wire [7:0]bd3_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(128[46:51])
    
    wire capture_en_o, term_d0_en_w;
    wire [7:0]bd0;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[32:35])
    wire [7:0]bd1;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[37:40])
    wire [7:0]bd2;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[42:45])
    wire [7:0]bd3;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(200[47:50])
    
    wire lp_d0_rx_p_o, lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
        lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, lp_clk_rx_p, lp_clk_rx_n, 
        hs_settle_en_w;
    wire [3:0]d_sot_det_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(246[20:31])
    wire [3:0]d_sote_det_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(247[20:32])
    wire [7:0]bd0_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(248[20:25])
    wire [7:0]bd1_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(249[20:25])
    wire [7:0]bd2_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(250[20:25])
    wire [7:0]bd3_w;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(251[20:25])
    
    csi2dsi_capture_ctrl \capture_ctrl_inst.capture_ctrl_inst  (.reset_n_i(\reset_byte_fr_sync[1] ), 
            .clk_byte_i(csi_clk_byte_hs), .bd0_i({bd0_o}), .bd1_i({bd1_o}), 
            .bd2_i({bd2_o}), .bd3_i({bd3_o}), .capture_en_i(capture_en_o), 
            .ref_dt_i({VCC_net, GND_net, VCC_net, GND_net, VCC_net, 
            VCC_net}), .lp_en_o(csi_dt_c_5), .payload_en_o(csi_dt_c_4), 
            .wc_o({csi_wc}), .dt_o({csi_dt_parser})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(423[9] 449[10])
    csi2dsi_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(n17917), .reset_lp_n_i(n17917), 
            .reset_byte_fr_n_i(\reset_byte_fr_sync[1] ), .clk_lp_ctrl_i(sys_clk_c), 
            .clk_byte_hs_i(csi_clk_byte_hs), .clk_byte_i(csi_clk_byte), 
            .clk_byte_fr_i(csi_clk_byte_hs), .pll_lock_i(VCC_net), .bd0_i({bd0}), 
            .bd1_i({bd1}), .bd2_i({bd2}), .bd3_i({bd3}), .lp_clk_p_i(lp_clk_rx_p), 
            .lp_clk_n_i(lp_clk_rx_n), .lp_d0_p_i(lp_d0_rx_p_o), .lp_d0_n_i(lp_d0_rx_n_o), 
            .lp_d1_p_i(lp_d1_rx_p_o), .lp_d1_n_i(lp_d1_rx_n_o), .lp_d2_p_i(lp_d2_rx_p_o), 
            .lp_d2_n_i(lp_d2_rx_n_o), .lp_d3_p_i(lp_d3_rx_p_o), .lp_d3_n_i(lp_d3_rx_n_o), 
            .hs_sync_i(csi_lp_en_c), .bd0_o({bd0_o}), .bd1_o({bd1_o}), 
            .bd2_o({bd2_o}), .bd3_o({bd3_o}), .term_clk_en_o(csi_payload_en_c), 
            .term_d0_en_o(term_d0_en_w), .hs_d0_en_o(csi_sp_en_c), .hs_sync_o(capture_en_o), 
            .hs_settle_en_o(hs_settle_en_w), .lp_hs_state_d_o({csi_dt_c_3, 
            csi_dt_c_2})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(349[1] 390[2])
    csi2dsi_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(n17917), .reset_byte_n_i(\reset_byte_sync[1] ), 
            .reset_byte_fr_n_i(\reset_byte_fr_sync[1] ), .clk_byte_fr_i(csi_clk_byte_hs), 
            .term_d0_en_i(term_d0_en_w), .term_d1_en_i(term_d0_en_w), .term_d2_en_i(term_d0_en_w), 
            .term_d3_en_i(term_d0_en_w), .hs_d0_en_i(csi_sp_en_c), .hs_d1_en_i(csi_sp_en_c), 
            .hs_d2_en_i(csi_sp_en_c), .hs_d3_en_i(csi_sp_en_c), .d_sot_det({d_sot_det_w}), 
            .d_sote_det({d_sote_det_w}), .clk_byte_i(csi_clk_byte), .bd0_i({bd0_w}), 
            .bd1_i({bd1_w}), .bd2_i({bd2_w}), .bd3_i({bd3_w}), .bd0_o({bd0}), 
            .bd1_o({bd1}), .bd2_o({bd2}), .bd3_o({bd3}), .hs_sync_o(csi_lp_en_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(254[1] 279[2])
    \csi2dsi_dphy_wrapper(RX_GEAR=8,WORD_ALIGN="OFF",NUM_RX_LANE=1)  u_dphy_wrapper (.GND_net(GND_net), 
            .VCC_net(VCC_net), .d_sot_det_w({d_sot_det_w}), .d_sote_det_w({d_sote_det_w}), 
            .bd0_w({bd0_w}), .bd1_w({bd1_w}), .bd2_w({bd2_w}), .bd3_w({bd3_w}), 
            .csi_payload_en_c(csi_payload_en_c), .term_d0_en_w(term_d0_en_w), 
            .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), .lp_d0_rx_p_o(lp_d0_rx_p_o), 
            .lp_d0_rx_n_o(lp_d0_rx_n_o), .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), 
            .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), 
            .lp_d3_rx_n_o(lp_d3_rx_n_o), .csi_clk_byte(csi_clk_byte), .csi_clk_byte_hs(csi_clk_byte_hs), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0), .hs_settle_en_w(hs_settle_en_w), .csi_sp_en_c(csi_sp_en_c)) /* synthesis syn_module_defined=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    
endmodule
//
// Verilog Description of module csi2dsi_capture_ctrl
//

module csi2dsi_capture_ctrl (reset_n_i, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, capture_en_i, ref_dt_i, sp_en_o, sp2_en_o, lp_en_o, 
            lp2_en_o, lp_av_en_o, lp2_av_en_o, bd_o, vc_o, vc2_o, 
            payload_en_o, payload_o, wc_o, wc2_o, dt_o, dt2_o, ecc_o, 
            ecc2_o);   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(8[8:28])
    input reset_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(9[43:52])
    input clk_byte_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(10[43:53])
    input [7:0]bd0_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(11[34:39])
    input [7:0]bd1_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(12[34:39])
    input [7:0]bd2_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(13[34:39])
    input [7:0]bd3_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(14[34:39])
    input capture_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(15[43:55])
    input [5:0]ref_dt_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(16[43:51])
    output sp_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(17[43:50])
    output sp2_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(18[43:51])
    output lp_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(19[43:50])
    output lp2_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(20[43:51])
    output lp_av_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(21[43:53])
    output lp2_av_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(22[43:54])
    output [7:0]bd_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(23[30:34])
    output [1:0]vc_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(24[43:47])
    output [1:0]vc2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(25[43:48])
    output payload_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(26[43:55])
    output [7:0]payload_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(27[27:36])
    output [15:0]wc_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(28[43:47])
    output [15:0]wc2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(29[43:48])
    output [5:0]dt_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(30[43:47])
    output [5:0]dt2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(31[43:48])
    output [7:0]ecc_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(32[43:48])
    output [7:0]ecc2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(33[43:49])
    
    
    
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
            lp_hs_state_d_o);   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(8[8:30])
    input reset_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(9[31:40])
    input reset_lp_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(10[31:43])
    input reset_byte_fr_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(11[31:48])
    input clk_lp_ctrl_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(12[31:44])
    input clk_byte_hs_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(13[31:44])
    input clk_byte_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(14[31:41])
    input clk_byte_fr_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(15[31:44])
    input pll_lock_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(16[31:41])
    input [7:0]bd0_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(18[25:30])
    input [7:0]bd1_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(19[25:30])
    input [7:0]bd2_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(20[25:30])
    input [7:0]bd3_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(21[25:30])
    input lp_clk_p_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(22[31:41])
    input lp_clk_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(23[31:41])
    input lp_d0_p_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(24[31:40])
    input lp_d0_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(25[31:40])
    input lp_d1_p_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(26[31:40])
    input lp_d1_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(27[31:40])
    input lp_d2_p_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(28[31:40])
    input lp_d2_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(29[31:40])
    input lp_d3_p_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(30[31:40])
    input lp_d3_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(31[31:40])
    input hs_sync_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(32[31:40])
    output [7:0]bd0_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(33[25:30])
    output [7:0]bd1_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(34[25:30])
    output [7:0]bd2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(35[25:30])
    output [7:0]bd3_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(36[25:30])
    output term_clk_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(37[31:44])
    output term_d0_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(38[31:43])
    output hs_d0_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(39[31:41])
    output term_d1_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(40[31:43])
    output hs_d1_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(41[31:41])
    output term_d2_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(42[31:43])
    output hs_d2_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(43[31:41])
    output term_d3_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(44[31:43])
    output hs_d3_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(45[31:41])
    output hs_sync_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(46[31:40])
    output hs_settle_en_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(47[31:45])
    output [1:0]lp_hs_state_clk_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(48[31:48])
    output [1:0]lp_hs_state_d_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(49[31:46])
    
    
    
endmodule
//
// Verilog Description of module csi2dsi_dphy_rx_wrap
//

module csi2dsi_dphy_rx_wrap (reset_n_i, reset_byte_n_i, reset_byte_fr_n_i, 
            clk_byte_fr_i, term_d0_en_i, term_d1_en_i, term_d2_en_i, 
            term_d3_en_i, hs_d0_en_i, hs_d1_en_i, hs_d2_en_i, hs_d3_en_i, 
            d_sot_det, d_sote_det, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, bd0_o, bd1_o, bd2_o, bd3_o, hs_sync_o);   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(8[8:28])
    input reset_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(9[31:40])
    input reset_byte_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(10[31:45])
    input reset_byte_fr_n_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(11[31:48])
    input clk_byte_fr_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(12[31:44])
    input term_d0_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(13[31:43])
    input term_d1_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(14[31:43])
    input term_d2_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(15[31:43])
    input term_d3_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(16[31:43])
    input hs_d0_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(17[31:41])
    input hs_d1_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(18[31:41])
    input hs_d2_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(19[31:41])
    input hs_d3_en_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(20[31:41])
    input [3:0]d_sot_det;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(22[31:40])
    input [3:0]d_sote_det;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(23[31:41])
    input clk_byte_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(26[31:41])
    input [7:0]bd0_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(27[25:30])
    input [7:0]bd1_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(28[25:30])
    input [7:0]bd2_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(29[25:30])
    input [7:0]bd3_i;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(30[25:30])
    output [7:0]bd0_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(31[25:30])
    output [7:0]bd1_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(32[25:30])
    output [7:0]bd2_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(33[25:30])
    output [7:0]bd3_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(34[25:30])
    output hs_sync_o;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(35[31:40])
    
    
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_wrapper(RX_GEAR=8,WORD_ALIGN="OFF",NUM_RX_LANE=1) 
//

module \csi2dsi_dphy_wrapper(RX_GEAR=8,WORD_ALIGN="OFF",NUM_RX_LANE=1)  (GND_net, 
            VCC_net, d_sot_det_w, d_sote_det_w, bd0_w, bd1_w, bd2_w, 
            bd3_w, csi_payload_en_c, term_d0_en_w, lp_clk_rx_p, lp_clk_rx_n, 
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
    
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(126[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(127[25:40])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // g:/shita/git/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    
    wire d1_p_i, d1_n_i, d2_p_i, d2_n_i, d3_p_i, d3_n_i, d_sot_det_o_3__N_1126;
    
    MIPIDPHYA \MIXEL.mixel_dphy  (.DP0(mipi_rdp_0), .DN0(mipi_rdn_0), .DP1(d1_p_i), 
            .DN1(d1_n_i), .DP2(d2_p_i), .DN2(d2_n_i), .DP3(d3_p_i), 
            .DN3(d3_n_i), .CKP(mipi_rcp_0), .CKN(mipi_rcn_0), .D0RXHSEN(term_d0_en_w), 
            .D0HSDESEREN(d_sot_det_o_3__N_1126), .D0RXLPEN(VCC_net), .D0CDEN(VCC_net), 
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
            .CLKHSBYTE(csi_clk_byte_hs), .CLKDRXLPP(lp_clk_rx_p), .CLKDRXLPN(lp_clk_rx_n)) /* synthesis HS_MODE="RX", DIR_PIN_DN3="INPUT", DIR_PIN_DP3="INPUT", DIR_PIN_DN2="INPUT", DIR_PIN_DP2="INPUT", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", DIR_PIN_DN0="INPUT", DIR_PIN_DP0="INPUT", FREQUENCY_PIN_HSBYTECLKD="50.0", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    defparam \MIXEL.mixel_dphy .HSEL = 0;
    defparam \MIXEL.mixel_dphy .HS_16BIT_EN = 0;
    defparam \MIXEL.mixel_dphy .CN = 5'b00000;
    defparam \MIXEL.mixel_dphy .CM = 8'b00000000;
    defparam \MIXEL.mixel_dphy .CO = 2'b00;
    defparam \MIXEL.mixel_dphy .PLL_TST = 4'b1001;
    defparam \MIXEL.mixel_dphy .ENP_DESER = 1'b0;
    LUT4 hs_settle_en_i_I_0_2_lut (.A(hs_settle_en_w), .B(csi_sp_en_c), 
         .Z(d_sot_det_o_3__N_1126)) /* synthesis lut_function=(A (B)) */ ;   // g:/shita/git/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_wrapper.v(238[29:56])
    defparam hs_settle_en_i_I_0_2_lut.init = 16'h8888;
    
endmodule
