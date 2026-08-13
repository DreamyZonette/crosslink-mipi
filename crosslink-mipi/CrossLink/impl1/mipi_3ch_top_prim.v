// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Aug 13 10:57:41 2026
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
    
    wire n13364, n13363;
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
    
    wire n13312, n13234, n136, n13311, led_3__N_1, n13310, n13309, 
        n13238, n17315, n13362, n17311, n13230, n6031, n13231, 
        n137, reset_byte_fr_sync_1__N_129, n13361, n13360, n13359, 
        csi_hs_sync_count_31__N_349, n13358, n13308, n13357, n135, 
        n13356, n155, n13307, n13355, n157, n13237, csi_long_packet_count_31__N_384, 
        n13306, n13305, n13235, n141, n165, n164, n163, n162, 
        n161, n13354, n13304, n143, rst_cnt_25__N_445, n1191, n1192, 
        n1193, n1194, n1195, n1196, n1197, n1198, n1199, n1200, 
        n1201, n1202, n1203, n1204, n1205, n1206, n1207, n1208, 
        n1209, n1210, n1211, n1212, n1213, n1214, n1215, n1216, 
        rst_n_pulse_N_449, n13303, n17281, n13302, n165_adj_1530, 
        n160, n159, n158, n157_adj_1531, n156, n155_adj_1532, n154, 
        n153, n152, n151, n150, n149, n148, n147, n146, n145, 
        n144, n143_adj_1533, n142, n141_adj_1534, n140, n139, n138, 
        n137_adj_1535, n136_adj_1536, n135_adj_1537, n13353, flag_done;
    wire [1:0]tx_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    wire [3:0]field_index;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    
    wire n13352, n17271, n13351, n13350, n13301, n13349, n17251, 
        n17247, n17245, n17241, n138_adj_1538, n139_adj_1539, n140_adj_1540, 
        n141_adj_1541, n142_adj_1542, n143_adj_1543, n144_adj_1544, 
        n145_adj_1545, n146_adj_1546, n147_adj_1547, n148_adj_1548, 
        n149_adj_1549, n150_adj_1550, n151_adj_1551, n134, n13300, 
        n13348, n13347, n97, n98, n99, work_en_N_1384, n164_adj_1552, 
        n163_adj_1553, n162_adj_1554, n161_adj_1555, n160_adj_1556, 
        n159_adj_1557, n158_adj_1558, n157_adj_1559, n156_adj_1560, 
        n155_adj_1561, n154_adj_1562, n153_adj_1563, n152_adj_1564, 
        n151_adj_1565, n150_adj_1566, n149_adj_1567, n148_adj_1568, 
        n147_adj_1569, n146_adj_1570, n145_adj_1571, n144_adj_1572, 
        n143_adj_1573, n142_adj_1574, n141_adj_1575, n140_adj_1576, 
        n139_adj_1577, n138_adj_1578, n13346, n137_adj_1579, n136_adj_1580, 
        n135_adj_1581, n134_adj_1582, n13345, n15714;
    wire [9:0]current_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire sda_transmit, rd_first_done, sda_transmit_en_N_1061, n110, 
        n13299, n19285, n13344, n13343, n138_adj_1583, n139_adj_1584, 
        n140_adj_1585, n19311, n13342, n102, n101, n120, n121, 
        n122, n123, n124, n125, n17175, n13341, n17169;
    wire [23:0]reg_cfg;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(44[16:23])
    wire [7:0]reg_index;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(45[16:25])
    
    wire n100, sys_rst_n_N_472, n128, n152_adj_1586, n153_adj_1587, 
        n154_adj_1588, n19254, sys_clk_c_enable_188, n17527, n102_adj_1589, 
        n103, n104, n105, n106, n107, n108, n109, n96, n105_adj_1590, 
        n104_adj_1591, n13298, n13340, n13339, n13338, n13297, n19244, 
        n17151, n13337, n13336, n3570, n8023, n17149, n13335, 
        n13296, n129, n130, n131, n132, n133, n134_adj_1592, n17465, 
        n135_adj_1593, n136_adj_1594, n137_adj_1595, n112, n113, n114, 
        n94, n95, n115, n116, n117, n118, n119, n134_adj_1596, 
        n3701, n13334, n7941, n13333, n103_adj_1597, n8021, n8019, 
        n13295, n8017, n8015, n8013, n8011, n8009, n8007, n8005, 
        n13332, n8003, n13331, n111, n13330, n8001, n17115, n13329, 
        n93, n92, n91, n90, n89, n88, n87, n86, n13328, n13294, 
        n13327, n13326, n13293, n105_adj_1598, n104_adj_1599, n103_adj_1600, 
        n102_adj_1601, n101_adj_1602, n100_adj_1603, n99_adj_1604, n98_adj_1605, 
        n97_adj_1606, n96_adj_1607, n95_adj_1608, n94_adj_1609, n93_adj_1610, 
        n92_adj_1611, n91_adj_1612, n90_adj_1613, n89_adj_1614, n88_adj_1615, 
        n87_adj_1616, n86_adj_1617, n13325, n17095, n17093, n17531, 
        n13324, n13233, n13292, n17087, n165_adj_1618, n164_adj_1619, 
        n163_adj_1620, n162_adj_1621, n161_adj_1622, n160_adj_1623, 
        n159_adj_1624, n158_adj_1625, n157_adj_1626, n156_adj_1627, 
        n155_adj_1628, n154_adj_1629, n153_adj_1630, n152_adj_1631, 
        n151_adj_1632, n150_adj_1633, n149_adj_1634, n148_adj_1635, 
        n147_adj_1636, n146_adj_1637, n145_adj_1638, n144_adj_1639, 
        n143_adj_1640, n142_adj_1641, n141_adj_1642, n140_adj_1643, 
        n139_adj_1644, n138_adj_1645, n137_adj_1646, n136_adj_1647, 
        n135_adj_1648, n134_adj_1649, n13291, n13323, n7999, n7997, 
        n7995, n19249, n7993, n47, n7991, n7989, n13290, n7987, 
        n13322, n7985, n13289, n17051, n13321, n7983, n17029, 
        n13236, n13232, n13288, n13287, n13376, n13286, n13375, 
        n13241, n7981, n17023, n17021, n8, sys_clk_c_enable_147, 
        n13320, n13285, n13374, n13319, n13373, n13372, n17810, 
        n13284, n17401, n17805, n13371, n13318, n13317, n13316, 
        n13370, n7979, sys_clk_c_enable_233, n7977, n13369, n13315, 
        n15923, n13283, n147_adj_1650, n13368, n17501, n13314, n161_adj_1651, 
        n142_adj_1652, n13229, n16068, n13367, n13240, n17461, n13366, 
        n156_adj_1653, n145_adj_1654, n148_adj_1655, n150_adj_1656, 
        n149_adj_1657, n19263, n17459, n163_adj_1658, n151_adj_1659, 
        n144_adj_1660, n146_adj_1661, n165_adj_1662, i2c_sda_0_out, 
        n160_adj_1663, n164_adj_1664, n159_adj_1665, n158_adj_1666, 
        n162_adj_1667, n13282, n13239, n13281, n13313, n7975, n13365, 
        sys_clk_c_enable_123, n17425, n17499, n17415, n17403, n18396, 
        n18395, n18394, n18393, n17529, n17676, n17674, n17672, 
        n17638, n17634, n17630, n17618, n17608, n17606;
    
    VHI i2 (.Z(VCC_net));
    uart_tx u_uart_tx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .uart_busy(uart_busy), .GND_net(GND_net), .VCC_net(VCC_net), 
            .uart_txd_c(uart_txd_c), .work_en_N_1384(work_en_N_1384), .\tx_data[5] (tx_data[5]), 
            .\tx_data[6] (tx_data[6]), .\tx_data[0] (tx_data[0]), .\tx_data[1] (tx_data[1]), 
            .\tx_data[4] (tx_data[4]), .\tx_data[2] (tx_data[2]), .\tx_data[3] (tx_data[3])) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(355[3] 362[2])
    CCU2C add_94_17 (.A0(rst_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13236), .COUT(n13237), .S0(n1201), .S1(n1200));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_17.INIT0 = 16'haaaa;
    defparam add_94_17.INIT1 = 16'haaaa;
    defparam add_94_17.INJECT1_0 = "NO";
    defparam add_94_17.INJECT1_1 = "NO";
    FD1S3DX xshutdn_out_reg_107 (.D(xshutdn_r), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(xshutdn_0_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam xshutdn_out_reg_107.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i31 (.D(n134_adj_1649), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i30 (.D(n135_adj_1648), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i29 (.D(n136_adj_1647), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i28 (.D(n137_adj_1646), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i28.GSR = "ENABLED";
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
    FD1S3DX reset_byte_fr_sync_i0 (.D(VCC_net), .CK(csi_clk_byte_hs), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_fr_sync[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(227[9:61])
    defparam reset_byte_fr_sync_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_sync_i0 (.D(VCC_net), .CK(csi_clk_byte), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_sync[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(234[9:55])
    defparam reset_byte_sync_i0.GSR = "ENABLED";
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
    FD1S3DX csi_byte_clk_count_2081__i27 (.D(n138_adj_1645), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i26 (.D(n139_adj_1644), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i25 (.D(n140_adj_1643), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i24 (.D(n141_adj_1642), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i23 (.D(n142_adj_1641), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i22 (.D(n143_adj_1640), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i21 (.D(n144_adj_1639), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i21.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_0 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[0])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFC3181F190A800200200E30000001400146C38E9B8301 */ ;
    FD1S3DX csi_byte_clk_count_2081__i20 (.D(n145_adj_1638), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i20.GSR = "ENABLED";
    CCU2C cam_cnt_2080_add_4_9 (.A0(cam_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13306), .COUT(n13307), .S0(n98_adj_1605), 
          .S1(n97_adj_1606));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_9.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_9.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_9.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_9.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_7 (.A0(cam_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13305), .COUT(n13306), .S0(n100_adj_1603), 
          .S1(n99_adj_1604));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_7.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_7.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_7.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_23 (.A0(csi_long_packet_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13355), .COUT(n13356), 
          .S0(n144_adj_1572), .S1(n143_adj_1573));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_23.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_23.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_23.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_23.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_21 (.A0(csi_long_packet_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13354), .COUT(n13355), 
          .S0(n146_adj_1570), .S1(n145_adj_1571));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_21.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_21.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_21.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_21.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2081__i19 (.D(n146_adj_1637), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i18 (.D(n147_adj_1636), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i17 (.D(n148_adj_1635), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i16 (.D(n149_adj_1634), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i15 (.D(n150_adj_1633), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i14 (.D(n151_adj_1632), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i14.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_6 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[6])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A040E02000000001809000000200000A20106900000 */ ;
    FD1S3DX csi_byte_clk_count_2081__i13 (.D(n152_adj_1631), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i12 (.D(n153_adj_1630), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i11 (.D(n154_adj_1629), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i10 (.D(n155_adj_1628), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i10.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_5 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[5])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF80180E00C00002002009030000004002000036C00880 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_7 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[7])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A080E00004000008109020000000000A20000800000 */ ;
    FD1S3DX csi_byte_clk_count_2081__i9 (.D(n156_adj_1627), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i8 (.D(n157_adj_1626), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i8.GSR = "ENABLED";
    CCU2C csi_long_packet_count_2083_add_4_19 (.A0(csi_long_packet_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13353), .COUT(n13354), 
          .S0(n148_adj_1568), .S1(n147_adj_1569));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_19.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_19.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_19.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_17 (.A0(csi_long_packet_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13352), .COUT(n13353), 
          .S0(n150_adj_1566), .S1(n149_adj_1567));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_17.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_17.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_17.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_17.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2081__i7 (.D(n158_adj_1625), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i7.GSR = "ENABLED";
    CCU2C cam_cnt_2080_add_4_5 (.A0(cam_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13304), .COUT(n13305), .S0(n102_adj_1601), 
          .S1(n101_adj_1602));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_5.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_5.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_5.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_15 (.A0(csi_long_packet_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13351), .COUT(n13352), 
          .S0(n152_adj_1564), .S1(n151_adj_1565));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_15.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_15.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_15.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_15.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2081__i6 (.D(n159_adj_1624), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i5 (.D(n160_adj_1623), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i4 (.D(n161_adj_1622), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i4.GSR = "ENABLED";
    CCU2C add_94_7 (.A0(rst_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13231), .COUT(n13232), .S0(n1211), .S1(n1210));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_7.INIT0 = 16'haaaa;
    defparam add_94_7.INIT1 = 16'haaaa;
    defparam add_94_7.INJECT1_0 = "NO";
    defparam add_94_7.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2081__i3 (.D(n162_adj_1621), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i2 (.D(n163_adj_1620), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i2.GSR = "ENABLED";
    CCU2C cam_cnt_2080_add_4_3 (.A0(cam_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13303), .COUT(n13304), .S0(n104_adj_1599), 
          .S1(n103_adj_1600));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_3.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_3.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_3.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_3.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_2081__i1 (.D(n164_adj_1619), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i1.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i19 (.D(n86_adj_1617), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i19.GSR = "ENABLED";
    CCU2C cam_cnt_2080_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cam_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13303), .S1(n105_adj_1598));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_1.INIT0 = 16'h0000;
    defparam cam_cnt_2080_add_4_1.INIT1 = 16'h555f;
    defparam cam_cnt_2080_add_4_1.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_13 (.A0(csi_long_packet_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13350), .COUT(n13351), 
          .S0(n154_adj_1562), .S1(n153_adj_1563));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_13.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_13.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_13.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_13.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_2082__i31 (.D(n134), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i31.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i30 (.D(n135_adj_1537), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i30.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i18 (.D(n87_adj_1616), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i18.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i17 (.D(n88_adj_1615), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i17.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i16 (.D(n89_adj_1614), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i16.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i15 (.D(n90_adj_1613), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i15.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i14 (.D(n91_adj_1612), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i14.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i13 (.D(n92_adj_1611), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i13.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i12 (.D(n93_adj_1610), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i12.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i11 (.D(n94_adj_1609), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i11.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i10 (.D(n95_adj_1608), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i10.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i29 (.D(n136_adj_1536), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i29.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i9 (.D(n96_adj_1607), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i9.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i8 (.D(n97_adj_1606), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i8.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i28 (.D(n137_adj_1535), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i28.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i27 (.D(n138), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i27.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i7 (.D(n98_adj_1605), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i7.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i6 (.D(n99_adj_1604), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i6.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i5 (.D(n100_adj_1603), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i5.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i4 (.D(n101_adj_1602), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i4.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i3 (.D(n102_adj_1601), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i3.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i26 (.D(n139), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i26.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i2 (.D(n103_adj_1600), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i2.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i25 (.D(n140), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i25.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i24 (.D(n141_adj_1534), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i24.GSR = "ENABLED";
    FD1P3DX cam_cnt_2080__i1 (.D(n104_adj_1599), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i1.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i23 (.D(n142), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i23.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i22 (.D(n143_adj_1533), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i22.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i21 (.D(n144), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i21.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i20 (.D(n145), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i20.GSR = "ENABLED";
    CCU2C xshutdn_cnt_2079_add_4_21 (.A0(xshutdn_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13302), .S0(n86));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_21.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_21.INIT1 = 16'h0000;
    defparam xshutdn_cnt_2079_add_4_21.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_21.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_2079__i19 (.D(n86), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i19.GSR = "ENABLED";
    OB csi_sp_en_pad (.I(csi_sp_en_c), .O(csi_sp_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(23[23:32])
    FD1P3DX xshutdn_cnt_2079__i18 (.D(n87), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i18.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i17 (.D(n88), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i17.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i16 (.D(n89), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i16.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i15 (.D(n90), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i15.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i14 (.D(n91), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i14.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i13 (.D(n92), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i13.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i12 (.D(n93), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i12.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i11 (.D(n94), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i11.GSR = "ENABLED";
    CCU2C csi_long_packet_count_2083_add_4_11 (.A0(csi_long_packet_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13349), .COUT(n13350), 
          .S0(n156_adj_1560), .S1(n155_adj_1561));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_11.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_11.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_11.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_11.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_2079__i10 (.D(n95), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i10.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i9 (.D(n96), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i9.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i8 (.D(n97), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i8.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i7 (.D(n98), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i7.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i6 (.D(n99), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i6.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i5 (.D(n100), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i5.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i4 (.D(n101), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i4.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i3 (.D(n102), .SP(sys_clk_c_enable_123), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i3.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i2 (.D(n103_adj_1597), .SP(sys_clk_c_enable_123), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i2.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_2079__i1 (.D(n104_adj_1591), .SP(sys_clk_c_enable_123), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i1.GSR = "ENABLED";
    CCU2C csi_long_packet_count_2083_add_4_9 (.A0(csi_long_packet_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13348), .COUT(n13349), 
          .S0(n158_adj_1558), .S1(n157_adj_1559));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_9.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_9.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_9.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_9.INJECT1_1 = "NO";
    FD1P3DX csi_last_dt_i0_i0 (.D(csi_dt_parser[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_dt_i0_i0.GSR = "ENABLED";
    LUT4 sys_rstn_I_0_146_1_lut (.A(sys_rstn_c), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(51[9:18])
    defparam sys_rstn_I_0_146_1_lut.init = 16'h5555;
    CCU2C csi_long_packet_count_2083_add_4_7 (.A0(csi_long_packet_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13347), .COUT(n13348), 
          .S0(n160_adj_1556), .S1(n159_adj_1557));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_7.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_7.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_7.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_7.INJECT1_1 = "NO";
    ROM256X1 reg_index_7__I_0_148_Mux_19 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[19])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC00000400001FFFE00FFFFFFC01FFFFFFC00000000 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_13 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[13])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF80000000000000003800000000001C00000000000200 */ ;
    FD1S3DX blink_cnt_2078__i23 (.D(n128), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i23.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i22 (.D(n129), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i22.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i21 (.D(n130), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i21.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i20 (.D(n131), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i20.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i19 (.D(n132), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i18 (.D(n133), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i18.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i17 (.D(n134_adj_1592), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i17.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i19 (.D(n146), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i16 (.D(n135_adj_1593), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i16.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i15 (.D(n136_adj_1594), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i15.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i14 (.D(n137_adj_1595), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i14.GSR = "ENABLED";
    ROM256X1 reg_index_7__I_0_148_Mux_4 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[4])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8A140E00800000011808110000084400220107100B00 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_3 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[3])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8F10E301C0000200200A110000000400028000000A40 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_10 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[10])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF83087878583C3C782430BC3C3C0610C3C3C18F41C190 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_8 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[8])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC55555552AA9553D6BEAAAAAAD4AAAAAA92AEAA855 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_2 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[2])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFB3114F43A00002002008120000001228C46B8E901900 */ ;
    ROM256X1 reg_index_7__I_0_148_Mux_1 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[1])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF831C1185E0000200000E30000001100393827EE04480 */ ;
    FD1S3DX blink_cnt_2078__i13 (.D(n138_adj_1538), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i13.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i12 (.D(n139_adj_1539), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i12.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i11 (.D(n140_adj_1540), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i11.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i10 (.D(n141_adj_1541), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i10.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i9 (.D(n142_adj_1542), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i9.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i8 (.D(n143_adj_1543), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i8.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i7 (.D(n144_adj_1544), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i7.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i6 (.D(n145_adj_1545), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i6.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i5 (.D(n146_adj_1546), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i5.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i4 (.D(n147_adj_1547), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i4.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i3 (.D(n148_adj_1548), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i3.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i2 (.D(n149_adj_1549), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i2.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i1 (.D(n150_adj_1550), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i1.GSR = "ENABLED";
    CCU2C csi_long_packet_count_2083_add_4_5 (.A0(csi_long_packet_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13346), .COUT(n13347), 
          .S0(n162_adj_1554), .S1(n161_adj_1555));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_5.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_5.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_5.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_3 (.A0(csi_long_packet_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13345), .COUT(n13346), 
          .S0(n164_adj_1552), .S1(n163_adj_1553));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_3.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_3.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_3.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_long_packet_count[0]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n13345), .S1(n165_adj_1530));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_1.INIT0 = 16'h0000;
    defparam csi_long_packet_count_2083_add_4_1.INIT1 = 16'h555f;
    defparam csi_long_packet_count_2083_add_4_1.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_1.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_2082__i18 (.D(n147), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i18.GSR = "ENABLED";
    FD1S3DX blink_cnt_2078__i0 (.D(n151_adj_1551), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078__i0.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_33 (.A0(csi_hs_sync_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13344), .S0(n134));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_33.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_33.INIT1 = 16'h0000;
    defparam csi_hs_sync_count_2082_add_4_33.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2082_add_4_31 (.A0(csi_hs_sync_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13343), .COUT(n13344), .S0(n136_adj_1536), 
          .S1(n135_adj_1537));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_31.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_31.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_31.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_31.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2079_add_4_19 (.A0(xshutdn_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13301), .COUT(n13302), .S0(n88), 
          .S1(n87));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_19.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_19.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_19.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_19.INJECT1_1 = "NO";
    LUT4 i6287_2_lut (.A(n1215), .B(rst_cnt_25__N_445), .Z(n8023)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6287_2_lut.init = 16'h2222;
    CCU2C csi_hs_sync_count_2082_add_4_29 (.A0(csi_hs_sync_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13342), .COUT(n13343), .S0(n138), 
          .S1(n137_adj_1535));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_29.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_29.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_29.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_29.INJECT1_1 = "NO";
    LUT4 i6286_2_lut (.A(n1214), .B(rst_cnt_25__N_445), .Z(n8021)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6286_2_lut.init = 16'h2222;
    CCU2C csi_hs_sync_count_2082_add_4_27 (.A0(csi_hs_sync_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13341), .COUT(n13342), .S0(n140), 
          .S1(n139));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_27.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_27.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_27.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_27.INJECT1_1 = "NO";
    LUT4 i6285_2_lut (.A(n1213), .B(rst_cnt_25__N_445), .Z(n8019)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6285_2_lut.init = 16'h2222;
    LUT4 i6284_2_lut (.A(n1212), .B(rst_cnt_25__N_445), .Z(n8017)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6284_2_lut.init = 16'h2222;
    LUT4 i6283_2_lut (.A(n1211), .B(rst_cnt_25__N_445), .Z(n8015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6283_2_lut.init = 16'h2222;
    LUT4 i6282_2_lut (.A(n1210), .B(rst_cnt_25__N_445), .Z(n8013)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6282_2_lut.init = 16'h2222;
    LUT4 i6281_2_lut (.A(n1209), .B(rst_cnt_25__N_445), .Z(n8011)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6281_2_lut.init = 16'h2222;
    LUT4 i6280_2_lut (.A(n1208), .B(rst_cnt_25__N_445), .Z(n8009)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6280_2_lut.init = 16'h2222;
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
    LUT4 i13759_4_lut (.A(flag_done), .B(current_state[6]), .C(n8), .D(n19254), 
         .Z(n17805)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i13759_4_lut.init = 16'h0a3a;
    CCU2C xshutdn_cnt_2079_add_4_17 (.A0(xshutdn_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13300), .COUT(n13301), .S0(n90), 
          .S1(n89));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_17.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_17.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_17.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2082_add_4_25 (.A0(csi_hs_sync_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13340), .COUT(n13341), .S0(n142), 
          .S1(n141_adj_1534));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_25.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_25.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_25.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2082_add_4_23 (.A0(csi_hs_sync_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13339), .COUT(n13340), .S0(n144), 
          .S1(n143_adj_1533));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_23.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_23.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_23.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_23.INJECT1_1 = "NO";
    LUT4 i720_rep_82_3_lut_4_lut (.A(field_index[3]), .B(n19263), .C(tx_state[1]), 
         .D(n3701), .Z(n19244)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    defparam i720_rep_82_3_lut_4_lut.init = 16'hf808;
    FD1P3DX rst_cnt__i0 (.D(n7941), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i0.GSR = "ENABLED";
    LUT4 reset_byte_fr_sync_1__I_0_1_lut (.A(reset_byte_fr_sync[1]), .Z(reset_byte_fr_sync_1__N_129)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(163[9:25])
    defparam reset_byte_fr_sync_1__I_0_1_lut.init = 16'h5555;
    CCU2C csi_hs_sync_count_2082_add_4_21 (.A0(csi_hs_sync_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13338), .COUT(n13339), .S0(n146), 
          .S1(n145));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_21.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_21.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_21.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_21.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2079_add_4_15 (.A0(xshutdn_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13299), .COUT(n13300), .S0(n92), 
          .S1(n91));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_15.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_15.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_15.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_15.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_2079__i0 (.D(n105_adj_1590), .SP(sys_clk_c_enable_123), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079__i0.GSR = "ENABLED";
    FD1P3DX rst_cnt__i1 (.D(n8023), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i1.GSR = "ENABLED";
    FD1P3DX rst_cnt__i2 (.D(n8021), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i2.GSR = "ENABLED";
    FD1P3DX rst_cnt__i3 (.D(n8019), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i3.GSR = "ENABLED";
    FD1P3DX rst_cnt__i4 (.D(n8017), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i4.GSR = "ENABLED";
    FD1P3DX rst_cnt__i5 (.D(n8015), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i5.GSR = "ENABLED";
    FD1P3DX rst_cnt__i6 (.D(n8013), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i7 (.D(n8011), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i7.GSR = "ENABLED";
    FD1P3DX rst_cnt__i8 (.D(n8009), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i8.GSR = "ENABLED";
    CCU2C xshutdn_cnt_2079_add_4_13 (.A0(xshutdn_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13298), .COUT(n13299), .S0(n94), 
          .S1(n93));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_13.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_13.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_13.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2082_add_4_19 (.A0(csi_hs_sync_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13337), .COUT(n13338), .S0(n148), 
          .S1(n147));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_19.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_19.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_19.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_19.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_2079_add_4_11 (.A0(xshutdn_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13297), .COUT(n13298), .S0(n96), 
          .S1(n95));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_11.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_11.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_11.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_11.INJECT1_1 = "NO";
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
    CCU2C csi_hs_sync_count_2082_add_4_17 (.A0(csi_hs_sync_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13336), .COUT(n13337), .S0(n150), 
          .S1(n149));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_17.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_17.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_17.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_17.INJECT1_1 = "NO";
    FD1P3DX cam_cnt_2080__i0 (.D(n105_adj_1598), .SP(sys_clk_c_enable_147), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080__i0.GSR = "ENABLED";
    CCU2C xshutdn_cnt_2079_add_4_9 (.A0(xshutdn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13296), .COUT(n13297), .S0(n98), .S1(n97));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_9.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_9.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_9.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_9.INJECT1_1 = "NO";
    LUT4 i386_4_lut_rep_310 (.A(n17169), .B(xshutdn_r), .C(n17175), .D(n17618), 
         .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i386_4_lut_rep_310.init = 16'hcdcc;
    CCU2C csi_hs_sync_count_2082_add_4_15 (.A0(csi_hs_sync_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13335), .COUT(n13336), .S0(n152), 
          .S1(n151));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_15.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_15.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_15.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_2082_add_4_13 (.A0(csi_hs_sync_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13334), .COUT(n13335), .S0(n154), 
          .S1(n153));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_13.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_13.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_13.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_13.INJECT1_1 = "NO";
    LUT4 i3700_1_lut_4_lut (.A(n17169), .B(xshutdn_r), .C(n17175), .D(n17618), 
         .Z(sys_clk_c_enable_123)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i3700_1_lut_4_lut.init = 16'h3233;
    FD1P3DX rst_cnt__i9 (.D(n8007), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_2081__i0 (.D(n165_adj_1618), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081__i0.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i0 (.D(csi_wc[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i0.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i0 (.D(n165), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i0.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i0 (.D(n165_adj_1530), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i0.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i0 (.D(n165_adj_1662), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i0.GSR = "ENABLED";
    OB csi_lp_en_pad (.I(csi_lp_en_c), .O(csi_lp_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(24[23:32])
    OB csi_payload_en_pad (.I(csi_payload_en_c), .O(csi_payload_en));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(22[23:37])
    OB xshutdn_0_pad (.I(xshutdn_0_c), .O(xshutdn_0));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(15[23:32])
    OB i2c_sclk_0_pad (.I(i2c_sclk_0_c), .O(i2c_sclk_0));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(13[23:33])
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(10[23:31])
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(9[23:26])
    FD1P3DX rst_cnt__i10 (.D(n8005), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i10.GSR = "ENABLED";
    CCU2C xshutdn_cnt_2079_add_4_7 (.A0(xshutdn_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13295), .COUT(n13296), .S0(n100), .S1(n99));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_7.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_7.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_7.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_7.INJECT1_1 = "NO";
    ROM256X1 reg_index_7__I_0_148_Mux_12 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[12])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFB00F8000003FC00020000000000003FC00007F8003E0 */ ;
    FD1P3DX rst_cnt__i11 (.D(n8003), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i17 (.D(n148), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i17.GSR = "ENABLED";
    BB i2c_sda_0_pad (.I(sda_transmit), .T(sda_transmit_en_N_1061), .B(i2c_sda_0), 
       .O(i2c_sda_0_out));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(44[17:20])
    FD1S3DX dphy_lp_state_d_s2_i1 (.D(dphy_lp_state_d_s1[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(dphy_lp_state_d_s2[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s2_i1.GSR = "ENABLED";
    FD1S3DX dphy_lp_state_d_s1_i1 (.D(csi_dt_c_3), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(dphy_lp_state_d_s1[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(321[14] 328[8])
    defparam dphy_lp_state_d_s1_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n17459), .B(n17151), .C(n17149), .D(xshutdn_cnt[7]), 
         .Z(n17169)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfffd;
    FD1S3DX reset_byte_sync_i1 (.D(reset_byte_sync[0]), .CK(csi_clk_byte), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_sync[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(234[9:55])
    defparam reset_byte_sync_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_258 (.A(n17461), .B(n17465), .C(xshutdn_cnt[15]), 
         .D(n15923), .Z(n17175)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_258.init = 16'hff7f;
    FD1S3DX reset_byte_fr_sync_i1 (.D(reset_byte_fr_sync[0]), .CK(csi_clk_byte_hs), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_fr_sync[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(227[9:61])
    defparam reset_byte_fr_sync_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i15 (.D(csi_last_wc_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i14 (.D(csi_last_wc_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i13 (.D(csi_last_wc_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i12 (.D(csi_last_wc_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i11 (.D(csi_last_wc_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i10 (.D(csi_last_wc_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i9 (.D(csi_last_wc_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i9.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i16 (.D(n149), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i16.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i15 (.D(n150), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i8 (.D(csi_last_wc_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i7 (.D(csi_last_wc_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i6 (.D(csi_last_wc_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i6.GSR = "ENABLED";
    LUT4 i13582_4_lut (.A(xshutdn_cnt[1]), .B(xshutdn_cnt[18]), .C(xshutdn_cnt[17]), 
         .D(xshutdn_cnt[8]), .Z(n17618)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13582_4_lut.init = 16'h8000;
    FD1S3DX csi_last_wc_sys_i5 (.D(csi_last_wc_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i5.GSR = "ENABLED";
    LUT4 i13424_2_lut (.A(xshutdn_cnt[2]), .B(xshutdn_cnt[16]), .Z(n17459)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13424_2_lut.init = 16'h8888;
    CCU2C add_94_15 (.A0(rst_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13235), .COUT(n13236), .S0(n1203), .S1(n1202));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_15.INIT0 = 16'haaaa;
    defparam add_94_15.INIT1 = 16'haaaa;
    defparam add_94_15.INJECT1_0 = "NO";
    defparam add_94_15.INJECT1_1 = "NO";
    FD1S3DX csi_last_wc_sys_i4 (.D(csi_last_wc_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i4.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(xshutdn_cnt[5]), .B(xshutdn_cnt[11]), .Z(n17151)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3DX csi_last_wc_sys_i3 (.D(csi_last_wc_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i3.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i14 (.D(n151), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i14.GSR = "ENABLED";
    FD1P3DX rst_cnt__i12 (.D(n8001), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i2 (.D(csi_last_wc_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i1 (.D(csi_last_wc_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i15 (.D(csi_last_wc[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i14 (.D(csi_last_wc[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i14.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_259 (.A(xshutdn_cnt[12]), .B(xshutdn_cnt[19]), .Z(n17149)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_259.init = 16'heeee;
    FD1S3DX csi_last_wc_meta_i13 (.D(csi_last_wc[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i12 (.D(csi_last_wc[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i11 (.D(csi_last_wc[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i13 (.D(n152), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i10 (.D(csi_last_wc[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i10.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i12 (.D(n153), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i12.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i11 (.D(n154), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i10 (.D(n155_adj_1532), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i9 (.D(csi_last_wc[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i8 (.D(csi_last_wc[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i7 (.D(csi_last_wc[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i6 (.D(csi_last_wc[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i6.GSR = "ENABLED";
    LUT4 i13426_2_lut (.A(xshutdn_cnt[13]), .B(xshutdn_cnt[0]), .Z(n17461)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13426_2_lut.init = 16'h8888;
    FD1S3DX csi_last_wc_meta_i5 (.D(csi_last_wc[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_wc_meta_i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i9 (.D(n156), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i9.GSR = "ENABLED";
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
    LUT4 i13430_2_lut (.A(xshutdn_cnt[3]), .B(xshutdn_cnt[4]), .Z(n17465)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13430_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_260 (.A(xshutdn_cnt[6]), .B(xshutdn_cnt[9]), .C(xshutdn_cnt[14]), 
         .D(xshutdn_cnt[10]), .Z(n15923)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(84[17:43])
    defparam i1_4_lut_adj_260.init = 16'hfffe;
    FD1S3DX csi_last_dt_sys_i5 (.D(csi_last_dt_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i8 (.D(n157_adj_1531), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i8.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i4 (.D(csi_last_dt_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_sys_i4.GSR = "ENABLED";
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
    FD1S3DX csi_last_dt_meta_i3 (.D(csi_last_dt[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i2 (.D(csi_last_dt[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i2.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i7 (.D(n158), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i7.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i1 (.D(csi_last_dt[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_last_dt_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i31 (.D(csi_payload_byte_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i31.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i6 (.D(n159), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i6.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_11 (.A0(csi_hs_sync_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13333), .COUT(n13334), .S0(n156), 
          .S1(n155_adj_1532));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_11.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_11.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_11.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_11.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_2082__i5 (.D(n160), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i4 (.D(n161), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i4.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i3 (.D(n162), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i30 (.D(csi_payload_byte_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i29 (.D(csi_payload_byte_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i28 (.D(csi_payload_byte_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i27 (.D(csi_payload_byte_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i26 (.D(csi_payload_byte_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i25 (.D(csi_payload_byte_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i24 (.D(csi_payload_byte_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i23 (.D(csi_payload_byte_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i23.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_2082__i2 (.D(n163), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i2.GSR = "ENABLED";
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
    FD1P3DX csi_hs_sync_count_2082__i1 (.D(n164), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082__i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i16 (.D(csi_payload_byte_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i16.GSR = "ENABLED";
    FD1P3DX rst_cnt__i13 (.D(n7999), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i13.GSR = "ENABLED";
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
    FD1S3DX csi_payload_byte_count_sys_i15 (.D(csi_payload_byte_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i14 (.D(csi_payload_byte_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i13 (.D(csi_payload_byte_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i12 (.D(csi_payload_byte_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i11 (.D(csi_payload_byte_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i10 (.D(csi_payload_byte_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i10.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i10 (.D(csi_wc[10]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i10.GSR = "ENABLED";
    FD1P3DX rst_cnt__i14 (.D(n7997), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i9 (.D(csi_payload_byte_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i9.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i9 (.D(csi_wc[9]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i9.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i8 (.D(csi_wc[8]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i8.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i7 (.D(csi_wc[7]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i8 (.D(csi_payload_byte_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i7 (.D(csi_payload_byte_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i6 (.D(csi_payload_byte_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i5 (.D(csi_payload_byte_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i4 (.D(csi_payload_byte_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_sys_i4.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i6 (.D(csi_wc[6]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i6.GSR = "ENABLED";
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
    FD1P3DX csi_last_wc_i0_i5 (.D(csi_wc[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i29 (.D(csi_payload_byte_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i28 (.D(csi_payload_byte_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i27 (.D(csi_payload_byte_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i27.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i4 (.D(csi_wc[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i26 (.D(csi_payload_byte_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i26.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i3 (.D(csi_wc[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i2 (.D(csi_wc[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i1 (.D(csi_wc[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(172[14] 185[8])
    defparam csi_last_wc_i0_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i25 (.D(csi_payload_byte_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i25.GSR = "ENABLED";
    FD1P3DX rst_cnt__i15 (.D(n7995), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i15.GSR = "ENABLED";
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
    FD1P3DX rst_cnt__i16 (.D(n7993), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i16.GSR = "ENABLED";
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
    FD1S3DX csi_payload_byte_count_meta_i7 (.D(csi_payload_byte_count[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i6 (.D(csi_payload_byte_count[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i5 (.D(csi_payload_byte_count[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_payload_byte_count_meta_i5.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_9 (.A0(csi_hs_sync_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13332), .COUT(n13333), .S0(n158), 
          .S1(n157_adj_1531));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_9.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_9.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_9.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_9.INJECT1_1 = "NO";
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
    CCU2C xshutdn_cnt_2079_add_4_5 (.A0(xshutdn_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13294), .COUT(n13295), .S0(n102), .S1(n101));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_5.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_5.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_5.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_5.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i17 (.D(n7991), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i17.GSR = "ENABLED";
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
    CCU2C xshutdn_cnt_2079_add_4_3 (.A0(xshutdn_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13293), .COUT(n13294), .S0(n104_adj_1591), 
          .S1(n103_adj_1597));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_3.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_3.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_2079_add_4_3.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_3.INJECT1_1 = "NO";
    LUT4 csi_dt_5__I_0_2_lut (.A(csi_dt_c_5), .B(csi_lp_en_d), .Z(csi_long_packet_count_31__N_384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(178[13:45])
    defparam csi_dt_5__I_0_2_lut.init = 16'h2222;
    LUT4 i6147_2_lut (.A(n102_adj_1589), .B(n47), .Z(n128)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6147_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_261 (.A(n17271), .B(n17281), .C(n17608), .D(n17415), 
         .Z(n47)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_261.init = 16'hefff;
    LUT4 i1_4_lut_adj_262 (.A(n17245), .B(blink_cnt[9]), .C(n17241), .D(n17247), 
         .Z(n17271)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_262.init = 16'hfffb;
    FD1S3DX csi_long_packet_count_meta_i20 (.D(csi_long_packet_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i19 (.D(csi_long_packet_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i18 (.D(csi_long_packet_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i18.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_7 (.A0(csi_hs_sync_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13331), .COUT(n13332), .S0(n160), 
          .S1(n159));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_7.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_7.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_7.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_263 (.A(blink_cnt[1]), .B(n17606), .C(n17425), .D(n17251), 
         .Z(n17281)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_263.init = 16'hff7f;
    LUT4 i13572_4_lut (.A(blink_cnt[0]), .B(blink_cnt[4]), .C(blink_cnt[19]), 
         .D(blink_cnt[10]), .Z(n17608)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13572_4_lut.init = 16'h8000;
    LUT4 i13380_2_lut (.A(blink_cnt[2]), .B(blink_cnt[15]), .Z(n17415)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13380_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_2082_add_4_5 (.A0(csi_hs_sync_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13330), .COUT(n13331), .S0(n162), 
          .S1(n161));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_5.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_5.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_5.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_5.INJECT1_1 = "NO";
    FD1S3DX csi_long_packet_count_meta_i17 (.D(csi_long_packet_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[17]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i16 (.D(csi_long_packet_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i15 (.D(csi_long_packet_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i14 (.D(csi_long_packet_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i13 (.D(csi_long_packet_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i13.GSR = "ENABLED";
    FD1P3DX rst_cnt__i18 (.D(n7989), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i12 (.D(csi_long_packet_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i11 (.D(csi_long_packet_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i11.GSR = "ENABLED";
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(11[23:31])
    IB sys_rstn_pad (.I(sys_rstn), .O(sys_rstn_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(7[16:24])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    FD1S3DX csi_long_packet_count_meta_i10 (.D(csi_long_packet_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i9 (.D(csi_long_packet_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_264 (.A(blink_cnt[13]), .B(blink_cnt[21]), .Z(n17245)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_264.init = 16'heeee;
    LUT4 i1_2_lut_adj_265 (.A(blink_cnt[7]), .B(blink_cnt[16]), .Z(n17241)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_265.init = 16'heeee;
    FD1S3DX csi_long_packet_count_meta_i8 (.D(csi_long_packet_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i7 (.D(csi_long_packet_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i7.GSR = "ENABLED";
    OB csi_dt_pad_0 (.I(VCC_net), .O(csi_dt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_long_packet_count_meta_i6 (.D(csi_long_packet_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i5 (.D(csi_long_packet_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i4 (.D(csi_long_packet_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i3 (.D(csi_long_packet_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i3.GSR = "ENABLED";
    OB csi_dt_pad_1 (.I(VCC_net), .O(csi_dt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3BX rst_n_pulse_141 (.D(n6031), .CK(sys_clk_c), .PD(led_c_2), 
            .Q(rst_n_pulse));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_n_pulse_141.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i2 (.D(csi_long_packet_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i2.GSR = "ENABLED";
    OB csi_dt_pad_2 (.I(csi_dt_c_2), .O(csi_dt[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_3 (.I(csi_dt_c_3), .O(csi_dt[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_4 (.I(csi_dt_c_4), .O(csi_dt[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_5 (.I(csi_dt_c_5), .O(csi_dt[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(26[23:29])
    FD1S3DX csi_long_packet_count_meta_i1 (.D(csi_long_packet_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_long_packet_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i31 (.D(csi_hs_sync_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i30 (.D(csi_hs_sync_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i30.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_266 (.A(blink_cnt[22]), .B(blink_cnt[8]), .Z(n17247)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_266.init = 16'heeee;
    LUT4 i13570_4_lut (.A(blink_cnt[5]), .B(blink_cnt[20]), .C(blink_cnt[6]), 
         .D(blink_cnt[12]), .Z(n17606)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13570_4_lut.init = 16'h8000;
    FD1S3DX csi_hs_sync_count_sys_i29 (.D(csi_hs_sync_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i28 (.D(csi_hs_sync_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i28.GSR = "ENABLED";
    LUT4 i13390_2_lut (.A(blink_cnt[23]), .B(blink_cnt[3]), .Z(n17425)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13390_2_lut.init = 16'h8888;
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
    LUT4 i1_4_lut_adj_267 (.A(blink_cnt[17]), .B(blink_cnt[18]), .C(blink_cnt[14]), 
         .D(blink_cnt[11]), .Z(n17251)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_267.init = 16'hfffe;
    FD1S3DX csi_hs_sync_count_sys_i7 (.D(csi_hs_sync_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i6 (.D(csi_hs_sync_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i5 (.D(csi_hs_sync_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i4 (.D(csi_hs_sync_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i3 (.D(csi_hs_sync_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i2 (.D(csi_hs_sync_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i1 (.D(csi_hs_sync_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i31 (.D(csi_hs_sync_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i30 (.D(csi_hs_sync_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i29 (.D(csi_hs_sync_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i28 (.D(csi_hs_sync_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[28]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i27 (.D(csi_hs_sync_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[27]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i27.GSR = "ENABLED";
    LUT4 i6148_2_lut (.A(n103), .B(n47), .Z(n129)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6148_2_lut.init = 16'h8888;
    FD1S3DX csi_hs_sync_count_meta_i26 (.D(csi_hs_sync_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i25 (.D(csi_hs_sync_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i24 (.D(csi_hs_sync_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i23 (.D(csi_hs_sync_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i22 (.D(csi_hs_sync_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i22.GSR = "ENABLED";
    LUT4 i6149_2_lut (.A(n104), .B(n47), .Z(n130)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6149_2_lut.init = 16'h8888;
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
    LUT4 n18395_bdd_3_lut_4_lut (.A(rd_first_done), .B(current_state[0]), 
         .C(n19254), .D(n18395), .Z(n18396)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n18395_bdd_3_lut_4_lut.init = 16'h2f20;
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
    LUT4 i6150_2_lut (.A(n105), .B(n47), .Z(n131)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6150_2_lut.init = 16'h8888;
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
    FD1S3DX csi_hs_sync_count_meta_i7 (.D(csi_hs_sync_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_hs_sync_count_meta_i7.GSR = "ENABLED";
    LUT4 i6151_2_lut (.A(n106), .B(n47), .Z(n132)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6151_2_lut.init = 16'h8888;
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
    FD1S3DX csi_byte_clk_count_sys_i26 (.D(csi_byte_clk_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[26]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i26.GSR = "ENABLED";
    LUT4 i6152_2_lut (.A(n107), .B(n47), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6152_2_lut.init = 16'h8888;
    LUT4 i6153_2_lut (.A(n108), .B(n47), .Z(n134_adj_1592)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6153_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i25 (.D(csi_byte_clk_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i25.GSR = "ENABLED";
    LUT4 i6154_2_lut (.A(n109), .B(n47), .Z(n135_adj_1593)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6154_2_lut.init = 16'h8888;
    LUT4 i6157_2_lut (.A(n110), .B(n47), .Z(n136_adj_1594)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6157_2_lut.init = 16'h8888;
    LUT4 i6158_2_lut (.A(n111), .B(n47), .Z(n137_adj_1595)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6158_2_lut.init = 16'h8888;
    LUT4 i6159_2_lut (.A(n112), .B(n47), .Z(n138_adj_1538)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6159_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i24 (.D(csi_byte_clk_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i24.GSR = "ENABLED";
    LUT4 i6160_2_lut (.A(n113), .B(n47), .Z(n139_adj_1539)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6160_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i23 (.D(csi_byte_clk_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i23.GSR = "ENABLED";
    LUT4 i6161_2_lut (.A(n114), .B(n47), .Z(n140_adj_1540)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6161_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i22 (.D(csi_byte_clk_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i22.GSR = "ENABLED";
    LUT4 i6165_2_lut (.A(n115), .B(n47), .Z(n141_adj_1541)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6165_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i21 (.D(csi_byte_clk_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i20 (.D(csi_byte_clk_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i19 (.D(csi_byte_clk_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i19.GSR = "ENABLED";
    LUT4 i6166_2_lut (.A(n116), .B(n47), .Z(n142_adj_1542)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6166_2_lut.init = 16'h8888;
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
    FD1S3DX csi_byte_clk_count_sys_i12 (.D(csi_byte_clk_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i11 (.D(csi_byte_clk_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i11.GSR = "ENABLED";
    LUT4 i6167_2_lut (.A(n117), .B(n47), .Z(n143_adj_1543)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6167_2_lut.init = 16'h8888;
    PFUMX i14243 (.BLUT(n18394), .ALUT(n18393), .C0(rd_first_done), .Z(n18395));
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
    LUT4 i6168_2_lut (.A(n118), .B(n47), .Z(n144_adj_1544)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6168_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i3 (.D(csi_byte_clk_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i3.GSR = "ENABLED";
    LUT4 i6169_2_lut (.A(n119), .B(n47), .Z(n145_adj_1545)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6169_2_lut.init = 16'h8888;
    LUT4 i6170_2_lut (.A(n120), .B(n47), .Z(n146_adj_1546)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6170_2_lut.init = 16'h8888;
    LUT4 i6171_2_lut (.A(n121), .B(n47), .Z(n147_adj_1547)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6171_2_lut.init = 16'h8888;
    FD1P3DX xshutdn_r_106 (.D(VCC_net), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_r));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam xshutdn_r_106.GSR = "ENABLED";
    LUT4 i6172_2_lut (.A(n122), .B(n47), .Z(n148_adj_1548)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6172_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i2 (.D(csi_byte_clk_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i2.GSR = "ENABLED";
    FD1P3DX rst_cnt__i19 (.D(n7987), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i19.GSR = "ENABLED";
    LUT4 i6173_2_lut (.A(n123), .B(n47), .Z(n149_adj_1549)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6173_2_lut.init = 16'h8888;
    LUT4 i6174_2_lut (.A(n124), .B(n47), .Z(n150_adj_1550)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6174_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i1 (.D(csi_byte_clk_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_sys_i1.GSR = "ENABLED";
    LUT4 i6235_2_lut (.A(n125), .B(n47), .Z(n151_adj_1551)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam i6235_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_meta_i31 (.D(csi_byte_clk_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[31]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i30 (.D(csi_byte_clk_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[30]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i29 (.D(csi_byte_clk_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[29]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i29.GSR = "ENABLED";
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
    FD1P3DX cam_ready_108 (.D(n17810), .SP(xshutdn_r), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_ready));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(81[10] 103[8])
    defparam cam_ready_108.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i19 (.D(csi_byte_clk_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i18 (.D(csi_byte_clk_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(204[14] 217[8])
    defparam csi_byte_clk_count_meta_i18.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_3 (.A0(csi_hs_sync_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13329), .COUT(n13330), .S0(n164), 
          .S1(n163));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_3.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_3.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_2082_add_4_3.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_3.INJECT1_1 = "NO";
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
    FD1P3DX rst_cnt__i20 (.D(n7985), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i20.GSR = "ENABLED";
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
    LUT4 i14181_3_lut (.A(xshutdn_r), .B(n16068), .C(cam_ready), .Z(sys_clk_c_enable_147)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(92[14] 99[12])
    defparam i14181_3_lut.init = 16'h0808;
    FD1P3DX csi_long_packet_count_2083__i1 (.D(n164_adj_1552), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_268 (.A(n17672), .B(n17501), .C(n17499), .D(n17095), 
         .Z(n16068)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_268.init = 16'hff7f;
    LUT4 i13636_4_lut (.A(cam_cnt[5]), .B(n17630), .C(n17115), .D(cam_cnt[2]), 
         .Z(n17672)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13636_4_lut.init = 16'h8000;
    FD1P3DX csi_long_packet_count_2083__i2 (.D(n163_adj_1553), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i2.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i3 (.D(n162_adj_1554), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i3.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i4 (.D(n161_adj_1555), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i4.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i5 (.D(n160_adj_1556), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i5.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i6 (.D(n159_adj_1557), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i6.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i7 (.D(n158_adj_1558), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i7.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i8 (.D(n157_adj_1559), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i8.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i9 (.D(n156_adj_1560), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i9.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i10 (.D(n155_adj_1561), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i10.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i11 (.D(n154_adj_1562), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i11.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i12 (.D(n153_adj_1563), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i12.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i13 (.D(n152_adj_1564), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i13.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i14 (.D(n151_adj_1565), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i14.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i15 (.D(n150_adj_1566), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i15.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i16 (.D(n149_adj_1567), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i16.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i17 (.D(n148_adj_1568), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i17.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i18 (.D(n147_adj_1569), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i18.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i19 (.D(n146_adj_1570), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i19.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i20 (.D(n145_adj_1571), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i20.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i21 (.D(n144_adj_1572), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i21.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i22 (.D(n143_adj_1573), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i22.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i23 (.D(n142_adj_1574), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i23.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i24 (.D(n141_adj_1575), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i24.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i25 (.D(n140_adj_1576), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i25.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i26 (.D(n139_adj_1577), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i26.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i27 (.D(n138_adj_1578), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i27.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i28 (.D(n137_adj_1579), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i28.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i29 (.D(n136_adj_1580), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i29.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i30 (.D(n135_adj_1581), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i30.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_2083__i31 (.D(n134_adj_1582), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083__i31.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i1 (.D(n164_adj_1664), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i1.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_2082_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_hs_sync_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13329), .S1(n165));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(177[34:58])
    defparam csi_hs_sync_count_2082_add_4_1.INIT0 = 16'h0000;
    defparam csi_hs_sync_count_2082_add_4_1.INIT1 = 16'h555f;
    defparam csi_hs_sync_count_2082_add_4_1.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_2082_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_33 (.A0(csi_byte_clk_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13328), .S0(n134_adj_1649));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_33.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_33.INIT1 = 16'h0000;
    defparam csi_byte_clk_count_2081_add_4_33.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_33.INJECT1_1 = "NO";
    LUT4 i13466_2_lut (.A(cam_cnt[18]), .B(cam_cnt[3]), .Z(n17501)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13466_2_lut.init = 16'h8888;
    FD1P3DX csi_payload_byte_count_2084__i2 (.D(n163_adj_1658), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i3 (.D(n162_adj_1667), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i3.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i4 (.D(n161_adj_1651), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i4.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i5 (.D(n160_adj_1663), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i5.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i6 (.D(n159_adj_1665), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i6.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i7 (.D(n158_adj_1666), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i7.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i8 (.D(n157), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i8.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i9 (.D(n156_adj_1653), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i9.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i10 (.D(n155), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i10.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i11 (.D(n154_adj_1588), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i11.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i12 (.D(n153_adj_1587), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i12.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i13 (.D(n152_adj_1586), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i13.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i14 (.D(n151_adj_1659), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i14.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i15 (.D(n150_adj_1656), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i16 (.D(n149_adj_1657), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i16.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i17 (.D(n148_adj_1655), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i17.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i18 (.D(n147_adj_1650), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i18.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i19 (.D(n146_adj_1661), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i19.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i20 (.D(n145_adj_1654), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i20.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i21 (.D(n144_adj_1660), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i21.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i22 (.D(n143), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i22.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i23 (.D(n142_adj_1652), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i23.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i24 (.D(n141), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i24.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i25 (.D(n140_adj_1585), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i25.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i26 (.D(n139_adj_1584), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i26.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i27 (.D(n138_adj_1583), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i27.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i28 (.D(n137), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i28.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i29 (.D(n136), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i29.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i30 (.D(n135), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i30.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_2084__i31 (.D(n134_adj_1596), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084__i31.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2081_add_4_31 (.A0(csi_byte_clk_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13327), .COUT(n13328), .S0(n136_adj_1647), 
          .S1(n135_adj_1648));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_31.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_31.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_31.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_31.INJECT1_1 = "NO";
    LUT4 i13464_2_lut (.A(cam_cnt[14]), .B(cam_cnt[4]), .Z(n17499)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13464_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_269 (.A(cam_cnt[15]), .B(n17093), .C(n17087), .D(cam_cnt[8]), 
         .Z(n17095)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_269.init = 16'hfffe;
    CCU2C csi_byte_clk_count_2081_add_4_29 (.A0(csi_byte_clk_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13326), .COUT(n13327), .S0(n138_adj_1645), 
          .S1(n137_adj_1646));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_29.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_29.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_29.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_29.INJECT1_1 = "NO";
    LUT4 i13594_4_lut (.A(cam_cnt[17]), .B(cam_cnt[0]), .C(cam_cnt[1]), 
         .D(cam_cnt[9]), .Z(n17630)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13594_4_lut.init = 16'h8000;
    CCU2C csi_byte_clk_count_2081_add_4_27 (.A0(csi_byte_clk_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13325), .COUT(n13326), .S0(n140_adj_1643), 
          .S1(n139_adj_1644));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_27.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_27.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_27.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_27.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_270 (.A(cam_cnt[16]), .B(cam_cnt[19]), .Z(n17115)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_270.init = 16'h8888;
    CCU2C xshutdn_cnt_2079_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xshutdn_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13293), .S1(n105_adj_1590));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(88[32:50])
    defparam xshutdn_cnt_2079_add_4_1.INIT0 = 16'h0000;
    defparam xshutdn_cnt_2079_add_4_1.INIT1 = 16'h555f;
    defparam xshutdn_cnt_2079_add_4_1.INJECT1_0 = "NO";
    defparam xshutdn_cnt_2079_add_4_1.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_25 (.A0(blink_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13292), .S0(n102_adj_1589));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_25.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_25.INIT1 = 16'h0000;
    defparam blink_cnt_2078_add_4_25.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_25 (.A0(csi_byte_clk_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13324), .COUT(n13325), .S0(n142_adj_1641), 
          .S1(n141_adj_1642));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_25.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_25.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_25.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_25.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_271 (.A(cam_cnt[7]), .B(cam_cnt[11]), .C(cam_cnt[10]), 
         .D(cam_cnt[12]), .Z(n17093)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_271.init = 16'hfffe;
    LUT4 i1_2_lut_adj_272 (.A(cam_cnt[13]), .B(cam_cnt[6]), .Z(n17087)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_272.init = 16'heeee;
    LUT4 csi_lp_en_I_0_2_lut (.A(csi_lp_en_c), .B(dphy_hs_sync_d), .Z(csi_hs_sync_count_31__N_349)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(176[13:44])
    defparam csi_lp_en_I_0_2_lut.init = 16'h2222;
    CCU2C blink_cnt_2078_add_4_23 (.A0(blink_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13291), .COUT(n13292), .S0(n104), .S1(n103));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_23.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_23.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_23.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_23.INJECT1_1 = "NO";
    LUT4 i719_4_lut (.A(n19285), .B(n3701), .C(tx_state[1]), .D(n19249), 
         .Z(n3570)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    defparam i719_4_lut.init = 16'hcac0;
    LUT4 i6279_2_lut (.A(n1207), .B(rst_cnt_25__N_445), .Z(n8007)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6279_2_lut.init = 16'h2222;
    CCU2C blink_cnt_2078_add_4_21 (.A0(blink_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13290), .COUT(n13291), .S0(n106), .S1(n105));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_21.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_21.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_21.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_21.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_23 (.A0(csi_byte_clk_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13323), .COUT(n13324), .S0(n144_adj_1639), 
          .S1(n143_adj_1640));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_23.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_23.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_23.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_23.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_21 (.A0(csi_byte_clk_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13322), .COUT(n13323), .S0(n146_adj_1637), 
          .S1(n145_adj_1638));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_21.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_21.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_21.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_21.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_19 (.A0(csi_byte_clk_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13321), .COUT(n13322), .S0(n148_adj_1635), 
          .S1(n147_adj_1636));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_19.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_19.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_19.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_19.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i21 (.D(n7983), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[21]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i21.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_2081_add_4_17 (.A0(csi_byte_clk_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13320), .COUT(n13321), .S0(n150_adj_1633), 
          .S1(n149_adj_1634));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_17.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_17.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_17.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_17.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_19 (.A0(blink_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13289), .COUT(n13290), .S0(n108), .S1(n107));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_19.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_19.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_19.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_19.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i22 (.D(n7981), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i22.GSR = "ENABLED";
    LUT4 i6278_2_lut (.A(n1206), .B(rst_cnt_25__N_445), .Z(n8005)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6278_2_lut.init = 16'h2222;
    LUT4 i2126_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(sys_clk_c_enable_233)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2126_2_lut.init = 16'hdddd;
    LUT4 i6142_2_lut (.A(n1216), .B(rst_cnt_25__N_445), .Z(n7941)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6142_2_lut.init = 16'h2222;
    LUT4 i6096_4_lut (.A(rst_n_pulse), .B(n17674), .C(n17676), .D(n17051), 
         .Z(rst_n_pulse_N_449)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(389[14] 391[12])
    defparam i6096_4_lut.init = 16'haaea;
    CCU2C blink_cnt_2078_add_4_17 (.A0(blink_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13288), .COUT(n13289), .S0(n110), .S1(n109));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_17.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_17.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_17.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_15 (.A0(csi_byte_clk_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13319), .COUT(n13320), .S0(n152_adj_1631), 
          .S1(n151_adj_1632));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_15.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_15.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_15.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_15.INJECT1_1 = "NO";
    LUT4 i13638_4_lut (.A(rst_cnt[21]), .B(n17634), .C(n17527), .D(rst_cnt[1]), 
         .Z(n17674)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13638_4_lut.init = 16'h8000;
    LUT4 i13640_4_lut (.A(rst_cnt[19]), .B(n17638), .C(n17531), .D(rst_cnt[14]), 
         .Z(n17676)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13640_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_273 (.A(n17529), .B(n17021), .C(n17029), .D(n17023), 
         .Z(n17051)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_273.init = 16'hfffd;
    LUT4 i13598_4_lut (.A(rst_cnt[23]), .B(rst_cnt[15]), .C(rst_cnt[0]), 
         .D(rst_cnt[12]), .Z(n17634)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13598_4_lut.init = 16'h8000;
    LUT4 i13492_2_lut (.A(rst_cnt[3]), .B(rst_cnt[2]), .Z(n17527)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13492_2_lut.init = 16'h8888;
    LUT4 i13602_4_lut (.A(rst_cnt[22]), .B(rst_cnt[20]), .C(rst_cnt[17]), 
         .D(rst_cnt[5]), .Z(n17638)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13602_4_lut.init = 16'h8000;
    CCU2C blink_cnt_2078_add_4_15 (.A0(blink_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13287), .COUT(n13288), .S0(n112), .S1(n111));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_15.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_15.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_15.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_15.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_13 (.A0(blink_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13286), .COUT(n13287), .S0(n114), .S1(n113));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_13.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_13.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_13.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_13 (.A0(csi_byte_clk_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13318), .COUT(n13319), .S0(n154_adj_1629), 
          .S1(n153_adj_1630));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_13.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_13.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_13.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_13.INJECT1_1 = "NO";
    LUT4 i13496_2_lut (.A(rst_cnt[25]), .B(rst_cnt[13]), .Z(n17531)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13496_2_lut.init = 16'h8888;
    LUT4 i13494_2_lut (.A(rst_cnt[6]), .B(rst_cnt[4]), .Z(n17529)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13494_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_274 (.A(rst_cnt[11]), .B(rst_cnt[18]), .Z(n17021)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_274.init = 16'heeee;
    CCU2C add_94_27 (.A0(rst_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13241), 
          .S0(n1191));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_27.INIT0 = 16'haaaa;
    defparam add_94_27.INIT1 = 16'h0000;
    defparam add_94_27.INJECT1_0 = "NO";
    defparam add_94_27.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_11 (.A0(csi_byte_clk_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13317), .COUT(n13318), .S0(n156_adj_1627), 
          .S1(n155_adj_1628));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_11.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_11.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_11.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_11.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_11 (.A0(blink_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13285), .COUT(n13286), .S0(n116), .S1(n115));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_11.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_11.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_11.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_275 (.A(rst_cnt[10]), .B(rst_cnt[8]), .C(rst_cnt[9]), 
         .D(rst_cnt[7]), .Z(n17029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_275.init = 16'hfffe;
    CCU2C csi_byte_clk_count_2081_add_4_9 (.A0(csi_byte_clk_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13316), .COUT(n13317), .S0(n158_adj_1625), 
          .S1(n157_adj_1626));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_9.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_9.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_9.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_9.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_9 (.A0(blink_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13284), .COUT(n13285), .S0(n118), .S1(n117));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_9.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_9.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_9.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_9.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_7 (.A0(blink_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13283), .COUT(n13284), .S0(n120), .S1(n119));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_7.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_7.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_7.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_276 (.A(rst_cnt[24]), .B(rst_cnt[16]), .Z(n17023)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_276.init = 16'heeee;
    LUT4 i1_4_lut_adj_277 (.A(n17401), .B(n17403), .C(n17315), .D(n17311), 
         .Z(rst_cnt_25__N_445)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_277.init = 16'h1000;
    LUT4 i13366_2_lut (.A(rx_data[7]), .B(rx_data[4]), .Z(n17401)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13366_2_lut.init = 16'heeee;
    LUT4 i13368_2_lut (.A(rx_data[0]), .B(rx_data[3]), .Z(n17403)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13368_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(rx_data[6]), .B(rx_flag), .C(rx_data[1]), .Z(n17315)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_278 (.A(rx_data[5]), .B(rx_data[2]), .Z(n17311)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_278.init = 16'h8888;
    FD1P3DX rst_cnt__i23 (.D(n7979), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[23]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i23.GSR = "ENABLED";
    FD1P3DX rst_cnt__i24 (.D(n7977), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i24.GSR = "ENABLED";
    FD1P3DX rst_cnt__i25 (.D(n7975), .SP(sys_clk_c_enable_233), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam rst_cnt__i25.GSR = "ENABLED";
    LUT4 i6277_2_lut (.A(n1205), .B(rst_cnt_25__N_445), .Z(n8003)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6277_2_lut.init = 16'h2222;
    CCU2C csi_payload_byte_count_2084_add_4_33 (.A0(csi_payload_byte_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13376), .S0(n134_adj_1596));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_33.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_33.INIT1 = 16'h0000;
    defparam csi_payload_byte_count_2084_add_4_33.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_33.INJECT1_1 = "NO";
    FD1S3DX blink_toggle_105 (.D(led_3__N_1), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(led_c_3));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(55[10] 61[8])
    defparam blink_toggle_105.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_2084_add_4_31 (.A0(csi_payload_byte_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13375), .COUT(n13376), 
          .S0(n136), .S1(n135));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_31.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_31.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_31.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_31.INJECT1_1 = "NO";
    LUT4 rd_first_done_bdd_2_lut (.A(n15714), .B(current_state[6]), .Z(n18393)) /* synthesis lut_function=((B)+!A) */ ;
    defparam rd_first_done_bdd_2_lut.init = 16'hdddd;
    CCU2C csi_payload_byte_count_2084_add_4_29 (.A0(csi_payload_byte_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13374), .COUT(n13375), 
          .S0(n138_adj_1583), .S1(n137));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_29.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_29.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_29.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_29.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C blink_cnt_2078_add_4_5 (.A0(blink_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13282), .COUT(n13283), .S0(n122), .S1(n121));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_5.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_5.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_5.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_5.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_3 (.A0(blink_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13281), .COUT(n13282), .S0(n124), .S1(n123));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_3.INIT0 = 16'haaa0;
    defparam blink_cnt_2078_add_4_3.INIT1 = 16'haaa0;
    defparam blink_cnt_2078_add_4_3.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_3.INJECT1_1 = "NO";
    CCU2C add_94_5 (.A0(rst_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13230), .COUT(n13231), .S0(n1213), .S1(n1212));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_5.INIT0 = 16'haaaa;
    defparam add_94_5.INIT1 = 16'haaaa;
    defparam add_94_5.INJECT1_0 = "NO";
    defparam add_94_5.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_27 (.A0(csi_payload_byte_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13373), .COUT(n13374), 
          .S0(n140_adj_1585), .S1(n139_adj_1584));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_27.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_27.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_27.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_27.INJECT1_1 = "NO";
    CCU2C blink_cnt_2078_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(blink_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13281), .S1(n125));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(60[22:38])
    defparam blink_cnt_2078_add_4_1.INIT0 = 16'h0000;
    defparam blink_cnt_2078_add_4_1.INIT1 = 16'h555f;
    defparam blink_cnt_2078_add_4_1.INJECT1_0 = "NO";
    defparam blink_cnt_2078_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_7 (.A0(csi_byte_clk_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13315), .COUT(n13316), .S0(n160_adj_1623), 
          .S1(n159_adj_1624));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_7.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_7.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_7.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_7.INJECT1_1 = "NO";
    CCU2C add_94_25 (.A0(rst_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13240), .COUT(n13241), .S0(n1193), .S1(n1192));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_25.INIT0 = 16'haaaa;
    defparam add_94_25.INIT1 = 16'haaaa;
    defparam add_94_25.INJECT1_0 = "NO";
    defparam add_94_25.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_25 (.A0(csi_payload_byte_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13372), .COUT(n13373), 
          .S0(n142_adj_1652), .S1(n141));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_25.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_25.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_25.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_25.INJECT1_1 = "NO";
    CCU2C add_94_23 (.A0(rst_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13239), .COUT(n13240), .S0(n1195), .S1(n1194));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_23.INIT0 = 16'haaaa;
    defparam add_94_23.INIT1 = 16'haaaa;
    defparam add_94_23.INJECT1_0 = "NO";
    defparam add_94_23.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_23 (.A0(csi_payload_byte_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13371), .COUT(n13372), 
          .S0(n144_adj_1660), .S1(n143));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_23.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_23.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_23.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_23.INJECT1_1 = "NO";
    CCU2C add_94_11 (.A0(rst_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13233), .COUT(n13234), .S0(n1207), .S1(n1206));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_11.INIT0 = 16'haaaa;
    defparam add_94_11.INIT1 = 16'haaaa;
    defparam add_94_11.INJECT1_0 = "NO";
    defparam add_94_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_21 (.A0(csi_payload_byte_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13370), .COUT(n13371), 
          .S0(n146_adj_1661), .S1(n145_adj_1654));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_21.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_21.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_21.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_21.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_5 (.A0(csi_byte_clk_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13314), .COUT(n13315), .S0(n162_adj_1621), 
          .S1(n161_adj_1622));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_5.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_5.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_5.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_19 (.A0(csi_payload_byte_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13369), .COUT(n13370), 
          .S0(n148_adj_1655), .S1(n147_adj_1650));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_19.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_19.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_19.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_19.INJECT1_1 = "NO";
    LUT4 i6276_2_lut (.A(n1204), .B(rst_cnt_25__N_445), .Z(n8001)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6276_2_lut.init = 16'h2222;
    LUT4 i6275_2_lut (.A(n1203), .B(rst_cnt_25__N_445), .Z(n7999)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6275_2_lut.init = 16'h2222;
    CCU2C csi_byte_clk_count_2081_add_4_3 (.A0(csi_byte_clk_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n13313), .COUT(n13314), .S0(n164_adj_1619), 
          .S1(n163_adj_1620));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_3.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_3.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_2081_add_4_3.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_2081_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_byte_clk_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13313), .S1(n165_adj_1618));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(173[31:56])
    defparam csi_byte_clk_count_2081_add_4_1.INIT0 = 16'h0000;
    defparam csi_byte_clk_count_2081_add_4_1.INIT1 = 16'h555f;
    defparam csi_byte_clk_count_2081_add_4_1.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_2081_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_17 (.A0(csi_payload_byte_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13368), .COUT(n13369), 
          .S0(n150_adj_1656), .S1(n149_adj_1657));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_17.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_17.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_17.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_15 (.A0(csi_payload_byte_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13367), .COUT(n13368), 
          .S0(n152_adj_1586), .S1(n151_adj_1659));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_15.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_15.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_15.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_15.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_21 (.A0(cam_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13312), .S0(n86_adj_1617));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_21.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_21.INIT1 = 16'h0000;
    defparam cam_cnt_2080_add_4_21.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_21.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_19 (.A0(cam_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13311), .COUT(n13312), .S0(n88_adj_1615), 
          .S1(n87_adj_1616));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_19.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_19.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_19.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_19.INJECT1_1 = "NO";
    LUT4 i6274_2_lut (.A(n1202), .B(rst_cnt_25__N_445), .Z(n7997)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6274_2_lut.init = 16'h2222;
    LUT4 i6273_2_lut (.A(n1201), .B(rst_cnt_25__N_445), .Z(n7995)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6273_2_lut.init = 16'h2222;
    LUT4 i6272_2_lut (.A(n1200), .B(rst_cnt_25__N_445), .Z(n7993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6272_2_lut.init = 16'h2222;
    LUT4 i6271_2_lut (.A(n1199), .B(rst_cnt_25__N_445), .Z(n7991)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6271_2_lut.init = 16'h2222;
    LUT4 i6270_2_lut (.A(n1198), .B(rst_cnt_25__N_445), .Z(n7989)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6270_2_lut.init = 16'h2222;
    CCU2C csi_payload_byte_count_2084_add_4_13 (.A0(csi_payload_byte_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13366), .COUT(n13367), 
          .S0(n154_adj_1588), .S1(n153_adj_1587));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_13.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_13.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_13.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_13.INJECT1_1 = "NO";
    LUT4 i6098_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(n6031)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6098_2_lut.init = 16'h2222;
    CCU2C cam_cnt_2080_add_4_17 (.A0(cam_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13310), .COUT(n13311), .S0(n90_adj_1613), 
          .S1(n89_adj_1614));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_17.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_17.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_17.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_17.INJECT1_1 = "NO";
    CCU2C add_94_9 (.A0(rst_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13232), .COUT(n13233), .S0(n1209), .S1(n1208));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_9.INIT0 = 16'haaaa;
    defparam add_94_9.INIT1 = 16'haaaa;
    defparam add_94_9.INJECT1_0 = "NO";
    defparam add_94_9.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_11 (.A0(csi_payload_byte_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13365), .COUT(n13366), 
          .S0(n156_adj_1653), .S1(n155));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_11.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_11.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_11.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_9 (.A0(csi_payload_byte_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13364), .COUT(n13365), 
          .S0(n158_adj_1666), .S1(n157));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_9.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_9.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_9.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_7 (.A0(csi_payload_byte_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13363), .COUT(n13364), 
          .S0(n160_adj_1663), .S1(n159_adj_1665));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_7.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_7.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_7.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_7.INJECT1_1 = "NO";
    CCU2C add_94_21 (.A0(rst_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13238), .COUT(n13239), .S0(n1197), .S1(n1196));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_21.INIT0 = 16'haaaa;
    defparam add_94_21.INIT1 = 16'haaaa;
    defparam add_94_21.INJECT1_0 = "NO";
    defparam add_94_21.INJECT1_1 = "NO";
    CCU2C add_94_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rst_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13229), .S1(n1216));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_1.INIT0 = 16'h0000;
    defparam add_94_1.INIT1 = 16'h555a;
    defparam add_94_1.INJECT1_0 = "NO";
    defparam add_94_1.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_15 (.A0(cam_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13309), .COUT(n13310), .S0(n92_adj_1611), 
          .S1(n91_adj_1612));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_15.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_15.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_15.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_15.INJECT1_1 = "NO";
    CCU2C add_94_19 (.A0(rst_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13237), .COUT(n13238), .S0(n1199), .S1(n1198));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_19.INIT0 = 16'haaaa;
    defparam add_94_19.INIT1 = 16'haaaa;
    defparam add_94_19.INJECT1_0 = "NO";
    defparam add_94_19.INJECT1_1 = "NO";
    CCU2C add_94_3 (.A0(rst_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13229), .COUT(n13230), .S0(n1215), .S1(n1214));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_3.INIT0 = 16'haaaa;
    defparam add_94_3.INIT1 = 16'haaaa;
    defparam add_94_3.INJECT1_0 = "NO";
    defparam add_94_3.INJECT1_1 = "NO";
    CCU2C add_94_13 (.A0(rst_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13234), .COUT(n13235), .S0(n1205), .S1(n1204));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(390[24:38])
    defparam add_94_13.INIT0 = 16'haaaa;
    defparam add_94_13.INIT1 = 16'haaaa;
    defparam add_94_13.INJECT1_0 = "NO";
    defparam add_94_13.INJECT1_1 = "NO";
    LUT4 i6269_2_lut (.A(n1197), .B(rst_cnt_25__N_445), .Z(n7987)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6269_2_lut.init = 16'h2222;
    LUT4 i13764_3_lut (.A(cam_ready), .B(n16068), .Z(n17810)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i13764_3_lut.init = 16'hbbbb;
    LUT4 i6268_2_lut (.A(n1196), .B(rst_cnt_25__N_445), .Z(n7985)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6268_2_lut.init = 16'h2222;
    CCU2C csi_payload_byte_count_2084_add_4_5 (.A0(csi_payload_byte_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13362), .COUT(n13363), 
          .S0(n162_adj_1667), .S1(n161_adj_1651));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_5.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_5.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_5.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_3 (.A0(csi_payload_byte_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13361), .COUT(n13362), 
          .S0(n164_adj_1664), .S1(n163_adj_1658));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_3.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_3.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_2084_add_4_3.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_2084_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_payload_byte_count[0]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n13361), .S1(n165_adj_1662));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(184[39:68])
    defparam csi_payload_byte_count_2084_add_4_1.INIT0 = 16'h0000;
    defparam csi_payload_byte_count_2084_add_4_1.INIT1 = 16'h555f;
    defparam csi_payload_byte_count_2084_add_4_1.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_2084_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_33 (.A0(csi_long_packet_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13360), .S0(n134_adj_1582));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_33.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_33.INIT1 = 16'h0000;
    defparam csi_long_packet_count_2083_add_4_33.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_33.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_13 (.A0(cam_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13308), .COUT(n13309), .S0(n94_adj_1609), 
          .S1(n93_adj_1610));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_13.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_13.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_13.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_31 (.A0(csi_long_packet_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13359), .COUT(n13360), 
          .S0(n136_adj_1580), .S1(n135_adj_1581));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_31.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_31.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_31.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_31.INJECT1_1 = "NO";
    CCU2C cam_cnt_2080_add_4_11 (.A0(cam_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13307), .COUT(n13308), .S0(n96_adj_1607), 
          .S1(n95_adj_1608));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(97[28:42])
    defparam cam_cnt_2080_add_4_11.INIT0 = 16'haaa0;
    defparam cam_cnt_2080_add_4_11.INIT1 = 16'haaa0;
    defparam cam_cnt_2080_add_4_11.INJECT1_0 = "NO";
    defparam cam_cnt_2080_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_29 (.A0(csi_long_packet_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13358), .COUT(n13359), 
          .S0(n138_adj_1578), .S1(n137_adj_1579));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_29.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_29.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_29.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_27 (.A0(csi_long_packet_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13357), .COUT(n13358), 
          .S0(n140_adj_1576), .S1(n139_adj_1577));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_27.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_27.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_27.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_27.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_2083_add_4_25 (.A0(csi_long_packet_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n13356), .COUT(n13357), 
          .S0(n142_adj_1574), .S1(n141_adj_1575));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(179[38:66])
    defparam csi_long_packet_count_2083_add_4_25.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_25.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_2083_add_4_25.INJECT1_0 = "NO";
    defparam csi_long_packet_count_2083_add_4_25.INJECT1_1 = "NO";
    LUT4 sys_rstn_I_0_2_lut_rep_368 (.A(sys_rstn_c), .B(rst_n_pulse), .Z(n19311)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(41[21:43])
    defparam sys_rstn_I_0_2_lut_rep_368.init = 16'h8888;
    LUT4 i6267_2_lut (.A(n1195), .B(rst_cnt_25__N_445), .Z(n7983)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6267_2_lut.init = 16'h2222;
    LUT4 sys_rst_n_I_0_1_lut_2_lut (.A(sys_rstn_c), .B(rst_n_pulse), .Z(sys_rst_n_N_472)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(41[21:43])
    defparam sys_rst_n_I_0_1_lut_2_lut.init = 16'h7777;
    LUT4 i6266_2_lut (.A(n1194), .B(rst_cnt_25__N_445), .Z(n7981)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6266_2_lut.init = 16'h2222;
    LUT4 i6265_2_lut (.A(n1193), .B(rst_cnt_25__N_445), .Z(n7979)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6265_2_lut.init = 16'h2222;
    LUT4 i6264_2_lut (.A(n1192), .B(rst_cnt_25__N_445), .Z(n7977)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6264_2_lut.init = 16'h2222;
    LUT4 i6232_2_lut (.A(n1191), .B(rst_cnt_25__N_445), .Z(n7975)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(381[10] 392[8])
    defparam i6232_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_279 (.A(led_c_3), .B(n47), .Z(led_3__N_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_279.init = 16'h9999;
    uart_send_ctrl u_send_ctrl (.csi_long_packet_count_sys({csi_long_packet_count_sys}), 
            .csi_payload_byte_count_sys({csi_payload_byte_count_sys}), .csi_byte_clk_count_sys({csi_byte_clk_count_sys}), 
            .csi_hs_sync_count_sys({csi_hs_sync_count_sys}), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .work_en_N_1384(work_en_N_1384), 
            .n3570(n3570), .\tx_data[0] (tx_data[0]), .\tx_state[1] (tx_state[1]), 
            .sensor_id({sensor_id}), .\field_index[3] (field_index[3]), 
            .n19244(n19244), .dphy_lp_state_d_s2({dphy_lp_state_d_s2}), 
            .reg_4a00_val({reg_4a00_val}), .dphy_term_clk_en_s2(dphy_term_clk_en_s2), 
            .dphy_hs_d_en_s2(dphy_hs_d_en_s2), .csi_last_dt_sys({csi_last_dt_sys}), 
            .csi_last_wc_sys({csi_last_wc_sys}), .uart_busy(uart_busy), 
            .VCC_net(VCC_net), .\tx_data[6] (tx_data[6]), .\tx_data[5] (tx_data[5]), 
            .\tx_data[4] (tx_data[4]), .\tx_data[3] (tx_data[3]), .\tx_data[2] (tx_data[2]), 
            .\tx_data[1] (tx_data[1]), .n3701(n3701), .n19263(n19263), 
            .n19249(n19249), .GND_net(GND_net), .n19285(n19285)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(331[16] 350[2])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_rx u_uart_rx (.GND_net(GND_net), .VCC_net(VCC_net), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .rx_data({rx_data}), .rx_flag(rx_flag), 
            .uart_rxd_c(uart_rxd_c)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(367[3] 373[2])
    \top_iic(IIC_CLK=26'b010011100010000)  u_top_iic (.GND_net(GND_net), .VCC_net(VCC_net), 
            .flag_done(flag_done), .reg_index({reg_index}), .\reg_cfg[8] (reg_cfg[8]), 
            .sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), .reg_4a00_val({reg_4a00_val}), 
            .sensor_id({sensor_id}), .\reg_cfg[18] (reg_cfg[18]), .\reg_cfg[16] (reg_cfg[16]), 
            .\reg_cfg[15] (reg_cfg[15]), .\reg_cfg[10] (reg_cfg[10]), .\reg_cfg[12] (reg_cfg[12]), 
            .\reg_cfg[13] (reg_cfg[13]), .\reg_cfg[19] (reg_cfg[19]), .\reg_cfg[17] (reg_cfg[17]), 
            .cam_ready(cam_ready), .\reg_cfg[0] (reg_cfg[0]), .led_c_1(led_c_1), 
            .\reg_cfg[1] (reg_cfg[1]), .\reg_cfg[2] (reg_cfg[2]), .\reg_cfg[3] (reg_cfg[3]), 
            .\reg_cfg[4] (reg_cfg[4]), .\reg_cfg[5] (reg_cfg[5]), .\reg_cfg[6] (reg_cfg[6]), 
            .\reg_cfg[7] (reg_cfg[7]), .\current_state[6] (current_state[6]), 
            .\current_state[0] (current_state[0]), .sda_transmit(sda_transmit), 
            .n17805(n17805), .n19254(n19254), .i2c_sclk_0_c(i2c_sclk_0_c), 
            .n8(n8), .rd_first_done(rd_first_done), .n15714(n15714), .n18396(n18396), 
            .i2c_sda_0_out(i2c_sda_0_out), .sda_transmit_en_N_1061(sda_transmit_en_N_1061), 
            .n18394(n18394)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(113[3] 127[2])
    csi2dsi u_csi2dsi (.csi_clk_byte_hs(csi_clk_byte_hs), .\reset_byte_fr_sync[1] (reset_byte_fr_sync[1]), 
            .VCC_net(VCC_net), .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), 
            .csi_wc({csi_wc}), .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), 
            .n19311(n19311), .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), 
            .csi_lp_en_c(csi_lp_en_c), .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (reset_byte_sync[1]), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(252[9] 298[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (sys_clk_c, sys_rst_n_N_472, uart_busy, GND_net, VCC_net, 
            uart_txd_c, work_en_N_1384, \tx_data[5] , \tx_data[6] , 
            \tx_data[0] , \tx_data[1] , \tx_data[4] , \tx_data[2] , 
            \tx_data[3] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output uart_busy;
    input GND_net;
    input VCC_net;
    output uart_txd_c;
    input work_en_N_1384;
    input \tx_data[5] ;
    input \tx_data[6] ;
    input \tx_data[0] ;
    input \tx_data[1] ;
    input \tx_data[4] ;
    input \tx_data[2] ;
    input \tx_data[3] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [12:0]baud_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(19[12:20])
    wire [12:0]n41;
    
    wire bit_flag, bit_flag_N_1394, n7873, n13247;
    wire [12:0]n18;
    wire [15:0]n2412;
    
    wire sys_clk_c_enable_236, n7967, n13246, n7965, n7963, n7961, 
        n13245, n13244, tx_N_1393, n24_adj_1521, n17564, n7959, 
        n7957, work_en_N_1387, n7955, n7953, n7951, n7949, n7947, 
        n7945, n7943, n13243, n9678, n6599, n6938, n17901, n6936, 
        n17602, n17301, n17299, n17325, n7969, n7971, n13242, 
        n7973, n6937, n17892;
    wire [0:0]n3709;
    
    wire n6598, n15_adj_1529, n17652, n16793, n16791;
    
    FD1S3DX baud_cnt__i0 (.D(n41[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    FD1S3DX bit_flag_47 (.D(bit_flag_N_1394), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(47[10] 50[26])
    defparam bit_flag_47.GSR = "ENABLED";
    FD1S3DX work_en_45 (.D(n7873), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam work_en_45.GSR = "ENABLED";
    CCU2C add_18_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13247), .S0(n18[11]), .S1(n18[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_13.INIT0 = 16'haaaa;
    defparam add_18_13.INIT1 = 16'haaaa;
    defparam add_18_13.INJECT1_0 = "NO";
    defparam add_18_13.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i4 (.D(n7967), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i4.GSR = "ENABLED";
    CCU2C add_18_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13246), .COUT(n13247), .S0(n18[9]), .S1(n18[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_11.INIT0 = 16'haaaa;
    defparam add_18_11.INIT1 = 16'haaaa;
    defparam add_18_11.INJECT1_0 = "NO";
    defparam add_18_11.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i5 (.D(n7965), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i6 (.D(n7963), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i6.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i7 (.D(n7961), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i7.GSR = "ENABLED";
    CCU2C add_18_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13245), .COUT(n13246), .S0(n18[7]), .S1(n18[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_9.INIT0 = 16'haaaa;
    defparam add_18_9.INIT1 = 16'haaaa;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    CCU2C add_18_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13244), .COUT(n13245), .S0(n18[5]), .S1(n18[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_7.INIT0 = 16'haaaa;
    defparam add_18_7.INIT1 = 16'haaaa;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    FD1P3BX tx_50 (.D(tx_N_1393), .SP(bit_flag), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=355, LSE_RLINE=362 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(67[10] 81[16])
    defparam tx_50.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(baud_cnt[11]), .B(n24_adj_1521), .C(n17564), .D(baud_cnt[9]), 
         .Z(bit_flag_N_1394)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12_4_lut.init = 16'h0004;
    FD1P3DX bit_cnt_FSM_i8 (.D(n7959), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i8.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i9 (.D(n7957), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i10 (.D(n7955), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(work_en_N_1387));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i10.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i11 (.D(n7953), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[11]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i11.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i12 (.D(n7951), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i12.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i13 (.D(n7949), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[13]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i14 (.D(n7947), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i15 (.D(n7945), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[15]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i15.GSR = "ENABLED";
    FD1P3BX bit_cnt_FSM_i0 (.D(n7943), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(n2412[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i0.GSR = "ENABLED";
    LUT4 i6221_2_lut (.A(work_en_N_1387), .B(bit_flag), .Z(n7953)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6221_2_lut.init = 16'h2222;
    LUT4 i6308_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(uart_busy), 
         .Z(sys_clk_c_enable_236)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i6308_3_lut.init = 16'ha8a8;
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
    CCU2C add_18_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13243), .COUT(n13244), .S0(n18[3]), .S1(n18[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_5.INIT0 = 16'haaaa;
    defparam add_18_5.INIT1 = 16'haaaa;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n9678), .B(n18[0]), .Z(n41[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i3052 (.BLUT(n6599), .ALUT(n6938), .C0(n17901), .Z(n6936));
    LUT4 i1_4_lut (.A(uart_busy), .B(n17602), .C(n17301), .D(baud_cnt[4]), 
         .Z(n9678)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(27[10] 30[25])
    defparam i1_4_lut.init = 16'ha2aa;
    LUT4 i13566_4_lut (.A(baud_cnt[8]), .B(baud_cnt[5]), .C(baud_cnt[0]), 
         .D(baud_cnt[7]), .Z(n17602)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13566_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_250 (.A(baud_cnt[9]), .B(n17299), .C(n17325), .D(baud_cnt[2]), 
         .Z(n17301)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_250.init = 16'hfffe;
    LUT4 i6228_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[3]), 
         .Z(n7967)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6228_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_4_lut_adj_251 (.A(baud_cnt[12]), .B(baud_cnt[1]), .C(baud_cnt[6]), 
         .D(baud_cnt[3]), .Z(n17299)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_251.init = 16'hfffe;
    LUT4 i6229_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[2]), 
         .Z(n7969)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6229_2_lut_3_lut.init = 16'h7070;
    LUT4 i6230_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[1]), 
         .Z(n7971)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6230_2_lut_3_lut.init = 16'h7070;
    LUT4 i6227_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[4]), 
         .Z(n7965)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6227_2_lut_3_lut.init = 16'h7070;
    CCU2C add_18_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13242), .COUT(n13243), .S0(n18[1]), .S1(n18[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_3.INIT0 = 16'haaaa;
    defparam add_18_3.INIT1 = 16'haaaa;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    LUT4 i6231_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[0]), 
         .Z(n7973)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6231_2_lut_3_lut.init = 16'h7070;
    LUT4 i6226_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[5]), 
         .Z(n7963)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6226_2_lut_3_lut.init = 16'h7070;
    LUT4 i6143_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[15]), 
         .Z(n7943)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6143_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6225_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[6]), 
         .Z(n7961)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6225_2_lut_3_lut.init = 16'h7070;
    LUT4 i6211_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[14]), 
         .Z(n7945)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6211_2_lut_3_lut.init = 16'h7070;
    LUT4 i6224_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[7]), 
         .Z(n7959)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6224_2_lut_3_lut.init = 16'h7070;
    LUT4 i6218_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[13]), 
         .Z(n7947)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6218_2_lut_3_lut.init = 16'h7070;
    LUT4 i6223_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[8]), 
         .Z(n7957)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6223_2_lut_3_lut.init = 16'h7070;
    LUT4 i6219_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[12]), 
         .Z(n7949)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6219_2_lut_3_lut.init = 16'h7070;
    LUT4 i6220_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[11]), 
         .Z(n7951)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6220_2_lut_3_lut.init = 16'h7070;
    LUT4 i3982_3_lut_4_lut (.A(bit_flag), .B(work_en_N_1387), .C(uart_busy), 
         .D(work_en_N_1384), .Z(n7873)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i3982_3_lut_4_lut.init = 16'hff70;
    LUT4 i3053_3_lut (.A(\tx_data[5] ), .B(\tx_data[6] ), .C(n2412[7]), 
         .Z(n6937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i3053_3_lut.init = 16'hcaca;
    LUT4 i6222_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1387), .C(n2412[9]), 
         .Z(n7955)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(29[13:53])
    defparam i6222_2_lut_3_lut.init = 16'h7070;
    LUT4 i1_2_lut_adj_252 (.A(baud_cnt[11]), .B(baud_cnt[10]), .Z(n17325)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_252.init = 16'heeee;
    LUT4 i14083_4_lut_4_lut (.A(n2412[6]), .B(n17892), .C(n2412[5]), .D(n2412[7]), 
         .Z(n17901)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i14083_4_lut_4_lut.init = 16'hffae;
    LUT4 i13919_4_lut_4_lut_4_lut (.A(n2412[7]), .B(n3709[0]), .C(n6937), 
         .D(n2412[6]), .Z(n6938)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam i13919_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 mux_723_i1_3_lut (.A(\tx_data[0] ), .B(\tx_data[1] ), .C(n2412[2]), 
         .Z(n3709[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam mux_723_i1_3_lut.init = 16'hcaca;
    CCU2C add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13242), .S1(n18[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_1.INIT0 = 16'h0000;
    defparam add_18_1.INIT1 = 16'h555a;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    LUT4 i6927_2_lut (.A(n18[12]), .B(n9678), .Z(n41[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6927_2_lut.init = 16'h8888;
    LUT4 i6676_2_lut (.A(n18[11]), .B(n9678), .Z(n41[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6676_2_lut.init = 16'h8888;
    LUT4 i6675_2_lut (.A(n18[10]), .B(n9678), .Z(n41[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6675_2_lut.init = 16'h8888;
    LUT4 i6674_2_lut (.A(n18[9]), .B(n9678), .Z(n41[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6674_2_lut.init = 16'h8888;
    FD1P3DX bit_cnt_FSM_i1 (.D(n7973), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i1.GSR = "ENABLED";
    LUT4 i6673_2_lut (.A(n18[8]), .B(n9678), .Z(n41[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6673_2_lut.init = 16'h8888;
    LUT4 i6672_2_lut (.A(n18[7]), .B(n9678), .Z(n41[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6672_2_lut.init = 16'h8888;
    LUT4 i2721_3_lut (.A(n6598), .B(\tx_data[4] ), .C(n2412[5]), .Z(n6599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i2721_3_lut.init = 16'hcaca;
    LUT4 i11_4_lut (.A(n15_adj_1529), .B(n17652), .C(baud_cnt[6]), .D(baud_cnt[2]), 
         .Z(n24_adj_1521)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i11_4_lut.init = 16'h0002;
    FD1P3DX bit_cnt_FSM_i2 (.D(n7971), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i2.GSR = "ENABLED";
    LUT4 i6671_2_lut (.A(n18[6]), .B(n9678), .Z(n41[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6671_2_lut.init = 16'h8888;
    LUT4 i6670_2_lut (.A(n18[5]), .B(n9678), .Z(n41[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6670_2_lut.init = 16'h8888;
    LUT4 i6669_2_lut (.A(n18[4]), .B(n9678), .Z(n41[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6669_2_lut.init = 16'h8888;
    FD1P3DX bit_cnt_FSM_i3 (.D(n7969), .SP(sys_clk_c_enable_236), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n2412[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_253 (.A(n9678), .B(n18[3]), .Z(n41[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_253.init = 16'h8888;
    LUT4 i1_2_lut_adj_254 (.A(n9678), .B(n18[2]), .Z(n41[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_254.init = 16'h8888;
    LUT4 i1_2_lut_adj_255 (.A(n9678), .B(n18[1]), .Z(n41[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_255.init = 16'h8888;
    LUT4 i2720_3_lut (.A(\tx_data[2] ), .B(\tx_data[3] ), .C(n2412[4]), 
         .Z(n6598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i2720_3_lut.init = 16'hcaca;
    LUT4 i13528_3_lut (.A(baud_cnt[4]), .B(baud_cnt[5]), .C(baud_cnt[8]), 
         .Z(n17564)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13528_3_lut.init = 16'hfefe;
    LUT4 i13846_2_lut (.A(n2412[4]), .B(n2412[3]), .Z(n17892)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i13846_2_lut.init = 16'h1111;
    LUT4 i2_2_lut (.A(baud_cnt[7]), .B(baud_cnt[0]), .Z(n15_adj_1529)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i13616_4_lut (.A(baud_cnt[12]), .B(baud_cnt[1]), .C(baud_cnt[3]), 
         .D(baud_cnt[10]), .Z(n17652)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13616_4_lut.init = 16'hfffe;
    LUT4 i6433_4_lut (.A(n16793), .B(n2412[0]), .C(n6936), .D(n2412[8]), 
         .Z(tx_N_1393)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i6433_4_lut.init = 16'h2232;
    LUT4 i1_4_lut_adj_256 (.A(n16791), .B(n2412[12]), .C(work_en_N_1387), 
         .D(n2412[9]), .Z(n16793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i1_4_lut_adj_256.init = 16'hfffe;
    LUT4 i1_4_lut_adj_257 (.A(n2412[14]), .B(n2412[13]), .C(n2412[11]), 
         .D(n2412[15]), .Z(n16791)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_tx.v(68[9] 81[16])
    defparam i1_4_lut_adj_257.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module uart_send_ctrl
//

module uart_send_ctrl (csi_long_packet_count_sys, csi_payload_byte_count_sys, 
            csi_byte_clk_count_sys, csi_hs_sync_count_sys, sys_clk_c, 
            sys_rst_n_N_472, work_en_N_1384, n3570, \tx_data[0] , \tx_state[1] , 
            sensor_id, \field_index[3] , n19244, dphy_lp_state_d_s2, 
            reg_4a00_val, dphy_term_clk_en_s2, dphy_hs_d_en_s2, csi_last_dt_sys, 
            csi_last_wc_sys, uart_busy, VCC_net, \tx_data[6] , \tx_data[5] , 
            \tx_data[4] , \tx_data[3] , \tx_data[2] , \tx_data[1] , 
            n3701, n19263, n19249, GND_net, n19285) /* synthesis syn_module_defined=1 */ ;
    input [31:0]csi_long_packet_count_sys;
    input [31:0]csi_payload_byte_count_sys;
    input [31:0]csi_byte_clk_count_sys;
    input [31:0]csi_hs_sync_count_sys;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output work_en_N_1384;
    input n3570;
    output \tx_data[0] ;
    output \tx_state[1] ;
    input [15:0]sensor_id;
    output \field_index[3] ;
    input n19244;
    input [1:0]dphy_lp_state_d_s2;
    input [7:0]reg_4a00_val;
    input dphy_term_clk_en_s2;
    input dphy_hs_d_en_s2;
    input [5:0]csi_last_dt_sys;
    input [15:0]csi_last_wc_sys;
    input uart_busy;
    input VCC_net;
    output \tx_data[6] ;
    output \tx_data[5] ;
    output \tx_data[4] ;
    output \tx_data[3] ;
    output \tx_data[2] ;
    output \tx_data[1] ;
    output n3701;
    output n19263;
    output n19249;
    input GND_net;
    output n19285;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire [3:0]field_index;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(60[12:23])
    
    wire n20148, n20149, sec_tick, sec_cnt_25__N_1242, tx_flag_N_1347;
    wire [7:0]n5226;
    wire [27:0]n5197;
    wire [27:0]n5255;
    wire [7:0]tx_data_7__N_1331;
    wire [1:0]tx_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(58[12:20])
    
    wire sys_clk_c_enable_145;
    wire [1:0]tx_state_1__N_1163;
    wire [2:0]tx_phase;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    
    wire sys_clk_c_enable_144;
    wire [2:0]tx_phase_2__N_1165;
    
    wire sys_clk_c_enable_143;
    wire [3:0]n418;
    wire [7:0]field_label;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(61[12:23])
    
    wire sys_clk_c_enable_140, n18397;
    wire [3:0]digits_left;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(63[12:23])
    
    wire sys_clk_c_enable_135;
    wire [3:0]digits_left_3__N_1212;
    
    wire n19029, n19028;
    wire [15:0]n5284;
    wire [3:0]n3806;
    wire [7:0]n109;
    
    wire n20151, n20152;
    wire [31:0]field_value;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(62[12:23])
    
    wire sys_clk_c_enable_193;
    wire [31:0]n3647;
    
    wire n19032, n19031, n19238, n19323, n19322, n19326, n19325, 
        n19329, n19328, n19332, n18892, n19331, n19335, n19334, 
        n19338, n19337, n19262;
    wire [25:0]sec_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(24[12:19])
    
    wire n17662, n17596, n17682, n19341, n19340, n17856, n19344, 
        n17594, n17355, n17363, n17357, n17385, n17658, n19343, 
        n1, n19248, n19347, n19346;
    wire [15:0]n5303;
    
    wire n17235, n14, n19350, n19349, n19353;
    wire [3:0]n2;
    wire [3:0]digits_left_3__N_1313;
    
    wire n6, n19352, n15972, n19356, n19355, n18317, n19251, n20039, 
        n19816, n19265, n14688, n15968, n18457, n18456, n14406, 
        n14886, n19872, n17913, n17914;
    wire [31:0]n3332;
    
    wire n7, n14_adj_1515;
    wire [31:0]n3299;
    
    wire n6765, n18897;
    wire [25:0]n137;
    
    wire n19217, n19213, n19212, n19211, n19210, n19209, n19208, 
        n19207, n19206, n19214, n19215, n19216, n15742, n15743, 
        n15745, n17704, n17765, n6763, n17787, n17768, n17771, 
        n17774, n17777, n17780, n18896, n18894, n17783, n19813, 
        n18895, n19812, n17786, n17789, n18893, n17792, n19313, 
        n6761, n17784, n18316, n18891, n18889, n18890, n6767, 
        n19815, n17697, n18888, n6759, n17781, n19258, n17700, 
        n6757, n17778, n17703, n19871, n19868, n6755, n17706, 
        n19869, n19348, n19336, n19333, n19330, n17775, n6753, 
        n17772, n6751, n17708, n17709, n17710, n17769, n6607, 
        n17766, n15744, n19327, n19324, n19351, n17660, n19354, 
        n20036, n17720, n17721, n17722, n19345, n17723, n17724, 
        n17725, n19342, n17726, n17727, n17728, n19339, n19357, 
        n13389;
    wire [25:0]n109_adj_1520;
    
    wire n13388, n13387, n20035, n13386, n13385, n13384, n13383, 
        n20038, n13382, n13381, n10, n14877, n17347, n13380, n13379, 
        n13378, n7199, n13377, n20150, n6563, n17799, n20037, 
        n17293, n17707, n17702, n17705, n16170, n17767, n17770, 
        n17773, n17776, n19870, n17802, n17779, n17788;
    wire [31:0]n3604;
    
    wire n17785, n17782, n19814;
    
    LUT4 field_index_1__bdd_3_lut_15166 (.A(csi_long_packet_count_sys[26]), 
         .B(csi_payload_byte_count_sys[26]), .C(field_index[0]), .Z(n20148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15166.init = 16'hcaca;
    LUT4 field_index_1__bdd_3_lut (.A(csi_byte_clk_count_sys[26]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[26]), .Z(n20149)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut.init = 16'he2e2;
    FD1S3DX sec_tick_79 (.D(sec_cnt_25__N_1242), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam sec_tick_79.GSR = "ENABLED";
    FD1S3DX tx_flag_80 (.D(tx_flag_N_1347), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1384)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_flag_80.GSR = "ENABLED";
    PFUMX mux_1612_i25 (.BLUT(n5226[4]), .ALUT(n5197[24]), .C0(n3570), 
          .Z(n5255[24]));
    FD1P3DX tx_data_i0 (.D(tx_data_7__N_1331[0]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i0.GSR = "ENABLED";
    FD1P3DX tx_state_i0 (.D(tx_state_1__N_1163[0]), .SP(sys_clk_c_enable_145), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_state_i0.GSR = "ENABLED";
    FD1P3DX tx_phase_i0 (.D(tx_phase_2__N_1165[0]), .SP(sys_clk_c_enable_144), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i0.GSR = "ENABLED";
    FD1P3DX field_index_i0 (.D(n418[0]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i0.GSR = "ENABLED";
    FD1P3DX field_label_i0 (.D(n18397), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i0.GSR = "ENABLED";
    FD1P3DX digits_left_i0 (.D(digits_left_3__N_1212[0]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i0.GSR = "ENABLED";
    PFUMX i14575 (.BLUT(n19029), .ALUT(n19028), .C0(\tx_state[1] ), .Z(digits_left_3__N_1212[1]));
    LUT4 i6641_2_lut (.A(sensor_id[14]), .B(field_index[0]), .Z(n5284[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6641_2_lut.init = 16'h8888;
    PFUMX mux_1612_i24 (.BLUT(n5226[3]), .ALUT(n5197[23]), .C0(n3570), 
          .Z(n5255[23]));
    PFUMX mux_1612_i23 (.BLUT(n5226[2]), .ALUT(n5197[22]), .C0(n3570), 
          .Z(n5255[22]));
    LUT4 i14185_4_lut (.A(digits_left[2]), .B(digits_left[0]), .C(digits_left[1]), 
         .D(digits_left[3]), .Z(n3806[2])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i14185_4_lut.init = 16'h0004;
    LUT4 mux_15_Mux_2_i15_3_lut_4_lut_4_lut (.A(field_index[0]), .B(field_index[1]), 
         .C(field_index[2]), .D(\field_index[3] ), .Z(n109[2])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam mux_15_Mux_2_i15_3_lut_4_lut_4_lut.init = 16'hfe74;
    LUT4 n20151_bdd_3_lut (.A(n20151), .B(n5255[22]), .C(n19244), .Z(n20152)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20151_bdd_3_lut.init = 16'hcaca;
    FD1P3DX field_value_i0_i26 (.D(n20152), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i26.GSR = "ENABLED";
    LUT4 i6372_2_lut_3_lut_3_lut_4_lut (.A(field_index[0]), .B(field_index[1]), 
         .C(\field_index[3] ), .D(field_index[2]), .Z(n418[1])) /* synthesis lut_function=(!(A (B)+!A !(B ((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6372_2_lut_3_lut_3_lut_4_lut.init = 16'h6626;
    LUT4 mux_1591_i27_3_lut (.A(dphy_lp_state_d_s2[0]), .B(field_value[26]), 
         .C(\tx_state[1] ), .Z(n5197[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1591_i27_3_lut.init = 16'hcaca;
    FD1P3DX field_value_i0_i30 (.D(n3647[30]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i30.GSR = "ENABLED";
    LUT4 mux_1592_i7_3_lut (.A(reg_4a00_val[6]), .B(dphy_term_clk_en_s2), 
         .C(field_index[0]), .Z(n5226[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1592_i7_3_lut.init = 16'hcaca;
    PFUMX i14579 (.BLUT(n19032), .ALUT(n19031), .C0(\tx_state[1] ), .Z(digits_left_3__N_1212[2]));
    LUT4 mux_1591_i28_3_lut (.A(dphy_lp_state_d_s2[1]), .B(field_value[27]), 
         .C(\tx_state[1] ), .Z(n5197[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1591_i28_3_lut.init = 16'hcaca;
    LUT4 mux_1592_i8_3_lut (.A(reg_4a00_val[7]), .B(dphy_hs_d_en_s2), .C(field_index[0]), 
         .Z(n5226[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1592_i8_3_lut.init = 16'hcaca;
    LUT4 n10_bdd_3_lut_14574 (.A(n19238), .B(digits_left[1]), .C(digits_left[0]), 
         .Z(n19028)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;
    defparam n10_bdd_3_lut_14574.init = 16'hc6c6;
    LUT4 n19071_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[12]), .D(csi_payload_byte_count_sys[12]), 
         .Z(n19323)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19071_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19071_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[12]), .D(csi_byte_clk_count_sys[12]), 
         .Z(n19322)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19071_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19077_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[11]), .D(csi_payload_byte_count_sys[11]), 
         .Z(n19326)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19077_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19077_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[11]), .D(csi_byte_clk_count_sys[11]), 
         .Z(n19325)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19077_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19088_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[10]), .D(csi_payload_byte_count_sys[10]), 
         .Z(n19329)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19088_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19088_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[10]), .D(csi_byte_clk_count_sys[10]), 
         .Z(n19328)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19088_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19094_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[9]), .D(csi_payload_byte_count_sys[9]), 
         .Z(n19332)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19094_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    FD1P3DX field_value_i0_i25 (.D(n18892), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i25.GSR = "ENABLED";
    LUT4 n19094_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[9]), .D(csi_byte_clk_count_sys[9]), .Z(n19331)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19094_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19100_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[8]), .D(csi_payload_byte_count_sys[8]), 
         .Z(n19335)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19100_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19100_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[8]), .D(csi_byte_clk_count_sys[8]), .Z(n19334)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19100_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19105_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(csi_payload_byte_count_sys[4]), 
         .C(field_index[0]), .D(csi_long_packet_count_sys[4]), .Z(n19338)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19105_bdd_4_lut_4_lut_then_4_lut.init = 16'h4540;
    LUT4 n19105_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[4]), .D(csi_byte_clk_count_sys[4]), .Z(n19337)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19105_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i6188_4_lut_4_lut (.A(tx_phase[0]), .B(n19262), .C(tx_phase[1]), 
         .D(tx_phase[2]), .Z(tx_data_7__N_1331[5])) /* synthesis lut_function=(!(A (C+(D))+!A (B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i6188_4_lut_4_lut.init = 16'h001a;
    LUT4 i13646_4_lut (.A(sec_cnt[5]), .B(n17662), .C(n17596), .D(sec_cnt[14]), 
         .Z(n17682)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13646_4_lut.init = 16'h8000;
    LUT4 n19108_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(csi_payload_byte_count_sys[5]), 
         .C(field_index[0]), .D(csi_long_packet_count_sys[5]), .Z(n19341)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19108_bdd_4_lut_4_lut_then_4_lut.init = 16'h4540;
    LUT4 n19108_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[5]), .D(csi_byte_clk_count_sys[5]), .Z(n19340)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19108_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i14175_3_lut (.A(n19244), .B(field_index[2]), .C(field_index[1]), 
         .Z(n17856)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i14175_3_lut.init = 16'habab;
    LUT4 n19111_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(csi_payload_byte_count_sys[6]), 
         .C(field_index[0]), .D(csi_long_packet_count_sys[6]), .Z(n19344)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19111_bdd_4_lut_4_lut_then_4_lut.init = 16'h4540;
    LUT4 i1_4_lut (.A(n17594), .B(n17355), .C(n17363), .D(n17357), .Z(n17385)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfffd;
    LUT4 i13622_4_lut (.A(sec_cnt[6]), .B(sec_cnt[21]), .C(sec_cnt[4]), 
         .D(sec_cnt[2]), .Z(n17658)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13622_4_lut.init = 16'h8000;
    LUT4 n19111_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[6]), .D(csi_byte_clk_count_sys[6]), .Z(n19343)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19111_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i13626_4_lut (.A(sec_cnt[22]), .B(sec_cnt[20]), .C(sec_cnt[15]), 
         .D(sec_cnt[3]), .Z(n17662)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13626_4_lut.init = 16'h8000;
    LUT4 i13560_2_lut (.A(sec_cnt[13]), .B(sec_cnt[19]), .Z(n17596)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13560_2_lut.init = 16'h8888;
    LUT4 i13558_2_lut (.A(sec_cnt[17]), .B(sec_cnt[25]), .Z(n17594)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13558_2_lut.init = 16'h8888;
    LUT4 i6190_4_lut (.A(n1), .B(tx_phase[2]), .C(n19248), .D(tx_phase[1]), 
         .Z(tx_data_7__N_1331[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i6190_4_lut.init = 16'h0322;
    LUT4 i6486_2_lut (.A(field_label[4]), .B(tx_phase[0]), .Z(n1)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i6486_2_lut.init = 16'heeee;
    LUT4 n19115_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[7]), .D(csi_payload_byte_count_sys[7]), 
         .Z(n19347)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19115_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19115_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[7]), .D(csi_byte_clk_count_sys[7]), .Z(n19346)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19115_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 mux_1615_i15_3_lut (.A(csi_last_dt_sys[4]), .B(csi_last_wc_sys[14]), 
         .C(field_index[0]), .Z(n5303[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i15_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(sec_cnt[8]), .B(sec_cnt[16]), .Z(n17355)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_230 (.A(n17235), .B(field_label[3]), .C(n14), .D(tx_phase[1]), 
         .Z(tx_data_7__N_1331[3])) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_230.init = 16'hfaee;
    LUT4 n19060_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[13]), .D(csi_payload_byte_count_sys[13]), 
         .Z(n19350)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19060_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19060_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[13]), .D(csi_byte_clk_count_sys[13]), 
         .Z(n19349)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19060_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 n19054_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[14]), .D(csi_payload_byte_count_sys[14]), 
         .Z(n19353)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19054_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    PFUMX i3943 (.BLUT(n2[0]), .ALUT(digits_left_3__N_1313[0]), .C0(\tx_state[1] ), 
          .Z(digits_left_3__N_1212[0]));
    LUT4 i1_2_lut_adj_231 (.A(tx_phase[0]), .B(tx_phase[2]), .Z(n17235)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_adj_231.init = 16'heeee;
    LUT4 i1_3_lut (.A(tx_phase[0]), .B(tx_phase[2]), .C(n6), .Z(tx_data_7__N_1331[2])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i1_3_lut.init = 16'h3232;
    LUT4 n19054_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[14]), .D(csi_byte_clk_count_sys[14]), 
         .Z(n19352)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19054_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i8785_4_lut (.A(field_label[2]), .B(n15972), .C(tx_phase[1]), 
         .D(field_value[30]), .Z(n6)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(59[12:20])
    defparam i8785_4_lut.init = 16'hca0a;
    LUT4 n19048_bdd_4_lut_4_lut_then_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_long_packet_count_sys[15]), .D(csi_payload_byte_count_sys[15]), 
         .Z(n19356)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19048_bdd_4_lut_4_lut_then_4_lut.init = 16'h5410;
    LUT4 n19048_bdd_4_lut_4_lut_else_4_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[15]), .D(csi_byte_clk_count_sys[15]), 
         .Z(n19355)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n19048_bdd_4_lut_4_lut_else_4_lut.init = 16'h5140;
    LUT4 i1_3_lut_adj_232 (.A(field_value[29]), .B(field_value[31]), .C(field_value[28]), 
         .Z(n15972)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(62[12:23])
    defparam i1_3_lut_adj_232.init = 16'hfbfb;
    LUT4 i6199_3_lut (.A(n18317), .B(tx_phase[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1331[1])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i6199_3_lut.init = 16'hcece;
    LUT4 i2297_2_lut_4_lut (.A(n3806[2]), .B(n19251), .C(uart_busy), .D(digits_left[0]), 
         .Z(digits_left_3__N_1313[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;
    defparam i2297_2_lut_4_lut.init = 16'hfe01;
    LUT4 i6640_2_lut (.A(sensor_id[13]), .B(field_index[0]), .Z(n5284[13])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6640_2_lut.init = 16'h8888;
    FD1P3DX field_value_i0_i29 (.D(n20039), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i29.GSR = "ENABLED";
    FD1P3DX field_value_i0_i28 (.D(n19816), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i28.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_295_4_lut (.A(tx_phase[0]), .B(n19265), .C(uart_busy), 
         .D(n3806[2]), .Z(n19238)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(152[21:26])
    defparam i1_3_lut_rep_295_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_233 (.A(sec_cnt[10]), .B(sec_cnt[9]), .C(sec_cnt[24]), 
         .D(sec_cnt[11]), .Z(n17363)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_233.init = 16'hfffe;
    FD1P3DX digits_left_i3 (.D(digits_left_3__N_1212[3]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i3.GSR = "ENABLED";
    FD1P3DX digits_left_i2 (.D(digits_left_3__N_1212[2]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i2.GSR = "ENABLED";
    FD1P3DX digits_left_i1 (.D(digits_left_3__N_1212[1]), .SP(sys_clk_c_enable_135), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam digits_left_i1.GSR = "ENABLED";
    FD1P3DX field_label_i6 (.D(VCC_net), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i6.GSR = "ENABLED";
    FD1P3DX field_label_i4 (.D(n14688), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i4.GSR = "ENABLED";
    FD1P3DX field_label_i3 (.D(n15968), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i3.GSR = "ENABLED";
    FD1P3DX field_label_i2 (.D(n109[2]), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i2.GSR = "ENABLED";
    FD1P3DX field_label_i1 (.D(n109[1]), .SP(sys_clk_c_enable_140), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_label_i1.GSR = "ENABLED";
    FD1P3DX field_index_i3 (.D(n18457), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\field_index[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i3.GSR = "ENABLED";
    FD1P3DX field_index_i2 (.D(n18456), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i2.GSR = "ENABLED";
    FD1P3DX field_index_i1 (.D(n418[1]), .SP(sys_clk_c_enable_143), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_index_i1.GSR = "ENABLED";
    FD1S3DX tx_phase_i2 (.D(n14406), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(tx_phase[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i2.GSR = "ENABLED";
    FD1P3DX tx_phase_i1 (.D(tx_phase_2__N_1165[1]), .SP(sys_clk_c_enable_144), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_phase_i1.GSR = "ENABLED";
    FD1P3DX tx_state_i1 (.D(tx_state_1__N_1163[1]), .SP(sys_clk_c_enable_145), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\tx_state[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_state_i1.GSR = "ENABLED";
    FD1P3DX tx_data_i6 (.D(tx_data_7__N_1331[6]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_234 (.A(tx_phase[1]), .B(tx_state[0]), .Z(n14886)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_adj_234.init = 16'h8888;
    FD1P3DX tx_data_i5 (.D(tx_data_7__N_1331[5]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3DX field_value_i0_i27 (.D(n19872), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i27.GSR = "ENABLED";
    FD1P3DX tx_data_i4 (.D(tx_data_7__N_1331[4]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3DX tx_data_i3 (.D(tx_data_7__N_1331[3]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3DX tx_data_i2 (.D(tx_data_7__N_1331[2]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3DX tx_data_i1 (.D(tx_data_7__N_1331[1]), .SP(tx_flag_N_1347), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_235 (.A(sec_cnt[7]), .B(sec_cnt[18]), .Z(n17357)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_235.init = 16'heeee;
    PFUMX i28 (.BLUT(n17913), .ALUT(n17914), .C0(tx_state[0]), .Z(sys_clk_c_enable_193));
    LUT4 mux_668_i32_3_lut (.A(csi_long_packet_count_sys[31]), .B(csi_payload_byte_count_sys[31]), 
         .C(field_index[0]), .Z(n3332[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_668_i32_3_lut.init = 16'hcaca;
    LUT4 i6352_2_lut (.A(field_value[23]), .B(\tx_state[1] ), .Z(n5197[23])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6352_2_lut.init = 16'h8888;
    PFUMX mux_15_Mux_1_i15 (.BLUT(n7), .ALUT(n14_adj_1515), .C0(\field_index[3] ), 
          .Z(n109[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;
    LUT4 mux_667_i32_3_lut (.A(csi_byte_clk_count_sys[31]), .B(csi_hs_sync_count_sys[31]), 
         .C(field_index[0]), .Z(n3299[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_667_i32_3_lut.init = 16'hcaca;
    LUT4 i6790_4_lut (.A(csi_last_wc_sys[8]), .B(field_index[0]), .C(sensor_id[8]), 
         .D(field_index[1]), .Z(n6765)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6790_4_lut.init = 16'hc088;
    FD1P3DX field_value_i0_i24 (.D(n18897), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i24.GSR = "ENABLED";
    FD1P3DX field_value_i0_i23 (.D(n3647[23]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i23.GSR = "ENABLED";
    FD1P3DX field_value_i0_i22 (.D(n3647[22]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i22.GSR = "ENABLED";
    FD1P3DX field_value_i0_i21 (.D(n3647[21]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i21.GSR = "ENABLED";
    FD1P3DX field_value_i0_i20 (.D(n3647[20]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i20.GSR = "ENABLED";
    FD1P3DX field_value_i0_i19 (.D(n3647[19]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i19.GSR = "ENABLED";
    FD1P3DX field_value_i0_i18 (.D(n3647[18]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i18.GSR = "ENABLED";
    LUT4 i6638_2_lut (.A(sensor_id[11]), .B(field_index[0]), .Z(n5284[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6638_2_lut.init = 16'h8888;
    FD1P3DX field_value_i0_i17 (.D(n3647[17]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i17.GSR = "ENABLED";
    FD1P3DX field_value_i0_i16 (.D(n3647[16]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i16.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i0 (.D(n137[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i0.GSR = "ENABLED";
    FD1P3DX field_value_i0_i15 (.D(n19217), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i15.GSR = "ENABLED";
    FD1P3DX field_value_i0_i14 (.D(n19213), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i14.GSR = "ENABLED";
    FD1P3DX field_value_i0_i13 (.D(n19212), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i13.GSR = "ENABLED";
    FD1P3DX field_value_i0_i12 (.D(n19211), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i12.GSR = "ENABLED";
    FD1P3DX field_value_i0_i11 (.D(n19210), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i11.GSR = "ENABLED";
    FD1P3DX field_value_i0_i10 (.D(n19209), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i10.GSR = "ENABLED";
    FD1P3DX field_value_i0_i9 (.D(n19208), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i9.GSR = "ENABLED";
    FD1P3DX field_value_i0_i8 (.D(n19207), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i8.GSR = "ENABLED";
    FD1P3DX field_value_i0_i7 (.D(n19206), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i7.GSR = "ENABLED";
    FD1P3DX field_value_i0_i6 (.D(n19214), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i6.GSR = "ENABLED";
    FD1P3DX field_value_i0_i5 (.D(n19215), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i5.GSR = "ENABLED";
    FD1P3DX field_value_i0_i4 (.D(n19216), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i4.GSR = "ENABLED";
    FD1P3DX field_value_i0_i3 (.D(n15742), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i3.GSR = "ENABLED";
    FD1P3DX field_value_i0_i2 (.D(n15743), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i2.GSR = "ENABLED";
    FD1P3DX field_value_i0_i1 (.D(n15745), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i1.GSR = "ENABLED";
    LUT4 mux_695_i31_3_lut (.A(n17704), .B(n5255[26]), .C(n19244), .Z(n3647[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_695_i31_3_lut.init = 16'hcaca;
    LUT4 i13719_3_lut (.A(csi_byte_clk_count_sys[16]), .B(csi_hs_sync_count_sys[16]), 
         .C(field_index[0]), .Z(n17765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13719_3_lut.init = 16'hcaca;
    LUT4 mux_1615_i12_3_lut (.A(csi_last_dt_sys[1]), .B(csi_last_wc_sys[11]), 
         .C(field_index[0]), .Z(n5303[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i12_3_lut.init = 16'hcaca;
    LUT4 i6637_2_lut (.A(sensor_id[10]), .B(field_index[0]), .Z(n5284[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6637_2_lut.init = 16'h8888;
    LUT4 i6789_4_lut (.A(csi_last_wc_sys[7]), .B(field_index[0]), .C(sensor_id[7]), 
         .D(field_index[1]), .Z(n6763)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6789_4_lut.init = 16'hc088;
    LUT4 i13741_3_lut (.A(csi_long_packet_count_sys[23]), .B(csi_payload_byte_count_sys[23]), 
         .C(field_index[0]), .Z(n17787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13741_3_lut.init = 16'hcaca;
    LUT4 i13722_3_lut (.A(csi_byte_clk_count_sys[17]), .B(csi_hs_sync_count_sys[17]), 
         .C(field_index[0]), .Z(n17768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13722_3_lut.init = 16'hcaca;
    LUT4 i13725_3_lut (.A(csi_byte_clk_count_sys[18]), .B(csi_hs_sync_count_sys[18]), 
         .C(field_index[0]), .Z(n17771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13725_3_lut.init = 16'hcaca;
    LUT4 i13728_3_lut (.A(csi_byte_clk_count_sys[19]), .B(csi_hs_sync_count_sys[19]), 
         .C(field_index[0]), .Z(n17774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13728_3_lut.init = 16'hcaca;
    LUT4 i13731_3_lut (.A(csi_byte_clk_count_sys[20]), .B(csi_hs_sync_count_sys[20]), 
         .C(field_index[0]), .Z(n17777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13731_3_lut.init = 16'hcaca;
    LUT4 i13734_3_lut (.A(csi_byte_clk_count_sys[21]), .B(csi_hs_sync_count_sys[21]), 
         .C(field_index[0]), .Z(n17780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13734_3_lut.init = 16'hcaca;
    L6MUX21 i14484 (.D0(n18896), .D1(n18894), .SD(n17856), .Z(n18897));
    LUT4 i13737_3_lut (.A(csi_byte_clk_count_sys[22]), .B(csi_hs_sync_count_sys[22]), 
         .C(field_index[0]), .Z(n17783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13737_3_lut.init = 16'hcaca;
    LUT4 field_index_1__bdd_3_lut_15013 (.A(csi_byte_clk_count_sys[28]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[28]), .Z(n19813)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15013.init = 16'he2e2;
    PFUMX i14482 (.BLUT(n18895), .ALUT(n6765), .C0(field_index[2]), .Z(n18896));
    LUT4 field_index_1__bdd_3_lut_14982 (.A(csi_long_packet_count_sys[28]), 
         .B(csi_payload_byte_count_sys[28]), .C(field_index[0]), .Z(n19812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_14982.init = 16'hcaca;
    LUT4 i13740_3_lut (.A(csi_byte_clk_count_sys[23]), .B(csi_hs_sync_count_sys[23]), 
         .C(field_index[0]), .Z(n17786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13740_3_lut.init = 16'hcaca;
    LUT4 i13743_3_lut (.A(csi_byte_clk_count_sys[24]), .B(csi_hs_sync_count_sys[24]), 
         .C(field_index[0]), .Z(n17789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13743_3_lut.init = 16'hcaca;
    PFUMX i14480 (.BLUT(n17789), .ALUT(n18893), .C0(n19244), .Z(n18894));
    LUT4 i13746_3_lut (.A(csi_byte_clk_count_sys[25]), .B(csi_hs_sync_count_sys[25]), 
         .C(field_index[0]), .Z(n17792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13746_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n19313), .B(digits_left[3]), .C(n19238), .D(digits_left[2]), 
         .Z(digits_left_3__N_1313[3])) /* synthesis lut_function=(A (B)+!A (B ((D)+!C)+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(163[17] 186[20])
    defparam i2_4_lut.init = 16'hcc9c;
    LUT4 i6788_4_lut (.A(csi_last_wc_sys[6]), .B(field_index[0]), .C(sensor_id[6]), 
         .D(field_index[1]), .Z(n6761)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6788_4_lut.init = 16'hc088;
    LUT4 i6846_2_lut (.A(field_index[2]), .B(\field_index[3] ), .Z(n2[3])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6846_2_lut.init = 16'h1111;
    LUT4 i13738_3_lut (.A(csi_long_packet_count_sys[22]), .B(csi_payload_byte_count_sys[22]), 
         .C(field_index[0]), .Z(n17784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13738_3_lut.init = 16'hcaca;
    LUT4 field_label_1__bdd_3_lut_14267 (.A(field_label[1]), .B(n18316), 
         .C(tx_phase[1]), .Z(n18317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_label_1__bdd_3_lut_14267.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(uart_busy), .B(tx_state[0]), .C(tx_phase[2]), 
         .D(\tx_state[1] ), .Z(sys_clk_c_enable_143)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h4000;
    L6MUX21 i14478 (.D0(n18891), .D1(n18889), .SD(n17856), .Z(n18892));
    PFUMX i14476 (.BLUT(n18890), .ALUT(n6767), .C0(field_index[2]), .Z(n18891));
    LUT4 n19815_bdd_3_lut (.A(n19815), .B(n5255[24]), .C(n19244), .Z(n19816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19815_bdd_3_lut.init = 16'hcaca;
    PFUMX i13651 (.BLUT(n5303[12]), .ALUT(n5284[12]), .C0(field_index[1]), 
          .Z(n17697));
    PFUMX i14474 (.BLUT(n17792), .ALUT(n18888), .C0(n19244), .Z(n18889));
    LUT4 i6787_4_lut (.A(csi_last_wc_sys[5]), .B(field_index[0]), .C(sensor_id[5]), 
         .D(field_index[1]), .Z(n6759)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6787_4_lut.init = 16'hc088;
    LUT4 i13735_3_lut (.A(csi_long_packet_count_sys[21]), .B(csi_payload_byte_count_sys[21]), 
         .C(field_index[0]), .Z(n17781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13735_3_lut.init = 16'hcaca;
    LUT4 mux_1615_i14_3_lut (.A(csi_last_dt_sys[3]), .B(csi_last_wc_sys[13]), 
         .C(field_index[0]), .Z(n5303[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i14_3_lut.init = 16'hcaca;
    LUT4 i2991_2_lut_rep_315 (.A(\tx_state[1] ), .B(n3701), .Z(n19258)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i2991_2_lut_rep_315.init = 16'h8888;
    PFUMX i13654 (.BLUT(n5303[13]), .ALUT(n5284[13]), .C0(field_index[1]), 
          .Z(n17700));
    LUT4 i6786_4_lut (.A(csi_last_wc_sys[4]), .B(field_index[0]), .C(sensor_id[4]), 
         .D(field_index[1]), .Z(n6757)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6786_4_lut.init = 16'hc088;
    LUT4 i13732_3_lut (.A(csi_long_packet_count_sys[20]), .B(csi_payload_byte_count_sys[20]), 
         .C(field_index[0]), .Z(n17778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13732_3_lut.init = 16'hcaca;
    PFUMX i13657 (.BLUT(n5303[14]), .ALUT(n5284[14]), .C0(field_index[1]), 
          .Z(n17703));
    LUT4 n19871_bdd_3_lut (.A(n19871), .B(n5255[23]), .C(n19244), .Z(n19872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n19871_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_1615_i11_3_lut (.A(csi_last_dt_sys[0]), .B(csi_last_wc_sys[10]), 
         .C(field_index[0]), .Z(n5303[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i11_3_lut.init = 16'hcaca;
    LUT4 field_index_1__bdd_3_lut_15014 (.A(csi_long_packet_count_sys[27]), 
         .B(csi_payload_byte_count_sys[27]), .C(field_index[0]), .Z(n19868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15014.init = 16'hcaca;
    LUT4 i6785_4_lut (.A(csi_last_wc_sys[3]), .B(field_index[0]), .C(sensor_id[3]), 
         .D(field_index[1]), .Z(n6755)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6785_4_lut.init = 16'hc088;
    PFUMX i13660 (.BLUT(n5303[15]), .ALUT(n5284[15]), .C0(field_index[1]), 
          .Z(n17706));
    LUT4 field_index_1__bdd_3_lut_15037 (.A(csi_byte_clk_count_sys[27]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[27]), .Z(n19869)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15037.init = 16'he2e2;
    LUT4 i6771_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[12]), 
         .Z(n5255[12])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6771_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_319_3_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(field_value[31]), .Z(n19262)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_rep_319_3_lut.init = 16'he0e0;
    LUT4 n6875_bdd_4_lut_14740 (.A(n19258), .B(field_value[3]), .C(n19348), 
         .D(n19244), .Z(n19206)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14740.init = 16'h88f0;
    LUT4 i1_2_lut_rep_305_3_lut_4_lut (.A(field_value[29]), .B(field_value[30]), 
         .C(tx_phase[0]), .D(field_value[31]), .Z(n19248)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_305_3_lut_4_lut.init = 16'hfef0;
    LUT4 n6875_bdd_4_lut_14741 (.A(n19258), .B(field_value[4]), .C(n19336), 
         .D(n19244), .Z(n19207)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14741.init = 16'h88f0;
    LUT4 n6875_bdd_4_lut_14742 (.A(n19258), .B(field_value[5]), .C(n19333), 
         .D(n19244), .Z(n19208)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14742.init = 16'h88f0;
    LUT4 n6875_bdd_4_lut_14743 (.A(n19258), .B(field_value[6]), .C(n19330), 
         .D(n19244), .Z(n19209)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14743.init = 16'h88f0;
    LUT4 i13729_3_lut (.A(csi_long_packet_count_sys[19]), .B(csi_payload_byte_count_sys[19]), 
         .C(field_index[0]), .Z(n17775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13729_3_lut.init = 16'hcaca;
    LUT4 i6784_4_lut (.A(csi_last_wc_sys[2]), .B(field_index[0]), .C(sensor_id[2]), 
         .D(field_index[1]), .Z(n6753)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6784_4_lut.init = 16'hc088;
    LUT4 i13726_3_lut (.A(csi_long_packet_count_sys[18]), .B(csi_payload_byte_count_sys[18]), 
         .C(field_index[0]), .Z(n17772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13726_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut (.A(field_value[29]), .B(field_value[30]), .C(field_value[31]), 
         .Z(n14)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i6783_4_lut (.A(csi_last_wc_sys[1]), .B(field_index[0]), .C(sensor_id[1]), 
         .D(field_index[1]), .Z(n6751)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6783_4_lut.init = 16'hc088;
    PFUMX i13664 (.BLUT(n17708), .ALUT(n17709), .C0(field_index[1]), .Z(n17710));
    LUT4 i13723_3_lut (.A(csi_long_packet_count_sys[17]), .B(csi_payload_byte_count_sys[17]), 
         .C(field_index[0]), .Z(n17769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13723_3_lut.init = 16'hcaca;
    LUT4 i6727_4_lut (.A(csi_last_wc_sys[0]), .B(field_index[0]), .C(sensor_id[0]), 
         .D(field_index[1]), .Z(n6607)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6727_4_lut.init = 16'hc088;
    LUT4 i13720_3_lut (.A(csi_long_packet_count_sys[16]), .B(csi_payload_byte_count_sys[16]), 
         .C(field_index[0]), .Z(n17766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13720_3_lut.init = 16'hcaca;
    LUT4 i6772_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[13]), 
         .Z(n5255[13])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6772_2_lut_3_lut.init = 16'h8080;
    LUT4 i6775_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[14]), 
         .Z(n5255[14])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6775_2_lut_3_lut.init = 16'h8080;
    FD1P3DX field_value_i0_i0 (.D(n15744), .SP(sys_clk_c_enable_193), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_value[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i0.GSR = "ENABLED";
    LUT4 n6875_bdd_4_lut_14744 (.A(n19258), .B(field_value[7]), .C(n19327), 
         .D(n19244), .Z(n19210)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14744.init = 16'h88f0;
    LUT4 n6875_bdd_4_lut_14745 (.A(n19258), .B(field_value[8]), .C(n19324), 
         .D(n19244), .Z(n19211)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14745.init = 16'h88f0;
    LUT4 n6875_bdd_4_lut_14746 (.A(n19258), .B(field_value[9]), .C(n19351), 
         .D(n19244), .Z(n19212)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14746.init = 16'h88f0;
    LUT4 i14164_4_lut (.A(n17660), .B(n17682), .C(n17385), .D(n17658), 
         .Z(sec_cnt_25__N_1242)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[18:36])
    defparam i14164_4_lut.init = 16'h0800;
    LUT4 n6875_bdd_4_lut_14747 (.A(n19258), .B(field_value[10]), .C(n19354), 
         .D(n19244), .Z(n19213)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut_14747.init = 16'h88f0;
    LUT4 i6776_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[15]), 
         .Z(n5255[15])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6776_2_lut_3_lut.init = 16'h8080;
    LUT4 i6777_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[16]), 
         .Z(n5255[16])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6777_2_lut_3_lut.init = 16'h8080;
    LUT4 field_index_1__bdd_3_lut_15165 (.A(csi_byte_clk_count_sys[29]), .B(field_index[0]), 
         .C(csi_hs_sync_count_sys[29]), .Z(n20036)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15165.init = 16'he2e2;
    PFUMX i13676 (.BLUT(n17720), .ALUT(n17721), .C0(field_index[1]), .Z(n17722));
    LUT4 field_value_2__bdd_4_lut (.A(field_value[2]), .B(n19258), .C(n19345), 
         .D(n19244), .Z(n19214)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam field_value_2__bdd_4_lut.init = 16'h88f0;
    PFUMX i13679 (.BLUT(n17723), .ALUT(n17724), .C0(field_index[1]), .Z(n17725));
    LUT4 i6778_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[17]), 
         .Z(n5255[17])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6778_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_320_3_lut (.A(sec_tick), .B(uart_busy), .C(tx_state[0]), 
         .Z(n19263)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam i1_2_lut_rep_320_3_lut.init = 16'h0202;
    LUT4 field_value_1__bdd_4_lut (.A(field_value[1]), .B(n19258), .C(n19342), 
         .D(n19244), .Z(n19215)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam field_value_1__bdd_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_rep_306_3_lut_4_lut (.A(sec_tick), .B(uart_busy), .C(\field_index[3] ), 
         .D(tx_state[0]), .Z(n19249)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam i1_2_lut_rep_306_3_lut_4_lut.init = 16'h0020;
    LUT4 i13624_4_lut (.A(sec_cnt[12]), .B(sec_cnt[0]), .C(sec_cnt[1]), 
         .D(sec_cnt[23]), .Z(n17660)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13624_4_lut.init = 16'h8000;
    PFUMX i13682 (.BLUT(n17726), .ALUT(n17727), .C0(field_index[1]), .Z(n17728));
    LUT4 i6781_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[18]), 
         .Z(n5255[18])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6781_2_lut_3_lut.init = 16'h8080;
    LUT4 i6782_2_lut_3_lut (.A(\tx_state[1] ), .B(n3701), .C(field_value[19]), 
         .Z(n5255[19])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6782_2_lut_3_lut.init = 16'h8080;
    LUT4 i6981_3_lut_3_lut_4_lut (.A(sec_tick), .B(uart_busy), .C(\tx_state[1] ), 
         .D(tx_state[0]), .Z(sys_clk_c_enable_135)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (C (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam i6981_3_lut_3_lut_4_lut.init = 16'hf002;
    LUT4 field_value_0__bdd_4_lut (.A(field_value[0]), .B(n19258), .C(n19339), 
         .D(n19244), .Z(n19216)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam field_value_0__bdd_4_lut.init = 16'h88f0;
    LUT4 n6875_bdd_4_lut (.A(n19258), .B(field_value[11]), .C(n19357), 
         .D(n19244), .Z(n19217)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n6875_bdd_4_lut.init = 16'h88f0;
    FD1P3DX field_value_i0_i31 (.D(n3647[31]), .SP(sys_clk_c_enable_193), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam field_value_i0_i31.GSR = "ENABLED";
    LUT4 i13681_3_lut (.A(csi_long_packet_count_sys[3]), .B(csi_payload_byte_count_sys[3]), 
         .C(field_index[0]), .Z(n17727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13681_3_lut.init = 16'hcaca;
    LUT4 i13680_3_lut (.A(csi_byte_clk_count_sys[3]), .B(csi_hs_sync_count_sys[3]), 
         .C(field_index[0]), .Z(n17726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13680_3_lut.init = 16'hcaca;
    LUT4 i6512_2_lut (.A(tx_state[0]), .B(\tx_state[1] ), .Z(tx_flag_N_1347)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6512_2_lut.init = 16'h2222;
    LUT4 i13678_3_lut (.A(csi_long_packet_count_sys[2]), .B(csi_payload_byte_count_sys[2]), 
         .C(field_index[0]), .Z(n17724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13678_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_2085_add_4_27 (.A0(sec_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13389), .S0(n109_adj_1520[25]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_27.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_27.INIT1 = 16'h0000;
    defparam sec_cnt_2085_add_4_27.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_27.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_25 (.A0(sec_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13388), .COUT(n13389), .S0(n109_adj_1520[23]), 
          .S1(n109_adj_1520[24]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_25.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_25.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_25.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_25.INJECT1_1 = "NO";
    LUT4 i13677_3_lut (.A(csi_byte_clk_count_sys[2]), .B(csi_hs_sync_count_sys[2]), 
         .C(field_index[0]), .Z(n17723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13677_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_2085_add_4_23 (.A0(sec_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13387), .COUT(n13388), .S0(n109_adj_1520[21]), 
          .S1(n109_adj_1520[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_23.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_23.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_23.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_23.INJECT1_1 = "NO";
    LUT4 i13675_3_lut (.A(csi_long_packet_count_sys[1]), .B(csi_payload_byte_count_sys[1]), 
         .C(field_index[0]), .Z(n17721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13675_3_lut.init = 16'hcaca;
    LUT4 i13674_3_lut (.A(csi_byte_clk_count_sys[1]), .B(csi_hs_sync_count_sys[1]), 
         .C(field_index[0]), .Z(n17720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13674_3_lut.init = 16'hcaca;
    FD1S3DX sec_cnt_2085__i1 (.D(n137[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i1.GSR = "ENABLED";
    LUT4 field_index_1__bdd_3_lut_15095 (.A(csi_long_packet_count_sys[29]), 
         .B(csi_payload_byte_count_sys[29]), .C(field_index[0]), .Z(n20035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam field_index_1__bdd_3_lut_15095.init = 16'hcaca;
    LUT4 i13926_1_lut_2_lut_3_lut (.A(sec_tick), .B(uart_busy), .C(\tx_state[1] ), 
         .Z(n17913)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam i13926_1_lut_2_lut_3_lut.init = 16'h0202;
    FD1S3DX sec_cnt_2085__i2 (.D(n137[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i2.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i3 (.D(n137[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i3.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i4 (.D(n137[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i4.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i5 (.D(n137[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i5.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i6 (.D(n137[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i6.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i7 (.D(n137[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i7.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i8 (.D(n137[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i8.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i9 (.D(n137[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i9.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i10 (.D(n137[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i10.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i11 (.D(n137[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i11.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i12 (.D(n137[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i12.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i13 (.D(n137[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i13.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i14 (.D(n137[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i14.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i15 (.D(n137[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i15.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i16 (.D(n137[16]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i16.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i17 (.D(n137[17]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i17.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i18 (.D(n137[18]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i18.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i19 (.D(n137[19]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i19.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i20 (.D(n137[20]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i20.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i21 (.D(n137[21]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i21.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i22 (.D(n137[22]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i22.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i23 (.D(n137[23]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i23.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i24 (.D(n137[24]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i24.GSR = "ENABLED";
    FD1S3DX sec_cnt_2085__i25 (.D(n137[25]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085__i25.GSR = "ENABLED";
    CCU2C sec_cnt_2085_add_4_21 (.A0(sec_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13386), .COUT(n13387), .S0(n109_adj_1520[19]), 
          .S1(n109_adj_1520[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_21.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_21.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_21.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_21.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_19 (.A0(sec_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13385), .COUT(n13386), .S0(n109_adj_1520[17]), 
          .S1(n109_adj_1520[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_19.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_19.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_19.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_19.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_17 (.A0(sec_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13384), .COUT(n13385), .S0(n109_adj_1520[15]), 
          .S1(n109_adj_1520[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_17.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_17.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_17.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_17.INJECT1_1 = "NO";
    LUT4 tx_state_1__bdd_4_lut (.A(\tx_state[1] ), .B(tx_state[0]), .C(sec_tick), 
         .D(uart_busy), .Z(sys_clk_c_enable_145)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B+!((D)+!C)))) */ ;
    defparam tx_state_1__bdd_4_lut.init = 16'h66dc;
    CCU2C sec_cnt_2085_add_4_15 (.A0(sec_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13383), .COUT(n13384), .S0(n109_adj_1520[13]), 
          .S1(n109_adj_1520[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_15.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_15.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_15.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_15.INJECT1_1 = "NO";
    LUT4 n20038_bdd_3_lut (.A(n20038), .B(n5255[25]), .C(n19244), .Z(n20039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n20038_bdd_3_lut.init = 16'hcaca;
    LUT4 i13663_3_lut (.A(csi_long_packet_count_sys[0]), .B(csi_payload_byte_count_sys[0]), 
         .C(field_index[0]), .Z(n17709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13663_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut (.A(sec_tick), .B(uart_busy), .C(\tx_state[1] ), 
         .D(tx_state[0]), .Z(sys_clk_c_enable_140)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(31[14] 37[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i13662_3_lut (.A(csi_byte_clk_count_sys[0]), .B(csi_hs_sync_count_sys[0]), 
         .C(field_index[0]), .Z(n17708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13662_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_2085_add_4_13 (.A0(sec_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13382), .COUT(n13383), .S0(n109_adj_1520[11]), 
          .S1(n109_adj_1520[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_13.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_13.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_13.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_13.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_11 (.A0(sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13381), .COUT(n13382), .S0(n109_adj_1520[9]), 
          .S1(n109_adj_1520[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_11.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_11.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_11.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_236 (.A(n14886), .B(n10), .C(n14877), .D(tx_phase[0]), 
         .Z(n14406)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_236.init = 16'heccc;
    LUT4 i1_4_lut_adj_237 (.A(n3806[2]), .B(n17235), .C(uart_busy), .D(n14886), 
         .Z(n3701)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_237.init = 16'h0100;
    LUT4 field_index_3__bdd_4_lut_14276 (.A(\field_index[3] ), .B(field_index[0]), 
         .C(field_index[2]), .D(field_index[1]), .Z(n18397)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)+!B !(C+(D))))) */ ;
    defparam field_index_3__bdd_4_lut_14276.init = 16'h4049;
    LUT4 i1_4_lut_adj_238 (.A(tx_phase[2]), .B(n17347), .C(sec_tick), 
         .D(\tx_state[1] ), .Z(n10)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_4_lut_adj_238.init = 16'haa8a;
    LUT4 n10_bdd_3_lut_4_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .D(\field_index[3] ), .Z(n19032)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n10_bdd_3_lut_4_lut.init = 16'h00e0;
    LUT4 n10_bdd_3_lut_14577_4_lut (.A(field_index[0]), .B(field_index[1]), 
         .C(\field_index[3] ), .D(field_index[2]), .Z(n19029)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n10_bdd_3_lut_14577_4_lut.init = 16'h0110;
    LUT4 i1_2_lut_adj_239 (.A(uart_busy), .B(tx_state[0]), .Z(n17347)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_239.init = 16'heeee;
    LUT4 i9637_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n7)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i9637_2_lut_3_lut.init = 16'he1e1;
    CCU2C sec_cnt_2085_add_4_9 (.A0(sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13380), .COUT(n13381), .S0(n109_adj_1520[7]), 
          .S1(n109_adj_1520[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_9.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_9.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_9.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_9.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_7 (.A0(sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13379), .COUT(n13380), .S0(n109_adj_1520[5]), 
          .S1(n109_adj_1520[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_7.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_7.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_7.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_7.INJECT1_1 = "NO";
    LUT4 mux_1615_i16_3_lut (.A(csi_last_dt_sys[5]), .B(csi_last_wc_sys[15]), 
         .C(field_index[0]), .Z(n5303[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i16_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(field_index[0]), .B(field_index[1]), .C(\field_index[3] ), 
         .D(field_index[2]), .Z(n15968)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i2_3_lut_4_lut.init = 16'h0006;
    LUT4 i1_4_lut_adj_240 (.A(field_label[6]), .B(n17235), .C(n19262), 
         .D(tx_phase[1]), .Z(tx_data_7__N_1331[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i1_4_lut_adj_240.init = 16'h3022;
    CCU2C sec_cnt_2085_add_4_5 (.A0(sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13378), .COUT(n13379), .S0(n109_adj_1520[3]), 
          .S1(n109_adj_1520[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_5.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_5.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_5.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_5.INJECT1_1 = "NO";
    LUT4 i3983_2_lut (.A(tx_state[0]), .B(\tx_state[1] ), .Z(tx_state_1__N_1163[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i3983_2_lut.init = 16'h6666;
    LUT4 i2707_2_lut_rep_342 (.A(field_index[1]), .B(field_index[2]), .Z(n19285)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i2707_2_lut_rep_342.init = 16'heeee;
    LUT4 i6642_2_lut (.A(sensor_id[15]), .B(field_index[0]), .Z(n5284[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6642_2_lut.init = 16'h8888;
    LUT4 i6639_2_lut (.A(sensor_id[12]), .B(field_index[0]), .Z(n5284[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6639_2_lut.init = 16'h8888;
    LUT4 i11_3_lut_4_lut (.A(field_index[1]), .B(field_index[2]), .C(field_index[0]), 
         .D(\field_index[3] ), .Z(n14688)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i11_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_4_lut_adj_241 (.A(tx_phase[0]), .B(n7199), .C(\tx_state[1] ), 
         .D(tx_phase[1]), .Z(tx_phase_2__N_1165[1])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_241.init = 16'h1020;
    LUT4 mux_1615_i13_3_lut (.A(csi_last_dt_sys[2]), .B(csi_last_wc_sys[12]), 
         .C(field_index[0]), .Z(n5303[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_1615_i13_3_lut.init = 16'hcaca;
    LUT4 i6420_2_lut (.A(n109_adj_1520[0]), .B(sec_cnt_25__N_1242), .Z(n137[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6420_2_lut.init = 16'h2222;
    LUT4 n6767_bdd_3_lut_14826 (.A(csi_long_packet_count_sys[25]), .B(csi_payload_byte_count_sys[25]), 
         .C(field_index[0]), .Z(n18890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6767_bdd_3_lut_14826.init = 16'hcaca;
    LUT4 i1_3_lut_adj_242 (.A(field_index[2]), .B(n19244), .C(n17728), 
         .Z(n15742)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_242.init = 16'h1010;
    CCU2C sec_cnt_2085_add_4_3 (.A0(sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13377), .COUT(n13378), .S0(n109_adj_1520[1]), 
          .S1(n109_adj_1520[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_3.INIT0 = 16'haaa0;
    defparam sec_cnt_2085_add_4_3.INIT1 = 16'haaa0;
    defparam sec_cnt_2085_add_4_3.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_3.INJECT1_1 = "NO";
    CCU2C sec_cnt_2085_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13377), .S1(n109_adj_1520[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam sec_cnt_2085_add_4_1.INIT0 = 16'h0000;
    defparam sec_cnt_2085_add_4_1.INIT1 = 16'h555f;
    defparam sec_cnt_2085_add_4_1.INJECT1_0 = "NO";
    defparam sec_cnt_2085_add_4_1.INJECT1_1 = "NO";
    LUT4 i6134_2_lut_3_lut_4_lut (.A(field_index[1]), .B(field_index[2]), 
         .C(\field_index[3] ), .D(field_index[0]), .Z(n2[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6134_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i6099_2_lut_4_lut_4_lut (.A(field_index[0]), .B(field_index[2]), 
         .C(field_index[1]), .D(\field_index[3] ), .Z(n418[0])) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6099_2_lut_4_lut_4_lut.init = 16'h4555;
    LUT4 i1_3_lut_adj_243 (.A(field_index[2]), .B(n19244), .C(n17725), 
         .Z(n15743)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_243.init = 16'h1010;
    LUT4 n17789_bdd_4_lut_4_lut (.A(field_index[0]), .B(reg_4a00_val[0]), 
         .C(n5197[20]), .D(n3570), .Z(n18893)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n17789_bdd_4_lut_4_lut.init = 16'hf044;
    LUT4 n17792_bdd_4_lut_4_lut (.A(field_index[0]), .B(reg_4a00_val[1]), 
         .C(n5197[21]), .D(n3570), .Z(n18888)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam n17792_bdd_4_lut_4_lut.init = 16'hf044;
    LUT4 i6723_2_lut_3_lut_3_lut (.A(field_index[0]), .B(field_index[2]), 
         .C(field_index[1]), .Z(n14_adj_1515)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6723_2_lut_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i6334_2_lut_2_lut (.A(field_index[0]), .B(reg_4a00_val[2]), .Z(n5226[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6334_2_lut_2_lut.init = 16'h4444;
    LUT4 i6333_2_lut_2_lut (.A(field_index[0]), .B(reg_4a00_val[3]), .Z(n5226[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6333_2_lut_2_lut.init = 16'h4444;
    LUT4 i6332_2_lut_2_lut (.A(field_index[0]), .B(reg_4a00_val[4]), .Z(n5226[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6332_2_lut_2_lut.init = 16'h4444;
    LUT4 i6331_2_lut_2_lut (.A(field_index[0]), .B(reg_4a00_val[5]), .Z(n5226[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(86[21] 142[28])
    defparam i6331_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_adj_244 (.A(field_index[2]), .B(n19244), .C(n17722), 
         .Z(n15745)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_244.init = 16'h1010;
    LUT4 i1_2_lut_rep_322_2_lut (.A(tx_phase[1]), .B(tx_phase[2]), .Z(n19265)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_322_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_308_3_lut_3_lut (.A(tx_phase[1]), .B(tx_phase[0]), 
         .C(tx_phase[2]), .Z(n19251)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_2_lut_rep_308_3_lut_3_lut.init = 16'hfdfd;
    LUT4 mux_667_i31_3_lut (.A(csi_byte_clk_count_sys[30]), .B(csi_hs_sync_count_sys[30]), 
         .C(field_index[0]), .Z(n3299[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_667_i31_3_lut.init = 16'hcaca;
    LUT4 n6765_bdd_3_lut_14820 (.A(csi_long_packet_count_sys[24]), .B(csi_payload_byte_count_sys[24]), 
         .C(field_index[0]), .Z(n18895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6765_bdd_3_lut_14820.init = 16'hcaca;
    PFUMX i15167 (.BLUT(n20149), .ALUT(n20148), .C0(field_index[1]), .Z(n20150));
    LUT4 i6164_3_lut (.A(n6563), .B(tx_phase[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1331[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i6164_3_lut.init = 16'h3232;
    L6MUX21 i15169 (.D0(n20150), .D1(n17799), .SD(field_index[2]), .Z(n20151));
    LUT4 i2686_4_lut (.A(field_label[0]), .B(field_value[28]), .C(tx_phase[1]), 
         .D(n19262), .Z(n6563)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(148[17] 154[24])
    defparam i2686_4_lut.init = 16'h3aca;
    LUT4 i13927_1_lut_4_lut_4_lut (.A(\tx_state[1] ), .B(uart_busy), .C(n19251), 
         .D(n3806[2]), .Z(n17914)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i13927_1_lut_4_lut_4_lut.init = 16'h0002;
    L6MUX21 i15098 (.D0(n20037), .D1(n17700), .SD(field_index[2]), .Z(n20038));
    PFUMX i15096 (.BLUT(n20036), .ALUT(n20035), .C0(field_index[1]), .Z(n20037));
    LUT4 i1_3_lut_adj_245 (.A(field_index[2]), .B(n19244), .C(n17710), 
         .Z(n15744)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_245.init = 16'h1010;
    LUT4 i6863_4_lut (.A(n17293), .B(tx_state[0]), .C(n14877), .D(tx_phase[2]), 
         .Z(tx_state_1__N_1163[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B ((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6863_4_lut.init = 16'hb3f3;
    LUT4 i6350_2_lut (.A(field_value[25]), .B(\tx_state[1] ), .Z(n5197[25])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6350_2_lut.init = 16'h8888;
    LUT4 mux_695_i32_3_lut (.A(n17707), .B(n5255[27]), .C(n19244), .Z(n3647[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_695_i32_3_lut.init = 16'hcaca;
    LUT4 i6600_2_lut (.A(n109_adj_1520[1]), .B(sec_cnt_25__N_1242), .Z(n137[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6600_2_lut.init = 16'h2222;
    L6MUX21 i13658 (.D0(n17702), .D1(n17703), .SD(field_index[2]), .Z(n17704));
    L6MUX21 i13661 (.D0(n17705), .D1(n17706), .SD(field_index[2]), .Z(n17707));
    LUT4 i6601_2_lut (.A(n109_adj_1520[2]), .B(sec_cnt_25__N_1242), .Z(n137[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6601_2_lut.init = 16'h2222;
    LUT4 i6602_2_lut (.A(n109_adj_1520[3]), .B(sec_cnt_25__N_1242), .Z(n137[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6602_2_lut.init = 16'h2222;
    LUT4 i6603_2_lut (.A(n109_adj_1520[4]), .B(sec_cnt_25__N_1242), .Z(n137[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6603_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_246 (.A(tx_phase[0]), .B(tx_phase[1]), .Z(n17293)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i1_2_lut_adj_246.init = 16'heeee;
    LUT4 i6604_2_lut (.A(n109_adj_1520[5]), .B(sec_cnt_25__N_1242), .Z(n137[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6604_2_lut.init = 16'h2222;
    LUT4 i6605_2_lut (.A(n109_adj_1520[6]), .B(sec_cnt_25__N_1242), .Z(n137[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6605_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_247 (.A(\tx_state[1] ), .B(uart_busy), .Z(n14877)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(81[14] 190[8])
    defparam i1_2_lut_adj_247.init = 16'h2222;
    LUT4 i30_4_lut (.A(n19263), .B(n7199), .C(\tx_state[1] ), .D(n16170), 
         .Z(sys_clk_c_enable_144)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i30_4_lut.init = 16'h3a0a;
    LUT4 i6606_2_lut (.A(n109_adj_1520[7]), .B(sec_cnt_25__N_1242), .Z(n137[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6606_2_lut.init = 16'h2222;
    LUT4 i6607_2_lut (.A(n109_adj_1520[8]), .B(sec_cnt_25__N_1242), .Z(n137[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6607_2_lut.init = 16'h2222;
    LUT4 i6608_2_lut (.A(n109_adj_1520[9]), .B(sec_cnt_25__N_1242), .Z(n137[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6608_2_lut.init = 16'h2222;
    PFUMX i13721 (.BLUT(n17766), .ALUT(n6607), .C0(field_index[2]), .Z(n17767));
    LUT4 i6609_2_lut (.A(n109_adj_1520[10]), .B(sec_cnt_25__N_1242), .Z(n137[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6609_2_lut.init = 16'h2222;
    PFUMX i13724 (.BLUT(n17769), .ALUT(n6751), .C0(field_index[2]), .Z(n17770));
    PFUMX i13727 (.BLUT(n17772), .ALUT(n6753), .C0(field_index[2]), .Z(n17773));
    PFUMX i13730 (.BLUT(n17775), .ALUT(n6755), .C0(field_index[2]), .Z(n17776));
    LUT4 i6610_2_lut (.A(n109_adj_1520[11]), .B(sec_cnt_25__N_1242), .Z(n137[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6610_2_lut.init = 16'h2222;
    LUT4 i6611_2_lut (.A(n109_adj_1520[12]), .B(sec_cnt_25__N_1242), .Z(n137[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6611_2_lut.init = 16'h2222;
    LUT4 i6612_2_lut (.A(n109_adj_1520[13]), .B(sec_cnt_25__N_1242), .Z(n137[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6612_2_lut.init = 16'h2222;
    LUT4 i6613_2_lut (.A(n109_adj_1520[14]), .B(sec_cnt_25__N_1242), .Z(n137[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6613_2_lut.init = 16'h2222;
    PFUMX i13753 (.BLUT(n5303[10]), .ALUT(n5284[10]), .C0(field_index[1]), 
          .Z(n17799));
    PFUMX i15015 (.BLUT(n19869), .ALUT(n19868), .C0(field_index[1]), .Z(n19870));
    L6MUX21 i15017 (.D0(n19870), .D1(n17802), .SD(field_index[2]), .Z(n19871));
    PFUMX i13733 (.BLUT(n17778), .ALUT(n6757), .C0(field_index[2]), .Z(n17779));
    L6MUX21 mux_695_i24 (.D0(n17788), .D1(n3604[23]), .SD(n17856), .Z(n3647[23]));
    LUT4 i6614_2_lut (.A(n109_adj_1520[15]), .B(sec_cnt_25__N_1242), .Z(n137[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6614_2_lut.init = 16'h2222;
    LUT4 i6615_2_lut (.A(n109_adj_1520[16]), .B(sec_cnt_25__N_1242), .Z(n137[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6615_2_lut.init = 16'h2222;
    L6MUX21 mux_695_i23 (.D0(n17785), .D1(n3604[22]), .SD(n17856), .Z(n3647[22]));
    L6MUX21 mux_695_i22 (.D0(n17782), .D1(n3604[21]), .SD(n17856), .Z(n3647[21]));
    L6MUX21 mux_695_i21 (.D0(n17779), .D1(n3604[20]), .SD(n17856), .Z(n3647[20]));
    L6MUX21 mux_695_i20 (.D0(n17776), .D1(n3604[19]), .SD(n17856), .Z(n3647[19]));
    L6MUX21 mux_695_i19 (.D0(n17773), .D1(n3604[18]), .SD(n17856), .Z(n3647[18]));
    LUT4 i6616_2_lut (.A(n109_adj_1520[17]), .B(sec_cnt_25__N_1242), .Z(n137[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6616_2_lut.init = 16'h2222;
    LUT4 i6617_2_lut (.A(n109_adj_1520[18]), .B(sec_cnt_25__N_1242), .Z(n137[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6617_2_lut.init = 16'h2222;
    L6MUX21 mux_695_i18 (.D0(n17770), .D1(n3604[17]), .SD(n17856), .Z(n3647[17]));
    L6MUX21 mux_695_i17 (.D0(n17767), .D1(n3604[16]), .SD(n17856), .Z(n3647[16]));
    LUT4 i6618_2_lut (.A(n109_adj_1520[19]), .B(sec_cnt_25__N_1242), .Z(n137[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6618_2_lut.init = 16'h2222;
    LUT4 i6619_2_lut (.A(n109_adj_1520[20]), .B(sec_cnt_25__N_1242), .Z(n137[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6619_2_lut.init = 16'h2222;
    PFUMX i13736 (.BLUT(n17781), .ALUT(n6759), .C0(field_index[2]), .Z(n17782));
    LUT4 i6620_2_lut (.A(n109_adj_1520[21]), .B(sec_cnt_25__N_1242), .Z(n137[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6620_2_lut.init = 16'h2222;
    PFUMX i13739 (.BLUT(n17784), .ALUT(n6761), .C0(field_index[2]), .Z(n17785));
    L6MUX21 i14985 (.D0(n19814), .D1(n17697), .SD(field_index[2]), .Z(n19815));
    LUT4 i6621_2_lut (.A(n109_adj_1520[22]), .B(sec_cnt_25__N_1242), .Z(n137[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6621_2_lut.init = 16'h2222;
    PFUMX tx_state_1__I_0_91_Mux_3_i3 (.BLUT(n2[3]), .ALUT(digits_left_3__N_1313[3]), 
          .C0(\tx_state[1] ), .Z(digits_left_3__N_1212[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=331, LSE_RLINE=350 */ ;
    PFUMX mux_684_i24 (.BLUT(n17786), .ALUT(n5255[19]), .C0(n19244), .Z(n3604[23]));
    LUT4 i1_3_lut_adj_248 (.A(tx_phase[1]), .B(n3806[2]), .C(tx_phase[0]), 
         .Z(n16170)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_248.init = 16'hfdfd;
    PFUMX mux_684_i23 (.BLUT(n17783), .ALUT(n5255[18]), .C0(n19244), .Z(n3604[22]));
    LUT4 i6622_2_lut (.A(n109_adj_1520[23]), .B(sec_cnt_25__N_1242), .Z(n137[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6622_2_lut.init = 16'h2222;
    LUT4 i6623_2_lut (.A(n109_adj_1520[24]), .B(sec_cnt_25__N_1242), .Z(n137[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6623_2_lut.init = 16'h2222;
    PFUMX mux_684_i22 (.BLUT(n17780), .ALUT(n5255[17]), .C0(n19244), .Z(n3604[21]));
    LUT4 i6624_2_lut (.A(n109_adj_1520[25]), .B(sec_cnt_25__N_1242), .Z(n137[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(35[21:35])
    defparam i6624_2_lut.init = 16'h2222;
    PFUMX mux_684_i21 (.BLUT(n17777), .ALUT(n5255[16]), .C0(n19244), .Z(n3604[20]));
    PFUMX i14983 (.BLUT(n19813), .ALUT(n19812), .C0(field_index[1]), .Z(n19814));
    PFUMX mux_684_i20 (.BLUT(n17774), .ALUT(n5255[15]), .C0(n19244), .Z(n3604[19]));
    PFUMX mux_684_i19 (.BLUT(n17771), .ALUT(n5255[14]), .C0(n19244), .Z(n3604[18]));
    PFUMX mux_684_i18 (.BLUT(n17768), .ALUT(n5255[13]), .C0(n19244), .Z(n3604[17]));
    PFUMX i13742 (.BLUT(n17787), .ALUT(n6763), .C0(field_index[2]), .Z(n17788));
    PFUMX mux_684_i17 (.BLUT(n17765), .ALUT(n5255[12]), .C0(n19244), .Z(n3604[16]));
    PFUMX i13756 (.BLUT(n5303[11]), .ALUT(n5284[11]), .C0(field_index[1]), 
          .Z(n17802));
    LUT4 field_value_30__bdd_4_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(field_value[28]), .D(field_value[31]), .Z(n18316)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam field_value_30__bdd_4_lut.init = 16'hc2cc;
    LUT4 mux_668_i31_3_lut (.A(csi_long_packet_count_sys[30]), .B(csi_payload_byte_count_sys[30]), 
         .C(field_index[0]), .Z(n3332[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam mux_668_i31_3_lut.init = 16'hcaca;
    LUT4 i6351_2_lut (.A(field_value[24]), .B(\tx_state[1] ), .Z(n5197[24])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6351_2_lut.init = 16'h8888;
    LUT4 i6353_2_lut (.A(field_value[22]), .B(\tx_state[1] ), .Z(n5197[22])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6353_2_lut.init = 16'h8888;
    PFUMX i13659 (.BLUT(n3299[31]), .ALUT(n3332[31]), .C0(field_index[1]), 
          .Z(n17705));
    PFUMX i13656 (.BLUT(n3299[30]), .ALUT(n3332[30]), .C0(field_index[1]), 
          .Z(n17702));
    LUT4 i14107_3_lut (.A(\tx_state[1] ), .B(n7199), .C(tx_phase[0]), 
         .Z(tx_phase_2__N_1165[0])) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i14107_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_adj_249 (.A(uart_busy), .B(tx_state[0]), .C(tx_phase[2]), 
         .Z(n7199)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(163[17] 186[20])
    defparam i1_3_lut_adj_249.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_370 (.A(digits_left[1]), .B(digits_left[0]), .Z(n19313)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(163[17] 186[20])
    defparam i1_2_lut_rep_370.init = 16'heeee;
    LUT4 n10_bdd_3_lut_14578_4_lut (.A(digits_left[1]), .B(digits_left[0]), 
         .C(digits_left[2]), .D(n19238), .Z(n19031)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(163[17] 186[20])
    defparam n10_bdd_3_lut_14578_4_lut.init = 16'he1f0;
    LUT4 i6791_4_lut (.A(csi_last_wc_sys[9]), .B(field_index[0]), .C(sensor_id[9]), 
         .D(field_index[1]), .Z(n6767)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6791_4_lut.init = 16'hc088;
    LUT4 i6355_2_lut (.A(field_value[20]), .B(\tx_state[1] ), .Z(n5197[20])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6355_2_lut.init = 16'h8888;
    PFUMX i14774 (.BLUT(n19355), .ALUT(n19356), .C0(field_index[1]), .Z(n19357));
    PFUMX i14772 (.BLUT(n19352), .ALUT(n19353), .C0(field_index[1]), .Z(n19354));
    PFUMX i14770 (.BLUT(n19349), .ALUT(n19350), .C0(field_index[1]), .Z(n19351));
    PFUMX i14768 (.BLUT(n19346), .ALUT(n19347), .C0(field_index[1]), .Z(n19348));
    PFUMX i14766 (.BLUT(n19343), .ALUT(n19344), .C0(field_index[1]), .Z(n19345));
    PFUMX i14764 (.BLUT(n19340), .ALUT(n19341), .C0(field_index[1]), .Z(n19342));
    PFUMX i14762 (.BLUT(n19337), .ALUT(n19338), .C0(field_index[1]), .Z(n19339));
    PFUMX i14760 (.BLUT(n19334), .ALUT(n19335), .C0(field_index[1]), .Z(n19336));
    PFUMX i14758 (.BLUT(n19331), .ALUT(n19332), .C0(field_index[1]), .Z(n19333));
    PFUMX i14756 (.BLUT(n19328), .ALUT(n19329), .C0(field_index[1]), .Z(n19330));
    LUT4 field_index_2__bdd_3_lut (.A(field_index[2]), .B(field_index[1]), 
         .C(field_index[0]), .Z(n18456)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam field_index_2__bdd_3_lut.init = 16'h6a6a;
    PFUMX i14754 (.BLUT(n19325), .ALUT(n19326), .C0(field_index[1]), .Z(n19327));
    LUT4 field_index_3__bdd_4_lut (.A(\field_index[3] ), .B(field_index[1]), 
         .C(field_index[2]), .D(field_index[0]), .Z(n18457)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C (D))))) */ ;
    defparam field_index_3__bdd_4_lut.init = 16'h6aa2;
    PFUMX i14752 (.BLUT(n19322), .ALUT(n19323), .C0(field_index[1]), .Z(n19324));
    LUT4 i6354_2_lut (.A(field_value[21]), .B(\tx_state[1] ), .Z(n5197[21])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_send_ctrl.v(83[9] 189[16])
    defparam i6354_2_lut.init = 16'h8888;
    PFUMX mux_1612_i28 (.BLUT(n5226[7]), .ALUT(n5197[27]), .C0(n3570), 
          .Z(n5255[27]));
    PFUMX mux_1612_i27 (.BLUT(n5226[6]), .ALUT(n5197[26]), .C0(n3570), 
          .Z(n5255[26]));
    PFUMX mux_1612_i26 (.BLUT(n5226[5]), .ALUT(n5197[25]), .C0(n3570), 
          .Z(n5255[25]));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart_rx
//

module uart_rx (GND_net, VCC_net, sys_clk_c, sys_rst_n_N_472, rx_data, 
            rx_flag, uart_rxd_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]rx_data;
    output rx_flag;
    input uart_rxd_c;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n13251;
    wire [12:0]baud_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    wire [12:0]n32;
    
    wire n13252, n13250, n9622;
    wire [12:0]n1;
    wire [7:0]rx_data_adj_1514;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(27[11:18])
    
    wire rx_data_7__N_1455, rx_flag_adj_1502, rx_reg2, rx_reg1, rx_reg3, 
        work_en_N_1447, start_nedge_N_1459, work_en, n7870, bit_flag, 
        bit_flag_N_1462, n19261, n13249;
    wire [3:0]bit_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(26[11:18])
    wire [3:0]n14;
    
    wire n14720, n8057, n8055, n15935, n17197, n31_adj_1513, n17193, 
        n14748, n19284, n13254, n19320, n13253, n17341, n17183, 
        n17185, n19319;
    
    CCU2C add_32_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13251), .COUT(n13252), .S0(n32[5]), .S1(n32[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_7.INIT0 = 16'haaaa;
    defparam add_32_7.INIT1 = 16'haaaa;
    defparam add_32_7.INJECT1_0 = "NO";
    defparam add_32_7.INJECT1_1 = "NO";
    CCU2C add_32_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13250), .COUT(n13251), .S0(n32[3]), .S1(n32[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_5.INIT0 = 16'haaaa;
    defparam add_32_5.INIT1 = 16'haaaa;
    defparam add_32_5.INJECT1_0 = "NO";
    defparam add_32_5.INJECT1_1 = "NO";
    LUT4 i6345_2_lut (.A(n32[12]), .B(n9622), .Z(n1[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6345_2_lut.init = 16'h8888;
    LUT4 i6859_2_lut (.A(n32[8]), .B(n9622), .Z(n1[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6859_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(n9622), .B(n32[7]), .Z(n1[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_217 (.A(n9622), .B(n32[6]), .Z(n1[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_217.init = 16'h8888;
    FD1P3DX rx_data_i0_i0 (.D(rx_data_adj_1514[1]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1P3DX po_data_i0_i0 (.D(rx_data_adj_1514[0]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i0.GSR = "ENABLED";
    FD1S3BX rx_reg2_76 (.D(rx_reg1), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(44[9:28])
    defparam rx_reg2_76.GSR = "ENABLED";
    FD1S3BX rx_reg3_77 (.D(rx_reg2), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(52[9:28])
    defparam rx_reg3_77.GSR = "ENABLED";
    FD1S3DX start_nedge_78 (.D(start_nedge_N_1459), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1447)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[10] 62[29])
    defparam start_nedge_78.GSR = "ENABLED";
    FD1S3DX work_en_79 (.D(n7870), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam work_en_79.GSR = "ENABLED";
    FD1S3DX bit_flag_81 (.D(bit_flag_N_1462), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[10] 93[26])
    defparam bit_flag_81.GSR = "ENABLED";
    FD1S3DX rx_flag_84 (.D(n19261), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag_adj_1502)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(119[10] 122[25])
    defparam rx_flag_84.GSR = "ENABLED";
    FD1S3DX po_flag_86 (.D(rx_flag_adj_1502), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(138[9:28])
    defparam po_flag_86.GSR = "ENABLED";
    FD1S3BX rx_reg1_75 (.D(uart_rxd_c), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(36[9:23])
    defparam rx_reg1_75.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_218 (.A(n9622), .B(n32[5]), .Z(n1[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_218.init = 16'h8888;
    LUT4 i6346_2_lut (.A(n32[11]), .B(n9622), .Z(n1[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6346_2_lut.init = 16'h8888;
    CCU2C add_32_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13249), .COUT(n13250), .S0(n32[1]), .S1(n32[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_3.INIT0 = 16'haaaa;
    defparam add_32_3.INIT1 = 16'haaaa;
    defparam add_32_3.INJECT1_0 = "NO";
    defparam add_32_3.INJECT1_1 = "NO";
    LUT4 i6347_2_lut (.A(n32[10]), .B(n9622), .Z(n1[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6347_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_219 (.A(n9622), .B(n32[4]), .Z(n1[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_219.init = 16'h8888;
    LUT4 i6348_2_lut (.A(n32[9]), .B(n9622), .Z(n1[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6348_2_lut.init = 16'h8888;
    CCU2C add_32_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13249), .S1(n32[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_1.INIT0 = 16'h0000;
    defparam add_32_1.INIT1 = 16'h555a;
    defparam add_32_1.INJECT1_0 = "NO";
    defparam add_32_1.INJECT1_1 = "NO";
    FD1S3DX bit_cnt__i0 (.D(n14[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i0.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_220 (.A(n9622), .B(n32[3]), .Z(n1[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_220.init = 16'h8888;
    LUT4 i1_2_lut_adj_221 (.A(n9622), .B(n32[2]), .Z(n1[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_221.init = 16'h8888;
    LUT4 i1_2_lut_adj_222 (.A(n9622), .B(n32[1]), .Z(n1[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_222.init = 16'h8888;
    FD1P3DX bit_cnt__i1 (.D(n14720), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i1.GSR = "ENABLED";
    FD1P3DX bit_cnt__i2 (.D(n8057), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i2.GSR = "ENABLED";
    FD1P3DX bit_cnt__i3 (.D(n8055), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i3.GSR = "ENABLED";
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
    FD1P3DX po_data_i0_i7 (.D(rx_data_adj_1514[7]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i7.GSR = "ENABLED";
    FD1P3DX po_data_i0_i6 (.D(rx_data_adj_1514[6]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i6.GSR = "ENABLED";
    FD1P3DX po_data_i0_i5 (.D(rx_data_adj_1514[5]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i5.GSR = "ENABLED";
    FD1P3DX po_data_i0_i4 (.D(rx_data_adj_1514[4]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i4.GSR = "ENABLED";
    FD1P3DX po_data_i0_i3 (.D(rx_data_adj_1514[3]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i3.GSR = "ENABLED";
    FD1P3DX po_data_i0_i2 (.D(rx_data_adj_1514[2]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i2.GSR = "ENABLED";
    FD1P3DX po_data_i0_i1 (.D(rx_data_adj_1514[1]), .SP(rx_flag_adj_1502), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i1.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i7 (.D(rx_reg3), .SP(rx_data_7__N_1455), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i6 (.D(rx_data_adj_1514[7]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i5 (.D(rx_data_adj_1514[6]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i4 (.D(rx_data_adj_1514[5]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i3 (.D(rx_data_adj_1514[4]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i2 (.D(rx_data_adj_1514[3]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i1 (.D(rx_data_adj_1514[2]), .SP(rx_data_7__N_1455), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1514[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=367, LSE_RLINE=373 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_318 (.A(bit_flag), .B(n15935), .C(bit_cnt[3]), .Z(n19261)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_rep_318.init = 16'h2020;
    LUT4 i6410_3_lut_4_lut (.A(bit_flag), .B(n15935), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n14[0])) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A !(D))) */ ;
    defparam i6410_3_lut_4_lut.init = 16'h558a;
    LUT4 i1_2_lut_adj_223 (.A(n9622), .B(n32[0]), .Z(n1[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_223.init = 16'h8888;
    LUT4 i1_4_lut (.A(n17197), .B(work_en), .C(n31_adj_1513), .D(n17193), 
         .Z(n9622)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(24[12:20])
    defparam i1_4_lut.init = 16'hcc8c;
    LUT4 i1_3_lut (.A(baud_cnt[0]), .B(n14748), .C(baud_cnt[5]), .Z(n17197)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut.init = 16'hdfdf;
    LUT4 i1_3_lut_adj_224 (.A(baud_cnt[8]), .B(baud_cnt[3]), .C(baud_cnt[6]), 
         .Z(n17193)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_224.init = 16'hfdfd;
    LUT4 i1_3_lut_adj_225 (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), 
         .Z(n15935)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_225.init = 16'hfefe;
    LUT4 i2211_2_lut_rep_341 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n19284)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i2211_2_lut_rep_341.init = 16'h8888;
    LUT4 i6328_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n19261), 
         .D(bit_cnt[2]), .Z(n8057)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(104[20:34])
    defparam i6328_3_lut_4_lut.init = 16'h0708;
    LUT4 i15_2_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .Z(n14720)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i6326_4_lut (.A(bit_cnt[3]), .B(n19261), .C(bit_cnt[2]), .D(n19284), 
         .Z(n8055)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i6326_4_lut.init = 16'h1222;
    CCU2C add_32_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13254), .S0(n32[11]), .S1(n32[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_13.INIT0 = 16'haaaa;
    defparam add_32_13.INIT1 = 16'haaaa;
    defparam add_32_13.INJECT1_0 = "NO";
    defparam add_32_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_2_lut (.A(bit_flag), .B(bit_cnt[3]), .Z(n19320)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_then_2_lut.init = 16'h2222;
    CCU2C add_32_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13253), .COUT(n13254), .S0(n32[9]), .S1(n32[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_11.INIT0 = 16'haaaa;
    defparam add_32_11.INIT1 = 16'haaaa;
    defparam add_32_11.INJECT1_0 = "NO";
    defparam add_32_11.INJECT1_1 = "NO";
    CCU2C add_32_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13252), .COUT(n13253), .S0(n32[7]), .S1(n32[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_9.INIT0 = 16'haaaa;
    defparam add_32_9.INIT1 = 16'haaaa;
    defparam add_32_9.INJECT1_0 = "NO";
    defparam add_32_9.INJECT1_1 = "NO";
    LUT4 start_nedge_I_0_2_lut (.A(rx_reg2), .B(rx_reg3), .Z(start_nedge_N_1459)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(59[13:36])
    defparam start_nedge_I_0_2_lut.init = 16'h4444;
    LUT4 i3979_3_lut (.A(n19261), .B(work_en_N_1447), .C(work_en), .Z(n7870)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(69[10] 72[25])
    defparam i3979_3_lut.init = 16'hdcdc;
    LUT4 i14174_4_lut (.A(n14748), .B(n31_adj_1513), .C(n17341), .D(baud_cnt[3]), 
         .Z(bit_flag_N_1462)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(90[13:43])
    defparam i14174_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_226 (.A(baud_cnt[6]), .B(baud_cnt[8]), .C(baud_cnt[0]), 
         .D(baud_cnt[5]), .Z(n17341)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_226.init = 16'hfffd;
    LUT4 i1_4_lut_adj_227 (.A(baud_cnt[12]), .B(n17183), .C(n17185), .D(baud_cnt[2]), 
         .Z(n14748)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_4_lut_adj_227.init = 16'hfffe;
    LUT4 i1_2_lut_adj_228 (.A(baud_cnt[9]), .B(baud_cnt[1]), .Z(n17183)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut_adj_228.init = 16'heeee;
    LUT4 i1_2_lut_adj_229 (.A(baud_cnt[11]), .B(baud_cnt[10]), .Z(n17185)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut_adj_229.init = 16'heeee;
    LUT4 i49_2_lut (.A(baud_cnt[4]), .B(baud_cnt[7]), .Z(n31_adj_1513)) /* synthesis lut_function=(A (B)) */ ;
    defparam i49_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_else_2_lut (.A(bit_flag), .B(bit_cnt[2]), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(n19319)) /* synthesis lut_function=(!((B (C)+!B (C (D)+!C !(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/uart_rx.v(111[13:69])
    defparam i1_4_lut_else_2_lut.init = 16'h0a28;
    PFUMX i14750 (.BLUT(n19319), .ALUT(n19320), .C0(bit_cnt[1]), .Z(rx_data_7__N_1455));
    
endmodule
//
// Verilog Description of module \top_iic(IIC_CLK=26'b010011100010000) 
//

module \top_iic(IIC_CLK=26'b010011100010000)  (GND_net, VCC_net, flag_done, 
            reg_index, \reg_cfg[8] , sys_clk_c, sys_rst_n_N_472, reg_4a00_val, 
            sensor_id, \reg_cfg[18] , \reg_cfg[16] , \reg_cfg[15] , 
            \reg_cfg[10] , \reg_cfg[12] , \reg_cfg[13] , \reg_cfg[19] , 
            \reg_cfg[17] , cam_ready, \reg_cfg[0] , led_c_1, \reg_cfg[1] , 
            \reg_cfg[2] , \reg_cfg[3] , \reg_cfg[4] , \reg_cfg[5] , 
            \reg_cfg[6] , \reg_cfg[7] , \current_state[6] , \current_state[0] , 
            sda_transmit, n17805, n19254, i2c_sclk_0_c, n8, rd_first_done, 
            n15714, n18396, i2c_sda_0_out, sda_transmit_en_N_1061, n18394) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output flag_done;
    output [7:0]reg_index;
    input \reg_cfg[8] ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]reg_4a00_val;
    output [15:0]sensor_id;
    input \reg_cfg[18] ;
    input \reg_cfg[16] ;
    input \reg_cfg[15] ;
    input \reg_cfg[10] ;
    input \reg_cfg[12] ;
    input \reg_cfg[13] ;
    input \reg_cfg[19] ;
    input \reg_cfg[17] ;
    input cam_ready;
    input \reg_cfg[0] ;
    output led_c_1;
    input \reg_cfg[1] ;
    input \reg_cfg[2] ;
    input \reg_cfg[3] ;
    input \reg_cfg[4] ;
    input \reg_cfg[5] ;
    input \reg_cfg[6] ;
    input \reg_cfg[7] ;
    output \current_state[6] ;
    output \current_state[0] ;
    output sda_transmit;
    input n17805;
    output n19254;
    output i2c_sclk_0_c;
    output n8;
    output rd_first_done;
    output n15714;
    input n18396;
    input i2c_sda_0_out;
    output sda_transmit_en_N_1061;
    output n18394;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire ctrl_w0_r1, start;
    wire [7:0]data_read;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(30[17:26])
    wire [3:0]rd_byte_num;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(16[19:30])
    wire [15:0]addr;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(27[17:21])
    wire [7:0]rd_byte0;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(31[17:25])
    wire [7:0]data_write;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(28[17:27])
    wire [9:0]current_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n19176, n19179, n19182, n18812, n19172, n18853;
    wire [9:0]next_state_9__N_917;
    
    wire n18846;
    wire [9:0]next_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n19, n26;
    
    ov9734_ctrl inst_ov9734_ctrl (.GND_net(GND_net), .VCC_net(VCC_net), 
            .ctrl_w0_r1(ctrl_w0_r1), .flag_done(flag_done), .start(start), 
            .reg_index({reg_index}), .\reg_cfg[8] (\reg_cfg[8] ), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .reg_4a00_val({reg_4a00_val}), 
            .data_read({data_read}), .sensor_id({sensor_id}), .\rd_byte_num[0] (rd_byte_num[0]), 
            .\reg_cfg[18] (\reg_cfg[18] ), .\reg_cfg[16] (\reg_cfg[16] ), 
            .\reg_cfg[15] (\reg_cfg[15] ), .\reg_cfg[10] (\reg_cfg[10] ), 
            .\reg_cfg[12] (\reg_cfg[12] ), .addr({addr}), .\rd_byte_num[1] (rd_byte_num[1]), 
            .rd_byte0({rd_byte0}), .\reg_cfg[13] (\reg_cfg[13] ), .\reg_cfg[19] (\reg_cfg[19] ), 
            .\reg_cfg[17] (\reg_cfg[17] ), .cam_ready(cam_ready), .data_write({data_write}), 
            .\reg_cfg[0] (\reg_cfg[0] ), .led_c_1(led_c_1), .\reg_cfg[1] (\reg_cfg[1] ), 
            .\reg_cfg[2] (\reg_cfg[2] ), .\reg_cfg[3] (\reg_cfg[3] ), .\reg_cfg[4] (\reg_cfg[4] ), 
            .\reg_cfg[5] (\reg_cfg[5] ), .\reg_cfg[6] (\reg_cfg[6] ), .\reg_cfg[7] (\reg_cfg[7] ), 
            .\current_state[5] (current_state[5]), .n19176(n19176), .\current_state[4] (current_state[4]), 
            .n19179(n19179), .\current_state[3] (current_state[3]), .n19182(n19182), 
            .\current_state[2] (current_state[2]), .n18812(n18812), .\current_state[7] (current_state[7]), 
            .n19172(n19172), .\current_state[8] (current_state[8]), .n18853(n18853), 
            .\current_state[6] (\current_state[6] ), .\next_state_9__N_917[6] (next_state_9__N_917[6]), 
            .\current_state[9] (current_state[9]), .n18846(n18846), .\next_state[0] (next_state[0]), 
            .\current_state[0] (\current_state[0] ), .n19(n19), .n26(n26)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(36[17] 56[6])
    \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000)  inst_i2c_drive (.\current_state[2] (current_state[2]), 
            .\current_state[3] (current_state[3]), .\current_state[4] (current_state[4]), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .sys_clk_c(sys_clk_c), .\current_state[0] (\current_state[0] ), 
            .\current_state[5] (current_state[5]), .next_state({Open_0, 
            Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, 
            Open_8, next_state[0]}), .data_read({data_read}), .\current_state[6] (\current_state[6] ), 
            .sda_transmit(sda_transmit), .flag_done(flag_done), .n17805(n17805), 
            .rd_byte0({rd_byte0}), .data_write({data_write}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .n19254(n19254), .n19(n19), .addr({addr}), 
            .i2c_sclk_0_c(i2c_sclk_0_c), .n8(n8), .rd_first_done(rd_first_done), 
            .start(start), .n15714(n15714), .\current_state[7] (current_state[7]), 
            .\current_state[9] (current_state[9]), .\current_state[8] (current_state[8]), 
            .n18396(n18396), .i2c_sda_0_out(i2c_sda_0_out), .n18853(n18853), 
            .n26(n26), .n18846(n18846), .\rd_byte_num[1] (rd_byte_num[1]), 
            .n18812(n18812), .ctrl_w0_r1(ctrl_w0_r1), .sda_transmit_en_N_1061(sda_transmit_en_N_1061), 
            .n19182(n19182), .n19179(n19179), .n19176(n19176), .n19172(n19172), 
            .\rd_byte_num[0] (rd_byte_num[0]), .n18394(n18394), .\next_state_9__N_917[6] (next_state_9__N_917[6])) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/top_iic.v(64[7] 78[6])
    
endmodule
//
// Verilog Description of module ov9734_ctrl
//

module ov9734_ctrl (GND_net, VCC_net, ctrl_w0_r1, flag_done, start, 
            reg_index, \reg_cfg[8] , sys_clk_c, sys_rst_n_N_472, reg_4a00_val, 
            data_read, sensor_id, \rd_byte_num[0] , \reg_cfg[18] , \reg_cfg[16] , 
            \reg_cfg[15] , \reg_cfg[10] , \reg_cfg[12] , addr, \rd_byte_num[1] , 
            rd_byte0, \reg_cfg[13] , \reg_cfg[19] , \reg_cfg[17] , cam_ready, 
            data_write, \reg_cfg[0] , led_c_1, \reg_cfg[1] , \reg_cfg[2] , 
            \reg_cfg[3] , \reg_cfg[4] , \reg_cfg[5] , \reg_cfg[6] , 
            \reg_cfg[7] , \current_state[5] , n19176, \current_state[4] , 
            n19179, \current_state[3] , n19182, \current_state[2] , 
            n18812, \current_state[7] , n19172, \current_state[8] , 
            n18853, \current_state[6] , \next_state_9__N_917[6] , \current_state[9] , 
            n18846, \next_state[0] , \current_state[0] , n19, n26) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    output ctrl_w0_r1;
    input flag_done;
    output start;
    output [7:0]reg_index;
    input \reg_cfg[8] ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]reg_4a00_val;
    input [7:0]data_read;
    output [15:0]sensor_id;
    output \rd_byte_num[0] ;
    input \reg_cfg[18] ;
    input \reg_cfg[16] ;
    input \reg_cfg[15] ;
    input \reg_cfg[10] ;
    input \reg_cfg[12] ;
    output [15:0]addr;
    output \rd_byte_num[1] ;
    input [7:0]rd_byte0;
    input \reg_cfg[13] ;
    input \reg_cfg[19] ;
    input \reg_cfg[17] ;
    input cam_ready;
    output [7:0]data_write;
    input \reg_cfg[0] ;
    output led_c_1;
    input \reg_cfg[1] ;
    input \reg_cfg[2] ;
    input \reg_cfg[3] ;
    input \reg_cfg[4] ;
    input \reg_cfg[5] ;
    input \reg_cfg[6] ;
    input \reg_cfg[7] ;
    input \current_state[5] ;
    output n19176;
    input \current_state[4] ;
    output n19179;
    input \current_state[3] ;
    output n19182;
    input \current_state[2] ;
    output n18812;
    input \current_state[7] ;
    output n19172;
    input \current_state[8] ;
    output n18853;
    input \current_state[6] ;
    output \next_state_9__N_917[6] ;
    input \current_state[9] ;
    output n18846;
    input \next_state[0] ;
    input \current_state[0] ;
    input n19;
    output n26;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n13275;
    wire [22:0]wait_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(276[16:24])
    wire [22:0]n464;
    
    wire n13276;
    wire [7:0]n2008;
    wire [3:0]rd_byte_num_3__N_481;
    
    wire n7878, flag_done_d2, sys_clk_c_enable_98, n13274, n13273;
    wire [23:0]reg_cfg;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(44[16:23])
    wire [1:0]rd_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(279[16:22])
    
    wire n15107, n19289, n13272, n18749, n7936, n17812, n13271, 
        n13270, n254, n15833, n13269, flag_done_d1, sys_clk_c_enable_105, 
        n6496, sys_clk_c_enable_82;
    wire [22:0]wait_cnt_22__N_520;
    
    wire n7853, n8049, n8053, n18386, n14927, n8033, n8037, n8039, 
        n8041, n8051, n8047, n17329, n15983, n18750, n19218, sys_clk_c_enable_230, 
        n8045, n8043, n19266, n19359, n19358, n6471, n6505, n6465, 
        n15445;
    wire [15:0]addr_15__N_455;
    
    wire n19239, start_N_744, n17622, sys_clk_c_enable_229, n8035, 
        n19233, n19288, n6602, start_N_727;
    wire [15:0]n2341;
    
    wire sys_clk_c_enable_200;
    wire [7:0]n37;
    
    wire n127, n13403;
    wire [19:0]final_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(278[16:25])
    wire [19:0]n85;
    
    wire n13402, sys_clk_c_enable_219;
    wire [19:0]n107;
    
    wire n13401, sys_clk_c_enable_220, n13400, n13399, n7926, n15468, 
        n39, n19260, n15, n17003, n14930, n15232, n19287, n16997, 
        n13398, n17614, n16867, n16859, n10, n17127, n16717, n16711, 
        n13397, n16481, n16479, n16465, n45_adj_1495, n16459, n17505, 
        n16451, n13396, n16453, n17513, n16447, n16445, n16431, 
        n45_adj_1496, n13395, n16423, n17511, n16427, delay_swrst, 
        n14844, n17131, n126_adj_1497, n13394, n172, n16095, n19205, 
        sys_clk_c_enable_186, n13393, n19282, n15963, n13392, n13391, 
        sys_clk_c_enable_191, n13390, n14640, n16857, n17509, n19286, 
        n15889, n127_adj_1499, n13279, n13278, n13277, n16853, n10761, 
        start_N_728, n17437, n17664, n17229, n17211, n17445, n17441, 
        n17433, n17201, n17199, n17203, n14911, n17576, n2023, 
        n16753;
    
    CCU2C add_65_15 (.A0(wait_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13275), .COUT(n13276), .S0(n464[13]), .S1(n464[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_15.INIT0 = 16'haaaa;
    defparam add_65_15.INIT1 = 16'haaaa;
    defparam add_65_15.INJECT1_0 = "NO";
    defparam add_65_15.INJECT1_1 = "NO";
    LUT4 i3987_3_lut_4_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(ctrl_w0_r1), 
         .D(n2008[1]), .Z(n7878)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i3987_3_lut_4_lut.init = 16'heefe;
    LUT4 i230_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(n2008[4]), 
         .D(start), .Z(sys_clk_c_enable_98)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i230_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2C add_65_13 (.A0(wait_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13274), .COUT(n13275), .S0(n464[11]), .S1(n464[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_13.INIT0 = 16'haaaa;
    defparam add_65_13.INIT1 = 16'haaaa;
    defparam add_65_13.INJECT1_0 = "NO";
    defparam add_65_13.INJECT1_1 = "NO";
    CCU2C add_65_11 (.A0(wait_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13273), .COUT(n13274), .S0(n464[9]), .S1(n464[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_11.INIT0 = 16'haaaa;
    defparam add_65_11.INIT1 = 16'haaaa;
    defparam add_65_11.INJECT1_0 = "NO";
    defparam add_65_11.INJECT1_1 = "NO";
    ROM256X1 reg_index_7__I_0_148_Mux_11 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[11])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFF8C007F8060003D800042C03FC0381303FC0070060100 */ ;
    LUT4 i14198_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_cnt[0]), 
         .D(start), .Z(n15107)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i14198_2_lut_3_lut_4_lut.init = 16'h0d0f;
    LUT4 i268_2_lut_rep_346 (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), 
         .Z(n19289)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i268_2_lut_rep_346.init = 16'heeee;
    CCU2C add_65_9 (.A0(wait_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13272), .COUT(n13273), .S0(n464[7]), .S1(n464[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_9.INIT0 = 16'haaaa;
    defparam add_65_9.INIT1 = 16'haaaa;
    defparam add_65_9.INJECT1_0 = "NO";
    defparam add_65_9.INJECT1_1 = "NO";
    LUT4 reg_index_5__bdd_4_lut_14790 (.A(reg_index[5]), .B(reg_index[0]), 
         .C(reg_index[1]), .D(reg_index[3]), .Z(n18749)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B+!(C (D)))) */ ;
    defparam reg_index_5__bdd_4_lut_14790.init = 16'hc557;
    LUT4 i6133_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[8] ), 
         .Z(n7936)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6133_2_lut_3_lut.init = 16'h1010;
    LUT4 i14195_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), 
         .C(reg_index[7]), .Z(n17812)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i14195_2_lut_3_lut.init = 16'hfefe;
    CCU2C add_65_7 (.A0(wait_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13271), .COUT(n13272), .S0(n464[5]), .S1(n464[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_7.INIT0 = 16'haaaa;
    defparam add_65_7.INIT1 = 16'haaaa;
    defparam add_65_7.INJECT1_0 = "NO";
    defparam add_65_7.INJECT1_1 = "NO";
    CCU2C add_65_5 (.A0(wait_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13270), .COUT(n13271), .S0(n464[3]), .S1(n464[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_5.INIT0 = 16'haaaa;
    defparam add_65_5.INIT1 = 16'haaaa;
    defparam add_65_5.INJECT1_0 = "NO";
    defparam add_65_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_index[7]), 
         .D(n254), .Z(n15833)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i1_3_lut_4_lut.init = 16'h1000;
    CCU2C add_65_3 (.A0(wait_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13269), .COUT(n13270), .S0(n464[1]), .S1(n464[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_3.INIT0 = 16'haaaa;
    defparam add_65_3.INIT1 = 16'haaaa;
    defparam add_65_3.INJECT1_0 = "NO";
    defparam add_65_3.INJECT1_1 = "NO";
    FD1S3DX flag_done_d2_111 (.D(flag_done_d1), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(36[14] 39[12])
    defparam flag_done_d2_111.GSR = "ENABLED";
    CCU2C add_65_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(wait_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13269), .S1(n464[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_1.INIT0 = 16'h0000;
    defparam add_65_1.INIT1 = 16'h555a;
    defparam add_65_1.INJECT1_0 = "NO";
    defparam add_65_1.INJECT1_1 = "NO";
    FD1S3DX ctrl_w0_r1_115 (.D(n7878), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(ctrl_w0_r1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam ctrl_w0_r1_115.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i0 (.D(data_read[0]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i0.GSR = "ENABLED";
    FD1S3BX state_FSM_i1 (.D(n6496), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(n2008[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i0 (.D(data_read[0]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i0.GSR = "ENABLED";
    FD1P3DX wait_cnt_i0 (.D(wait_cnt_22__N_520[0]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i0.GSR = "ENABLED";
    FD1S3DX rd_byte_num_i0 (.D(n7853), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\rd_byte_num[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam rd_byte_num_i0.GSR = "ENABLED";
    FD1S3DX flag_done_d1_110 (.D(flag_done), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(36[14] 39[12])
    defparam flag_done_d1_110.GSR = "ENABLED";
    LUT4 i4158_3_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[11]), 
         .Z(n8049)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i4158_3_lut_3_lut.init = 16'h3232;
    LUT4 i4162_3_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[9]), 
         .Z(n8053)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i4162_3_lut_3_lut.init = 16'h3232;
    LUT4 reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut (.A(n2008[4]), 
         .B(rd_byte_num_3__N_481[0]), .C(n18386), .D(n14927), .Z(reg_cfg[20])) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam reg_index_7__I_0_148_Mux_20_i255_4_lut_4_lut_4_lut.init = 16'h3332;
    LUT4 i4142_3_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(reg_cfg[21]), 
         .Z(n8033)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i4142_3_lut_3_lut.init = 16'h3232;
    LUT4 i6294_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[18] ), 
         .Z(n8037)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6294_2_lut_3_lut.init = 16'h1010;
    ROM256X1 reg_index_7__I_0_148_Mux_21 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[21])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFBFC00000400000000000FFFFFFFFFFFFFFFFFFFFFFFC */ ;
    LUT4 i6295_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[16] ), 
         .Z(n8039)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6295_2_lut_3_lut.init = 16'h1010;
    ROM256X1 reg_index_7__I_0_148_Mux_9 (.AD0(reg_index[0]), .AD1(reg_index[1]), 
            .AD2(reg_index[2]), .AD3(reg_index[3]), .AD4(reg_index[4]), 
            .AD5(reg_index[5]), .AD6(reg_index[6]), .AD7(reg_index[7]), 
            .DO0(reg_cfg[9])) /* synthesis initstate=0xFFFFFFFFFFFFFFFFFFFFAA866666463330663000F333333180F333304C0D3119 */ ;
    LUT4 i6296_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[15] ), 
         .Z(n8041)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6296_2_lut_3_lut.init = 16'h1010;
    LUT4 i6300_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[10] ), 
         .Z(n8051)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6300_2_lut_3_lut.init = 16'h1010;
    LUT4 i6299_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[12] ), 
         .Z(n8047)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6299_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut (.A(reg_index[1]), .B(n17329), .C(reg_index[4]), .D(reg_index[5]), 
         .Z(n15983)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(314[25:39])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 n18750_bdd_4_lut (.A(n18750), .B(n18749), .C(reg_index[2]), .D(reg_index[4]), 
         .Z(n19218)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n18750_bdd_4_lut.init = 16'hffca;
    FD1P3DX addr_i1 (.D(n8053), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i1.GSR = "ENABLED";
    FD1P3DX addr_i2 (.D(n8051), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i2.GSR = "ENABLED";
    FD1P3DX addr_i3 (.D(n8049), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i3.GSR = "ENABLED";
    FD1P3DX addr_i4 (.D(n8047), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i4.GSR = "ENABLED";
    FD1P3DX addr_i5 (.D(n8045), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i5.GSR = "ENABLED";
    FD1P3DX addr_i6 (.D(n8043), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i6.GSR = "ENABLED";
    LUT4 i19_4_lut_then_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n2008[4]), 
         .D(n19266), .Z(n19359)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B+!(C (D))))) */ ;
    defparam i19_4_lut_then_4_lut.init = 16'h47ff;
    FD1S3BX rd_byte_num_i1 (.D(rd_byte_num_3__N_481[1]), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(\rd_byte_num[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam rd_byte_num_i1.GSR = "ENABLED";
    LUT4 i19_4_lut_else_4_lut (.A(start), .B(rd_byte_num_3__N_481[0]), .C(n2008[4]), 
         .D(n19266), .Z(n19358)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam i19_4_lut_else_4_lut.init = 16'h44fc;
    FD1P3DX wait_cnt_i22 (.D(wait_cnt_22__N_520[22]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i22.GSR = "ENABLED";
    FD1P3DX wait_cnt_i21 (.D(wait_cnt_22__N_520[21]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i21.GSR = "ENABLED";
    FD1P3DX wait_cnt_i20 (.D(wait_cnt_22__N_520[20]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i20.GSR = "ENABLED";
    FD1P3DX wait_cnt_i19 (.D(wait_cnt_22__N_520[19]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i19.GSR = "ENABLED";
    FD1P3DX wait_cnt_i18 (.D(wait_cnt_22__N_520[18]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i18.GSR = "ENABLED";
    FD1P3DX wait_cnt_i17 (.D(wait_cnt_22__N_520[17]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i17.GSR = "ENABLED";
    FD1P3DX wait_cnt_i16 (.D(wait_cnt_22__N_520[16]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i16.GSR = "ENABLED";
    FD1P3DX wait_cnt_i15 (.D(wait_cnt_22__N_520[15]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i15.GSR = "ENABLED";
    FD1P3DX wait_cnt_i14 (.D(wait_cnt_22__N_520[14]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i14.GSR = "ENABLED";
    FD1P3DX wait_cnt_i13 (.D(wait_cnt_22__N_520[13]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i13.GSR = "ENABLED";
    FD1P3DX wait_cnt_i12 (.D(wait_cnt_22__N_520[12]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i12.GSR = "ENABLED";
    FD1P3DX wait_cnt_i11 (.D(wait_cnt_22__N_520[11]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i11.GSR = "ENABLED";
    FD1P3DX wait_cnt_i10 (.D(wait_cnt_22__N_520[10]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i10.GSR = "ENABLED";
    FD1P3DX wait_cnt_i9 (.D(wait_cnt_22__N_520[9]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i9.GSR = "ENABLED";
    FD1P3DX wait_cnt_i8 (.D(wait_cnt_22__N_520[8]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i8.GSR = "ENABLED";
    FD1P3DX wait_cnt_i7 (.D(wait_cnt_22__N_520[7]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i7.GSR = "ENABLED";
    FD1P3DX wait_cnt_i6 (.D(wait_cnt_22__N_520[6]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i6.GSR = "ENABLED";
    FD1P3DX wait_cnt_i5 (.D(wait_cnt_22__N_520[5]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i5.GSR = "ENABLED";
    FD1P3DX wait_cnt_i4 (.D(wait_cnt_22__N_520[4]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i4.GSR = "ENABLED";
    FD1P3DX wait_cnt_i3 (.D(wait_cnt_22__N_520[3]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i3.GSR = "ENABLED";
    FD1P3DX wait_cnt_i2 (.D(wait_cnt_22__N_520[2]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i2.GSR = "ENABLED";
    FD1P3DX wait_cnt_i1 (.D(wait_cnt_22__N_520[1]), .SP(sys_clk_c_enable_82), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(wait_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam wait_cnt_i1.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i15 (.D(rd_byte0[7]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i15.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i14 (.D(rd_byte0[6]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i14.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i13 (.D(rd_byte0[5]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i13.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i12 (.D(rd_byte0[4]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i12.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i11 (.D(rd_byte0[3]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i11.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i10 (.D(rd_byte0[2]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i10.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i9 (.D(rd_byte0[1]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i9.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i8 (.D(rd_byte0[0]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i8.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i7 (.D(data_read[7]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i7.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i6 (.D(data_read[6]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i6.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i5 (.D(data_read[5]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i5.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i4 (.D(data_read[4]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i4.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i3 (.D(data_read[3]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i3.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i2 (.D(data_read[2]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i2.GSR = "ENABLED";
    FD1P3DX sensor_id_i0_i1 (.D(data_read[1]), .SP(sys_clk_c_enable_98), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(sensor_id[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam sensor_id_i0_i1.GSR = "ENABLED";
    FD1P3DX state_FSM_i6 (.D(VCC_net), .SP(sys_clk_c_enable_98), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_byte_num_3__N_481[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3DX state_FSM_i5 (.D(n6471), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3DX state_FSM_i4 (.D(n6505), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3DX state_FSM_i3 (.D(n6465), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3DX state_FSM_i2 (.D(n15445), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n2008[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i7 (.D(data_read[7]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i7.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i6 (.D(data_read[6]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i6.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i5 (.D(data_read[5]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i5.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i4 (.D(data_read[4]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i4.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i3 (.D(data_read[3]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i3.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i2 (.D(data_read[2]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i2.GSR = "ENABLED";
    FD1P3DX reg_4a00_val_i0_i1 (.D(data_read[1]), .SP(sys_clk_c_enable_105), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(reg_4a00_val[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam reg_4a00_val_i0_i1.GSR = "ENABLED";
    FD1S3DX addr_i14 (.D(addr_15__N_455[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i14.GSR = "ENABLED";
    FD1S3DX addr_i11 (.D(addr_15__N_455[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i11.GSR = "ENABLED";
    FD1S3DX addr_i9 (.D(addr_15__N_455[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i9.GSR = "ENABLED";
    LUT4 i4141_2_lut_3_lut_4_lut (.A(n19239), .B(start_N_744), .C(n19289), 
         .D(n2008[1]), .Z(sys_clk_c_enable_230)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam i4141_2_lut_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i6298_2_lut_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(\reg_cfg[13] ), 
         .Z(n8045)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6298_2_lut_3_lut.init = 16'h1010;
    LUT4 i13586_4_lut (.A(wait_cnt[14]), .B(wait_cnt[22]), .C(wait_cnt[11]), 
         .D(wait_cnt[19]), .Z(n17622)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13586_4_lut.init = 16'h8000;
    LUT4 i6118_2_lut_rep_288_3_lut (.A(n19239), .B(start_N_744), .C(n2008[1]), 
         .Z(sys_clk_c_enable_229)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam i6118_2_lut_rep_288_3_lut.init = 16'hd0d0;
    FD1P3DX addr_i7 (.D(n8041), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i7.GSR = "ENABLED";
    FD1P3DX addr_i8 (.D(n8039), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i8.GSR = "ENABLED";
    FD1P3DX addr_i10 (.D(n8037), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i10.GSR = "ENABLED";
    FD1P3DX addr_i12 (.D(n8035), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i12.GSR = "ENABLED";
    FD1P3DX addr_i13 (.D(n8033), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i13.GSR = "ENABLED";
    FD1P3DX addr_i15 (.D(n15833), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i15.GSR = "ENABLED";
    LUT4 i2590_3_lut_4_lut (.A(n2008[1]), .B(n19233), .C(n19288), .D(n2008[2]), 
         .Z(n6465)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i2590_3_lut_4_lut.init = 16'h2f22;
    LUT4 mux_752_i1_3_lut_4_lut (.A(n19239), .B(start_N_744), .C(n2008[1]), 
         .D(n6602), .Z(start_N_727)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam mux_752_i1_3_lut_4_lut.init = 16'hdfd0;
    LUT4 mux_265_i15_3_lut_4_lut (.A(n2008[1]), .B(n19233), .C(addr[14]), 
         .D(reg_cfg[22]), .Z(n2341[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i15_3_lut_4_lut.init = 16'hf2d0;
    FD1P3DX reg_index_2086__i0 (.D(n37[0]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i0.GSR = "ENABLED";
    PFUMX i4144 (.BLUT(n127), .ALUT(reg_cfg[20]), .C0(n17812), .Z(n8035));
    LUT4 mux_265_i12_3_lut_4_lut (.A(n2008[1]), .B(n19233), .C(addr[11]), 
         .D(\reg_cfg[19] ), .Z(n2341[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i12_3_lut_4_lut.init = 16'hf2d0;
    CCU2C final_cnt_2088_add_4_21 (.A0(final_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13403), .S0(n85[19]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_21.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_21.INIT1 = 16'h0000;
    defparam final_cnt_2088_add_4_21.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_21.INJECT1_1 = "NO";
    CCU2C final_cnt_2088_add_4_19 (.A0(final_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13402), .COUT(n13403), .S0(n85[17]), .S1(n85[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_19.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_19.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_19.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_19.INJECT1_1 = "NO";
    FD1P3DX final_cnt_2088__i0 (.D(n107[0]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i0.GSR = "ENABLED";
    CCU2C final_cnt_2088_add_4_17 (.A0(final_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13401), .COUT(n13402), .S0(n85[15]), .S1(n85[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_17.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_17.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_17.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_17.INJECT1_1 = "NO";
    FD1P3DX rd_cnt_2090__i0 (.D(n15107), .SP(sys_clk_c_enable_220), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(389[35:48])
    defparam rd_cnt_2090__i0.GSR = "ENABLED";
    CCU2C final_cnt_2088_add_4_15 (.A0(final_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13400), .COUT(n13401), .S0(n85[13]), .S1(n85[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_15.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_15.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_15.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_15.INJECT1_1 = "NO";
    LUT4 mux_265_i10_3_lut_4_lut (.A(n2008[1]), .B(n19233), .C(addr[9]), 
         .D(\reg_cfg[17] ), .Z(n2341[9])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_265_i10_3_lut_4_lut.init = 16'hf2d0;
    CCU2C final_cnt_2088_add_4_13 (.A0(final_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13399), .COUT(n13400), .S0(n85[11]), .S1(n85[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_13.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_13.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_13.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_13.INJECT1_1 = "NO";
    LUT4 i2620_2_lut (.A(n2008[0]), .B(cam_ready), .Z(n6496)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2620_2_lut.init = 16'h2222;
    LUT4 i6146_2_lut (.A(n464[0]), .B(n7926), .Z(wait_cnt_22__N_520[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6146_2_lut.init = 16'h8888;
    LUT4 i3894_4_lut (.A(n19239), .B(n15468), .C(n19289), .D(n19266), 
         .Z(n7926)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i3894_4_lut.init = 16'hca0a;
    LUT4 i2629_3_lut_4_lut (.A(n39), .B(n2008[3]), .C(n19260), .D(n15), 
         .Z(n6505)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2629_3_lut_4_lut.init = 16'h88f8;
    LUT4 i1_4_lut_adj_177 (.A(n17003), .B(n14930), .C(n15232), .D(n19287), 
         .Z(n15468)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_177.init = 16'hfeff;
    LUT4 i1_4_lut_adj_178 (.A(n16997), .B(wait_cnt[14]), .C(wait_cnt[11]), 
         .D(wait_cnt[22]), .Z(n17003)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_178.init = 16'hbfff;
    LUT4 i1_2_lut (.A(wait_cnt[19]), .B(wait_cnt[10]), .Z(n16997)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    CCU2C final_cnt_2088_add_4_11 (.A0(final_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13398), .COUT(n13399), .S0(n85[9]), .S1(n85[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_11.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_11.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_11.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_179 (.A(wait_cnt[0]), .B(n17614), .C(n16867), .D(n16859), 
         .Z(n15232)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_179.init = 16'hfff7;
    LUT4 i13578_4_lut (.A(wait_cnt[4]), .B(wait_cnt[9]), .C(wait_cnt[2]), 
         .D(wait_cnt[1]), .Z(n17614)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13578_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_180 (.A(wait_cnt[13]), .B(wait_cnt[20]), .Z(n16859)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_180.init = 16'heeee;
    LUT4 i1_2_lut_adj_181 (.A(wait_cnt[3]), .B(n10), .Z(n16867)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_181.init = 16'hdddd;
    LUT4 i1_4_lut_adj_182 (.A(wait_cnt[21]), .B(wait_cnt[12]), .C(wait_cnt[17]), 
         .D(wait_cnt[6]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_182.init = 16'hfffe;
    LUT4 i1_2_lut_adj_183 (.A(start_N_744), .B(n2008[1]), .Z(n17127)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i1_2_lut_adj_183.init = 16'h4444;
    LUT4 i14172_4_lut (.A(reg_index[0]), .B(n16717), .C(n16711), .D(reg_index[4]), 
         .Z(start_N_744)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(314[25:39])
    defparam i14172_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_184 (.A(reg_index[1]), .B(reg_index[7]), .C(reg_index[6]), 
         .D(reg_index[2]), .Z(n16717)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i1_4_lut_adj_184.init = 16'hfffe;
    LUT4 i1_2_lut_adj_185 (.A(reg_index[3]), .B(reg_index[5]), .Z(n16711)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i1_2_lut_adj_185.init = 16'heeee;
    CCU2C final_cnt_2088_add_4_9 (.A0(final_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13397), .COUT(n13398), .S0(n85[7]), .S1(n85[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_9.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_9.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_9.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_9.INJECT1_1 = "NO";
    LUT4 i6435_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[0]), .Z(n107[0])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6435_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_186 (.A(n16867), .B(n16481), .C(n16479), .D(n16465), 
         .Z(n45_adj_1495)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_186.init = 16'hfffe;
    LUT4 i1_4_lut_adj_187 (.A(n16459), .B(n17505), .C(wait_cnt[10]), .D(n16451), 
         .Z(n16481)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_187.init = 16'hffbf;
    CCU2C final_cnt_2088_add_4_7 (.A0(final_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13396), .COUT(n13397), .S0(n85[5]), .S1(n85[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_7.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_7.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_7.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_188 (.A(wait_cnt[13]), .B(wait_cnt[18]), .C(n16453), 
         .D(wait_cnt[20]), .Z(n16465)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_188.init = 16'hfffd;
    LUT4 i1_3_lut (.A(wait_cnt[15]), .B(wait_cnt[5]), .C(wait_cnt[11]), 
         .Z(n16459)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_3_lut.init = 16'hfefe;
    LUT4 i13470_2_lut (.A(wait_cnt[1]), .B(wait_cnt[8]), .Z(n17505)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13470_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_189 (.A(wait_cnt[19]), .B(wait_cnt[4]), .Z(n16451)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_2_lut_adj_189.init = 16'heeee;
    LUT4 i1_4_lut_adj_190 (.A(n17513), .B(n16447), .C(n16445), .D(n16431), 
         .Z(n45_adj_1496)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_190.init = 16'hfffd;
    CCU2C final_cnt_2088_add_4_5 (.A0(final_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13395), .COUT(n13396), .S0(n85[3]), .S1(n85[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_5.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_5.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_5.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_5.INJECT1_1 = "NO";
    LUT4 i13478_2_lut (.A(wait_cnt[3]), .B(wait_cnt[4]), .Z(n17513)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13478_2_lut.init = 16'h8888;
    FD1P3DX data_write__ret0_i0 (.D(\reg_cfg[0] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_191 (.A(n16423), .B(n17511), .C(n16427), .D(wait_cnt[16]), 
         .Z(n16447)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_191.init = 16'hfbff;
    LUT4 i6200_2_lut_rep_290_4_lut (.A(n45_adj_1495), .B(n45_adj_1496), 
         .C(delay_swrst), .D(start_N_744), .Z(n19233)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(333[30] 344[28])
    defparam i6200_2_lut_rep_290_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_adj_192 (.A(wait_cnt[15]), .B(n16453), .C(wait_cnt[13]), 
         .D(wait_cnt[18]), .Z(n16431)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_4_lut_adj_192.init = 16'hfffd;
    LUT4 i1_3_lut_adj_193 (.A(wait_cnt[5]), .B(wait_cnt[20]), .C(wait_cnt[8]), 
         .Z(n16423)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_3_lut_adj_193.init = 16'hfefe;
    LUT4 i13476_2_lut (.A(wait_cnt[10]), .B(wait_cnt[1]), .Z(n17511)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13476_2_lut.init = 16'h8888;
    LUT4 i6643_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[1]), .Z(n107[1])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6643_2_lut_3_lut.init = 16'h8080;
    LUT4 i6349_4_lut_4_lut (.A(reg_index[5]), .B(reg_index[0]), .C(n14844), 
         .D(n17131), .Z(n126_adj_1497)) /* synthesis lut_function=((B (C)+!B (C (D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(351[29:54])
    defparam i6349_4_lut_4_lut.init = 16'hf5d5;
    LUT4 i1_3_lut_adj_194 (.A(wait_cnt[7]), .B(wait_cnt[19]), .C(wait_cnt[11]), 
         .Z(n16427)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_3_lut_adj_194.init = 16'hfdfd;
    LUT4 i1_2_lut_adj_195 (.A(wait_cnt[22]), .B(wait_cnt[14]), .Z(n16453)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(411[29:53])
    defparam i1_2_lut_adj_195.init = 16'heeee;
    LUT4 i6466_3_lut (.A(\rd_byte_num[0] ), .B(rd_byte_num_3__N_481[0]), 
         .C(n2008[4]), .Z(n7853)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam i6466_3_lut.init = 16'hcece;
    CCU2C final_cnt_2088_add_4_3 (.A0(final_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(final_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13394), .COUT(n13395), .S0(n85[1]), .S1(n85[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_3.INIT0 = 16'haaa0;
    defparam final_cnt_2088_add_4_3.INIT1 = 16'haaa0;
    defparam final_cnt_2088_add_4_3.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_3.INJECT1_1 = "NO";
    CCU2C final_cnt_2088_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(final_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13394), .S1(n85[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088_add_4_1.INIT0 = 16'h0000;
    defparam final_cnt_2088_add_4_1.INIT1 = 16'h555f;
    defparam final_cnt_2088_add_4_1.INJECT1_0 = "NO";
    defparam final_cnt_2088_add_4_1.INJECT1_1 = "NO";
    LUT4 i6644_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[2]), .Z(n107[2])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6644_2_lut_3_lut.init = 16'h8080;
    LUT4 n172_bdd_4_lut (.A(n172), .B(n14844), .C(n16095), .D(reg_index[5]), 
         .Z(n19205)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n172_bdd_4_lut.init = 16'hf044;
    FD1P3DX start_114 (.D(start_N_727), .SP(sys_clk_c_enable_186), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(start)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam start_114.GSR = "ENABLED";
    CCU2C reg_index_2086_add_4_9 (.A0(reg_index[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13393), .S0(n37[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086_add_4_9.INIT0 = 16'haaa0;
    defparam reg_index_2086_add_4_9.INIT1 = 16'h0000;
    defparam reg_index_2086_add_4_9.INJECT1_0 = "NO";
    defparam reg_index_2086_add_4_9.INJECT1_1 = "NO";
    LUT4 i6829_2_lut_rep_339 (.A(rd_cnt[0]), .B(rd_cnt[1]), .Z(n19282)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6829_2_lut_rep_339.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_196 (.A(reg_index[1]), .B(reg_index[2]), .C(reg_index[3]), 
         .D(reg_index[0]), .Z(n15963)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_196.init = 16'h8000;
    LUT4 i6710_2_lut_3_lut (.A(reg_index[1]), .B(reg_index[2]), .C(reg_index[0]), 
         .Z(n172)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i6710_2_lut_3_lut.init = 16'h8080;
    CCU2C reg_index_2086_add_4_7 (.A0(reg_index[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13392), .COUT(n13393), .S0(n37[5]), .S1(n37[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086_add_4_7.INIT0 = 16'haaa0;
    defparam reg_index_2086_add_4_7.INIT1 = 16'haaa0;
    defparam reg_index_2086_add_4_7.INJECT1_0 = "NO";
    defparam reg_index_2086_add_4_7.INJECT1_1 = "NO";
    CCU2C reg_index_2086_add_4_5 (.A0(reg_index[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13391), .COUT(n13392), .S0(n37[3]), .S1(n37[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086_add_4_5.INIT0 = 16'haaa0;
    defparam reg_index_2086_add_4_5.INIT1 = 16'haaa0;
    defparam reg_index_2086_add_4_5.INJECT1_0 = "NO";
    defparam reg_index_2086_add_4_5.INJECT1_1 = "NO";
    FD1P3DX delay_swrst_128 (.D(start_N_744), .SP(sys_clk_c_enable_200), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(delay_swrst)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam delay_swrst_128.GSR = "ENABLED";
    FD1P3DX cfg_done_120 (.D(VCC_net), .SP(sys_clk_c_enable_191), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam cfg_done_120.GSR = "ENABLED";
    LUT4 i6645_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[3]), .Z(n107[3])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6645_2_lut_3_lut.init = 16'h8080;
    CCU2C reg_index_2086_add_4_3 (.A0(reg_index[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n13390), .COUT(n13391), .S0(n37[1]), .S1(n37[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086_add_4_3.INIT0 = 16'haaa0;
    defparam reg_index_2086_add_4_3.INIT1 = 16'haaa0;
    defparam reg_index_2086_add_4_3.INJECT1_0 = "NO";
    defparam reg_index_2086_add_4_3.INJECT1_1 = "NO";
    CCU2C reg_index_2086_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(reg_index[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n13390), .S1(n37[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086_add_4_1.INIT0 = 16'h0000;
    defparam reg_index_2086_add_4_1.INIT1 = 16'h555f;
    defparam reg_index_2086_add_4_1.INJECT1_0 = "NO";
    defparam reg_index_2086_add_4_1.INJECT1_1 = "NO";
    LUT4 i6649_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[7]), .Z(n107[7])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6649_2_lut_3_lut.init = 16'h8080;
    LUT4 i6650_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[8]), .Z(n107[8])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6650_2_lut_3_lut.init = 16'h8080;
    FD1P3DX reg_index_2086__i1 (.D(n37[1]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i1.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i2 (.D(n37[2]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i2.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i3 (.D(n37[3]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i3.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i4 (.D(n37[4]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i4.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i5 (.D(n37[5]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i5.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i6 (.D(n37[6]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i6.GSR = "ENABLED";
    FD1P3DX reg_index_2086__i7 (.D(n37[7]), .SP(sys_clk_c_enable_200), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(356[44:60])
    defparam reg_index_2086__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i1 (.D(n107[1]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i1.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i2 (.D(n107[2]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i2.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i3 (.D(n107[3]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i3.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i4 (.D(n107[4]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i4.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i5 (.D(n107[5]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i5.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i6 (.D(n107[6]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i6.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i7 (.D(n107[7]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i7.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i8 (.D(n107[8]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i8.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i9 (.D(n107[9]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i9.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i10 (.D(n107[10]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i10.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i11 (.D(n107[11]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i11.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i12 (.D(n107[12]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i12.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i13 (.D(n107[13]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i13.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i14 (.D(n107[14]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i14.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i15 (.D(n107[15]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i15.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i16 (.D(n107[16]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i16.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i17 (.D(n107[17]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i17.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i18 (.D(n107[18]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i18.GSR = "ENABLED";
    FD1P3DX final_cnt_2088__i19 (.D(n107[19]), .SP(sys_clk_c_enable_219), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(371[38:54])
    defparam final_cnt_2088__i19.GSR = "ENABLED";
    FD1P3DX rd_cnt_2090__i1 (.D(n14640), .SP(sys_clk_c_enable_220), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(389[35:48])
    defparam rd_cnt_2090__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(rd_byte_num_3__N_481[0]), .B(n2008[4]), 
         .C(rd_cnt[1]), .D(rd_cnt[0]), .Z(n16857)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0444;
    LUT4 i6651_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[9]), .Z(n107[9])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6651_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_4_lut (.A(reg_index[2]), .B(reg_index[0]), .C(n17509), 
         .D(reg_index[4]), .Z(n16095)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(351[29:54])
    defparam i1_4_lut_4_lut.init = 16'h0004;
    FD1P3DX data_write__ret0_i1 (.D(\reg_cfg[1] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[1]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i1.GSR = "ENABLED";
    LUT4 i6652_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[10]), .Z(n107[10])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6652_2_lut_3_lut.init = 16'h8080;
    LUT4 i6653_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[11]), .Z(n107[11])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6653_2_lut_3_lut.init = 16'h8080;
    LUT4 i6654_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[12]), .Z(n107[12])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6654_2_lut_3_lut.init = 16'h8080;
    FD1P3DX data_write__ret0_i2 (.D(\reg_cfg[2] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i2.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i3 (.D(\reg_cfg[3] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[3]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i3.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i4 (.D(\reg_cfg[4] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i4.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i5 (.D(\reg_cfg[5] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[5]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i5.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i6 (.D(\reg_cfg[6] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i6.GSR = "ENABLED";
    FD1P3DX data_write__ret0_i7 (.D(\reg_cfg[7] ), .SP(sys_clk_c_enable_229), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[7]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam data_write__ret0_i7.GSR = "ENABLED";
    FD1P3DX addr_i0 (.D(n7936), .SP(sys_clk_c_enable_230), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(addr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=36, LSE_RLINE=56 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam addr_i0.GSR = "ENABLED";
    LUT4 reg_index_5__bdd_2_lut_14791 (.A(reg_index[5]), .B(reg_index[3]), 
         .Z(n18750)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam reg_index_5__bdd_2_lut_14791.init = 16'h7777;
    LUT4 i6655_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[13]), .Z(n107[13])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6655_2_lut_3_lut.init = 16'h8080;
    LUT4 i6656_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[14]), .Z(n107[14])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6656_2_lut_3_lut.init = 16'h8080;
    LUT4 i6647_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[5]), .Z(n107[5])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6647_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_197 (.A(wait_cnt[9]), .B(wait_cnt[2]), .C(wait_cnt[0]), 
         .D(n19286), .Z(n16479)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_3_lut_4_lut_adj_197.init = 16'hff7f;
    LUT4 i1_3_lut_4_lut_adj_198 (.A(wait_cnt[9]), .B(wait_cnt[2]), .C(n10), 
         .D(wait_cnt[0]), .Z(n16445)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_4_lut_adj_198.init = 16'hf7ff;
    LUT4 reg_index_2__bdd_4_lut (.A(reg_index[2]), .B(reg_index[3]), .C(reg_index[0]), 
         .D(reg_index[1]), .Z(n18386)) /* synthesis lut_function=((B (C+!(D))+!B ((D)+!C))+!A) */ ;
    defparam reg_index_2__bdd_4_lut.init = 16'hf7df;
    LUT4 i1_2_lut_rep_343 (.A(wait_cnt[16]), .B(wait_cnt[7]), .Z(n19286)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_343.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_199 (.A(wait_cnt[16]), .B(wait_cnt[7]), .C(wait_cnt[15]), 
         .D(wait_cnt[8]), .Z(n14930)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_199.init = 16'hfeff;
    LUT4 i11145_2_lut_rep_344 (.A(wait_cnt[5]), .B(wait_cnt[18]), .Z(n19287)) /* synthesis lut_function=(A (B)) */ ;
    defparam i11145_2_lut_rep_344.init = 16'h8888;
    LUT4 i6657_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[15]), .Z(n107[15])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6657_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_200 (.A(wait_cnt[5]), .B(wait_cnt[18]), .C(n17622), 
         .D(n14930), .Z(n15889)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_3_lut_4_lut_adj_200.init = 16'hff7f;
    LUT4 i6658_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[16]), .Z(n107[16])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6658_2_lut_3_lut.init = 16'h8080;
    LUT4 flag_done_I_0_2_lut_rep_345 (.A(flag_done), .B(flag_done_d2), .Z(n19288)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam flag_done_I_0_2_lut_rep_345.init = 16'h2222;
    LUT4 i14093_2_lut_rep_323_3_lut (.A(flag_done), .B(flag_done_d2), .C(start), 
         .Z(n19266)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i14093_2_lut_rep_323_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_317_3_lut (.A(flag_done), .B(flag_done_d2), .C(n2008[2]), 
         .Z(n19260)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i1_2_lut_rep_317_3_lut.init = 16'h2020;
    LUT4 i6297_4_lut (.A(n127_adj_1499), .B(n19289), .C(n254), .D(reg_index[7]), 
         .Z(n8043)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam i6297_4_lut.init = 16'h3022;
    LUT4 i6375_2_lut (.A(n19205), .B(reg_index[6]), .Z(n127_adj_1499)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i6375_2_lut.init = 16'h2222;
    LUT4 i6291_4_lut (.A(n15963), .B(reg_index[6]), .C(reg_index[5]), 
         .D(reg_index[4]), .Z(n254)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i6291_4_lut.init = 16'hfcec;
    LUT4 i6646_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[4]), .Z(n107[4])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6646_2_lut_3_lut.init = 16'h8080;
    LUT4 i466_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(rd_byte_num_3__N_481[0]), 
         .D(start), .Z(sys_clk_c_enable_105)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i466_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(n15), 
         .D(n2008[2]), .Z(sys_clk_c_enable_200)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(41[30:56])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 i1667_3_lut (.A(n2008[1]), .B(n39), .C(n2008[3]), .Z(sys_clk_c_enable_219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i1667_3_lut.init = 16'hcaca;
    CCU2C add_65_23 (.A0(wait_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13279), .S0(n464[21]), .S1(n464[22]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_23.INIT0 = 16'haaaa;
    defparam add_65_23.INIT1 = 16'haaaa;
    defparam add_65_23.INJECT1_0 = "NO";
    defparam add_65_23.INJECT1_1 = "NO";
    CCU2C add_65_21 (.A0(wait_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13278), .COUT(n13279), .S0(n464[19]), .S1(n464[20]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_21.INIT0 = 16'haaaa;
    defparam add_65_21.INIT1 = 16'haaaa;
    defparam add_65_21.INJECT1_0 = "NO";
    defparam add_65_21.INJECT1_1 = "NO";
    LUT4 i6648_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[6]), .Z(n107[6])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6648_2_lut_3_lut.init = 16'h8080;
    LUT4 i13924_3_lut (.A(n15983), .B(n126_adj_1497), .C(reg_index[6]), 
         .Z(n127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(302[14] 424[12])
    defparam i13924_3_lut.init = 16'hcaca;
    LUT4 i6236_3_lut (.A(\rd_byte_num[1] ), .B(rd_byte_num_3__N_481[0]), 
         .C(n2008[4]), .Z(rd_byte_num_3__N_481[1])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6236_3_lut.init = 16'h3232;
    CCU2C add_65_19 (.A0(wait_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13277), .COUT(n13278), .S0(n464[17]), .S1(n464[18]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_19.INIT0 = 16'haaaa;
    defparam add_65_19.INIT1 = 16'haaaa;
    defparam add_65_19.INJECT1_0 = "NO";
    defparam add_65_19.INJECT1_1 = "NO";
    LUT4 i6240_2_lut (.A(n464[22]), .B(n7926), .Z(wait_cnt_22__N_520[22])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6240_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_201 (.A(reg_index[3]), .B(reg_index[2]), .Z(n17329)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(314[25:39])
    defparam i1_2_lut_adj_201.init = 16'heeee;
    LUT4 i14085_4_lut (.A(n2008[1]), .B(n16853), .C(n16857), .D(n19266), 
         .Z(sys_clk_c_enable_186)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;
    defparam i14085_4_lut.init = 16'habbb;
    LUT4 i1_2_lut_adj_202 (.A(n2008[3]), .B(n2008[0]), .Z(n16853)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_202.init = 16'heeee;
    LUT4 i6241_2_lut (.A(n464[21]), .B(n7926), .Z(wait_cnt_22__N_520[21])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6241_2_lut.init = 16'h8888;
    CCU2C add_65_17 (.A0(wait_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(wait_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13276), .COUT(n13277), .S0(n464[15]), .S1(n464[16]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(416[41:56])
    defparam add_65_17.INIT0 = 16'haaaa;
    defparam add_65_17.INIT1 = 16'haaaa;
    defparam add_65_17.INJECT1_0 = "NO";
    defparam add_65_17.INJECT1_1 = "NO";
    LUT4 i6242_2_lut (.A(n464[20]), .B(n7926), .Z(wait_cnt_22__N_520[20])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6242_2_lut.init = 16'h8888;
    LUT4 i6243_2_lut (.A(n464[19]), .B(n7926), .Z(wait_cnt_22__N_520[19])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6243_2_lut.init = 16'h8888;
    LUT4 i6244_2_lut (.A(n464[18]), .B(n7926), .Z(wait_cnt_22__N_520[18])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6244_2_lut.init = 16'h8888;
    LUT4 i6245_2_lut (.A(n464[17]), .B(n7926), .Z(wait_cnt_22__N_520[17])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6245_2_lut.init = 16'h8888;
    LUT4 i6246_2_lut (.A(n464[16]), .B(n7926), .Z(wait_cnt_22__N_520[16])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6246_2_lut.init = 16'h8888;
    LUT4 i6247_2_lut (.A(n464[15]), .B(n7926), .Z(wait_cnt_22__N_520[15])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6247_2_lut.init = 16'h8888;
    LUT4 i6248_2_lut (.A(n464[14]), .B(n7926), .Z(wait_cnt_22__N_520[14])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6248_2_lut.init = 16'h8888;
    PFUMX i2724 (.BLUT(n10761), .ALUT(start_N_728), .C0(rd_byte_num_3__N_481[0]), 
          .Z(n6602));
    LUT4 i6249_2_lut (.A(n464[13]), .B(n7926), .Z(wait_cnt_22__N_520[13])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6249_2_lut.init = 16'h8888;
    LUT4 i6250_2_lut (.A(n464[12]), .B(n7926), .Z(wait_cnt_22__N_520[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6250_2_lut.init = 16'h8888;
    LUT4 i6251_2_lut (.A(n464[11]), .B(n7926), .Z(wait_cnt_22__N_520[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6251_2_lut.init = 16'h8888;
    LUT4 i6252_2_lut (.A(n464[10]), .B(n7926), .Z(wait_cnt_22__N_520[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6252_2_lut.init = 16'h8888;
    LUT4 i6253_2_lut (.A(n464[9]), .B(n7926), .Z(wait_cnt_22__N_520[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6253_2_lut.init = 16'h8888;
    LUT4 i6254_2_lut (.A(n464[8]), .B(n7926), .Z(wait_cnt_22__N_520[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6254_2_lut.init = 16'h8888;
    LUT4 i6255_2_lut (.A(n464[7]), .B(n7926), .Z(wait_cnt_22__N_520[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6255_2_lut.init = 16'h8888;
    LUT4 i6256_2_lut (.A(n464[6]), .B(n7926), .Z(wait_cnt_22__N_520[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6256_2_lut.init = 16'h8888;
    LUT4 i6257_2_lut (.A(n464[5]), .B(n7926), .Z(wait_cnt_22__N_520[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6257_2_lut.init = 16'h8888;
    LUT4 i6258_2_lut (.A(n464[4]), .B(n7926), .Z(wait_cnt_22__N_520[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6258_2_lut.init = 16'h8888;
    LUT4 i6259_2_lut (.A(n464[3]), .B(n7926), .Z(wait_cnt_22__N_520[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6259_2_lut.init = 16'h8888;
    LUT4 i6260_2_lut (.A(n464[2]), .B(n7926), .Z(wait_cnt_22__N_520[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6260_2_lut.init = 16'h8888;
    LUT4 i6261_2_lut (.A(n464[1]), .B(n7926), .Z(wait_cnt_22__N_520[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6261_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_203 (.A(n17437), .B(n17664), .C(n17229), .D(n17211), 
         .Z(n39)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_203.init = 16'hfff7;
    LUT4 i13402_2_lut (.A(final_cnt[17]), .B(final_cnt[8]), .Z(n17437)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13402_2_lut.init = 16'h8888;
    LUT4 i13628_4_lut (.A(final_cnt[15]), .B(n17445), .C(n17441), .D(final_cnt[3]), 
         .Z(n17664)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13628_4_lut.init = 16'h8000;
    LUT4 i13474_2_lut (.A(reg_index[3]), .B(reg_index[1]), .Z(n17509)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13474_2_lut.init = 16'heeee;
    LUT4 i6661_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[19]), .Z(n107[19])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6661_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_204 (.A(final_cnt[13]), .B(n17433), .C(n17201), 
         .D(final_cnt[14]), .Z(n17229)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_204.init = 16'hfff7;
    LUT4 i1_4_lut_adj_205 (.A(final_cnt[11]), .B(n17199), .C(n17203), 
         .D(final_cnt[12]), .Z(n17211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_205.init = 16'hfffe;
    LUT4 i13410_2_lut (.A(final_cnt[1]), .B(final_cnt[4]), .Z(n17445)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13410_2_lut.init = 16'h8888;
    LUT4 i227_2_lut_rep_293 (.A(n39), .B(n2008[3]), .Z(sys_clk_c_enable_191)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i227_2_lut_rep_293.init = 16'h4444;
    LUT4 i2596_3_lut_4_lut (.A(n39), .B(n2008[3]), .C(n19266), .D(n2008[4]), 
         .Z(n6471)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2596_3_lut_4_lut.init = 16'hf444;
    LUT4 i6873_3_lut_4_lut_4_lut (.A(n19288), .B(start), .C(n2008[4]), 
         .D(n19282), .Z(n10761)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(401[25:51])
    defparam i6873_3_lut_4_lut_4_lut.init = 16'h7505;
    LUT4 i13406_2_lut (.A(final_cnt[16]), .B(final_cnt[18]), .Z(n17441)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13406_2_lut.init = 16'h8888;
    LUT4 i13398_2_lut (.A(final_cnt[0]), .B(final_cnt[2]), .Z(n17433)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13398_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_206 (.A(final_cnt[6]), .B(final_cnt[10]), .Z(n17201)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_206.init = 16'heeee;
    LUT4 i1_2_lut_adj_207 (.A(final_cnt[5]), .B(final_cnt[7]), .Z(n17199)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_207.init = 16'heeee;
    LUT4 i1_2_lut_adj_208 (.A(final_cnt[9]), .B(final_cnt[19]), .Z(n17203)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_208.init = 16'heeee;
    LUT4 i1_4_lut_adj_209 (.A(n14911), .B(n14927), .C(n17576), .D(reg_index[2]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_209.init = 16'hefff;
    LUT4 i13540_2_lut (.A(reg_index[1]), .B(reg_index[7]), .Z(n17576)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13540_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_210 (.A(reg_index[0]), .B(reg_index[3]), .Z(n14911)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_210.init = 16'hbbbb;
    LUT4 i1_3_lut_adj_211 (.A(reg_index[4]), .B(reg_index[5]), .C(reg_index[6]), 
         .Z(n14927)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i1_3_lut_adj_211.init = 16'hfbfb;
    LUT4 i6659_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[17]), .Z(n107[17])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6659_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_212 (.A(sys_clk_c_enable_200), .B(n17127), .C(n2023), 
         .D(n19239), .Z(n15445)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i1_4_lut_adj_212.init = 16'hfefa;
    LUT4 i216_2_lut (.A(cam_ready), .B(n2008[0]), .Z(n2023)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i216_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_213 (.A(reg_index[1]), .B(reg_index[2]), .Z(n17131)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i1_2_lut_adj_213.init = 16'heeee;
    LUT4 i1_2_lut_adj_214 (.A(reg_index[4]), .B(reg_index[3]), .Z(n14844)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam i1_2_lut_adj_214.init = 16'h8888;
    LUT4 i6131_4_lut_4_lut (.A(n19288), .B(start), .C(n15889), .D(n16753), 
         .Z(start_N_728)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(401[25:51])
    defparam i6131_4_lut_4_lut.init = 16'h4447;
    LUT4 i13864_3_lut (.A(n45_adj_1495), .B(n45_adj_1496), .C(delay_swrst), 
         .Z(n19239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i13864_3_lut.init = 16'hcaca;
    LUT4 i2648_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[14]), 
         .Z(addr_15__N_455[14])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2648_3_lut.init = 16'hdcdc;
    LUT4 i6849_2_lut_3_lut_4_lut (.A(n19288), .B(start), .C(n2008[4]), 
         .D(n19282), .Z(sys_clk_c_enable_220)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(401[25:51])
    defparam i6849_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 reg_index_7__I_0_148_Mux_22_i255_4_lut (.A(reg_index[5]), .B(n19218), 
         .C(reg_index[7]), .D(reg_index[6]), .Z(reg_cfg[22])) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(47[9] 264[16])
    defparam reg_index_7__I_0_148_Mux_22_i255_4_lut.init = 16'hfac0;
    LUT4 start_N_755_bdd_2_lut_14717_2_lut (.A(start), .B(\current_state[5] ), 
         .Z(n19176)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam start_N_755_bdd_2_lut_14717_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_14721_2_lut (.A(start), .B(\current_state[4] ), 
         .Z(n19179)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam start_N_755_bdd_2_lut_14721_2_lut.init = 16'h4444;
    LUT4 start_N_755_bdd_2_lut_14725_2_lut (.A(start), .B(\current_state[3] ), 
         .Z(n19182)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam start_N_755_bdd_2_lut_14725_2_lut.init = 16'h4444;
    LUT4 n5609_bdd_2_lut_14439_2_lut (.A(start), .B(\current_state[2] ), 
         .Z(n18812)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam n5609_bdd_2_lut_14439_2_lut.init = 16'h4444;
    LUT4 i6660_2_lut_3_lut (.A(n39), .B(n2008[3]), .C(n85[18]), .Z(n107[18])) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i6660_2_lut_3_lut.init = 16'h8080;
    LUT4 i2650_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[11]), 
         .Z(addr_15__N_455[11])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2650_3_lut.init = 16'hdcdc;
    LUT4 n19_bdd_2_lut_2_lut (.A(start), .B(\current_state[7] ), .Z(n19172)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam n19_bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 n5609_bdd_2_lut_14454_2_lut (.A(start), .B(\current_state[8] ), 
         .Z(n18853)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam n5609_bdd_2_lut_14454_2_lut.init = 16'h4444;
    LUT4 i6359_2_lut_2_lut (.A(start), .B(\current_state[6] ), .Z(\next_state_9__N_917[6] )) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam i6359_2_lut_2_lut.init = 16'h4444;
    LUT4 n5609_bdd_2_lut_14446_2_lut (.A(start), .B(\current_state[9] ), 
         .Z(n18846)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam n5609_bdd_2_lut_14446_2_lut.init = 16'h4444;
    LUT4 i47_4_lut_4_lut (.A(start), .B(\next_state[0] ), .C(\current_state[0] ), 
         .D(n19), .Z(n26)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(408[30:36])
    defparam i47_4_lut_4_lut.init = 16'h5c50;
    PFUMX i14776 (.BLUT(n19358), .ALUT(n19359), .C0(n17127), .Z(sys_clk_c_enable_82));
    LUT4 i1_3_lut_4_lut_adj_215 (.A(n19288), .B(start), .C(rd_cnt[1]), 
         .D(rd_cnt[0]), .Z(n14640)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(401[25:51])
    defparam i1_3_lut_4_lut_adj_215.init = 16'h0770;
    LUT4 i2652_3_lut (.A(n2008[4]), .B(rd_byte_num_3__N_481[0]), .C(n2341[9]), 
         .Z(addr_15__N_455[9])) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/ov9734_ctrl.v(303[13] 423[20])
    defparam i2652_3_lut.init = 16'hdcdc;
    LUT4 i1_2_lut_adj_216 (.A(n15232), .B(wait_cnt[10]), .Z(n16753)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_216.init = 16'heeee;
    
endmodule
//
// Verilog Description of module \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000) 
//

module \i2c_drive(IIC_CLK=26'b010011100010000,DIV_FREQ_FACTOR=26'b01001110001000)  (\current_state[2] , 
            \current_state[3] , \current_state[4] , sys_rst_n_N_472, sys_clk_c, 
            \current_state[0] , \current_state[5] , next_state, data_read, 
            \current_state[6] , sda_transmit, flag_done, n17805, rd_byte0, 
            data_write, GND_net, VCC_net, n19254, n19, addr, i2c_sclk_0_c, 
            n8, rd_first_done, start, n15714, \current_state[7] , 
            \current_state[9] , \current_state[8] , n18396, i2c_sda_0_out, 
            n18853, n26, n18846, \rd_byte_num[1] , n18812, ctrl_w0_r1, 
            sda_transmit_en_N_1061, n19182, n19179, n19176, n19172, 
            \rd_byte_num[0] , n18394, \next_state_9__N_917[6] ) /* synthesis syn_module_defined=1 */ ;
    output \current_state[2] ;
    output \current_state[3] ;
    output \current_state[4] ;
    input sys_rst_n_N_472;
    input sys_clk_c;
    output \current_state[0] ;
    output \current_state[5] ;
    output [9:0]next_state;
    output [7:0]data_read;
    output \current_state[6] ;
    output sda_transmit;
    output flag_done;
    input n17805;
    output [7:0]rd_byte0;
    input [7:0]data_write;
    input GND_net;
    input VCC_net;
    output n19254;
    output n19;
    input [15:0]addr;
    output i2c_sclk_0_c;
    output n8;
    output rd_first_done;
    input start;
    output n15714;
    output \current_state[7] ;
    output \current_state[9] ;
    output \current_state[8] ;
    input n18396;
    input i2c_sda_0_out;
    input n18853;
    input n26;
    input n18846;
    input \rd_byte_num[1] ;
    input n18812;
    input ctrl_w0_r1;
    output sda_transmit_en_N_1061;
    input n19182;
    input n19179;
    input n19176;
    input n19172;
    input \rd_byte_num[0] ;
    output n18394;
    input \next_state_9__N_917[6] ;
    
    wire drive_clk /* synthesis is_clock=1, SET_AS_NETWORK=\u_top_iic/inst_i2c_drive/drive_clk */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(32[18:27])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    
    wire n16955, n11;
    wire [9:0]cnt_scl;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(34[18:25])
    
    wire n19275, drive_clk_enable_9, n19273, n17648, n20, n4470, 
        n19309, n19304, n35, n10776, n31, n14849, n19310, n18680, 
        n17549, n4779, n14823, n19302, n15856, n10307;
    wire [9:0]current_state;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[17:30])
    
    wire n16197, n4091, n55, n15764;
    wire [7:0]data_read_temp;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(39[17:31])
    
    wire n17804, n17628, n16507;
    wire [14:0]cnt_div;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(33[18:25])
    wire [14:0]n1;
    
    wire n31_adj_1463, n7411, n4;
    wire [9:0]cnt_scl_9__N_793;
    
    wire n15489, n18796, n15542, n30_adj_1464, n18315, sda_transmit_N_1106, 
        drive_clk_enable_28, n19257, n15584, flag_ack_N_1096, n15689, 
        n8_c, n34, n19315, n19296, n15371, n16277, n15409, n19291, 
        sda_transmit_en, drive_clk_enable_2;
    wire [0:0]n4933;
    
    wire drive_clk_enable_3;
    wire [0:0]n4725;
    
    wire drive_clk_enable_31, flag_ack, drive_clk_enable_5, n18799;
    wire [9:0]next_state_9__N_803;
    
    wire drive_clk_enable_21, drive_clk_N_1034, n21, n57, n54, n18086, 
        n14078;
    wire [0:0]n4927;
    
    wire n19237, n16227, n16677, n4_adj_1465, n4847, n19_c, n19246;
    wire [9:0]next_state_c;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(36[32:42])
    
    wire n18845, n6628, n6632, n15553, n19256, n19232, n13268;
    wire [9:0]cnt_scl_9__N_899;
    
    wire n19307, n19305, n101, n5555, n17435, n17684;
    wire [3:0]rd_cnt;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(41[17:23])
    
    wire n15244, n19242, n15531, n15246, n16593, n23, n16081, 
        n16317, n14856, n18798, n15530, n15243, n19308, n14937, 
        n19245, n15591, n62, n86, n56, n14908, n12, n19271, 
        n19292, n16679, n15528, n15245, n16727, n16697, n19314, 
        n19252;
    wire [9:0]next_state_9__N_967;
    
    wire flag_ack_N_1116, n17797, n15589, n10810, n19267, n19250, 
        drive_clk_enable_10;
    wire [0:0]n4284;
    wire [0:0]n4296;
    
    wire n16371, n15606, sys_clk_c_enable_54, n10802, n15667, n19295, 
        n15873, drive_clk_enable_7, n19279, drive_clk_enable_8, n18859, 
        n18850, n18857;
    wire [9:0]n4872;
    
    wire n19177;
    wire [9:0]n4848;
    
    wire n19362, n13413, n16383, n19183, n19361, n17554, n5681, 
        n5691, n18810, n18847, n18848, n18849, n10420, n19247, 
        n13267, n17145, n17604, n17135, n18854, n18855, n18856, 
        n21_adj_1468, n39, n19290, n14924, n7069, n7103, n19312, 
        n8_adj_1469, n16345, n17431, n7464, n16883, n16571, drive_clk_enable_14, 
        n15271, n16873, n16299, n15896, n14864, n39_adj_1470, n15841, 
        n15560, n15792, n16847, n6, n16839, n16573, n16743, n14862, 
        n17475, n16837, n16735, n16733, n16191, n16667, n16673, 
        n16655, n16661, n16587, n15869, n19259, n16217, n19276, 
        n18815, n18861, n18862, n18863, n16333, n18864, n15502, 
        n15499, n15500, n15498, n15496, n15501, drive_clk_enable_30, 
        n17806, n17807, n17808, n16597, n19301, n16311, n35_adj_1474;
    wire [0:0]n4182;
    
    wire n18313, n17887, n17069, n7323, n15391, n19202, n17717, 
        n6634, n19235, n18323, n20238, n7858, n15668, n16601, 
        n13266, n15507, n15539, n19299, n16895, n19297, n10, n19173, 
        n18858, n18851, n18844, n13265;
    wire [9:0]n4860;
    
    wire n13264, n20_adj_1475;
    wire [14:0]n2;
    
    wire n5145, n17624, n17477, n16363, n19317, n19241, n16401, 
        n16397, n15444, n5683, n15541, n19278, n19203, n17714;
    wire [0:0]n4299;
    
    wire n15814, n15872, n19014, n14822, n16179, n15508, n13262, 
        n16621, n18124, n15385, n12_adj_1479, n8_adj_1480, n5682, 
        n19181, n15846, n58, n14905, n5684;
    wire [9:0]n4792;
    
    wire n5686, n17598, n6_adj_1481, n17600, n14026, n18314, n18310, 
        n14765, n17960, n12_adj_1482, n15373, n19283, n15748, n18797, 
        n19178, n19363, n19204, n19175, n23_adj_1483;
    wire [0:0]n4699;
    wire [0:0]n4709;
    wire [0:0]n4722;
    
    wire n18679, n18852, n15870, sda_transmit_N_1103, n7315, n15289;
    wire [5:0]n6014;
    
    wire n16649, n18811, n18860, n5827, n18402, n19280, n19272, 
        n18399, n19281, n19255, n19306, n7438, n19240, n19293, 
        n17, n19300, n16193;
    wire [0:0]n4719;
    
    wire n10812, n18827, n19294, n13261, n19174, n13260, n18312, 
        n16973, n15580, n18814, n18, n16079, n18813, n16939, n16583, 
        n16, n16819, n7478, n19268, n63, n13259, n15484, n13258, 
        n16064, n13, n15884, n16605, n19316, n23_adj_1490, n15915, 
        n19180, n15005, n19190;
    wire [0:0]n4907;
    
    wire n13257, n19303, n5628, n15612, n5694, n13256, n17712, 
        n16049, n33_adj_1491, n18311;
    wire [9:0]n4806;
    
    wire n15, n18_adj_1492, n12_adj_1493, n17795, n17796, n19264, 
        n16909, n16487;
    
    LUT4 i14111_4_lut (.A(n16955), .B(n11), .C(cnt_scl[3]), .D(n19275), 
         .Z(drive_clk_enable_9)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i14111_4_lut.init = 16'h0040;
    LUT4 i1_4_lut (.A(n19273), .B(n17648), .C(cnt_scl[1]), .D(n20), 
         .Z(n4470)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C)))) */ ;
    defparam i1_4_lut.init = 16'h0301;
    LUT4 i1_rep_25_4_lut (.A(n19309), .B(n19304), .C(n35), .D(n10776), 
         .Z(n31)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i1_rep_25_4_lut.init = 16'h5073;
    LUT4 i2_4_lut (.A(n14849), .B(n19310), .C(n18680), .D(n17549), .Z(n4779)) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut.init = 16'h2232;
    LUT4 i1_4_lut_adj_24 (.A(n14823), .B(n19302), .C(n15856), .D(n10307), 
         .Z(n14849)) /* synthesis lut_function=(!(A (B+(D))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h0032;
    LUT4 i1_4_lut_adj_25 (.A(current_state[1]), .B(\current_state[2] ), 
         .C(\current_state[3] ), .D(\current_state[4] ), .Z(n14823)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_25.init = 16'h0012;
    LUT4 i2_4_lut_adj_26 (.A(\current_state[2] ), .B(\current_state[3] ), 
         .C(\current_state[4] ), .D(current_state[1]), .Z(n15856)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_26.init = 16'h0012;
    LUT4 i1_4_lut_4_lut (.A(n19275), .B(n16197), .C(n4091), .D(n55), 
         .Z(n15764)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0400;
    FD1P3DX data_read_temp_i0_i0 (.D(n17804), .SP(cnt_scl[4]), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_27 (.A(n19275), .B(cnt_scl[3]), .C(cnt_scl[2]), 
         .D(n17628), .Z(n16507)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_27.init = 16'h0051;
    FD1S3DX cnt_div__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i0.GSR = "ENABLED";
    LUT4 i6424_2_lut (.A(\current_state[0] ), .B(\current_state[5] ), .Z(n10307)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6424_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_28 (.A(n19302), .B(n31_adj_1463), .C(n10307), .D(n7411), 
         .Z(n4)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_28.init = 16'h0504;
    FD1S3BX current_state_i0 (.D(next_state[0]), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(\current_state[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i0.GSR = "ENABLED";
    FD1S3DX cnt_scl_i0 (.D(cnt_scl_9__N_793[0]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i0.GSR = "ENABLED";
    LUT4 n15764_bdd_4_lut_14415 (.A(n15764), .B(n15489), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n18796)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam n15764_bdd_4_lut_14415.init = 16'ha0c0;
    LUT4 i1_4_lut_4_lut_adj_29 (.A(n19275), .B(n15542), .C(n30_adj_1464), 
         .D(n18315), .Z(sda_transmit_N_1106)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_29.init = 16'h4000;
    FD1P3DX data_read_i0_i0 (.D(data_read_temp[0]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_4_lut (.A(n19257), .B(n15584), .C(\current_state[6] ), 
         .D(flag_ack_N_1096), .Z(n15689)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i70_rep_29_4_lut (.A(n8_c), .B(n34), .C(n19315), .D(n19296), 
         .Z(n15371)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;
    defparam i70_rep_29_4_lut.init = 16'h3332;
    LUT4 i1_4_lut_adj_30 (.A(cnt_scl[1]), .B(n16277), .C(n15409), .D(n19291), 
         .Z(n34)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_30.init = 16'ha0a8;
    FD1P3BX sda_transmit_en_263 (.D(n4933[0]), .SP(drive_clk_enable_2), 
            .CK(drive_clk), .PD(sys_rst_n_N_472), .Q(sda_transmit_en)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam sda_transmit_en_263.GSR = "ENABLED";
    FD1P3BX sda_transmit_264 (.D(n4725[0]), .SP(drive_clk_enable_3), .CK(drive_clk), 
            .PD(sys_rst_n_N_472), .Q(sda_transmit)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam sda_transmit_264.GSR = "ENABLED";
    FD1P3DX flag_done_265 (.D(n17805), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam flag_done_265.GSR = "ENABLED";
    FD1P3DX flag_ack_266 (.D(n18799), .SP(drive_clk_enable_5), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_ack)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam flag_ack_266.GSR = "ENABLED";
    FD1S3BX next_state_i0 (.D(next_state_9__N_803[0]), .CK(drive_clk), .PD(sys_rst_n_N_472), 
            .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i0.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i0 (.D(data_read_temp[0]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i0.GSR = "ENABLED";
    FD1S3BX drive_clk_259 (.D(drive_clk_N_1034), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(drive_clk)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam drive_clk_259.GSR = "ENABLED";
    LUT4 i34_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .D(cnt_scl[5]), .Z(n21)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i34_4_lut_4_lut.init = 16'h02c1;
    LUT4 i1_4_lut_adj_31 (.A(n4779), .B(n57), .C(n54), .D(n18086), .Z(drive_clk_enable_3)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'ha088;
    LUT4 i14203_3_lut_4_lut (.A(n19310), .B(n4), .C(n14078), .D(n4927[0]), 
         .Z(n4933[0])) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i14203_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_32 (.A(cnt_scl[4]), .B(n19296), .C(n19237), .D(cnt_scl[8]), 
         .Z(n16955)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_adj_32.init = 16'hfffe;
    LUT4 i1_4_lut_adj_33 (.A(n16227), .B(n16677), .C(n4_adj_1465), .D(n15542), 
         .Z(n54)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_33.init = 16'hce0a;
    LUT4 i1_4_lut_adj_34 (.A(n30_adj_1464), .B(n19275), .C(current_state[1]), 
         .D(n4847), .Z(n16677)) /* synthesis lut_function=(!((B+!((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_34.init = 16'h2202;
    LUT4 n5609_bdd_2_lut_14440_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[9]), .Z(n18845)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n5609_bdd_2_lut_14440_4_lut.init = 16'hca00;
    LUT4 i2754_3_lut (.A(data_write[5]), .B(n6628), .C(cnt_scl[2]), .Z(n6632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2754_3_lut.init = 16'hcaca;
    LUT4 i3_3_lut (.A(n21), .B(n15553), .C(cnt_scl[1]), .Z(n4091)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i3_3_lut.init = 16'h0808;
    LUT4 i2580_3_lut_rep_289_4_lut (.A(n19257), .B(n19256), .C(\current_state[6] ), 
         .D(n19_c), .Z(n19232)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i2580_3_lut_rep_289_4_lut.init = 16'hdfd0;
    CCU2C add_47_11 (.A0(cnt_scl[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13268), 
          .S0(cnt_scl_9__N_899[9]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_11.INIT0 = 16'haaaa;
    defparam add_47_11.INIT1 = 16'h0000;
    defparam add_47_11.INJECT1_0 = "NO";
    defparam add_47_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(\current_state[0] ), .B(n19307), .C(\current_state[5] ), 
         .D(n19305), .Z(n101)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i13648_4_lut (.A(n5555), .B(n19275), .C(n17435), .D(cnt_scl[8]), 
         .Z(n17684)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13648_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_35 (.A(rd_cnt[1]), .B(n15244), .C(n19242), .D(n15531), 
         .Z(n15246)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_35.init = 16'h0102;
    LUT4 i13400_2_lut (.A(cnt_scl[6]), .B(\current_state[0] ), .Z(n17435)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13400_2_lut.init = 16'heeee;
    LUT4 i46_3_lut_4_lut (.A(n19257), .B(n16593), .C(n19232), .D(next_state[0]), 
         .Z(n23)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i46_3_lut_4_lut.init = 16'hf707;
    LUT4 i1_4_lut_3_lut (.A(n4470), .B(n16507), .C(n31), .Z(n16081)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_4_lut_3_lut.init = 16'h8080;
    LUT4 n15764_bdd_4_lut_14950 (.A(n16317), .B(n14856), .C(n19254), .D(\current_state[6] ), 
         .Z(n18798)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam n15764_bdd_4_lut_14950.init = 16'h4f40;
    LUT4 i1_4_lut_adj_36 (.A(rd_cnt[2]), .B(n15244), .C(n19242), .D(n15530), 
         .Z(n15243)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_36.init = 16'h0102;
    LUT4 i1_3_lut_4_lut (.A(\current_state[2] ), .B(n19308), .C(\current_state[4] ), 
         .D(\current_state[5] ), .Z(n14937)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(243[17:24])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_37 (.A(flag_ack_N_1096), .B(n19245), .C(rd_cnt[1]), 
         .D(rd_cnt[0]), .Z(n15530)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_37.init = 16'h8000;
    LUT4 i88_4_lut (.A(n15591), .B(n62), .C(cnt_scl[4]), .D(n86), .Z(n56)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i88_4_lut.init = 16'hcfca;
    LUT4 i2_4_lut_adj_38 (.A(\current_state[3] ), .B(n14908), .C(\current_state[4] ), 
         .D(n10307), .Z(n4847)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_38.init = 16'h0012;
    LUT4 i14101_4_lut (.A(n12), .B(n19271), .C(n19292), .D(n16679), 
         .Z(n15542)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i14101_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_adj_39 (.A(rd_cnt[3]), .B(n15244), .C(n19242), .D(n15528), 
         .Z(n15245)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_39.init = 16'h0102;
    LUT4 i1_4_lut_adj_40 (.A(flag_ack_N_1096), .B(n19245), .C(n16727), 
         .D(rd_cnt[1]), .Z(n15528)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'h8000;
    LUT4 i1_2_lut (.A(rd_cnt[0]), .B(rd_cnt[2]), .Z(n16727)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_41 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n16697)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_41.init = 16'hdddd;
    LUT4 i1_3_lut_rep_309_4_lut (.A(n19275), .B(n19314), .C(n19273), .D(n12), 
         .Z(n19252)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_rep_309_4_lut.init = 16'h0100;
    LUT4 mux_494_i7_4_lut (.A(\current_state[6] ), .B(next_state_c[6]), 
         .C(n19), .D(flag_ack), .Z(next_state_9__N_967[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam mux_494_i7_4_lut.init = 16'hcfca;
    LUT4 i15_1_lut (.A(flag_ack_N_1096), .Z(flag_ack_N_1116)) /* synthesis lut_function=(!(A)) */ ;
    defparam i15_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_4_lut_adj_42 (.A(n19275), .B(n30_adj_1464), .C(n15542), 
         .D(n17797), .Z(n15589)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_42.init = 16'h4000;
    LUT4 i14109_4_lut (.A(n10810), .B(n11), .C(n19267), .D(n19250), 
         .Z(drive_clk_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i14109_4_lut.init = 16'h0004;
    LUT4 mux_1087_i1_3_lut (.A(addr[5]), .B(n4284[0]), .C(cnt_scl[2]), 
         .Z(n4296[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_1087_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_43 (.A(n19275), .B(cnt_scl[6]), .C(n16371), 
         .D(n19257), .Z(n15606)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_43.init = 16'h1000;
    FD1P3BX scl_260 (.D(n10802), .SP(sys_clk_c_enable_54), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(i2c_sclk_0_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam scl_260.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_44 (.A(n4091), .B(n55), .C(n19275), .D(n19296), 
         .Z(n15667)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_44.init = 16'h0008;
    LUT4 i1_4_lut_adj_45 (.A(n19252), .B(n30_adj_1464), .C(n19275), .D(n19295), 
         .Z(n15873)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_45.init = 16'h0008;
    FD1P3DX data_read_temp_i0_i1 (.D(n19279), .SP(drive_clk_enable_7), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i1.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i3 (.D(n19279), .SP(drive_clk_enable_8), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i5 (.D(n19279), .SP(drive_clk_enable_9), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i5.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i7 (.D(n19279), .SP(drive_clk_enable_10), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i7.GSR = "ENABLED";
    LUT4 n5609_bdd_2_lut_14455_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[1]), .Z(n18859)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n5609_bdd_2_lut_14455_4_lut.init = 16'hca00;
    LUT4 i6696_2_lut (.A(n18850), .B(n4779), .Z(next_state_9__N_803[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6696_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_46 (.A(n19304), .B(n19314), .C(n19292), 
         .D(cnt_scl[4]), .Z(n15409)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_3_lut_4_lut_adj_46.init = 16'h1110;
    LUT4 i6695_2_lut (.A(n18857), .B(n4779), .Z(next_state_9__N_803[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6695_2_lut.init = 16'h8888;
    LUT4 i6694_2_lut (.A(n4872[7]), .B(n4779), .Z(next_state_9__N_803[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6694_2_lut.init = 16'h8888;
    LUT4 i6693_2_lut (.A(n4872[6]), .B(n4779), .Z(next_state_9__N_803[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6693_2_lut.init = 16'h8888;
    LUT4 i14069_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n19177), 
         .D(next_state_9__N_967[5]), .Z(n4848[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14069_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i23_3_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(cnt_scl[1]), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i23_3_lut.init = 16'hc5c5;
    LUT4 i3_4_lut_then_4_lut (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(current_state[1]), .D(\current_state[0] ), .Z(n19362)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i3_4_lut_then_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_47 (.A(n13413), .B(n16383), .C(n19295), .D(cnt_scl[6]), 
         .Z(n30_adj_1464)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_47.init = 16'haaae;
    LUT4 i14071_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n19183), 
         .D(next_state_9__N_967[3]), .Z(n4848[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14071_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3_4_lut_else_4_lut (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(current_state[1]), .D(\current_state[0] ), .Z(n19361)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i3_4_lut_else_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_48 (.A(n17554), .B(n12), .C(n19291), .D(cnt_scl[8]), 
         .Z(n13413)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h0004;
    LUT4 i13518_2_lut (.A(cnt_scl[6]), .B(cnt_scl[3]), .Z(n17554)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13518_2_lut.init = 16'heeee;
    LUT4 next_state_9__N_967_2__bdd_3_lut_14427 (.A(n5681), .B(n5691), .C(next_state_c[2]), 
         .Z(n18810)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam next_state_9__N_967_2__bdd_3_lut_14427.init = 16'he2e2;
    LUT4 n18848_bdd_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n18847), 
         .D(n18848), .Z(n18849)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n18848_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_302_3_lut_4_lut (.A(n19309), .B(cnt_scl[2]), .C(n15584), 
         .D(n10420), .Z(n19245)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_2_lut_rep_302_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_304_3_lut_4_lut (.A(n19309), .B(cnt_scl[2]), .C(n16593), 
         .D(n10420), .Z(n19247)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam i1_2_lut_rep_304_3_lut_4_lut.init = 16'h1000;
    CCU2C add_47_9 (.A0(cnt_scl[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13267), .COUT(n13268), .S0(cnt_scl_9__N_899[7]), .S1(cnt_scl_9__N_899[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_9.INIT0 = 16'haaaa;
    defparam add_47_9.INIT1 = 16'haaaa;
    defparam add_47_9.INJECT1_0 = "NO";
    defparam add_47_9.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(n17145), .B(\current_state[0] ), .C(n19254), .D(n17604), 
         .Z(n8)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i19_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_49 (.A(n19275), .B(cnt_scl[5]), .C(cnt_scl[8]), 
         .D(n17135), .Z(n17145)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_49.init = 16'h0100;
    LUT4 n18855_bdd_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n18854), 
         .D(n18855), .Z(n18856)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n18855_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_50 (.A(cnt_scl[1]), .B(\current_state[6] ), .Z(n17135)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_50.init = 16'h2222;
    LUT4 i1_2_lut_adj_51 (.A(n4779), .B(n21_adj_1468), .Z(drive_clk_enable_5)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_51.init = 16'h8888;
    LUT4 i1_2_lut_adj_52 (.A(n4779), .B(n39), .Z(next_state_9__N_803[0])) /* synthesis lut_function=((B)+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_52.init = 16'hdddd;
    LUT4 i1_2_lut_rep_347 (.A(cnt_div[9]), .B(cnt_div[4]), .Z(n19290)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_347.init = 16'heeee;
    LUT4 i14096_3_lut (.A(flag_ack_N_1096), .B(n14924), .C(rd_first_done), 
         .Z(drive_clk_enable_21)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i14096_3_lut.init = 16'h0202;
    LUT4 i14127_4_lut (.A(n7069), .B(start), .C(drive_clk), .D(n7103), 
         .Z(drive_clk_N_1034)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C)))) */ ;
    defparam i14127_4_lut.init = 16'h3fb7;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(\current_state[0] ), .B(n19310), .C(n19312), 
         .D(n8_adj_1469), .Z(n11)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_53.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_4_lut_adj_54 (.A(cnt_scl[8]), .B(cnt_scl[5]), .C(n4847), 
         .D(flag_ack), .Z(n16345)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_4_lut_adj_54.init = 16'h4000;
    LUT4 i1_4_lut_adj_55 (.A(n17431), .B(n7464), .C(n16883), .D(n16571), 
         .Z(n7069)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_55.init = 16'hfffd;
    FD1P3DX rd_cnt__i0 (.D(n15271), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i0.GSR = "ENABLED";
    LUT4 i13396_2_lut (.A(cnt_div[6]), .B(cnt_div[11]), .Z(n17431)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13396_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[5]), 
         .D(n19275), .Z(n15584)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_56 (.A(cnt_div[8]), .B(cnt_div[1]), .C(n16873), 
         .D(cnt_div[10]), .Z(n16883)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_56.init = 16'hfff7;
    LUT4 i1_4_lut_4_lut_4_lut_adj_57 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[1]), 
         .D(n19275), .Z(n16299)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut_adj_57.init = 16'h0010;
    LUT4 i1_2_lut_adj_58 (.A(cnt_div[2]), .B(cnt_div[5]), .Z(n16873)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_adj_58.init = 16'heeee;
    PFUMX i56 (.BLUT(n15896), .ALUT(n14864), .C0(cnt_div[8]), .Z(n39_adj_1470));
    LUT4 i1_4_lut_4_lut_4_lut_adj_59 (.A(cnt_scl[8]), .B(n17604), .C(n8_adj_1469), 
         .D(n19275), .Z(n15714)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut_adj_59.init = 16'h0040;
    LUT4 i1_4_lut_adj_60 (.A(n15841), .B(cnt_div[10]), .C(n15560), .D(n15792), 
         .Z(n7103)) /* synthesis lut_function=((B ((D)+!C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_4_lut_adj_60.init = 16'hdd5d;
    LUT4 i1_4_lut_adj_61 (.A(n16847), .B(n6), .C(n16839), .D(cnt_div[9]), 
         .Z(n15841)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_61.init = 16'hfeff;
    LUT4 i6692_2_lut (.A(n4872[5]), .B(n4779), .Z(next_state_9__N_803[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6692_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_62 (.A(n16573), .B(n7464), .C(n6), .D(n16571), 
         .Z(n15560)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_62.init = 16'hfffe;
    LUT4 i1_4_lut_adj_63 (.A(n16743), .B(n16571), .C(n14862), .D(n17475), 
         .Z(n15792)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_63.init = 16'h0020;
    LUT4 i1_3_lut (.A(cnt_div[6]), .B(n16571), .C(cnt_div[4]), .Z(n16847)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_3_lut.init = 16'hdfdf;
    LUT4 i1_3_lut_adj_64 (.A(cnt_div[8]), .B(n16837), .C(cnt_div[11]), 
         .Z(n16839)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_3_lut_adj_64.init = 16'hfefe;
    LUT4 i1_4_lut_adj_65 (.A(cnt_div[8]), .B(cnt_div[6]), .C(cnt_div[2]), 
         .D(cnt_div[11]), .Z(n16573)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_65.init = 16'hfffb;
    LUT4 i1_4_lut_adj_66 (.A(cnt_div[2]), .B(cnt_div[0]), .C(n16735), 
         .D(n16733), .Z(n16743)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_66.init = 16'h1000;
    LUT4 i1_3_lut_3_lut (.A(cnt_scl[8]), .B(cnt_scl[0]), .C(cnt_scl[6]), 
         .Z(n16191)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_3_lut.init = 16'h0404;
    LUT4 i1_4_lut_4_lut_4_lut_adj_67 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(n16667), 
         .D(n19275), .Z(n16673)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut_adj_67.init = 16'h0010;
    LUT4 i1_4_lut_4_lut_4_lut_adj_68 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(n16655), 
         .D(n19275), .Z(n16661)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut_adj_68.init = 16'h0010;
    LUT4 i1_4_lut_4_lut_4_lut_adj_69 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(n16587), 
         .D(n19275), .Z(n16593)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_4_lut_4_lut_adj_69.init = 16'h0010;
    LUT4 i13440_2_lut (.A(cnt_div[7]), .B(cnt_div[11]), .Z(n17475)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13440_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_70 (.A(cnt_div[9]), .B(cnt_div[4]), .Z(n16735)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_71 (.A(n19275), .B(cnt_scl[1]), .C(n30_adj_1464), 
         .D(n19252), .Z(n15869)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_71.init = 16'h4000;
    LUT4 i1_2_lut_adj_72 (.A(cnt_div[6]), .B(cnt_div[8]), .Z(n16733)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_72.init = 16'h8888;
    LUT4 i1_2_lut_rep_294_3_lut (.A(n19259), .B(\current_state[6] ), .C(cnt_scl[6]), 
         .Z(n19237)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_rep_294_3_lut.init = 16'hfbfb;
    FD1P3DX rd_cnt__i1 (.D(n15246), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i1.GSR = "ENABLED";
    FD1P3DX rd_cnt__i2 (.D(n15243), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i2.GSR = "ENABLED";
    FD1P3DX rd_cnt__i3 (.D(n15245), .SP(drive_clk_enable_14), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_cnt__i3.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut_adj_73 (.A(cnt_scl[8]), .B(\current_state[3] ), 
         .C(cnt_scl[5]), .Z(n16371)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_3_lut_adj_73.init = 16'h4040;
    LUT4 i1_4_lut_adj_74 (.A(cnt_div[0]), .B(cnt_div[2]), .C(cnt_div[10]), 
         .D(cnt_div[7]), .Z(n16837)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_74.init = 16'hfffe;
    LUT4 i1_2_lut_rep_332 (.A(cnt_scl[9]), .B(cnt_scl[7]), .Z(n19275)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_332.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_75 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[2]), 
         .D(n19314), .Z(n16217)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_3_lut_4_lut_adj_75.init = 16'hffef;
    LUT4 i1_4_lut_adj_76 (.A(cnt_div[14]), .B(cnt_div[3]), .C(cnt_div[13]), 
         .D(cnt_div[12]), .Z(n16571)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_76.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_77 (.A(cnt_div[9]), .B(cnt_div[4]), .C(cnt_div[0]), 
         .D(cnt_div[7]), .Z(n7464)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_77.init = 16'hefff;
    FD1P3DX rd_byte0_i0_i7 (.D(data_read_temp[7]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i7.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i6 (.D(data_read_temp[6]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i6.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i5 (.D(data_read_temp[5]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i5.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i4 (.D(data_read_temp[4]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i4.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i3 (.D(data_read_temp[3]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i3.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i2 (.D(data_read_temp[2]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i2.GSR = "ENABLED";
    FD1P3DX rd_byte0_i0_i1 (.D(data_read_temp[1]), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(rd_byte0[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_byte0_i0_i1.GSR = "ENABLED";
    FD1S3DX next_state_i9 (.D(next_state_9__N_803[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i9.GSR = "ENABLED";
    FD1S3DX next_state_i8 (.D(next_state_9__N_803[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i8.GSR = "ENABLED";
    FD1S3DX next_state_i7 (.D(next_state_9__N_803[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i7.GSR = "ENABLED";
    FD1S3DX next_state_i6 (.D(next_state_9__N_803[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i6.GSR = "ENABLED";
    FD1S3DX next_state_i5 (.D(next_state_9__N_803[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i5.GSR = "ENABLED";
    FD1S3DX next_state_i4 (.D(next_state_9__N_803[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i4.GSR = "ENABLED";
    FD1S3DX next_state_i3 (.D(next_state_9__N_803[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i3.GSR = "ENABLED";
    FD1S3DX next_state_i2 (.D(next_state_9__N_803[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i2.GSR = "ENABLED";
    FD1S3DX next_state_i1 (.D(next_state_9__N_803[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(next_state_c[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam next_state_i1.GSR = "ENABLED";
    FD1P3DX data_read_i0_i7 (.D(data_read_temp[7]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i7.GSR = "ENABLED";
    FD1P3DX data_read_i0_i6 (.D(data_read_temp[6]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i6.GSR = "ENABLED";
    FD1P3DX data_read_i0_i5 (.D(data_read_temp[5]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i5.GSR = "ENABLED";
    FD1P3DX data_read_i0_i4 (.D(data_read_temp[4]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_i0_i3 (.D(data_read_temp[3]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_i0_i2 (.D(data_read_temp[2]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i2.GSR = "ENABLED";
    FD1P3DX data_read_i0_i1 (.D(data_read_temp[1]), .SP(drive_clk_enable_28), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_i0_i1.GSR = "ENABLED";
    FD1S3DX cnt_scl_i9 (.D(cnt_scl_9__N_793[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_307_4_lut (.A(\current_state[7] ), .B(n19276), .C(\current_state[5] ), 
         .D(\current_state[6] ), .Z(n19250)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_307_4_lut.init = 16'hfeff;
    LUT4 i6691_2_lut (.A(n4872[4]), .B(n4779), .Z(next_state_9__N_803[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6691_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_313_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[5]), 
         .D(n19314), .Z(n19256)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_313_3_lut_4_lut.init = 16'hffef;
    LUT4 i6690_2_lut (.A(n4872[3]), .B(n4779), .Z(next_state_9__N_803[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6690_2_lut.init = 16'h8888;
    LUT4 i6456_2_lut_rep_348 (.A(cnt_scl[2]), .B(cnt_scl[4]), .Z(n19291)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6456_2_lut_rep_348.init = 16'heeee;
    LUT4 i6689_2_lut (.A(n18815), .B(n4779), .Z(next_state_9__N_803[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6689_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_78 (.A(cnt_div[1]), .B(cnt_div[5]), .Z(n6)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_adj_78.init = 16'hbbbb;
    LUT4 n18862_bdd_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n18861), 
         .D(n18862), .Z(n18863)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n18862_bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_79 (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(cnt_scl[3]), .Z(n16333)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_79.init = 16'hfffe;
    FD1S3DX cnt_scl_i8 (.D(cnt_scl_9__N_793[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i8.GSR = "ENABLED";
    FD1S3DX cnt_scl_i7 (.D(cnt_scl_9__N_793[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i7.GSR = "ENABLED";
    FD1S3DX cnt_scl_i6 (.D(cnt_scl_9__N_793[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i6.GSR = "ENABLED";
    FD1S3DX cnt_scl_i5 (.D(cnt_scl_9__N_793[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i5.GSR = "ENABLED";
    FD1S3DX cnt_scl_i4 (.D(cnt_scl_9__N_793[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i4.GSR = "ENABLED";
    FD1S3DX cnt_scl_i3 (.D(cnt_scl_9__N_793[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i3.GSR = "ENABLED";
    FD1S3DX cnt_scl_i2 (.D(cnt_scl_9__N_793[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i2.GSR = "ENABLED";
    FD1S3DX cnt_scl_i1 (.D(cnt_scl_9__N_793[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam cnt_scl_i1.GSR = "ENABLED";
    FD1S3DX current_state_i9 (.D(next_state_c[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i9.GSR = "ENABLED";
    FD1S3DX current_state_i8 (.D(next_state_c[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i8.GSR = "ENABLED";
    FD1S3DX current_state_i7 (.D(next_state_c[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i7.GSR = "ENABLED";
    FD1S3DX current_state_i6 (.D(next_state_c[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i6.GSR = "ENABLED";
    FD1S3DX current_state_i5 (.D(next_state_c[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i5.GSR = "ENABLED";
    FD1S3DX current_state_i4 (.D(next_state_c[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i4.GSR = "ENABLED";
    LUT4 i6688_2_lut (.A(n18864), .B(n4779), .Z(next_state_9__N_803[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6688_2_lut.init = 16'h8888;
    FD1S3DX current_state_i3 (.D(next_state_c[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i3.GSR = "ENABLED";
    FD1S3DX current_state_i2 (.D(next_state_c[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i2.GSR = "ENABLED";
    FD1S3DX current_state_i1 (.D(next_state_c[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i1.GSR = "ENABLED";
    FD1S3DX cnt_div__i14 (.D(n15502), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i14.GSR = "ENABLED";
    FD1S3DX cnt_div__i13 (.D(n15499), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i13.GSR = "ENABLED";
    FD1S3DX cnt_div__i12 (.D(n15500), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i12.GSR = "ENABLED";
    FD1S3DX cnt_div__i11 (.D(n15498), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i11.GSR = "ENABLED";
    FD1S3DX cnt_div__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i10.GSR = "ENABLED";
    FD1S3DX cnt_div__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i9.GSR = "ENABLED";
    FD1S3DX cnt_div__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i8.GSR = "ENABLED";
    FD1S3DX cnt_div__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i7.GSR = "ENABLED";
    FD1S3DX cnt_div__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i6.GSR = "ENABLED";
    FD1S3DX cnt_div__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i5.GSR = "ENABLED";
    FD1S3DX cnt_div__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i4.GSR = "ENABLED";
    FD1S3DX cnt_div__i3 (.D(n15496), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i3.GSR = "ENABLED";
    FD1S3DX cnt_div__i2 (.D(n15501), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i2.GSR = "ENABLED";
    FD1S3DX cnt_div__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i1.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i6 (.D(n17806), .SP(drive_clk_enable_30), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i6.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i4 (.D(n17807), .SP(drive_clk_enable_30), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i2 (.D(n17808), .SP(cnt_scl[4]), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam data_read_temp_i0_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_80 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n8_adj_1469)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_80.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_81 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n16597), 
         .D(n19301), .Z(n16311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_adj_81.init = 16'hfffe;
    LUT4 i1_2_lut_adj_82 (.A(cnt_scl_9__N_899[9]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_82.init = 16'h8888;
    LUT4 n17712_bdd_3_lut_14264 (.A(n4182[0]), .B(addr[13]), .C(cnt_scl[2]), 
         .Z(n18313)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n17712_bdd_3_lut_14264.init = 16'hacac;
    LUT4 i1_2_lut_adj_83 (.A(cnt_scl_9__N_899[8]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_83.init = 16'h8888;
    LUT4 i14104_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[4]), 
         .D(n19314), .Z(n15553)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i14104_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_84 (.A(cnt_scl_9__N_899[7]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_84.init = 16'h8888;
    LUT4 i14119_2_lut_4_lut (.A(n12), .B(n19271), .C(n19273), .D(cnt_scl[4]), 
         .Z(n17887)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (D)) */ ;
    defparam i14119_2_lut_4_lut.init = 16'hff02;
    LUT4 i1_2_lut_3_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[5]), 
         .Z(n17069)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_85 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n55), 
         .D(n7323), .Z(n15391)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_adj_85.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[0]), 
         .D(n19314), .Z(n10810)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'hfffe;
    LUT4 i1_2_lut_adj_87 (.A(cnt_div[1]), .B(cnt_div[5]), .Z(n14862)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_87.init = 16'h2222;
    LUT4 i1_2_lut_adj_88 (.A(cnt_scl_9__N_899[6]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_88.init = 16'h8888;
    LUT4 i13953_3_lut_4_lut (.A(n19252), .B(cnt_scl[3]), .C(n19202), .D(n17717), 
         .Z(n6634)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam i13953_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_353 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n19296)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_353.init = 16'heeee;
    LUT4 i1_2_lut_rep_292 (.A(flag_ack), .B(n4847), .Z(n19235)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_rep_292.init = 16'h8888;
    LUT4 n19_bdd_4_lut (.A(n19), .B(current_state[1]), .C(n18323), .D(\current_state[5] ), 
         .Z(n20238)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n19_bdd_4_lut.init = 16'h22f0;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n55), 
         .D(n7858), .Z(n15668)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_adj_89 (.A(cnt_scl_9__N_899[5]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_89.init = 16'h8888;
    LUT4 i1_2_lut_adj_90 (.A(cnt_scl_9__N_899[4]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_90.init = 16'h8888;
    LUT4 i13612_3_lut_4_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[8]), 
         .D(n19301), .Z(n17648)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i13612_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_91 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[6]), 
         .D(n16597), .Z(n16601)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_adj_91.init = 16'hfffe;
    LUT4 i6720_2_lut_rep_333 (.A(current_state[1]), .B(\current_state[4] ), 
         .Z(n19276)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6720_2_lut_rep_333.init = 16'heeee;
    CCU2C add_47_7 (.A0(cnt_scl[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13266), .COUT(n13267), .S0(cnt_scl_9__N_899[5]), .S1(cnt_scl_9__N_899[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_7.INIT0 = 16'haaaa;
    defparam add_47_7.INIT1 = 16'haaaa;
    defparam add_47_7.INJECT1_0 = "NO";
    defparam add_47_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(n15507), .B(n15539), .C(cnt_div[11]), .D(n14862), 
         .Z(n14864)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_3_lut_4_lut_adj_92 (.A(current_state[1]), .B(\current_state[4] ), 
         .C(\current_state[2] ), .D(\current_state[3] ), .Z(n7411)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_92.init = 16'h0110;
    LUT4 i13514_2_lut_3_lut (.A(current_state[1]), .B(\current_state[4] ), 
         .C(\current_state[2] ), .Z(n17549)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13514_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_93 (.A(cnt_scl_9__N_899[3]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_93.init = 16'h8888;
    LUT4 i2_3_lut_rep_316_4_lut (.A(current_state[1]), .B(\current_state[4] ), 
         .C(\current_state[5] ), .D(\current_state[7] ), .Z(n19259)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_rep_316_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_94 (.A(cnt_scl[2]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(n19299), .Z(n16895)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_94.init = 16'h0010;
    LUT4 i13760_3_lut_4_lut (.A(n19297), .B(n10), .C(n19279), .D(data_read_temp[6]), 
         .Z(n17806)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i13760_3_lut_4_lut.init = 16'hf780;
    LUT4 n19_bdd_4_lut_4_lut (.A(flag_ack), .B(next_state_c[7]), .C(\current_state[7] ), 
         .D(n19), .Z(n19173)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n19_bdd_4_lut_4_lut.init = 16'hcc50;
    LUT4 n5609_bdd_4_lut_14458_4_lut (.A(flag_ack), .B(next_state_c[8]), 
         .C(\current_state[8] ), .D(n19), .Z(n18855)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5609_bdd_4_lut_14458_4_lut.init = 16'hcc50;
    LUT4 n5691_bdd_4_lut_4_lut (.A(flag_ack), .B(next_state_c[1]), .C(current_state[1]), 
         .D(n5691), .Z(n18858)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5691_bdd_4_lut_4_lut.init = 16'hcc50;
    LUT4 n5691_bdd_4_lut_14453_4_lut (.A(flag_ack), .B(next_state_c[8]), 
         .C(\current_state[8] ), .D(n5691), .Z(n18851)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5691_bdd_4_lut_14453_4_lut.init = 16'hcc50;
    LUT4 n5691_bdd_4_lut_14445_4_lut (.A(flag_ack), .B(next_state_c[9]), 
         .C(\current_state[9] ), .D(n5691), .Z(n18844)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5691_bdd_4_lut_14445_4_lut.init = 16'hcc50;
    LUT4 i13762_3_lut_4_lut (.A(n19297), .B(n10), .C(n19279), .D(data_read_temp[2]), 
         .Z(n17808)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i13762_3_lut_4_lut.init = 16'hf780;
    CCU2C add_47_5 (.A0(cnt_scl[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13265), .COUT(n13266), .S0(cnt_scl_9__N_899[3]), .S1(cnt_scl_9__N_899[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_5.INIT0 = 16'haaaa;
    defparam add_47_5.INIT1 = 16'haaaa;
    defparam add_47_5.INJECT1_0 = "NO";
    defparam add_47_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_95 (.A(cnt_scl_9__N_899[2]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_95.init = 16'h8888;
    LUT4 mux_494_i6_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[5]), 
         .D(\current_state[5] ), .Z(next_state_9__N_967[5])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_494_i6_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n5609_bdd_4_lut_14450_4_lut (.A(flag_ack), .B(next_state_c[9]), 
         .C(\current_state[9] ), .D(n19), .Z(n18848)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5609_bdd_4_lut_14450_4_lut.init = 16'hcc50;
    LUT4 n5609_bdd_4_lut_4_lut (.A(flag_ack), .B(next_state_c[1]), .C(current_state[1]), 
         .D(n19), .Z(n18862)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n5609_bdd_4_lut_4_lut.init = 16'hcc50;
    LUT4 mux_494_i5_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[4]), 
         .D(\current_state[4] ), .Z(next_state_9__N_967[4])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_494_i5_4_lut_4_lut.init = 16'hd1c0;
    LUT4 mux_1474_i7_4_lut_4_lut (.A(flag_ack), .B(n5691), .C(next_state_c[6]), 
         .D(\current_state[6] ), .Z(n4860[6])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_1474_i7_4_lut_4_lut.init = 16'hd1c0;
    CCU2C add_47_3 (.A0(cnt_scl[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13264), .COUT(n13265), .S0(cnt_scl_9__N_899[1]), .S1(cnt_scl_9__N_899[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_3.INIT0 = 16'haaaa;
    defparam add_47_3.INIT1 = 16'haaaa;
    defparam add_47_3.INJECT1_0 = "NO";
    defparam add_47_3.INJECT1_1 = "NO";
    FD1P3DX rd_first_done_268 (.D(n18396), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_first_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=64, LSE_RLINE=78 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam rd_first_done_268.GSR = "ENABLED";
    LUT4 mux_494_i3_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[2]), 
         .D(\current_state[2] ), .Z(next_state_9__N_967[2])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_494_i3_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_rep_349 (.A(cnt_scl[2]), .B(cnt_scl[3]), .Z(n19292)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_349.init = 16'heeee;
    LUT4 i45_4_lut_4_lut (.A(flag_ack), .B(\current_state[0] ), .C(n5691), 
         .D(next_state[0]), .Z(n20_adj_1475)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i45_4_lut_4_lut.init = 16'hf404;
    LUT4 i6416_4_lut (.A(n2[0]), .B(start), .C(cnt_div[0]), .D(n5145), 
         .Z(n1[0])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6416_4_lut.init = 16'h0c88;
    LUT4 mux_494_i4_4_lut_4_lut (.A(flag_ack), .B(n19), .C(next_state_c[3]), 
         .D(\current_state[3] ), .Z(next_state_9__N_967[3])) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam mux_494_i4_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_rep_47_4_lut (.A(cnt_div[6]), .B(n17624), .C(n39_adj_1470), 
         .D(n17477), .Z(n5145)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_rep_47_4_lut.init = 16'h0020;
    LUT4 i13588_3_lut (.A(cnt_div[12]), .B(cnt_div[2]), .C(cnt_div[14]), 
         .Z(n17624)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13588_3_lut.init = 16'hfefe;
    LUT4 i13442_2_lut (.A(cnt_div[3]), .B(cnt_div[13]), .Z(n17477)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13442_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_324_3_lut (.A(cnt_scl[2]), .B(cnt_scl[3]), .C(cnt_scl[4]), 
         .Z(n19267)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_324_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_96 (.A(cnt_scl_9__N_899[0]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_96.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_4_lut_adj_97 (.A(cnt_scl[1]), .B(cnt_scl[2]), .C(cnt_scl[0]), 
         .D(n19275), .Z(n16363)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_97.init = 16'h0010;
    LUT4 i1_4_lut_then_4_lut (.A(n19275), .B(cnt_scl[5]), .C(cnt_scl[2]), 
         .D(cnt_scl[1]), .Z(n19317)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_then_4_lut.init = 16'hfffe;
    LUT4 i14167_4_lut_3_lut (.A(n19241), .B(n16401), .C(n16397), .Z(n15271)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i14167_4_lut_3_lut.init = 16'h0707;
    LUT4 i1_3_lut_4_lut_adj_98 (.A(cnt_div[0]), .B(cnt_div[7]), .C(cnt_div[10]), 
         .D(n19290), .Z(n15539)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_98.init = 16'h0008;
    LUT4 i1_2_lut_adj_99 (.A(cnt_scl_9__N_899[1]), .B(n35_adj_1474), .Z(cnt_scl_9__N_793[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_adj_99.init = 16'h8888;
    LUT4 n19_bdd_3_lut_14462_4_lut (.A(n19271), .B(cnt_scl[5]), .C(current_state[1]), 
         .D(n15444), .Z(n18323)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam n19_bdd_3_lut_14462_4_lut.init = 16'hf0b0;
    LUT4 mux_1879_i5_4_lut (.A(n16661), .B(\current_state[4] ), .C(flag_ack), 
         .D(n19257), .Z(n5683)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1879_i5_4_lut.init = 16'hac0c;
    LUT4 i1_3_lut_4_lut_4_lut_adj_100 (.A(cnt_div[9]), .B(cnt_div[4]), .C(cnt_div[7]), 
         .D(cnt_div[0]), .Z(n15541)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_100.init = 16'h1000;
    LUT4 i2_2_lut_rep_335 (.A(cnt_div[4]), .B(cnt_div[7]), .Z(n19278)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut_rep_335.init = 16'h2222;
    LUT4 i13964_3_lut_4_lut (.A(n19252), .B(cnt_scl[3]), .C(n19203), .D(n17714), 
         .Z(n4299[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam i13964_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_adj_101 (.A(n2[14]), .B(n5145), .C(start), .Z(n15502)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_101.init = 16'h2020;
    LUT4 cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_303_3_lut_4_lut (.A(n19273), 
         .B(n10420), .C(cnt_scl[5]), .D(n19271), .Z(n19246)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(334[25:31])
    defparam cnt_scl_9__N_899_9__I_0_308_i19_2_lut_rep_303_3_lut_4_lut.init = 16'hffbf;
    LUT4 i1_3_lut_adj_102 (.A(n2[13]), .B(n5145), .C(start), .Z(n15499)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_102.init = 16'h2020;
    LUT4 i1_4_lut_4_lut_adj_103 (.A(cnt_div[0]), .B(cnt_div[9]), .C(cnt_div[10]), 
         .D(n19278), .Z(n15507)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_4_lut_4_lut_adj_103.init = 16'h4000;
    LUT4 i86_4_lut (.A(n15814), .B(n62), .C(cnt_scl[4]), .D(n15872), 
         .Z(n55)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i86_4_lut.init = 16'hcacf;
    CCU2C add_47_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_scl[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13264), .S1(cnt_scl_9__N_899[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(117[23:37])
    defparam add_47_1.INIT0 = 16'h0000;
    defparam add_47_1.INIT1 = 16'h555a;
    defparam add_47_1.INJECT1_0 = "NO";
    defparam add_47_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_104 (.A(n19014), .B(n14822), .C(n16179), .D(n19246), 
         .Z(n35_adj_1474)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_4_lut_adj_104.init = 16'hfdfc;
    LUT4 i1_3_lut_4_lut_4_lut_adj_105 (.A(cnt_div[0]), .B(cnt_div[9]), .C(cnt_div[7]), 
         .D(cnt_div[4]), .Z(n15508)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_3_lut_4_lut_4_lut_adj_105.init = 16'h0400;
    LUT4 i1_3_lut_adj_106 (.A(n2[12]), .B(n5145), .C(start), .Z(n15500)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_106.init = 16'h2020;
    CCU2C add_23_15 (.A0(cnt_div[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13262), .S0(n2[13]), .S1(n2[14]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_15.INIT0 = 16'haaaa;
    defparam add_23_15.INIT1 = 16'haaaa;
    defparam add_23_15.INJECT1_0 = "NO";
    defparam add_23_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_107 (.A(n16621), .B(n18124), .C(n15385), .D(n19246), 
         .Z(n14822)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_107.init = 16'h3230;
    LUT4 i1_4_lut_adj_108 (.A(n19310), .B(n101), .C(n12_adj_1479), .D(n8_adj_1480), 
         .Z(n16179)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_4_lut_adj_108.init = 16'hfffe;
    LUT4 mux_1474_i4_3_lut (.A(n5682), .B(next_state_c[3]), .C(n5691), 
         .Z(n4860[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1474_i4_3_lut.init = 16'hcaca;
    LUT4 i2433_2_lut_rep_336 (.A(i2c_sda_0_out), .B(sda_transmit_en), .Z(n19279)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i2433_2_lut_rep_336.init = 16'h2222;
    LUT4 start_N_755_bdd_2_lut_14722_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[3]), .Z(n19181)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_14722_4_lut.init = 16'hca00;
    LUT4 mux_1474_i5_3_lut (.A(n5683), .B(next_state_c[4]), .C(n5691), 
         .Z(n4860[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1474_i5_3_lut.init = 16'hcaca;
    PFUMX i86 (.BLUT(n15846), .ALUT(n58), .C0(cnt_scl[5]), .Z(n86));
    LUT4 i1_4_lut_adj_109 (.A(\current_state[0] ), .B(n14905), .C(\current_state[3] ), 
         .D(current_state[1]), .Z(n16621)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_109.init = 16'h0010;
    LUT4 mux_1474_i6_3_lut (.A(n5684), .B(next_state_c[5]), .C(n5691), 
         .Z(n4860[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1474_i6_3_lut.init = 16'hcaca;
    LUT4 i11076_rep_116_2_lut (.A(\current_state[2] ), .B(\current_state[4] ), 
         .Z(n18124)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i11076_rep_116_2_lut.init = 16'heeee;
    LUT4 mux_1456_i8_4_lut (.A(n19247), .B(next_state_c[7]), .C(n19232), 
         .D(flag_ack_N_1116), .Z(n4792[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1456_i8_4_lut.init = 16'hcac0;
    LUT4 mux_1474_i8_3_lut (.A(n5686), .B(next_state_c[7]), .C(n5691), 
         .Z(n4860[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1474_i8_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_110 (.A(n17598), .B(n6_adj_1481), .C(n17600), .D(n14026), 
         .Z(n15385)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_110.init = 16'h4544;
    PFUMX i14208 (.BLUT(n18314), .ALUT(n18310), .C0(n19252), .Z(n18315));
    LUT4 i13758_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n14765), 
         .D(data_read_temp[0]), .Z(n17804)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i13758_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13761_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n14765), 
         .D(data_read_temp[4]), .Z(n17807)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam i13761_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_4_lut_adj_111 (.A(n17960), .B(n15371), .C(n12_adj_1482), .D(n8_c), 
         .Z(n15373)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_adj_111.init = 16'hfffd;
    LUT4 i1_4_lut_adj_112 (.A(n19283), .B(n19275), .C(n19273), .D(n17069), 
         .Z(n15748)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_adj_112.init = 16'hfffe;
    LUT4 n18796_bdd_2_lut_3_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), 
         .C(n18796), .Z(n18797)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[17:28])
    defparam n18796_bdd_2_lut_3_lut.init = 16'hd0d0;
    LUT4 start_N_755_bdd_2_lut_14718_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[4]), .Z(n19178)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_14718_4_lut.init = 16'hca00;
    LUT4 i5_4_lut (.A(\current_state[6] ), .B(n19363), .C(n19204), .D(n14937), 
         .Z(n12_adj_1479)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i5_4_lut.init = 16'hfefc;
    LUT4 start_N_755_bdd_2_lut_14714_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[5]), .Z(n19175)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam start_N_755_bdd_2_lut_14714_4_lut.init = 16'hca00;
    LUT4 i1_4_lut_adj_113 (.A(n31), .B(\current_state[0] ), .C(n14856), 
         .D(n16299), .Z(n23_adj_1483)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_113.init = 16'heccc;
    LUT4 mux_1391_i1_4_lut (.A(n16895), .B(flag_ack_N_1116), .C(\current_state[6] ), 
         .D(n10810), .Z(n4699[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1391_i1_4_lut.init = 16'hc0ca;
    LUT4 mux_1409_i1_3_lut (.A(n4709[0]), .B(n15589), .C(n4847), .Z(n4722[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1409_i1_3_lut.init = 16'hcaca;
    LUT4 n18679_bdd_2_lut (.A(n18679), .B(\current_state[3] ), .Z(n18680)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n18679_bdd_2_lut.init = 16'h2222;
    LUT4 n5609_bdd_2_lut_14447_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[8]), .Z(n18852)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n5609_bdd_2_lut_14447_4_lut.init = 16'hca00;
    PFUMX i14459 (.BLUT(n18863), .ALUT(n18858), .C0(n18086), .Z(n18864));
    LUT4 i1_3_lut_adj_114 (.A(n2[11]), .B(n5145), .C(start), .Z(n15498)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_114.init = 16'h2020;
    LUT4 i1_4_lut_adj_115 (.A(n12), .B(n30_adj_1464), .C(n19271), .D(n16333), 
         .Z(n15870)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_115.init = 16'hfff7;
    LUT4 i1_4_lut_adj_116 (.A(n21), .B(n56), .C(n15553), .D(n16363), 
         .Z(sda_transmit_N_1103)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'h8000;
    LUT4 i1_4_lut_adj_117 (.A(n4470), .B(n7315), .C(n31), .D(n17684), 
         .Z(n15289)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_117.init = 16'h0020;
    LUT4 i6595_4_lut (.A(n2[10]), .B(start), .C(n6014[0]), .D(n5145), 
         .Z(n1[10])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6595_4_lut.init = 16'hc088;
    LUT4 mux_1456_i7_4_lut (.A(n16649), .B(next_state_c[6]), .C(n19232), 
         .D(n19257), .Z(n4792[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1456_i7_4_lut.init = 16'hcac0;
    LUT4 n5609_bdd_2_lut_14424_4_lut (.A(n19_c), .B(n19246), .C(\current_state[6] ), 
         .D(next_state_c[2]), .Z(n18811)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam n5609_bdd_2_lut_14424_4_lut.init = 16'hca00;
    PFUMX i14456 (.BLUT(n18860), .ALUT(n18859), .C0(n5827), .Z(n18861));
    LUT4 i1_3_lut_adj_118 (.A(n20238), .B(\current_state[7] ), .C(\current_state[6] ), 
         .Z(n6_adj_1481)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_3_lut_adj_118.init = 16'h0202;
    LUT4 i13564_2_lut (.A(current_state[1]), .B(\current_state[5] ), .Z(n17600)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13564_2_lut.init = 16'heeee;
    LUT4 i10066_4_lut (.A(\current_state[6] ), .B(\current_state[7] ), .C(n19246), 
         .D(n19_c), .Z(n14026)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i10066_4_lut.init = 16'h6420;
    LUT4 n5535_bdd_4_lut_14739 (.A(n19295), .B(data_write[7]), .C(n18402), 
         .D(n19252), .Z(n19202)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n5535_bdd_4_lut_14739.init = 16'h44f0;
    LUT4 i13516_2_lut_rep_337 (.A(cnt_scl[3]), .B(cnt_scl[1]), .Z(n19280)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13516_2_lut_rep_337.init = 16'heeee;
    LUT4 i1_4_lut_adj_119 (.A(cnt_scl[1]), .B(n19275), .C(n19273), .D(n19272), 
         .Z(n19_c)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_adj_119.init = 16'hfffd;
    LUT4 n5535_bdd_4_lut (.A(n19295), .B(addr[7]), .C(n18399), .D(n19252), 
         .Z(n19203)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n5535_bdd_4_lut.init = 16'h44f0;
    LUT4 i3_2_lut_rep_338 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n19281)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_338.init = 16'h2222;
    LUT4 n7261_bdd_4_lut (.A(n19255), .B(n19306), .C(n7438), .D(\current_state[7] ), 
         .Z(n19204)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam n7261_bdd_4_lut.init = 16'heef0;
    LUT4 i3861_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n4091), 
         .D(n19315), .Z(n7858)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;
    defparam i3861_4_lut_4_lut.init = 16'h2c20;
    LUT4 i1899_2_lut_rep_297 (.A(current_state[1]), .B(n4847), .Z(n19240)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1899_2_lut_rep_297.init = 16'h2222;
    LUT4 i2585_2_lut (.A(cnt_div[0]), .B(cnt_div[1]), .Z(n6014[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i2585_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_adj_120 (.A(current_state[1]), .B(n4847), .C(cnt_scl[5]), 
         .Z(n16197)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_2_lut_3_lut_adj_120.init = 16'h2020;
    LUT4 i6537_2_lut (.A(cnt_scl[0]), .B(cnt_scl[1]), .Z(n10420)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6537_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_121 (.A(cnt_scl[2]), .B(cnt_scl[3]), .C(n19293), 
         .D(cnt_scl[4]), .Z(n16383)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_121.init = 16'h0f0e;
    LUT4 i6594_4_lut (.A(n2[9]), .B(start), .C(cnt_div[0]), .D(n5145), 
         .Z(n1[9])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6594_4_lut.init = 16'h0c88;
    PFUMX i14451 (.BLUT(n18856), .ALUT(n18851), .C0(n18086), .Z(n18857));
    PFUMX i14448 (.BLUT(n18853), .ALUT(n18852), .C0(n5827), .Z(n18854));
    LUT4 i1_3_lut_4_lut_adj_122 (.A(current_state[1]), .B(n4847), .C(n19275), 
         .D(n56), .Z(n16227)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_3_lut_4_lut_adj_122.init = 16'h0200;
    LUT4 i14055_3_lut (.A(n23), .B(n26), .C(n19254), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14055_3_lut.init = 16'hcaca;
    LUT4 i2573_3_lut_rep_298 (.A(\current_state[0] ), .B(n19_c), .C(\current_state[7] ), 
         .Z(n19241)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i2573_3_lut_rep_298.init = 16'h3a3a;
    LUT4 cnt_scl_9__N_899_9__I_0_298_i11_2_lut_rep_340 (.A(cnt_scl[0]), .B(cnt_scl[1]), 
         .Z(n19283)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(315[25:30])
    defparam cnt_scl_9__N_899_9__I_0_298_i11_2_lut_rep_340.init = 16'heeee;
    LUT4 i1_2_lut_rep_350 (.A(cnt_scl[0]), .B(cnt_scl[8]), .Z(n19293)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_350.init = 16'heeee;
    LUT4 i6593_4_lut (.A(n2[8]), .B(start), .C(n6014[4]), .D(n5145), 
         .Z(n1[8])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6593_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_123 (.A(n19252), .B(n30_adj_1464), .C(n19275), .D(n19240), 
         .Z(n15489)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_123.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_124 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(cnt_scl[2]), 
         .D(n19300), .Z(n15444)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(315[25:30])
    defparam i1_3_lut_4_lut_adj_124.init = 16'hefff;
    PFUMX i14443 (.BLUT(n18849), .ALUT(n18844), .C0(n18086), .Z(n18850));
    LUT4 i6666_2_lut (.A(cnt_div[0]), .B(cnt_div[1]), .Z(n6014[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6666_2_lut.init = 16'h4444;
    LUT4 i2140_rep_8_2_lut_4_lut (.A(\current_state[0] ), .B(n19_c), .C(\current_state[7] ), 
         .D(drive_clk_enable_14), .Z(n15244)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;
    defparam i2140_rep_8_2_lut_4_lut.init = 16'h3a00;
    LUT4 i1_4_lut_4_lut_adj_125 (.A(n19295), .B(cnt_scl[2]), .C(n16193), 
         .D(n16191), .Z(n15814)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(D))) */ ;
    defparam i1_4_lut_4_lut_adj_125.init = 16'h7500;
    LUT4 i1_3_lut_4_lut_adj_126 (.A(cnt_scl[0]), .B(cnt_scl[8]), .C(cnt_scl[6]), 
         .D(n8_adj_1469), .Z(n62)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_adj_126.init = 16'h0100;
    PFUMX i14441 (.BLUT(n18846), .ALUT(n18845), .C0(n5827), .Z(n18847));
    LUT4 i14065_3_lut (.A(n4699[0]), .B(n16081), .C(n19254), .Z(n4719[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14065_3_lut.init = 16'hcaca;
    LUT4 i6592_4_lut (.A(n2[7]), .B(start), .C(n6014[3]), .D(n5145), 
         .Z(n1[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6592_4_lut.init = 16'hc088;
    LUT4 i6591_4_lut (.A(n2[6]), .B(start), .C(n10812), .D(n5145), .Z(n1[6])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6591_4_lut.init = 16'h0c88;
    LUT4 i6924_2_lut (.A(cnt_div[0]), .B(cnt_div[1]), .Z(n10812)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6924_2_lut.init = 16'h8888;
    LUT4 cnt_scl_1__bdd_4_lut_14519 (.A(cnt_scl[1]), .B(\current_state[6] ), 
         .C(cnt_scl[5]), .D(cnt_scl[3]), .Z(n18827)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam cnt_scl_1__bdd_4_lut_14519.init = 16'h0043;
    LUT4 i6589_4_lut (.A(n2[4]), .B(start), .C(cnt_div[0]), .D(n5145), 
         .Z(n1[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6589_4_lut.init = 16'h0c88;
    LUT4 i2063_rep_291_4_lut_2_lut (.A(\current_state[7] ), .B(n19_c), .Z(n19242)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2063_rep_291_4_lut_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_351 (.A(cnt_scl[3]), .B(cnt_scl[0]), .Z(n19294)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_351.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_127 (.A(cnt_scl[3]), .B(cnt_scl[0]), .C(n19295), 
         .D(n19314), .Z(n15591)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_127.init = 16'h0004;
    LUT4 i14099_2_lut (.A(start), .B(n7103), .Z(sys_clk_c_enable_54)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i14099_2_lut.init = 16'h7777;
    CCU2C add_23_13 (.A0(cnt_div[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13261), .COUT(n13262), .S0(n2[11]), .S1(n2[12]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_13.INIT0 = 16'haaaa;
    defparam add_23_13.INIT1 = 16'haaaa;
    defparam add_23_13.INJECT1_0 = "NO";
    defparam add_23_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_128 (.A(n2[3]), .B(n5145), .C(start), .Z(n15496)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_128.init = 16'h2020;
    LUT4 i1_3_lut_adj_129 (.A(n2[2]), .B(n5145), .C(start), .Z(n15501)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_129.init = 16'h2020;
    LUT4 i14073_3_lut (.A(n4792[7]), .B(n19174), .C(n19254), .Z(n4848[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14073_3_lut.init = 16'hcaca;
    LUT4 i6588_4_lut (.A(n2[1]), .B(start), .C(n6014[0]), .D(n5145), 
         .Z(n1[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6588_4_lut.init = 16'hc088;
    LUT4 i6_1_lut (.A(cnt_scl[4]), .Z(drive_clk_enable_30)) /* synthesis lut_function=(!(A)) */ ;
    defparam i6_1_lut.init = 16'h5555;
    LUT4 i14178_3_lut (.A(i2c_sclk_0_c), .B(start), .C(n7069), .Z(n10802)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i14178_3_lut.init = 16'hb7b7;
    CCU2C add_23_11 (.A0(cnt_div[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13260), .COUT(n13261), .S0(n2[9]), .S1(n2[10]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_11.INIT0 = 16'haaaa;
    defparam add_23_11.INIT1 = 16'haaaa;
    defparam add_23_11.INJECT1_0 = "NO";
    defparam add_23_11.INJECT1_1 = "NO";
    LUT4 i14136_2_lut (.A(flag_ack_N_1096), .B(n14924), .Z(drive_clk_enable_28)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14136_2_lut.init = 16'h1111;
    LUT4 n18313_bdd_3_lut (.A(n18313), .B(n18312), .C(cnt_scl[4]), .Z(n18314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n18313_bdd_3_lut.init = 16'hcaca;
    LUT4 i14115_4_lut (.A(n16973), .B(n11), .C(cnt_scl[4]), .D(n19275), 
         .Z(drive_clk_enable_7)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i14115_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_130 (.A(rd_cnt[1]), .B(rd_cnt[3]), .C(rd_cnt[2]), 
         .D(\rd_byte_num[1] ), .Z(n15580)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_130.init = 16'h0100;
    PFUMX i14428 (.BLUT(n18814), .ALUT(n18810), .C0(n18086), .Z(n18815));
    LUT4 i6176_2_lut_rep_352 (.A(cnt_scl[5]), .B(cnt_scl[1]), .Z(n19295)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6176_2_lut_rep_352.init = 16'heeee;
    LUT4 i1_4_lut_adj_131 (.A(cnt_scl[3]), .B(n19237), .C(n19293), .D(cnt_scl[2]), 
         .Z(n16973)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_adj_131.init = 16'hfffd;
    LUT4 i35_3_lut_3_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i35_3_lut_3_lut.init = 16'hc1c1;
    LUT4 n5535_bdd_2_lut_14263_3_lut (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(addr[15]), 
         .Z(n18310)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n5535_bdd_2_lut_14263_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_132 (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(cnt_scl[4]), 
         .Z(n16679)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_132.init = 16'h0e0e;
    LUT4 mux_1002_i1_3_lut (.A(addr[14]), .B(addr[12]), .C(cnt_scl[3]), 
         .Z(n4182[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(172[21] 201[28])
    defparam mux_1002_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1078_i1_3_lut (.A(addr[6]), .B(addr[4]), .C(cnt_scl[3]), 
         .Z(n4284[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(206[21] 239[28])
    defparam mux_1078_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(cnt_scl[5]), .B(cnt_scl[1]), .C(n4470), 
         .D(cnt_scl[2]), .Z(n16079)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'hf1ff;
    LUT4 i2750_3_lut (.A(data_write[6]), .B(data_write[4]), .C(cnt_scl[3]), 
         .Z(n6628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(244[21] 273[28])
    defparam i2750_3_lut.init = 16'hcaca;
    PFUMX i14425 (.BLUT(n18812), .ALUT(n18811), .C0(n5827), .Z(n18813));
    LUT4 i14113_4_lut (.A(cnt_scl[4]), .B(n11), .C(n16939), .D(n19292), 
         .Z(drive_clk_enable_8)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i14113_4_lut.init = 16'h0008;
    LUT4 n5609_bdd_2_lut (.A(start), .B(current_state[1]), .Z(n18860)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n5609_bdd_2_lut.init = 16'heeee;
    LUT4 i11217_4_lut (.A(\rd_byte_num[1] ), .B(rd_cnt[1]), .C(n16583), 
         .D(rd_cnt[0]), .Z(n16)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;
    defparam i11217_4_lut.init = 16'h5557;
    LUT4 i1_4_lut_adj_134 (.A(n16819), .B(n19246), .C(n7478), .D(n19268), 
         .Z(n14924)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_134.init = 16'hfffe;
    LUT4 current_state_3__bdd_4_lut_14789 (.A(\current_state[0] ), .B(\current_state[7] ), 
         .C(\current_state[6] ), .D(\current_state[5] ), .Z(n18679)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam current_state_3__bdd_4_lut_14789.init = 16'h0116;
    LUT4 i1_3_lut_adj_135 (.A(\current_state[6] ), .B(\current_state[5] ), 
         .C(\current_state[2] ), .Z(n16819)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_135.init = 16'hfdfd;
    LUT4 i1_4_lut_4_lut_adj_136 (.A(n19271), .B(n16079), .C(n31), .D(\current_state[0] ), 
         .Z(n63)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_136.init = 16'hff40;
    CCU2C add_23_9 (.A0(cnt_div[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13259), .COUT(n13260), .S0(n2[7]), .S1(n2[8]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_9.INIT0 = 16'haaaa;
    defparam add_23_9.INIT1 = 16'haaaa;
    defparam add_23_9.INJECT1_0 = "NO";
    defparam add_23_9.INJECT1_1 = "NO";
    LUT4 next_state_9__N_967_2__bdd_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), 
         .C(n18813), .D(next_state_9__N_967[2]), .Z(n18814)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam next_state_9__N_967_2__bdd_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3864_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n4091), 
         .D(n16697), .Z(n7323)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B !(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i3864_4_lut_4_lut.init = 16'hefe3;
    LUT4 i1_2_lut_rep_354 (.A(cnt_scl[3]), .B(cnt_scl[2]), .Z(n19297)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_354.init = 16'h4444;
    LUT4 i1_4_lut_adj_137 (.A(n19314), .B(n15484), .C(n19281), .D(n19280), 
         .Z(n58)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_137.init = 16'hccdc;
    LUT4 i1_4_lut_adj_138 (.A(cnt_scl[8]), .B(n18), .C(cnt_scl[6]), .D(cnt_scl[1]), 
         .Z(n15846)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_138.init = 16'h0004;
    LUT4 i1_3_lut_4_lut_adj_139 (.A(cnt_scl[5]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .D(n19314), .Z(n16277)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i1_3_lut_4_lut_adj_139.init = 16'h0008;
    LUT4 i3865_3_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[0]), .C(n4091), 
         .Z(n4_adj_1465)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i3865_3_lut_3_lut.init = 16'h3838;
    PFUMX i14416 (.BLUT(n18798), .ALUT(n18797), .C0(n18086), .Z(n18799));
    CCU2C add_23_7 (.A0(cnt_div[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13258), .COUT(n13259), .S0(n2[5]), .S1(n2[6]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_7.INIT0 = 16'haaaa;
    defparam add_23_7.INIT1 = 16'haaaa;
    defparam add_23_7.INJECT1_0 = "NO";
    defparam add_23_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_356 (.A(cnt_scl[3]), .B(cnt_scl[5]), .Z(n19299)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_rep_356.init = 16'heeee;
    LUT4 i14118_4_lut (.A(n16064), .B(n13), .C(n15884), .D(n4779), .Z(drive_clk_enable_2)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i14118_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_140 (.A(n16605), .B(n7315), .C(n31), .D(n16601), 
         .Z(n15884)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i1_4_lut_adj_140.init = 16'h5545;
    LUT4 i1_4_lut_else_4_lut (.A(n19275), .B(cnt_scl[5]), .C(cnt_scl[2]), 
         .D(cnt_scl[1]), .Z(n19316)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_4_lut_else_4_lut.init = 16'hfbfa;
    LUT4 i1_2_lut_3_lut_adj_141 (.A(cnt_scl[3]), .B(cnt_scl[5]), .C(cnt_scl[4]), 
         .Z(n5555)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_3_lut_adj_141.init = 16'hfefe;
    LUT4 i1_4_lut_adj_142 (.A(n23_adj_1490), .B(n19242), .C(n19310), .D(n15915), 
         .Z(drive_clk_enable_14)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_142.init = 16'h0002;
    LUT4 i1767_2_lut_rep_372 (.A(cnt_scl[1]), .B(cnt_scl[5]), .Z(n19315)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i1767_2_lut_rep_372.init = 16'h8888;
    LUT4 i1_4_lut_adj_143 (.A(rd_cnt[0]), .B(n19242), .C(flag_ack_N_1096), 
         .D(n19246), .Z(n16397)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_143.init = 16'hdded;
    LUT4 i1_2_lut_adj_144 (.A(cnt_scl[8]), .B(\current_state[0] ), .Z(n16597)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_144.init = 16'heeee;
    LUT4 i2_4_lut_adj_145 (.A(n19312), .B(\current_state[5] ), .C(current_state[1]), 
         .D(\current_state[4] ), .Z(n15915)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut_adj_145.init = 16'hfffe;
    LUT4 i14077_2_lut_3_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[0]), 
         .Z(n17960)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(136[21] 167[28])
    defparam i14077_2_lut_3_lut.init = 16'h8787;
    LUT4 addr_1__bdd_3_lut (.A(addr[1]), .B(cnt_scl[2]), .C(addr[0]), 
         .Z(n18399)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam addr_1__bdd_3_lut.init = 16'he2e2;
    LUT4 i14133_2_lut_rep_357 (.A(cnt_scl[3]), .B(cnt_scl[4]), .Z(n19300)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14133_2_lut_rep_357.init = 16'h1111;
    LUT4 i14067_3_lut_4_lut (.A(n19254), .B(\current_state[0] ), .C(n19180), 
         .D(next_state_9__N_967[4]), .Z(n4848[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i14067_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_146 (.A(n19235), .B(cnt_scl[5]), .C(\current_state[3] ), 
         .D(ctrl_w0_r1), .Z(n16655)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_146.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_147 (.A(n19310), .B(n4), .C(n19254), .D(n15005), 
         .Z(n16064)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_147.init = 16'h0b00;
    PFUMX i14748 (.BLUT(n19316), .ALUT(n19317), .C0(cnt_scl[0]), .Z(n12_adj_1482));
    LUT4 i6567_4_lut_4_lut (.A(\current_state[6] ), .B(n19190), .C(n15371), 
         .D(n12_adj_1482), .Z(n4907[0])) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i6567_4_lut_4_lut.init = 16'h555d;
    LUT4 i1_2_lut_3_lut_adj_148 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[5]), 
         .Z(n20)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_148.init = 16'h0e0e;
    LUT4 i1_4_lut_adj_149 (.A(n31), .B(n16311), .C(n19279), .D(cnt_scl[1]), 
         .Z(n16317)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_149.init = 16'hfdff;
    CCU2C add_23_5 (.A0(cnt_div[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13257), .COUT(n13258), .S0(n2[3]), .S1(n2[4]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_5.INIT0 = 16'haaaa;
    defparam add_23_5.INIT1 = 16'haaaa;
    defparam add_23_5.INJECT1_0 = "NO";
    defparam add_23_5.INJECT1_1 = "NO";
    LUT4 data_write_1__bdd_3_lut (.A(data_write[1]), .B(cnt_scl[2]), .C(data_write[0]), 
         .Z(n18402)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam data_write_1__bdd_3_lut.init = 16'he2e2;
    LUT4 i13450_2_lut_rep_358 (.A(cnt_scl[6]), .B(cnt_scl[0]), .Z(n19301)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13450_2_lut_rep_358.init = 16'heeee;
    LUT4 i1_2_lut_adj_150 (.A(cnt_scl[2]), .B(n4470), .Z(n14856)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_adj_150.init = 16'h2222;
    LUT4 i3863_4_lut (.A(cnt_scl[1]), .B(n5555), .C(n4470), .D(n19303), 
         .Z(n7315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i3863_4_lut.init = 16'hcacf;
    LUT4 mux_1879_i3_4_lut (.A(n5628), .B(\current_state[2] ), .C(flag_ack), 
         .D(n15612), .Z(n5681)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1879_i3_4_lut.init = 16'h0cac;
    LUT4 n8_bdd_4_lut_15214 (.A(n8_c), .B(cnt_scl[1]), .C(cnt_scl[0]), 
         .D(cnt_scl[5]), .Z(n19190)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n8_bdd_4_lut_15214.init = 16'h0100;
    LUT4 i14081_2_lut_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[0]), .C(cnt_scl[2]), 
         .D(n19309), .Z(n17604)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i14081_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i6111_2_lut_rep_359 (.A(\current_state[7] ), .B(\current_state[6] ), 
         .Z(n19302)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6111_2_lut_rep_359.init = 16'heeee;
    LUT4 i6966_4_lut (.A(n19305), .B(n19307), .C(n10307), .D(\current_state[6] ), 
         .Z(n7438)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6966_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut (.A(\current_state[7] ), .B(\current_state[6] ), 
         .C(n19307), .D(n19310), .Z(n14908)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_151 (.A(n19275), .B(cnt_scl[6]), .C(n16345), 
         .D(n19257), .Z(n5694)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_151.init = 16'h1000;
    LUT4 i2049_1_lut_3_lut_4_lut (.A(\current_state[0] ), .B(\current_state[5] ), 
         .C(n14908), .D(n19305), .Z(n5827)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam i2049_1_lut_3_lut_4_lut.init = 16'hfff9;
    CCU2C add_23_3 (.A0(cnt_div[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n13256), .COUT(n13257), .S0(n2[1]), .S1(n2[2]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_3.INIT0 = 16'haaaa;
    defparam add_23_3.INIT1 = 16'haaaa;
    defparam add_23_3.INJECT1_0 = "NO";
    defparam add_23_3.INJECT1_1 = "NO";
    CCU2C add_23_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_div[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n13256), .S1(n2[0]));   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_1.INIT0 = 16'h0000;
    defparam add_23_1.INIT1 = 16'h555a;
    defparam add_23_1.INJECT1_0 = "NO";
    defparam add_23_1.INJECT1_1 = "NO";
    LUT4 sda_transmit_en_I_0_1_lut (.A(sda_transmit_en), .Z(sda_transmit_en_N_1061)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(45[31:59])
    defparam sda_transmit_en_I_0_1_lut.init = 16'h5555;
    LUT4 i2_3_lut_rep_311_4_lut (.A(\current_state[0] ), .B(\current_state[5] ), 
         .C(n14908), .D(n19305), .Z(n19254)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i2_3_lut_rep_311_4_lut.init = 16'h0006;
    LUT4 i13666_3_lut (.A(addr[9]), .B(addr[8]), .C(cnt_scl[2]), .Z(n17712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13666_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_360 (.A(cnt_scl[5]), .B(cnt_scl[2]), .Z(n19303)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_2_lut_rep_360.init = 16'h8888;
    LUT4 i52_3_lut_4_lut (.A(cnt_scl[5]), .B(cnt_scl[2]), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n35)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i52_3_lut_4_lut.init = 16'h808f;
    LUT4 i1_3_lut_4_lut_adj_152 (.A(n18827), .B(cnt_scl[4]), .C(n19296), 
         .D(n19271), .Z(n16049)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_152.init = 16'h0002;
    LUT4 i6590_4_lut_4_lut (.A(cnt_div[1]), .B(n5145), .C(start), .D(n2[5]), 
         .Z(n1[5])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6590_4_lut_4_lut.init = 16'h7040;
    PFUMX i14723 (.BLUT(n19182), .ALUT(n19181), .C0(n5827), .Z(n19183));
    LUT4 i1_4_lut_4_lut_adj_153 (.A(cnt_div[1]), .B(cnt_div[5]), .C(n33_adj_1491), 
         .D(cnt_div[11]), .Z(n15896)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_4_lut_4_lut_adj_153.init = 16'h0040;
    LUT4 i6665_2_lut_2_lut (.A(cnt_div[1]), .B(cnt_div[0]), .Z(n6014[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6665_2_lut_2_lut.init = 16'h4444;
    LUT4 i37_4_lut_3_lut (.A(\current_state[7] ), .B(\current_state[0] ), 
         .C(\current_state[6] ), .Z(n23_adj_1490)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i37_4_lut_3_lut.init = 16'h1616;
    PFUMX i14719 (.BLUT(n19179), .ALUT(n19178), .C0(n5827), .Z(n19180));
    LUT4 i13542_2_lut_rep_361 (.A(cnt_scl[0]), .B(cnt_scl[5]), .Z(n19304)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13542_2_lut_rep_361.init = 16'heeee;
    LUT4 i1_4_lut_adj_154 (.A(n16217), .B(n10420), .C(cnt_scl[5]), .D(n19300), 
         .Z(n19)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(299[25:31])
    defparam i1_4_lut_adj_154.init = 16'hbfff;
    PFUMX i14205 (.BLUT(n18311), .ALUT(n17712), .C0(cnt_scl[3]), .Z(n18312));
    PFUMX i14715 (.BLUT(n19176), .ALUT(n19175), .C0(n5827), .Z(n19177));
    PFUMX i14711 (.BLUT(n19173), .ALUT(n19172), .C0(\current_state[0] ), 
          .Z(n19174));
    LUT4 i6115_2_lut_rep_362 (.A(\current_state[4] ), .B(\current_state[3] ), 
         .Z(n19305)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6115_2_lut_rep_362.init = 16'heeee;
    LUT4 i1_4_lut_adj_155 (.A(n19294), .B(cnt_scl[8]), .C(cnt_scl[6]), 
         .D(cnt_scl[2]), .Z(n15484)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_155.init = 16'h0002;
    LUT4 i2_2_lut_rep_312_3_lut_4_lut (.A(\current_state[4] ), .B(\current_state[3] ), 
         .C(n19307), .D(\current_state[0] ), .Z(n19255)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_rep_312_3_lut_4_lut.init = 16'hfffe;
    PFUMX i28 (.BLUT(n16), .ALUT(n15580), .C0(\rd_byte_num[0] ), .Z(flag_ack_N_1096));
    LUT4 i1_2_lut_rep_363 (.A(\current_state[6] ), .B(\current_state[5] ), 
         .Z(n19306)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(205[17:26])
    defparam i1_2_lut_rep_363.init = 16'heeee;
    PFUMX mux_1476_i8 (.BLUT(n4848[7]), .ALUT(n4860[7]), .C0(n18086), 
          .Z(n4872[7]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_156 (.A(\current_state[6] ), .B(\current_state[5] ), 
         .C(n19310), .D(\current_state[7] ), .Z(n14905)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(205[17:26])
    defparam i1_2_lut_3_lut_4_lut_adj_156.init = 16'hfffe;
    PFUMX mux_1476_i4 (.BLUT(n4848[3]), .ALUT(n4860[3]), .C0(n18086), 
          .Z(n4872[3]));
    PFUMX mux_1476_i6 (.BLUT(n4848[5]), .ALUT(n4860[5]), .C0(n18086), 
          .Z(n4872[5]));
    PFUMX i54 (.BLUT(n15508), .ALUT(n15541), .C0(cnt_div[10]), .Z(n33_adj_1491));
    LUT4 i1_2_lut_rep_364 (.A(current_state[1]), .B(\current_state[2] ), 
         .Z(n19307)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_364.init = 16'heeee;
    PFUMX mux_1476_i5 (.BLUT(n4848[4]), .ALUT(n4860[4]), .C0(n18086), 
          .Z(n4872[4]));
    LUT4 i1_3_lut_rep_365 (.A(\current_state[3] ), .B(\current_state[0] ), 
         .C(current_state[1]), .Z(n19308)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_3_lut_rep_365.init = 16'hfefe;
    PFUMX mux_1411_i1 (.BLUT(n4719[0]), .ALUT(n4722[0]), .C0(n18086), 
          .Z(n4725[0]));
    LUT4 i1_2_lut_4_lut_adj_157 (.A(\current_state[3] ), .B(\current_state[0] ), 
         .C(current_state[1]), .D(\current_state[4] ), .Z(n7478)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_2_lut_4_lut_adj_157.init = 16'hfffe;
    L6MUX21 mux_1476_i7 (.D0(n4806[6]), .D1(n4848[6]), .SD(n16605), .Z(n4872[6]));
    PFUMX i43 (.BLUT(n17), .ALUT(n20_adj_1475), .C0(n18086), .Z(n39));
    LUT4 i1_2_lut_rep_366 (.A(cnt_scl[4]), .B(cnt_scl[3]), .Z(n19309)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_366.init = 16'heeee;
    PFUMX mux_1472_i7 (.BLUT(n4792[6]), .ALUT(n4860[6]), .C0(n18086), 
          .Z(n4848[6]));
    PFUMX mux_1505_i1 (.BLUT(n4907[0]), .ALUT(n15289), .C0(n19254), .Z(n4927[0]));
    PFUMX mux_1399_i1 (.BLUT(sda_transmit_N_1106), .ALUT(sda_transmit_N_1103), 
          .C0(current_state[1]), .Z(n4709[0]));
    L6MUX21 i39 (.D0(n15), .D1(n18_adj_1492), .SD(n18086), .Z(n21_adj_1468));
    PFUMX i13863 (.BLUT(n15870), .ALUT(n15391), .C0(n19240), .Z(n12_adj_1493));
    LUT4 i1_2_lut_rep_330_3_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), .C(cnt_scl[2]), 
         .Z(n19273)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_330_3_lut.init = 16'hfefe;
    PFUMX i41 (.BLUT(n15689), .ALUT(n23_adj_1483), .C0(n19254), .Z(n15));
    LUT4 i13668_3_lut (.A(addr[3]), .B(addr[2]), .C(cnt_scl[2]), .Z(n17714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13668_3_lut.init = 16'hcaca;
    PFUMX i40 (.BLUT(n15869), .ALUT(n15668), .C0(n19240), .Z(n18_adj_1492));
    PFUMX i79 (.BLUT(n16049), .ALUT(n63), .C0(n19254), .Z(n57));
    PFUMX i25 (.BLUT(n15748), .ALUT(n15373), .C0(\current_state[6] ), 
          .Z(n15005));
    L6MUX21 i13751 (.D0(n17795), .D1(n17796), .SD(\current_state[3] ), 
            .Z(n17797));
    LUT4 i1_3_lut_4_lut_adj_158 (.A(cnt_scl[6]), .B(n19250), .C(n19293), 
         .D(n19275), .Z(n16939)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_3_lut_4_lut_adj_158.init = 16'hfffe;
    LUT4 i14202_2_lut_rep_314_3_lut_4_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), 
         .C(n10420), .D(cnt_scl[2]), .Z(n19257)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i14202_2_lut_rep_314_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_159 (.A(flag_ack_N_1096), .B(n16593), .Z(n16649)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_159.init = 16'h8888;
    LUT4 i13671_3_lut (.A(data_write[3]), .B(data_write[2]), .C(cnt_scl[2]), 
         .Z(n17717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13671_3_lut.init = 16'hcaca;
    LUT4 i6888_2_lut_3_lut_4_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), .C(cnt_scl[1]), 
         .D(cnt_scl[2]), .Z(n10776)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i6888_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1_4_lut_3_lut_adj_160 (.A(\current_state[0] ), .B(current_state[1]), 
         .C(\current_state[2] ), .Z(n8_adj_1480)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_4_lut_3_lut_adj_160.init = 16'he8e8;
    LUT4 i1_2_lut_rep_367 (.A(\current_state[9] ), .B(\current_state[8] ), 
         .Z(n19310)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_2_lut_rep_367.init = 16'heeee;
    LUT4 i1_2_lut_rep_325_3_lut (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(\current_state[7] ), .Z(n19268)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_2_lut_rep_325_3_lut.init = 16'hfefe;
    LUT4 i13562_2_lut_3_lut_4_lut (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(\current_state[3] ), .D(\current_state[0] ), .Z(n17598)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i13562_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(n4779), .D(n4), .Z(drive_clk_enable_31)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'he0f0;
    LUT4 n17712_bdd_3_lut_14207 (.A(addr[11]), .B(addr[10]), .C(cnt_scl[2]), 
         .Z(n18311)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17712_bdd_3_lut_14207.init = 16'hcaca;
    LUT4 i14124_2_lut_3_lut_4_lut (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(n19254), .D(n4), .Z(n16605)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i14124_2_lut_3_lut_4_lut.init = 16'h1f0f;
    LUT4 i2_2_lut_rep_300_3_lut (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(n4), .Z(n18086)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i2_2_lut_rep_300_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_4_lut_adj_162 (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(n15915), .D(n23_adj_1490), .Z(n16401)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_3_lut_4_lut_adj_162.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(\current_state[9] ), .B(\current_state[8] ), 
         .C(n12_adj_1493), .D(n4), .Z(n13)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(313[17:24])
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'h1000;
    LUT4 i1_4_lut_adj_164 (.A(n19264), .B(cnt_scl[2]), .C(n19280), .D(cnt_scl[5]), 
         .Z(n15872)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_164.init = 16'hfbfe;
    LUT4 i1_2_lut_adj_165 (.A(cnt_scl[3]), .B(cnt_scl[5]), .Z(n16193)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_165.init = 16'h4444;
    LUT4 i1_4_lut_adj_166 (.A(n19275), .B(n11), .C(n19314), .D(n16909), 
         .Z(n10)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_166.init = 16'h0400;
    LUT4 i6462_2_lut_rep_369 (.A(\current_state[3] ), .B(\current_state[2] ), 
         .Z(n19312)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6462_2_lut_rep_369.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_167 (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(\current_state[4] ), .D(current_state[1]), .Z(n31_adj_1463)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_167.init = 16'h0110;
    LUT4 n14905_bdd_4_lut (.A(n14905), .B(n19308), .C(\current_state[4] ), 
         .D(\current_state[2] ), .Z(n19014)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam n14905_bdd_4_lut.init = 16'hfeef;
    LUT4 rd_first_done_bdd_3_lut_4_lut (.A(n19257), .B(n15584), .C(\current_state[6] ), 
         .D(flag_ack_N_1096), .Z(n18394)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam rd_first_done_bdd_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_168 (.A(rd_cnt[2]), .B(rd_cnt[3]), .Z(n16583)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_168.init = 16'heeee;
    LUT4 mux_1879_i8_4_lut (.A(n15606), .B(\current_state[7] ), .C(flag_ack), 
         .D(n5694), .Z(n5686)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1879_i8_4_lut.init = 16'h5c0c;
    LUT4 i2804_4_lut (.A(n19256), .B(n19257), .C(n15444), .D(n19240), 
         .Z(n5691)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam i2804_4_lut.init = 16'hfabb;
    LUT4 i1_3_lut_adj_169 (.A(cnt_scl[2]), .B(n10), .C(cnt_scl[3]), .Z(n14765)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(278[21] 309[28])
    defparam i1_3_lut_adj_169.init = 16'h8080;
    LUT4 mux_1879_i4_4_lut (.A(n5628), .B(\current_state[3] ), .C(flag_ack), 
         .D(n5694), .Z(n5682)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1879_i4_4_lut.init = 16'h0c5c;
    LUT4 i1_4_lut_adj_170 (.A(n19283), .B(n15584), .C(n19300), .D(n16487), 
         .Z(n5628)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_170.init = 16'h4000;
    LUT4 i1_rep_56_2_lut_3_lut_4_lut (.A(n19257), .B(n15584), .C(n4847), 
         .D(flag_ack), .Z(n15612)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_rep_56_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_171 (.A(flag_ack), .B(cnt_scl[2]), .C(current_state[1]), 
         .Z(n16487)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_171.init = 16'h8080;
    PFUMX i14778 (.BLUT(n19361), .ALUT(n19362), .C0(\current_state[4] ), 
          .Z(n19363));
    LUT4 i1_2_lut_rep_371 (.A(cnt_scl[6]), .B(cnt_scl[8]), .Z(n19314)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_371.init = 16'heeee;
    LUT4 mux_1879_i6_4_lut (.A(n16673), .B(\current_state[5] ), .C(flag_ack), 
         .D(n19257), .Z(n5684)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(119[13] 379[20])
    defparam mux_1879_i6_4_lut.init = 16'hac0c;
    LUT4 i1_4_lut_adj_172 (.A(n19235), .B(cnt_scl[5]), .C(\current_state[3] ), 
         .D(ctrl_w0_r1), .Z(n16667)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_172.init = 16'h8000;
    LUT4 i13498_2_lut_rep_328_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), 
         .C(cnt_scl[7]), .D(cnt_scl[9]), .Z(n19271)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i13498_2_lut_rep_328_3_lut_4_lut.init = 16'hfffe;
    PFUMX i16 (.BLUT(n15873), .ALUT(n15667), .C0(n19240), .Z(n14078));
    PFUMX i13750 (.BLUT(n4296[0]), .ALUT(n4299[0]), .C0(n17887), .Z(n17796));
    LUT4 i1_2_lut_adj_173 (.A(cnt_scl[5]), .B(\current_state[6] ), .Z(n16587)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_173.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_174 (.A(n19257), .B(n15584), .C(rd_cnt[0]), 
         .D(flag_ack_N_1096), .Z(n15531)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_174.init = 16'h8000;
    LUT4 i1_2_lut_rep_321_3_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[0]), 
         .Z(n19264)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_321_3_lut.init = 16'hfefe;
    PFUMX mux_1460_i7 (.BLUT(next_state_9__N_967[6]), .ALUT(\next_state_9__N_917[6] ), 
          .C0(\current_state[0] ), .Z(n4806[6]));
    LUT4 i1_2_lut_3_lut_4_lut_adj_175 (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[3]), 
         .D(cnt_scl[4]), .Z(n8_c)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_3_lut_4_lut_adj_175.init = 16'hfffe;
    PFUMX i13749 (.BLUT(n6632), .ALUT(n6634), .C0(n17887), .Z(n17795));
    LUT4 i1_2_lut_rep_329_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(cnt_scl[5]), 
         .D(cnt_scl[0]), .Z(n19272)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i1_2_lut_rep_329_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13592_3_lut_4_lut (.A(cnt_scl[6]), .B(cnt_scl[8]), .C(\current_state[0] ), 
         .D(cnt_scl[4]), .Z(n17628)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/impl1/source/i2c_drive.v(114[14] 380[12])
    defparam i13592_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_176 (.A(cnt_scl[0]), .B(n19259), .C(\current_state[6] ), 
         .Z(n16909)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_176.init = 16'h1010;
    
endmodule
//
// Verilog Description of module csi2dsi
//

module csi2dsi (csi_clk_byte_hs, \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, 
            csi_dt_parser, csi_wc, GND_net, csi_dt_c_4, n19311, csi_clk_byte, 
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
    input n19311;
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
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(18[22:32])
    
    \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT")  dphy_rx_inst (.csi_clk_byte_hs(csi_clk_byte_hs), 
            .\reset_byte_fr_sync[1] (\reset_byte_fr_sync[1] ), .VCC_net(VCC_net), 
            .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), .csi_wc({csi_wc}), 
            .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), .n19311(n19311), 
            .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), .csi_lp_en_c(csi_lp_en_c), 
            .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (\reset_byte_sync[1] ), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi.v(149[1] 207[2])
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT") 
//

module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",WORD_ALIGN="ON",BYTECLK_MHZ=45,FIFO_TYPE="LUT")  (csi_clk_byte_hs, 
            \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, csi_dt_parser, 
            csi_wc, GND_net, csi_dt_c_4, n19311, csi_clk_byte, csi_sp_en_c, 
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
    input n19311;
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
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(131[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(130[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/mipi_3ch_top.v(6[16:23])
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
    
    csi2dsi_capture_ctrl \capture_ctrl_inst.capture_ctrl_inst  (.reset_n_i(\reset_byte_fr_sync[1] ), 
            .clk_byte_i(csi_clk_byte_hs), .bd0_i({bd0_o}), .bd1_i({bd1_o}), 
            .bd2_i({bd2_o}), .bd3_i({bd3_o}), .capture_en_i(capture_en_o), 
            .ref_dt_i({VCC_net, GND_net, VCC_net, GND_net, VCC_net, 
            VCC_net}), .lp_en_o(csi_dt_c_5), .payload_en_o(csi_dt_c_4), 
            .wc_o({csi_wc}), .dt_o({csi_dt_parser})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(423[9] 449[10])
    csi2dsi_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(n19311), .reset_lp_n_i(n19311), 
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
            csi_dt_c_2})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(349[1] 390[2])
    csi2dsi_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(n19311), .reset_byte_n_i(\reset_byte_sync[1] ), 
            .reset_byte_fr_n_i(\reset_byte_fr_sync[1] ), .clk_byte_fr_i(csi_clk_byte_hs), 
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
            .CLKHSBYTE(csi_clk_byte_hs), .CLKDRXLPP(lp_clk_rx_p), .CLKDRXLPN(lp_clk_rx_n)) /* synthesis HS_MODE="RX", DIR_PIN_DN3="INPUT", DIR_PIN_DP3="INPUT", DIR_PIN_DN2="INPUT", DIR_PIN_DP2="INPUT", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", DIR_PIN_DN0="INPUT", DIR_PIN_DP0="INPUT", FREQUENCY_PIN_HSBYTECLKD="45.0", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    defparam \MIXEL.mixel_dphy .HSEL = 0;
    defparam \MIXEL.mixel_dphy .HS_16BIT_EN = 0;
    defparam \MIXEL.mixel_dphy .CN = 5'b00000;
    defparam \MIXEL.mixel_dphy .CM = 8'b00000000;
    defparam \MIXEL.mixel_dphy .CO = 2'b00;
    defparam \MIXEL.mixel_dphy .PLL_TST = 4'b1001;
    defparam \MIXEL.mixel_dphy .ENP_DESER = 1'b1;
    LUT4 hs_settle_en_i_I_0_2_lut (.A(hs_settle_en_w), .B(csi_sp_en_c), 
         .Z(d_sot_det_o_3__N_1126)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink-mipi/crosslink-mipi/crosslink/theips/csi2dsi/csi2dsi_dphy_wrapper.v(238[29:56])
    defparam hs_settle_en_i_I_0_2_lut.init = 16'h8888;
    
endmodule
