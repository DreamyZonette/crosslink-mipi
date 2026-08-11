// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Tue Aug 11 17:16:48 2026
//
// Verilog Description of module mipi_3ch_top
//

module mipi_3ch_top (sys_clk, sys_rstn, led, uart_txd, uart_rxd, i2c_sclk_0, 
            i2c_sda_0, xshutdn_0, mipi_rcp_0, mipi_rcn_0, mipi_rdp_0, 
            mipi_rdn_0, csi_payload_en, csi_sp_en, csi_lp_en, csi_dt) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(5[8:20])
    input sys_clk;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    input sys_rstn;   // d:/project/crosslink/project/mipi_3ch_top.v(7[16:24])
    output [3:0]led;   // d:/project/crosslink/project/mipi_3ch_top.v(9[23:26])
    output uart_txd;   // d:/project/crosslink/project/mipi_3ch_top.v(10[23:31])
    input uart_rxd;   // d:/project/crosslink/project/mipi_3ch_top.v(11[23:31])
    output i2c_sclk_0;   // d:/project/crosslink/project/mipi_3ch_top.v(13[23:33])
    inout i2c_sda_0;   // d:/project/crosslink/project/mipi_3ch_top.v(14[23:32])
    output xshutdn_0;   // d:/project/crosslink/project/mipi_3ch_top.v(15[23:32])
    inout mipi_rcp_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(17[22:32])
    inout mipi_rcn_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(18[22:32])
    inout mipi_rdp_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(19[22:32])
    inout mipi_rdn_0 /* synthesis black_box_pad_pin=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(20[22:32])
    output csi_payload_en;   // d:/project/crosslink/project/mipi_3ch_top.v(22[23:37])
    output csi_sp_en;   // d:/project/crosslink/project/mipi_3ch_top.v(23[23:32])
    output csi_lp_en;   // d:/project/crosslink/project/mipi_3ch_top.v(24[23:32])
    output [5:0]csi_dt;   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(18[22:32])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(126[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(127[25:40])
    
    wire GND_net, VCC_net, sys_rstn_c, led_c_3, led_c_2, led_c_1, 
        uart_txd_c, uart_rxd_c, i2c_sclk_0_c, xshutdn_0_c, csi_payload_en_c, 
        csi_sp_en_c, csi_lp_en_c, csi_dt_c_5, csi_dt_c_4, csi_dt_c_3, 
        csi_dt_c_2, n12020;
    wire [15:0]frame_count;   // d:/project/crosslink/project/mipi_3ch_top.v(33[13:24])
    
    wire frame_count_valid, rst_n_pulse;
    wire [25:0]rst_cnt;   // d:/project/crosslink/project/mipi_3ch_top.v(38[13:20])
    wire [23:0]blink_cnt;   // d:/project/crosslink/project/mipi_3ch_top.v(46[12:21])
    
    wire xshutdn_r, cam_ready;
    wire [19:0]xshutdn_cnt;   // d:/project/crosslink/project/mipi_3ch_top.v(68[12:23])
    wire [19:0]cam_cnt;   // d:/project/crosslink/project/mipi_3ch_top.v(69[12:19])
    wire [5:0]csi_dt_parser;   // d:/project/crosslink/project/mipi_3ch_top.v(134[25:38])
    wire [15:0]csi_wc;   // d:/project/crosslink/project/mipi_3ch_top.v(136[25:31])
    wire [1:0]reset_byte_fr_sync;   // d:/project/crosslink/project/mipi_3ch_top.v(143[25:43])
    wire [1:0]reset_byte_sync;   // d:/project/crosslink/project/mipi_3ch_top.v(144[25:40])
    wire [31:0]csi_byte_clk_count;   // d:/project/crosslink/project/mipi_3ch_top.v(149[12:30])
    wire [31:0]csi_hs_sync_count;   // d:/project/crosslink/project/mipi_3ch_top.v(150[12:29])
    wire [31:0]csi_long_packet_count;   // d:/project/crosslink/project/mipi_3ch_top.v(151[12:33])
    wire [31:0]csi_payload_byte_count;   // d:/project/crosslink/project/mipi_3ch_top.v(152[12:34])
    
    wire dphy_hs_sync_d, csi_lp_en_d;
    wire [5:0]csi_last_dt;   // d:/project/crosslink/project/mipi_3ch_top.v(155[12:23])
    wire [15:0]csi_last_wc;   // d:/project/crosslink/project/mipi_3ch_top.v(156[12:23])
    wire [31:0]csi_byte_clk_count_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(185[12:35])
    wire [31:0]csi_byte_clk_count_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(185[37:59])
    wire [31:0]csi_hs_sync_count_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(186[12:34])
    wire [31:0]csi_hs_sync_count_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(186[36:57])
    wire [31:0]csi_long_packet_count_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(187[12:38])
    wire [31:0]csi_long_packet_count_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(187[40:65])
    wire [31:0]csi_payload_byte_count_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(188[12:39])
    wire [31:0]csi_payload_byte_count_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(188[41:67])
    wire [5:0]csi_last_dt_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(189[12:28])
    wire [5:0]csi_last_dt_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(189[30:45])
    wire [15:0]csi_last_wc_meta;   // d:/project/crosslink/project/mipi_3ch_top.v(190[12:28])
    wire [15:0]csi_last_wc_sys;   // d:/project/crosslink/project/mipi_3ch_top.v(190[30:45])
    
    wire n12019;
    wire [7:0]tx_data;   // d:/project/crosslink/project/mipi_3ch_top.v(297[13:20])
    wire [7:0]rx_data;   // d:/project/crosslink/project/mipi_3ch_top.v(298[13:20])
    
    wire rx_flag, uart_busy, led_3__N_1, n12018, n12017, n12016, 
        n16311, n9643, n16395, n16393, n12015, reset_byte_fr_sync_1__N_129, 
        csi_hs_sync_count_31__N_349, csi_long_packet_count_31__N_384, n16383, 
        n12014, rst_cnt_25__N_445, n1170, n1171, n1172, n1173, n1174, 
        n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, 
        n1183, n1184, n1185, n1186, n1187, n1188, n1189, n1190, 
        n1191, n1192, n1193, n1194, n1195, rst_n_pulse_N_449, n165, 
        n164, n163, n162, n161, n160, n159, n158, n157, n156, 
        n155, n154, n153, n152, n151, n150, n149, n148, n147, 
        n12013, n16215, n12012, n12011;
    wire [1:0]tx_state;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(53[12:20])
    wire [2:0]tx_phase;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(54[12:20])
    
    wire n16211, n16387, n12010, n12009, n47, n12008, n5003, n12007, 
        n12006, n12005, n7041, n12004, n7055, n12003, n12002, 
        n12001, n12000, n11999, n11998, n11997, n11996, n11995, 
        n11994, work_en_N_1466, n146, n145, n144, n143, n142, 
        n141, n140, n139, n138, n137, n136, n135, n134;
    wire [9:0]current_state;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(36[17:30])
    
    wire sda_transmit;
    wire [3:0]rd_cnt;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(41[17:23])
    
    wire sda_transmit_en_N_1145, n11993, n11992, n11991, n2855, n11990, 
        n11989, n16271, n15681, n11988, n7045, n16371, n16125, 
        n16123, n15679, n16113, drive_clk_enable_22, n15669, n7017, 
        sys_rst_n_N_472, n11987, n16097, n11930, n11986, n11985, 
        n11929, n11984, n11983, n11982, n11928, n16489, n11981, 
        n11927, n15649, n11980, n15647, n7023, n3009, n7029, n7043, 
        n11979, n11926, n6959, n11925, n11978, n11977, n11924, 
        n11923, n11852, n11855, n11861, n11922, n11921, n11860, 
        n7035, n11976, n7037, n11920, n11857, n11859, n16013, 
        n11854, n11853, n16011, n11975, n11919, n11974, n16005, 
        n12775, n14675, n15995, n3909, n7033, n6323, n12098, n15991, 
        n92, n11973, n3966, n17722, n11972, n15971, n15969, n15967, 
        n15965, n11918, n11917, n11858, n5, sys_clk_c_enable_225, 
        n11916, n11971, n11970, n11969, n11915, n11968, n11967, 
        n7031, n7039, n7027, sys_clk_c_enable_188, n7025, n7021, 
        n7019, n16662, n11856, n11966, n8953, n16658, n134_adj_1666, 
        n135_adj_1667, n136_adj_1668, n137_adj_1669, n138_adj_1670, 
        n139_adj_1671, n140_adj_1672, n141_adj_1673, n142_adj_1674, 
        n143_adj_1675, n144_adj_1676, n145_adj_1677, n146_adj_1678, 
        n147_adj_1679, n148_adj_1680, n149_adj_1681, n150_adj_1682, 
        n151_adj_1683, n152_adj_1684, n153_adj_1685, n154_adj_1686, 
        n155_adj_1687, n156_adj_1688, n157_adj_1689, n158_adj_1690, 
        n159_adj_1691, n160_adj_1692, n161_adj_1693, n162_adj_1694, 
        n163_adj_1695, n164_adj_1696, n165_adj_1697, n11864, n11965, 
        n11964, n11963, n11962, n11961, n11960, n16375, n134_adj_1698, 
        n135_adj_1699, n136_adj_1700, n137_adj_1701, n138_adj_1702, 
        n139_adj_1703, n140_adj_1704, n141_adj_1705, n142_adj_1706, 
        n143_adj_1707, n144_adj_1708, n145_adj_1709, n146_adj_1710, 
        n147_adj_1711, n148_adj_1712, n149_adj_1713, n150_adj_1714, 
        n151_adj_1715, n152_adj_1716, n153_adj_1717, n154_adj_1718, 
        n155_adj_1719, n156_adj_1720, n157_adj_1721, n158_adj_1722, 
        n159_adj_1723, n160_adj_1724, n161_adj_1725, n162_adj_1726, 
        n163_adj_1727, n164_adj_1728, n165_adj_1729, n12036, n11959, 
        n12035, n11958, n12034, n12033, n12032, n16481, n12031, 
        n12030, n14840, n11957, n12029, n134_adj_1730, n135_adj_1731, 
        n136_adj_1732, n137_adj_1733, n138_adj_1734, n139_adj_1735, 
        n140_adj_1736, n141_adj_1737, n142_adj_1738, n143_adj_1739, 
        n144_adj_1740, n145_adj_1741, n146_adj_1742, n147_adj_1743, 
        n148_adj_1744, n149_adj_1745, n150_adj_1746, n151_adj_1747, 
        n152_adj_1748, n153_adj_1749, n154_adj_1750, n155_adj_1751, 
        n156_adj_1752, n157_adj_1753, n158_adj_1754, n159_adj_1755, 
        n160_adj_1756, n161_adj_1757, n162_adj_1758, n163_adj_1759, 
        n164_adj_1760, n165_adj_1761, n12028, n12027, n11863, n17783, 
        n17776, n8218, sys_clk_c_enable_38, n86, n87, n88, n89, 
        n90, n91, n92_adj_1762, n93, n94, n95, n96, n97, n98, 
        n99, n100, n101, n102, n103, n104, n105, n17775, sys_clk_c_enable_207, 
        n12026, n17728, n17769, n17768, n16377, n12025, n86_adj_1763, 
        n87_adj_1764, n88_adj_1765, n89_adj_1766, n90_adj_1767, n91_adj_1768, 
        n92_adj_1769, n93_adj_1770, n94_adj_1771, n95_adj_1772, n96_adj_1773, 
        n97_adj_1774, n98_adj_1775, n99_adj_1776, n100_adj_1777, n101_adj_1778, 
        n102_adj_1779, n103_adj_1780, n104_adj_1781, n105_adj_1782, 
        n12024, n12023, n12022, n16333, n12021, n11862, i2c_sda_0_out, 
        n102_adj_1783, n103_adj_1784, n104_adj_1785, n105_adj_1786, 
        n106, n107, n108, n109, n110, n111, n112, n113, n114, 
        n115, n116, n117, n118, n119, n120, n121, n122, n123, 
        n124, n125, n128, n129, n130, n131, n132, n133, n134_adj_1787, 
        n135_adj_1788, n136_adj_1789, n137_adj_1790, n138_adj_1791, 
        n139_adj_1792, n140_adj_1793, n141_adj_1794, n142_adj_1795, 
        n143_adj_1796, n144_adj_1797, n145_adj_1798, n146_adj_1799, 
        n147_adj_1800, n148_adj_1801, n149_adj_1802, n150_adj_1803, 
        n151_adj_1804, n7015, n7053, n7013, n7051, n7011, n7049, 
        n7009, n7047, n7007, n16267, n16479, n16485, n16545, n16543, 
        n16537, n16505, n4;
    
    VHI i2 (.Z(VCC_net));
    uart_tx u_uart_tx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .uart_busy(uart_busy), .GND_net(GND_net), .VCC_net(VCC_net), 
            .\tx_data[4] (tx_data[4]), .work_en_N_1466(work_en_N_1466), 
            .uart_txd_c(uart_txd_c), .\tx_data[5] (tx_data[5]), .\tx_data[6] (tx_data[6]), 
            .\tx_data[0] (tx_data[0]), .\tx_data[1] (tx_data[1]), .\tx_data[2] (tx_data[2]), 
            .\tx_data[3] (tx_data[3])) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(321[3] 328[2])
    CCU2C cam_cnt_1911_add_4_5 (.A0(cam_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12006), .COUT(n12007), .S0(n102), .S1(n101));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_5.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_5.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_5.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_5.INJECT1_1 = "NO";
    FD1S3DX xshutdn_out_reg_99 (.D(xshutdn_r), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(xshutdn_0_c));   // d:/project/crosslink/project/mipi_3ch_top.v(79[10] 101[8])
    defparam xshutdn_out_reg_99.GSR = "ENABLED";
    FD1S3DX dphy_hs_sync_d_107 (.D(csi_lp_en_c), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(dphy_hs_sync_d));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam dphy_hs_sync_d_107.GSR = "ENABLED";
    FD1S3DX csi_lp_en_d_108 (.D(csi_dt_c_5), .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), 
            .Q(csi_lp_en_d));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_lp_en_d_108.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i0 (.D(csi_byte_clk_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i0 (.D(csi_hs_sync_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i0 (.D(csi_hs_sync_count_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i0 (.D(csi_long_packet_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i0 (.D(csi_long_packet_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i0 (.D(csi_payload_byte_count[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i0 (.D(csi_payload_byte_count_meta[0]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i0 (.D(csi_last_dt[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i0 (.D(csi_last_dt_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i0 (.D(csi_last_wc[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i0.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i0 (.D(csi_last_wc_meta[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_fr_sync_i0 (.D(VCC_net), .CK(csi_clk_byte_hs), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_fr_sync[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(222[9:61])
    defparam reset_byte_fr_sync_i0.GSR = "ENABLED";
    FD1S3DX reset_byte_sync_i0 (.D(VCC_net), .CK(csi_clk_byte), .CD(sys_rst_n_N_472), 
            .Q(reset_byte_sync[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(229[9:55])
    defparam reset_byte_sync_i0.GSR = "ENABLED";
    CCU2C cam_cnt_1911_add_4_3 (.A0(cam_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12005), .COUT(n12006), .S0(n104), .S1(n103));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_3.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_3.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_3.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_3.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cam_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12005), .S1(n105));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_1.INIT0 = 16'h0000;
    defparam cam_cnt_1911_add_4_1.INIT1 = 16'h555f;
    defparam cam_cnt_1911_add_4_1.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_1.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_33 (.A0(csi_byte_clk_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12004), .S0(n134_adj_1730));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_33.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_33.INIT1 = 16'h0000;
    defparam csi_byte_clk_count_1912_add_4_33.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_31 (.A0(csi_byte_clk_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12003), .COUT(n12004), .S0(n136_adj_1732), 
          .S1(n135_adj_1731));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_31.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_31.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_31.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_31.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_29 (.A0(csi_byte_clk_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12002), .COUT(n12003), .S0(n138_adj_1734), 
          .S1(n137_adj_1733));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_29.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_29.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_29.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_27 (.A0(csi_byte_clk_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12001), .COUT(n12002), .S0(n140_adj_1736), 
          .S1(n139_adj_1735));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_27.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_27.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_27.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_27.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_25 (.A0(csi_byte_clk_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12000), .COUT(n12001), .S0(n142_adj_1738), 
          .S1(n141_adj_1737));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_25.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_25.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_25.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_23 (.A0(csi_byte_clk_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11999), .COUT(n12000), .S0(n144_adj_1740), 
          .S1(n143_adj_1739));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_23.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_23.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_23.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_23.INJECT1_1 = "NO";
    FD1P3DX csi_last_dt_i0_i0 (.D(csi_dt_parser[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i27 (.D(csi_hs_sync_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i27.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_21 (.A0(csi_byte_clk_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11998), .COUT(n11999), .S0(n146_adj_1742), 
          .S1(n145_adj_1741));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_21.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_21.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_21.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_21.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i10 (.D(csi_byte_clk_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i10.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_19 (.A0(csi_byte_clk_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11997), .COUT(n11998), .S0(n148_adj_1744), 
          .S1(n147_adj_1743));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_19.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_19.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_19.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_19.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i26 (.D(csi_hs_sync_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i25 (.D(csi_hs_sync_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i25.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut (.A(current_state[2]), .B(n17776), .C(current_state[3]), 
         .D(current_state[4]), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    FD1S3DX csi_byte_clk_count_meta_i31 (.D(csi_byte_clk_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i22 (.D(csi_byte_clk_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i24 (.D(csi_hs_sync_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i23 (.D(csi_hs_sync_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i30 (.D(csi_byte_clk_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i21 (.D(csi_byte_clk_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i22 (.D(csi_hs_sync_count_meta[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i21 (.D(csi_hs_sync_count_meta[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i9 (.D(csi_byte_clk_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i20 (.D(csi_hs_sync_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i29 (.D(csi_byte_clk_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i20 (.D(csi_byte_clk_count_meta[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i19 (.D(csi_hs_sync_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i19.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_17 (.A0(csi_byte_clk_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11996), .COUT(n11997), .S0(n150_adj_1746), 
          .S1(n149_adj_1745));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_17.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_17.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_17.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_17.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_sys_i18 (.D(csi_hs_sync_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i28 (.D(csi_byte_clk_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i19 (.D(csi_byte_clk_count_meta[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i17 (.D(csi_hs_sync_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i16 (.D(csi_hs_sync_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i15 (.D(csi_hs_sync_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i27 (.D(csi_byte_clk_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i18 (.D(csi_byte_clk_count_meta[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i14 (.D(csi_hs_sync_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i13 (.D(csi_hs_sync_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i8 (.D(csi_byte_clk_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i8.GSR = "ENABLED";
    FD1P3DX rst_cnt__i1 (.D(n7055), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i26 (.D(csi_byte_clk_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i17 (.D(csi_byte_clk_count_meta[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i12 (.D(csi_hs_sync_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i11 (.D(csi_hs_sync_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i25 (.D(csi_byte_clk_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i25.GSR = "ENABLED";
    OB csi_sp_en_pad (.I(csi_sp_en_c), .O(csi_sp_en));   // d:/project/crosslink/project/mipi_3ch_top.v(23[23:32])
    OB csi_payload_en_pad (.I(csi_payload_en_c), .O(csi_payload_en));   // d:/project/crosslink/project/mipi_3ch_top.v(22[23:37])
    FD1S3DX csi_byte_clk_count_sys_i16 (.D(csi_byte_clk_count_meta[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i10 (.D(csi_hs_sync_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i10.GSR = "ENABLED";
    OB xshutdn_0_pad (.I(xshutdn_0_c), .O(xshutdn_0));   // d:/project/crosslink/project/mipi_3ch_top.v(15[23:32])
    OB i2c_sclk_0_pad (.I(i2c_sclk_0_c), .O(i2c_sclk_0));   // d:/project/crosslink/project/mipi_3ch_top.v(13[23:33])
    FD1S3DX csi_hs_sync_count_sys_i9 (.D(csi_hs_sync_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i8 (.D(csi_hs_sync_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i8.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_15 (.A0(csi_byte_clk_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11995), .COUT(n11996), .S0(n152_adj_1748), 
          .S1(n151_adj_1747));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_15.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_15.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_15.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_15.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i24 (.D(csi_byte_clk_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i15 (.D(csi_byte_clk_count_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i7 (.D(csi_hs_sync_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i6 (.D(csi_hs_sync_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i23 (.D(csi_byte_clk_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i23.GSR = "ENABLED";
    OB uart_txd_pad (.I(uart_txd_c), .O(uart_txd));   // d:/project/crosslink/project/mipi_3ch_top.v(10[23:31])
    FD1S3DX csi_byte_clk_count_sys_i14 (.D(csi_byte_clk_count_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i5 (.D(csi_hs_sync_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i4 (.D(csi_hs_sync_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i3 (.D(csi_hs_sync_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i22 (.D(csi_byte_clk_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i13 (.D(csi_byte_clk_count_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i2 (.D(csi_hs_sync_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i1 (.D(csi_hs_sync_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i21 (.D(csi_byte_clk_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i12 (.D(csi_byte_clk_count_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i31 (.D(csi_hs_sync_count[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i30 (.D(csi_hs_sync_count[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i29 (.D(csi_hs_sync_count[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i20 (.D(csi_byte_clk_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i11 (.D(csi_byte_clk_count_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i28 (.D(csi_hs_sync_count[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i28.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_13 (.A0(csi_byte_clk_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11994), .COUT(n11995), .S0(n154_adj_1750), 
          .S1(n153_adj_1749));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_13.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_13.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_13.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_13.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i27 (.D(csi_hs_sync_count[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i27.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i0 (.D(n165), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i0.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i26 (.D(csi_hs_sync_count[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i26.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_11 (.A0(csi_byte_clk_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11993), .COUT(n11994), .S0(n156_adj_1752), 
          .S1(n155_adj_1751));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_11.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_11.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_11.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_11.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i7 (.D(csi_byte_clk_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i25 (.D(csi_hs_sync_count[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i6 (.D(csi_byte_clk_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i24 (.D(csi_hs_sync_count[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i23 (.D(csi_hs_sync_count[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i23.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_1915_add_4_33 (.A0(csi_payload_byte_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n11930), .S0(n134));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_33.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_33.INIT1 = 16'h0000;
    defparam csi_payload_byte_count_1915_add_4_33.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_33.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i22 (.D(csi_hs_sync_count[22]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i21 (.D(csi_hs_sync_count[21]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i20 (.D(csi_hs_sync_count[20]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i19 (.D(csi_hs_sync_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i19 (.D(csi_byte_clk_count[19]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i10 (.D(csi_byte_clk_count_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i5 (.D(csi_byte_clk_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i18 (.D(csi_hs_sync_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i17 (.D(csi_hs_sync_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i17.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_9 (.A0(csi_byte_clk_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11992), .COUT(n11993), .S0(n158_adj_1754), 
          .S1(n157_adj_1753));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_9.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_9.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_9.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_9.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i4 (.D(csi_byte_clk_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i18 (.D(csi_byte_clk_count[18]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i18.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_7 (.A0(csi_byte_clk_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11991), .COUT(n11992), .S0(n160_adj_1756), 
          .S1(n159_adj_1755));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_7.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_7.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_7.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_7.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i9 (.D(csi_byte_clk_count_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i16 (.D(csi_hs_sync_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i15 (.D(csi_hs_sync_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i17 (.D(csi_byte_clk_count[17]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i8 (.D(csi_byte_clk_count_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i14 (.D(csi_hs_sync_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i13 (.D(csi_hs_sync_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i16 (.D(csi_byte_clk_count[16]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i7 (.D(csi_byte_clk_count_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i12 (.D(csi_hs_sync_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i11 (.D(csi_hs_sync_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i10 (.D(csi_hs_sync_count[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i6 (.D(csi_byte_clk_count_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i9 (.D(csi_hs_sync_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i3 (.D(csi_byte_clk_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i3.GSR = "ENABLED";
    CCU2C csi_byte_clk_count_1912_add_4_5 (.A0(csi_byte_clk_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11990), .COUT(n11991), .S0(n162_adj_1758), 
          .S1(n161_adj_1757));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_5.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_5.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_5.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_3 (.A0(csi_byte_clk_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_byte_clk_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11989), .COUT(n11990), .S0(n164_adj_1760), 
          .S1(n163_adj_1759));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_3.INIT0 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_3.INIT1 = 16'haaa0;
    defparam csi_byte_clk_count_1912_add_4_3.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_31 (.A0(csi_payload_byte_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11929), .COUT(n11930), 
          .S0(n136), .S1(n135));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_31.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_31.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_31.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_31.INJECT1_1 = "NO";
    CCU2C csi_byte_clk_count_1912_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_byte_clk_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n11989), .S1(n165_adj_1761));   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912_add_4_1.INIT0 = 16'h0000;
    defparam csi_byte_clk_count_1912_add_4_1.INIT1 = 16'h555f;
    defparam csi_byte_clk_count_1912_add_4_1.INJECT1_0 = "NO";
    defparam csi_byte_clk_count_1912_add_4_1.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i15 (.D(csi_byte_clk_count[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i5 (.D(csi_byte_clk_count_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i8 (.D(csi_hs_sync_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i7 (.D(csi_hs_sync_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i2 (.D(csi_byte_clk_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i2.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_1913_add_4_33 (.A0(csi_hs_sync_count[31]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n11988), .S0(n134_adj_1698));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_33.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_33.INIT1 = 16'h0000;
    defparam csi_hs_sync_count_1913_add_4_33.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_33.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n16387), .B(n15971), .C(n15965), .D(n15969), .Z(n15991)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfffd;
    FD1S3BX rst_n_pulse_127 (.D(n5003), .CK(sys_clk_c), .PD(led_c_2), 
            .Q(rst_n_pulse));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_n_pulse_127.GSR = "ENABLED";
    LUT4 i13333_4_lut (.A(xshutdn_cnt[15]), .B(n16395), .C(n16393), .D(xshutdn_cnt[3]), 
         .Z(n16545)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13333_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_330 (.A(xshutdn_cnt[13]), .B(n16383), .C(n15967), 
         .D(xshutdn_cnt[14]), .Z(n15995)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_330.init = 16'hfff7;
    FD1S3DX csi_byte_clk_count_meta_i1 (.D(csi_byte_clk_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i14 (.D(csi_byte_clk_count[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i14.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_1915_add_4_29 (.A0(csi_payload_byte_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11928), .COUT(n11929), 
          .S0(n138), .S1(n137));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_29.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_29.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_29.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_31 (.A0(csi_hs_sync_count[29]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[30]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11987), .COUT(n11988), .S0(n136_adj_1700), 
          .S1(n135_adj_1699));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_31.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_31.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_31.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_31.INJECT1_1 = "NO";
    LUT4 i13176_2_lut (.A(xshutdn_cnt[17]), .B(xshutdn_cnt[8]), .Z(n16387)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13176_2_lut.init = 16'h8888;
    CCU2C csi_hs_sync_count_1913_add_4_29 (.A0(csi_hs_sync_count[27]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[28]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11986), .COUT(n11987), .S0(n138_adj_1702), 
          .S1(n137_adj_1701));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_29.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_29.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_29.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_27 (.A0(csi_hs_sync_count[25]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[26]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11985), .COUT(n11986), .S0(n140_adj_1704), 
          .S1(n139_adj_1703));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_27.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_27.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_27.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_27.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i4 (.D(csi_byte_clk_count_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i6 (.D(csi_hs_sync_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i5 (.D(csi_hs_sync_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i4 (.D(csi_hs_sync_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i4.GSR = "ENABLED";
    LUT4 sys_rstn_I_0_2_lut_rep_364 (.A(sys_rstn_c), .B(rst_n_pulse), .Z(n17768)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(39[21:43])
    defparam sys_rstn_I_0_2_lut_rep_364.init = 16'h8888;
    CCU2C csi_payload_byte_count_1915_add_4_27 (.A0(csi_payload_byte_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11927), .COUT(n11928), 
          .S0(n140), .S1(n139));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_27.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_27.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_27.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_27.INJECT1_1 = "NO";
    FD1S3DX csi_hs_sync_count_meta_i3 (.D(csi_hs_sync_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i2 (.D(csi_hs_sync_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_meta_i1 (.D(csi_hs_sync_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i31 (.D(csi_byte_clk_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i30 (.D(csi_byte_clk_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i30.GSR = "ENABLED";
    LUT4 sys_rst_n_I_0_1_lut_2_lut (.A(sys_rstn_c), .B(rst_n_pulse), .Z(sys_rst_n_N_472)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(39[21:43])
    defparam sys_rst_n_I_0_1_lut_2_lut.init = 16'h7777;
    CCU2C csi_hs_sync_count_1913_add_4_25 (.A0(csi_hs_sync_count[23]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[24]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11984), .COUT(n11985), .S0(n142_adj_1706), 
          .S1(n141_adj_1705));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_25.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_25.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_25.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_25.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i29 (.D(csi_byte_clk_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i0 (.D(csi_byte_clk_count[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i0.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(xshutdn_cnt[19]), .B(xshutdn_cnt[12]), .Z(n15971)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_331 (.A(xshutdn_cnt[5]), .B(xshutdn_cnt[10]), .Z(n15965)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_331.init = 16'heeee;
    LUT4 i1_2_lut_adj_332 (.A(xshutdn_cnt[7]), .B(xshutdn_cnt[9]), .Z(n15969)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_332.init = 16'heeee;
    LUT4 i13184_2_lut (.A(xshutdn_cnt[1]), .B(xshutdn_cnt[4]), .Z(n16395)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13184_2_lut.init = 16'h8888;
    LUT4 i13182_2_lut (.A(xshutdn_cnt[16]), .B(xshutdn_cnt[18]), .Z(n16393)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13182_2_lut.init = 16'h8888;
    CCU2C csi_payload_byte_count_1915_add_4_25 (.A0(csi_payload_byte_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11926), .COUT(n11927), 
          .S0(n142), .S1(n141));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_25.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_25.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_25.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_25.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_23 (.A0(csi_payload_byte_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11925), .COUT(n11926), 
          .S0(n144), .S1(n143));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_23.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_23.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_23.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_23.INJECT1_1 = "NO";
    OB led_pad_0 (.I(GND_net), .O(led[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(9[23:26])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(9[23:26])
    OB led_pad_2 (.I(led_c_2), .O(led[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(9[23:26])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(9[23:26])
    BB i2c_sda_0_pad (.I(sda_transmit), .T(sda_transmit_en_N_1145), .B(i2c_sda_0), 
       .O(i2c_sda_0_out));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(44[17:20])
    CCU2C csi_payload_byte_count_1915_add_4_21 (.A0(csi_payload_byte_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11924), .COUT(n11925), 
          .S0(n146), .S1(n145));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_21.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_21.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_21.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_21.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i13 (.D(csi_byte_clk_count[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i13.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_1915_add_4_19 (.A0(csi_payload_byte_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11923), .COUT(n11924), 
          .S0(n148), .S1(n147));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_19.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_19.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_19.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_19.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_sys_i3 (.D(csi_byte_clk_count_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i28 (.D(csi_byte_clk_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i27 (.D(csi_byte_clk_count_meta[27]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_meta_i12 (.D(csi_byte_clk_count[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i12.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_1913_add_4_23 (.A0(csi_hs_sync_count[21]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[22]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11983), .COUT(n11984), .S0(n144_adj_1708), 
          .S1(n143_adj_1707));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_23.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_23.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_23.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_23.INJECT1_1 = "NO";
    LUT4 i13172_2_lut (.A(xshutdn_cnt[0]), .B(xshutdn_cnt[2]), .Z(n16383)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13172_2_lut.init = 16'h8888;
    FD1S3DX csi_byte_clk_count_sys_i2 (.D(csi_byte_clk_count_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i26 (.D(csi_byte_clk_count_meta[26]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i26.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_333 (.A(xshutdn_cnt[6]), .B(xshutdn_cnt[11]), .Z(n15967)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_333.init = 16'heeee;
    LUT4 i13446_3_lut (.A(cam_ready), .B(n14840), .Z(n16658)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i13446_3_lut.init = 16'hbbbb;
    FD1S3DX csi_byte_clk_count_sys_i25 (.D(csi_byte_clk_count_meta[25]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i25.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_334 (.A(n16371), .B(n16543), .C(n16505), .D(n16013), 
         .Z(n14840)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_334.init = 16'hff7f;
    LUT4 i13160_2_lut (.A(cam_cnt[18]), .B(cam_cnt[2]), .Z(n16371)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13160_2_lut.init = 16'h8888;
    LUT4 i13331_4_lut (.A(cam_cnt[19]), .B(n16377), .C(n16375), .D(cam_cnt[9]), 
         .Z(n16543)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13331_4_lut.init = 16'h8000;
    LUT4 i13293_4_lut (.A(cam_cnt[0]), .B(cam_cnt[3]), .C(cam_cnt[4]), 
         .D(cam_cnt[16]), .Z(n16505)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13293_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_335 (.A(cam_cnt[8]), .B(n16011), .C(n16005), .D(cam_cnt[12]), 
         .Z(n16013)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_335.init = 16'hfffe;
    CCU2C csi_payload_byte_count_1915_add_4_17 (.A0(csi_payload_byte_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11922), .COUT(n11923), 
          .S0(n150), .S1(n149));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_17.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_17.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_17.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_17.INJECT1_1 = "NO";
    LUT4 i13166_2_lut (.A(cam_cnt[5]), .B(cam_cnt[17]), .Z(n16377)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13166_2_lut.init = 16'h8888;
    LUT4 i13164_2_lut (.A(cam_cnt[1]), .B(cam_cnt[14]), .Z(n16375)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13164_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_336 (.A(cam_cnt[11]), .B(cam_cnt[10]), .C(cam_cnt[6]), 
         .D(cam_cnt[15]), .Z(n16011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_336.init = 16'hfffe;
    CCU2C csi_payload_byte_count_1915_add_4_15 (.A0(csi_payload_byte_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11921), .COUT(n11922), 
          .S0(n152), .S1(n151));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_15.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_15.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_15.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_21 (.A0(csi_hs_sync_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[20]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11982), .COUT(n11983), .S0(n146_adj_1710), 
          .S1(n145_adj_1709));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_21.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_21.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_21.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_21.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_19 (.A0(csi_hs_sync_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11981), .COUT(n11982), .S0(n148_adj_1712), 
          .S1(n147_adj_1711));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_19.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_19.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_19.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_17 (.A0(csi_hs_sync_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11980), .COUT(n11981), .S0(n150_adj_1714), 
          .S1(n149_adj_1713));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_17.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_17.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_17.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_17.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_15 (.A0(csi_hs_sync_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11979), .COUT(n11980), .S0(n152_adj_1716), 
          .S1(n151_adj_1715));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_15.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_15.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_15.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_15.INJECT1_1 = "NO";
    FD1S3DX csi_byte_clk_count_meta_i11 (.D(csi_byte_clk_count[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_meta[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_meta_i11.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_337 (.A(cam_cnt[7]), .B(cam_cnt[13]), .Z(n16005)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_337.init = 16'heeee;
    FD1S3DX csi_byte_clk_count_sys_i1 (.D(csi_byte_clk_count_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i24 (.D(csi_byte_clk_count_meta[24]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_sys_i23 (.D(csi_byte_clk_count_meta[23]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_byte_clk_count_sys[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_byte_clk_count_sys_i23.GSR = "ENABLED";
    FD1P3DX xshutdn_r_98 (.D(VCC_net), .SP(sys_clk_c_enable_38), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(xshutdn_r));   // d:/project/crosslink/project/mipi_3ch_top.v(79[10] 101[8])
    defparam xshutdn_r_98.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_1913_add_4_13 (.A0(csi_hs_sync_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11978), .COUT(n11979), .S0(n154_adj_1718), 
          .S1(n153_adj_1717));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_13.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_13.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_13.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_11 (.A0(csi_hs_sync_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11977), .COUT(n11978), .S0(n156_adj_1720), 
          .S1(n155_adj_1719));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_11.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_11.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_11.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_13 (.A0(csi_payload_byte_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11920), .COUT(n11921), 
          .S0(n154), .S1(n153));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_13.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_13.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_13.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_13.INJECT1_1 = "NO";
    LUT4 reset_byte_fr_sync_1__I_0_1_lut (.A(reset_byte_fr_sync[1]), .Z(reset_byte_fr_sync_1__N_129)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(159[9:25])
    defparam reset_byte_fr_sync_1__I_0_1_lut.init = 16'h5555;
    FD1P3DX cam_ready_100 (.D(n16658), .SP(xshutdn_r), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_ready));   // d:/project/crosslink/project/mipi_3ch_top.v(79[10] 101[8])
    defparam cam_ready_100.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i0 (.D(csi_wc[0]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i0.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_1913_add_4_9 (.A0(csi_hs_sync_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11976), .COUT(n11977), .S0(n158_adj_1722), 
          .S1(n157_adj_1721));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_9.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_9.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_9.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_11 (.A0(csi_payload_byte_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11919), .COUT(n11920), 
          .S0(n156), .S1(n155));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_11.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_11.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_11.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_11.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_9 (.A0(csi_payload_byte_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11918), .COUT(n11919), 
          .S0(n158), .S1(n157));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_9.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_9.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_9.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_7 (.A0(csi_hs_sync_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11975), .COUT(n11976), .S0(n160_adj_1724), 
          .S1(n159_adj_1723));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_7.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_7.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_7.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_5 (.A0(csi_hs_sync_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11974), .COUT(n11975), .S0(n162_adj_1726), 
          .S1(n161_adj_1725));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_5.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_5.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_5.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_5.INJECT1_1 = "NO";
    FD1P3DX csi_payload_byte_count_1915__i31 (.D(n134), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i31.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i30 (.D(n135), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i30.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i29 (.D(n136), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i29.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i28 (.D(n137), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i28.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i27 (.D(n138), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i27.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i26 (.D(n139), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i26.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i25 (.D(n140), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i25.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i24 (.D(n141), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i24.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i23 (.D(n142), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i23.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i22 (.D(n143), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i22.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i21 (.D(n144), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i21.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i20 (.D(n145), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i20.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i19 (.D(n146), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i19.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i18 (.D(n147), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i18.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i17 (.D(n148), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i17.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i16 (.D(n149), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i16.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i15 (.D(n150), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i15.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i14 (.D(n151), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i14.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i13 (.D(n152), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i13.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i12 (.D(n153), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i12.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i11 (.D(n154), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i11.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i10 (.D(n155), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i10.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i9 (.D(n156), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i9.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i8 (.D(n157), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i8.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i7 (.D(n158), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i7.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i6 (.D(n159), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i6.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i5 (.D(n160), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i5.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i4 (.D(n161), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i4.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i3 (.D(n162), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i3.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i2 (.D(n163), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i2.GSR = "ENABLED";
    FD1P3DX csi_payload_byte_count_1915__i1 (.D(n164), .SP(csi_dt_c_4), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_payload_byte_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915__i1.GSR = "ENABLED";
    CCU2C csi_payload_byte_count_1915_add_4_7 (.A0(csi_payload_byte_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11917), .COUT(n11918), 
          .S0(n160), .S1(n159));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_7.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_7.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_7.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_7.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_5 (.A0(csi_payload_byte_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11916), .COUT(n11917), 
          .S0(n162), .S1(n161));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_5.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_5.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_5.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_5.INJECT1_1 = "NO";
    CCU2C csi_hs_sync_count_1913_add_4_3 (.A0(csi_hs_sync_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(csi_hs_sync_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n11973), .COUT(n11974), .S0(n164_adj_1728), 
          .S1(n163_adj_1727));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_3.INIT0 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_3.INIT1 = 16'haaa0;
    defparam csi_hs_sync_count_1913_add_4_3.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_3.INJECT1_1 = "NO";
    FD1P3DX csi_long_packet_count_1914__i0 (.D(n165_adj_1697), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i0.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i0 (.D(n165_adj_1729), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i0.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i0 (.D(n165_adj_1761), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i0.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i0 (.D(n105), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i0.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i5 (.D(csi_dt_parser[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i5.GSR = "ENABLED";
    CCU2C csi_hs_sync_count_1913_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(csi_hs_sync_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n11973), .S1(n165_adj_1729));   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913_add_4_1.INIT0 = 16'h0000;
    defparam csi_hs_sync_count_1913_add_4_1.INIT1 = 16'h555f;
    defparam csi_hs_sync_count_1913_add_4_1.INJECT1_0 = "NO";
    defparam csi_hs_sync_count_1913_add_4_1.INJECT1_1 = "NO";
    FD1P3DX xshutdn_cnt_1910__i0 (.D(n105_adj_1782), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i0.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i4 (.D(csi_dt_parser[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i3 (.D(csi_dt_parser[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i2 (.D(csi_dt_parser[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_dt_i0_i1 (.D(csi_dt_parser[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_dt[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_dt_i0_i1.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i0 (.D(n151_adj_1804), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i0.GSR = "ENABLED";
    OB csi_lp_en_pad (.I(csi_lp_en_c), .O(csi_lp_en));   // d:/project/crosslink/project/mipi_3ch_top.v(24[23:32])
    CCU2C csi_long_packet_count_1914_add_4_33 (.A0(csi_long_packet_count[31]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n11972), .S0(n134_adj_1666));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_33.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_33.INIT1 = 16'h0000;
    defparam csi_long_packet_count_1914_add_4_33.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_33.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_3 (.A0(csi_payload_byte_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_payload_byte_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11915), .COUT(n11916), 
          .S0(n164), .S1(n163));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_3.INIT0 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_3.INIT1 = 16'haaa0;
    defparam csi_payload_byte_count_1915_add_4_3.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_31 (.A0(csi_long_packet_count[29]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[30]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11971), .COUT(n11972), 
          .S0(n136_adj_1668), .S1(n135_adj_1667));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_31.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_31.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_31.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_31.INJECT1_1 = "NO";
    LUT4 csi_lp_en_I_0_2_lut (.A(csi_lp_en_c), .B(dphy_hs_sync_d), .Z(csi_hs_sync_count_31__N_349)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(172[13:44])
    defparam csi_lp_en_I_0_2_lut.init = 16'h2222;
    CCU2C csi_long_packet_count_1914_add_4_29 (.A0(csi_long_packet_count[27]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[28]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11970), .COUT(n11971), 
          .S0(n138_adj_1670), .S1(n137_adj_1669));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_29.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_29.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_29.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_29.INJECT1_1 = "NO";
    CCU2C csi_payload_byte_count_1915_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_payload_byte_count[0]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n11915), .S1(n165));   // d:/project/crosslink/project/mipi_3ch_top.v(180[39:68])
    defparam csi_payload_byte_count_1915_add_4_1.INIT0 = 16'h0000;
    defparam csi_payload_byte_count_1915_add_4_1.INIT1 = 16'h555f;
    defparam csi_payload_byte_count_1915_add_4_1.INJECT1_0 = "NO";
    defparam csi_payload_byte_count_1915_add_4_1.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i2 (.D(n7053), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i2.GSR = "ENABLED";
    CCU2C csi_long_packet_count_1914_add_4_27 (.A0(csi_long_packet_count[25]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[26]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11969), .COUT(n11970), 
          .S0(n140_adj_1672), .S1(n139_adj_1671));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_27.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_27.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_27.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_27.INJECT1_1 = "NO";
    CCU2C add_86_11 (.A0(rst_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11856), .COUT(n11857), .S0(n1186), .S1(n1185));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_11.INIT0 = 16'haaaa;
    defparam add_86_11.INIT1 = 16'haaaa;
    defparam add_86_11.INJECT1_0 = "NO";
    defparam add_86_11.INJECT1_1 = "NO";
    CCU2C add_86_9 (.A0(rst_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11855), .COUT(n11856), .S0(n1188), .S1(n1187));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_9.INIT0 = 16'haaaa;
    defparam add_86_9.INIT1 = 16'haaaa;
    defparam add_86_9.INJECT1_0 = "NO";
    defparam add_86_9.INJECT1_1 = "NO";
    CCU2C add_86_5 (.A0(rst_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11853), .COUT(n11854), .S0(n1192), .S1(n1191));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_5.INIT0 = 16'haaaa;
    defparam add_86_5.INIT1 = 16'haaaa;
    defparam add_86_5.INJECT1_0 = "NO";
    defparam add_86_5.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_25 (.A0(csi_long_packet_count[23]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[24]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11968), .COUT(n11969), 
          .S0(n142_adj_1674), .S1(n141_adj_1673));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_25.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_25.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_25.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_25.INJECT1_1 = "NO";
    LUT4 sys_rstn_I_0_132_1_lut (.A(sys_rstn_c), .Z(led_c_2)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(49[9:18])
    defparam sys_rstn_I_0_132_1_lut.init = 16'h5555;
    CCU2C csi_long_packet_count_1914_add_4_23 (.A0(csi_long_packet_count[21]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[22]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11967), .COUT(n11968), 
          .S0(n144_adj_1676), .S1(n143_adj_1675));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_23.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_23.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_23.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_23.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_21 (.A0(csi_long_packet_count[19]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[20]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11966), .COUT(n11967), 
          .S0(n146_adj_1678), .S1(n145_adj_1677));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_21.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_21.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_21.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_21.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i3 (.D(n7051), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i3.GSR = "ENABLED";
    FD1S3DX reset_byte_sync_i1 (.D(reset_byte_sync[0]), .CK(csi_clk_byte), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_sync[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(229[9:55])
    defparam reset_byte_sync_i1.GSR = "ENABLED";
    FD1S3DX reset_byte_fr_sync_i1 (.D(reset_byte_fr_sync[0]), .CK(csi_clk_byte_hs), 
            .CD(sys_rst_n_N_472), .Q(reset_byte_fr_sync[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(222[9:61])
    defparam reset_byte_fr_sync_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i15 (.D(csi_last_wc_meta[15]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i14 (.D(csi_last_wc_meta[14]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i13 (.D(csi_last_wc_meta[13]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i12 (.D(csi_last_wc_meta[12]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i11 (.D(csi_last_wc_meta[11]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i10 (.D(csi_last_wc_meta[10]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i9 (.D(csi_last_wc_meta[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i8 (.D(csi_last_wc_meta[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i7 (.D(csi_last_wc_meta[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i6 (.D(csi_last_wc_meta[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i5 (.D(csi_last_wc_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i4 (.D(csi_last_wc_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i3 (.D(csi_last_wc_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i2 (.D(csi_last_wc_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_last_wc_sys_i1 (.D(csi_last_wc_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_wc_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i15 (.D(csi_last_wc[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i14 (.D(csi_last_wc[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i13 (.D(csi_last_wc[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i12 (.D(csi_last_wc[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i11 (.D(csi_last_wc[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i10 (.D(csi_last_wc[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i9 (.D(csi_last_wc[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i8 (.D(csi_last_wc[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i7 (.D(csi_last_wc[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i6 (.D(csi_last_wc[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i5 (.D(csi_last_wc[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i4 (.D(csi_last_wc[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i3 (.D(csi_last_wc[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i2 (.D(csi_last_wc[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_wc_meta_i1 (.D(csi_last_wc[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_wc_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_wc_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i5 (.D(csi_last_dt_meta[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i4 (.D(csi_last_dt_meta[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i3 (.D(csi_last_dt_meta[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i2 (.D(csi_last_dt_meta[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_sys_i1 (.D(csi_last_dt_meta[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_last_dt_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i5 (.D(csi_last_dt[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i4 (.D(csi_last_dt[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i3 (.D(csi_last_dt[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i2 (.D(csi_last_dt[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_last_dt_meta_i1 (.D(csi_last_dt[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(csi_last_dt_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_last_dt_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i31 (.D(csi_payload_byte_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i30 (.D(csi_payload_byte_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i29 (.D(csi_payload_byte_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i28 (.D(csi_payload_byte_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i27 (.D(csi_payload_byte_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i26 (.D(csi_payload_byte_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i25 (.D(csi_payload_byte_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i24 (.D(csi_payload_byte_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i23 (.D(csi_payload_byte_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i22 (.D(csi_payload_byte_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i21 (.D(csi_payload_byte_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i20 (.D(csi_payload_byte_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i19 (.D(csi_payload_byte_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i18 (.D(csi_payload_byte_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i17 (.D(csi_payload_byte_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i16 (.D(csi_payload_byte_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i15 (.D(csi_payload_byte_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i14 (.D(csi_payload_byte_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i13 (.D(csi_payload_byte_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i12 (.D(csi_payload_byte_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i11 (.D(csi_payload_byte_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i10 (.D(csi_payload_byte_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i9 (.D(csi_payload_byte_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i8 (.D(csi_payload_byte_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i7 (.D(csi_payload_byte_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i6 (.D(csi_payload_byte_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i5 (.D(csi_payload_byte_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i4 (.D(csi_payload_byte_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i3 (.D(csi_payload_byte_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i2 (.D(csi_payload_byte_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_sys_i1 (.D(csi_payload_byte_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i31 (.D(csi_payload_byte_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i30 (.D(csi_payload_byte_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i29 (.D(csi_payload_byte_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i28 (.D(csi_payload_byte_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i27 (.D(csi_payload_byte_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i26 (.D(csi_payload_byte_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i25 (.D(csi_payload_byte_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i24 (.D(csi_payload_byte_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i23 (.D(csi_payload_byte_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i22 (.D(csi_payload_byte_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i21 (.D(csi_payload_byte_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i20 (.D(csi_payload_byte_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i19 (.D(csi_payload_byte_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i18 (.D(csi_payload_byte_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i17 (.D(csi_payload_byte_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i16 (.D(csi_payload_byte_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i15 (.D(csi_payload_byte_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i14 (.D(csi_payload_byte_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i13 (.D(csi_payload_byte_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i12 (.D(csi_payload_byte_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i11 (.D(csi_payload_byte_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i10 (.D(csi_payload_byte_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i9 (.D(csi_payload_byte_count[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i8 (.D(csi_payload_byte_count[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i7 (.D(csi_payload_byte_count[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i6 (.D(csi_payload_byte_count[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i5 (.D(csi_payload_byte_count[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i4 (.D(csi_payload_byte_count[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i3 (.D(csi_payload_byte_count[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i2 (.D(csi_payload_byte_count[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_payload_byte_count_meta_i1 (.D(csi_payload_byte_count[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_payload_byte_count_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_payload_byte_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i31 (.D(csi_long_packet_count_meta[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i30 (.D(csi_long_packet_count_meta[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i29 (.D(csi_long_packet_count_meta[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i28 (.D(csi_long_packet_count_meta[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i27 (.D(csi_long_packet_count_meta[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i27.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i26 (.D(csi_long_packet_count_meta[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i25 (.D(csi_long_packet_count_meta[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i24 (.D(csi_long_packet_count_meta[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i23 (.D(csi_long_packet_count_meta[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i22 (.D(csi_long_packet_count_meta[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i22.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i21 (.D(csi_long_packet_count_meta[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i20 (.D(csi_long_packet_count_meta[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i19 (.D(csi_long_packet_count_meta[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i18 (.D(csi_long_packet_count_meta[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i17 (.D(csi_long_packet_count_meta[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i16 (.D(csi_long_packet_count_meta[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i15 (.D(csi_long_packet_count_meta[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i14 (.D(csi_long_packet_count_meta[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i13 (.D(csi_long_packet_count_meta[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i12 (.D(csi_long_packet_count_meta[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i11 (.D(csi_long_packet_count_meta[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i10 (.D(csi_long_packet_count_meta[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i9 (.D(csi_long_packet_count_meta[9]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i8 (.D(csi_long_packet_count_meta[8]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i7 (.D(csi_long_packet_count_meta[7]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i7.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i6 (.D(csi_long_packet_count_meta[6]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i5 (.D(csi_long_packet_count_meta[5]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i5.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i4 (.D(csi_long_packet_count_meta[4]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i3 (.D(csi_long_packet_count_meta[3]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i2 (.D(csi_long_packet_count_meta[2]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i2.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_sys_i1 (.D(csi_long_packet_count_meta[1]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_sys[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_sys_i1.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i31 (.D(csi_long_packet_count[31]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i31.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i30 (.D(csi_long_packet_count[30]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i30.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i29 (.D(csi_long_packet_count[29]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i29.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i28 (.D(csi_long_packet_count[28]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i28.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i27 (.D(csi_long_packet_count[27]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[27]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i27.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i26 (.D(csi_long_packet_count[26]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[26]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i26.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i25 (.D(csi_long_packet_count[25]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i25.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i24 (.D(csi_long_packet_count[24]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i24.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i23 (.D(csi_long_packet_count[23]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i23.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i22 (.D(csi_long_packet_count[22]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i22.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i21 (.D(csi_long_packet_count[21]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i21.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i20 (.D(csi_long_packet_count[20]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i20.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i19 (.D(csi_long_packet_count[19]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i19.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i18 (.D(csi_long_packet_count[18]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i18.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i17 (.D(csi_long_packet_count[17]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i17.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i16 (.D(csi_long_packet_count[16]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i16.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i15 (.D(csi_long_packet_count[15]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i15.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i14 (.D(csi_long_packet_count[14]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i14.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i13 (.D(csi_long_packet_count[13]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i13.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i12 (.D(csi_long_packet_count[12]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i12.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i11 (.D(csi_long_packet_count[11]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i11.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i10 (.D(csi_long_packet_count[10]), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i10.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i9 (.D(csi_long_packet_count[9]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i9.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i8 (.D(csi_long_packet_count[8]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i8.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i7 (.D(csi_long_packet_count[7]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i7.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i6 (.D(csi_long_packet_count[6]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i6.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i5 (.D(csi_long_packet_count[5]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i5.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i4 (.D(csi_long_packet_count[4]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i4.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i3 (.D(csi_long_packet_count[3]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i3.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i2 (.D(csi_long_packet_count[2]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i2.GSR = "ENABLED";
    FD1S3DX csi_long_packet_count_meta_i1 (.D(csi_long_packet_count[1]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_long_packet_count_meta[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_long_packet_count_meta_i1.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i31 (.D(csi_hs_sync_count_meta[31]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[31]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i31.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i30 (.D(csi_hs_sync_count_meta[30]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[30]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i30.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i29 (.D(csi_hs_sync_count_meta[29]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[29]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i29.GSR = "ENABLED";
    FD1S3DX csi_hs_sync_count_sys_i28 (.D(csi_hs_sync_count_meta[28]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(csi_hs_sync_count_sys[28]));   // d:/project/crosslink/project/mipi_3ch_top.v(200[14] 213[8])
    defparam csi_hs_sync_count_sys_i28.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i1 (.D(csi_wc[1]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i1.GSR = "ENABLED";
    OB csi_dt_pad_5 (.I(csi_dt_c_5), .O(csi_dt[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_4 (.I(csi_dt_c_4), .O(csi_dt[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_3 (.I(csi_dt_c_3), .O(csi_dt[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_2 (.I(csi_dt_c_2), .O(csi_dt[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_1 (.I(VCC_net), .O(csi_dt[1]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    OB csi_dt_pad_0 (.I(VCC_net), .O(csi_dt[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(26[23:29])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    IB sys_rstn_pad (.I(sys_rstn), .O(sys_rstn_c));   // d:/project/crosslink/project/mipi_3ch_top.v(7[16:24])
    IB uart_rxd_pad (.I(uart_rxd), .O(uart_rxd_c));   // d:/project/crosslink/project/mipi_3ch_top.v(11[23:31])
    FD1P3DX rst_cnt__i4 (.D(n7049), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i4.GSR = "ENABLED";
    FD1P3DX rst_cnt__i5 (.D(n7047), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i5.GSR = "ENABLED";
    FD1P3DX rst_cnt__i6 (.D(n7045), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i6.GSR = "ENABLED";
    FD1P3DX rst_cnt__i7 (.D(n7043), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i7.GSR = "ENABLED";
    FD1P3DX rst_cnt__i0 (.D(n6959), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[0]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i0.GSR = "ENABLED";
    FD1S3DX blink_toggle_97 (.D(led_3__N_1), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(led_c_3));   // d:/project/crosslink/project/mipi_3ch_top.v(53[10] 59[8])
    defparam blink_toggle_97.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    CCU2C add_86_3 (.A0(rst_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11852), .COUT(n11853), .S0(n1194), .S1(n1193));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_3.INIT0 = 16'haaaa;
    defparam add_86_3.INIT1 = 16'haaaa;
    defparam add_86_3.INJECT1_0 = "NO";
    defparam add_86_3.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_19 (.A0(csi_long_packet_count[17]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[18]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11965), .COUT(n11966), 
          .S0(n148_adj_1680), .S1(n147_adj_1679));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_19.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_19.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_19.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_17 (.A0(csi_long_packet_count[15]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[16]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11964), .COUT(n11965), 
          .S0(n150_adj_1682), .S1(n149_adj_1681));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_17.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_17.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_17.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_17.INJECT1_1 = "NO";
    CCU2C add_86_27 (.A0(rst_cnt[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n11864), 
          .S0(n1170));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_27.INIT0 = 16'haaaa;
    defparam add_86_27.INIT1 = 16'h0000;
    defparam add_86_27.INJECT1_0 = "NO";
    defparam add_86_27.INJECT1_1 = "NO";
    CCU2C add_86_13 (.A0(rst_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11857), .COUT(n11858), .S0(n1184), .S1(n1183));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_13.INIT0 = 16'haaaa;
    defparam add_86_13.INIT1 = 16'haaaa;
    defparam add_86_13.INJECT1_0 = "NO";
    defparam add_86_13.INJECT1_1 = "NO";
    FD1P3DX csi_last_wc_i0_i2 (.D(csi_wc[2]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[2]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i2.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i3 (.D(csi_wc[3]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[3]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i3.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i4 (.D(csi_wc[4]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[4]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i4.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i5 (.D(csi_wc[5]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[5]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i5.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i6 (.D(csi_wc[6]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[6]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i6.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i7 (.D(csi_wc[7]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[7]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i7.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i8 (.D(csi_wc[8]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i8.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i9 (.D(csi_wc[9]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i9.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i10 (.D(csi_wc[10]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i10.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i11 (.D(csi_wc[11]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i11.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i12 (.D(csi_wc[12]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i12.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i13 (.D(csi_wc[13]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i13.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i14 (.D(csi_wc[14]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i14.GSR = "ENABLED";
    FD1P3DX csi_last_wc_i0_i15 (.D(csi_wc[15]), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_last_wc[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(168[14] 181[8])
    defparam csi_last_wc_i0_i15.GSR = "ENABLED";
    CCU2C add_86_7 (.A0(rst_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11854), .COUT(n11855), .S0(n1190), .S1(n1189));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_7.INIT0 = 16'haaaa;
    defparam add_86_7.INIT1 = 16'haaaa;
    defparam add_86_7.INJECT1_0 = "NO";
    defparam add_86_7.INJECT1_1 = "NO";
    LUT4 i13450_4_lut (.A(tx_phase[1]), .B(tx_phase[0]), .C(tx_state[1]), 
         .D(n12098), .Z(n16662)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C (D))))) */ ;
    defparam i13450_4_lut.init = 16'h60a0;
    FD1P3DX csi_long_packet_count_1914__i1 (.D(n164_adj_1696), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i1.GSR = "ENABLED";
    CCU2C csi_long_packet_count_1914_add_4_15 (.A0(csi_long_packet_count[13]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[14]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11963), .COUT(n11964), 
          .S0(n152_adj_1684), .S1(n151_adj_1683));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_15.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_15.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_15.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_13 (.A0(csi_long_packet_count[11]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[12]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11962), .COUT(n11963), 
          .S0(n154_adj_1686), .S1(n153_adj_1685));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_13.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_13.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_13.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_13.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_11 (.A0(csi_long_packet_count[9]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[10]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11961), .COUT(n11962), 
          .S0(n156_adj_1688), .S1(n155_adj_1687));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_11.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_11.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_11.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_11.INJECT1_1 = "NO";
    CCU2C add_86_25 (.A0(rst_cnt[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11863), .COUT(n11864), .S0(n1172), .S1(n1171));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_25.INIT0 = 16'haaaa;
    defparam add_86_25.INIT1 = 16'haaaa;
    defparam add_86_25.INJECT1_0 = "NO";
    defparam add_86_25.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_9 (.A0(csi_long_packet_count[7]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[8]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11960), .COUT(n11961), 
          .S0(n158_adj_1690), .S1(n157_adj_1689));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_9.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_9.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_9.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_9.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_7 (.A0(csi_long_packet_count[5]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[6]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11959), .COUT(n11960), 
          .S0(n160_adj_1692), .S1(n159_adj_1691));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_7.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_7.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_7.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_7.INJECT1_1 = "NO";
    FD1P3DX csi_long_packet_count_1914__i2 (.D(n163_adj_1695), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i2.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i3 (.D(n162_adj_1694), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i3.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i4 (.D(n161_adj_1693), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i4.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i5 (.D(n160_adj_1692), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i5.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i6 (.D(n159_adj_1691), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i6.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i7 (.D(n158_adj_1690), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i7.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i8 (.D(n157_adj_1689), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i8.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i9 (.D(n156_adj_1688), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i9.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i10 (.D(n155_adj_1687), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i10.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i11 (.D(n154_adj_1686), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i11.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i12 (.D(n153_adj_1685), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i12.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i13 (.D(n152_adj_1684), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i13.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i14 (.D(n151_adj_1683), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i14.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i15 (.D(n150_adj_1682), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i15.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i16 (.D(n149_adj_1681), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i16.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i17 (.D(n148_adj_1680), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i17.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i18 (.D(n147_adj_1679), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i18.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i19 (.D(n146_adj_1678), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i19.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i20 (.D(n145_adj_1677), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i20.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i21 (.D(n144_adj_1676), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i21.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i22 (.D(n143_adj_1675), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i22.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i23 (.D(n142_adj_1674), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i23.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i24 (.D(n141_adj_1673), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i24.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i25 (.D(n140_adj_1672), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i25.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i26 (.D(n139_adj_1671), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i26.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i27 (.D(n138_adj_1670), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i27.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i28 (.D(n137_adj_1669), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i28.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i29 (.D(n136_adj_1668), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i29.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i30 (.D(n135_adj_1667), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i30.GSR = "ENABLED";
    FD1P3DX csi_long_packet_count_1914__i31 (.D(n134_adj_1666), .SP(csi_long_packet_count_31__N_384), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_long_packet_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914__i31.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i1 (.D(n164_adj_1728), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i1.GSR = "ENABLED";
    CCU2C blink_cnt_1909_add_4_25 (.A0(blink_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12036), .S0(n102_adj_1783));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_25.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_25.INIT1 = 16'h0000;
    defparam blink_cnt_1909_add_4_25.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_25.INJECT1_1 = "NO";
    CCU2C add_86_23 (.A0(rst_cnt[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11862), .COUT(n11863), .S0(n1174), .S1(n1173));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_23.INIT0 = 16'haaaa;
    defparam add_86_23.INIT1 = 16'haaaa;
    defparam add_86_23.INJECT1_0 = "NO";
    defparam add_86_23.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_23 (.A0(blink_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12035), .COUT(n12036), .S0(n104_adj_1785), 
          .S1(n103_adj_1784));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_23.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_23.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_23.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_23.INJECT1_1 = "NO";
    LUT4 i3594_4_lut_rep_324 (.A(n17769), .B(n9643), .C(rd_cnt[2]), .D(rd_cnt[3]), 
         .Z(n17728)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C (D)))) */ ;
    defparam i3594_4_lut_rep_324.init = 16'heaa8;
    CCU2C add_86_21 (.A0(rst_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11861), .COUT(n11862), .S0(n1176), .S1(n1175));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_21.INIT0 = 16'haaaa;
    defparam add_86_21.INIT1 = 16'haaaa;
    defparam add_86_21.INJECT1_0 = "NO";
    defparam add_86_21.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_21 (.A0(blink_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12034), .COUT(n12035), .S0(n106), .S1(n105_adj_1786));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_21.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_21.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_21.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_21.INJECT1_1 = "NO";
    FD1P3DX csi_hs_sync_count_1913__i2 (.D(n163_adj_1727), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i2.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i3 (.D(n162_adj_1726), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i3.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i4 (.D(n161_adj_1725), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i4.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i5 (.D(n160_adj_1724), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i5.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i6 (.D(n159_adj_1723), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i6.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i7 (.D(n158_adj_1722), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i7.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i8 (.D(n157_adj_1721), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i8.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i9 (.D(n156_adj_1720), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i9.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i10 (.D(n155_adj_1719), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i10.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i11 (.D(n154_adj_1718), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i11.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i12 (.D(n153_adj_1717), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i12.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i13 (.D(n152_adj_1716), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i13.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i14 (.D(n151_adj_1715), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i14.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i15 (.D(n150_adj_1714), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i15.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i16 (.D(n149_adj_1713), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i16.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i17 (.D(n148_adj_1712), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i17.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i18 (.D(n147_adj_1711), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i18.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i19 (.D(n146_adj_1710), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i19.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i20 (.D(n145_adj_1709), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i20.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i21 (.D(n144_adj_1708), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i21.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i22 (.D(n143_adj_1707), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i22.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i23 (.D(n142_adj_1706), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i23.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i24 (.D(n141_adj_1705), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i24.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i25 (.D(n140_adj_1704), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i25.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i26 (.D(n139_adj_1703), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i26.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i27 (.D(n138_adj_1702), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i27.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i28 (.D(n137_adj_1701), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i28.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i29 (.D(n136_adj_1700), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i29.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i30 (.D(n135_adj_1699), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i30.GSR = "ENABLED";
    FD1P3DX csi_hs_sync_count_1913__i31 (.D(n134_adj_1698), .SP(csi_hs_sync_count_31__N_349), 
            .CK(csi_clk_byte_hs), .CD(reset_byte_fr_sync_1__N_129), .Q(csi_hs_sync_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(173[34:58])
    defparam csi_hs_sync_count_1913__i31.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i1 (.D(n164_adj_1760), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i1.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i2 (.D(n163_adj_1759), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i2.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i3 (.D(n162_adj_1758), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i3.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i4 (.D(n161_adj_1757), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i4.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i5 (.D(n160_adj_1756), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i5.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i6 (.D(n159_adj_1755), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i6.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i7 (.D(n158_adj_1754), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i7.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i8 (.D(n157_adj_1753), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i8.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i9 (.D(n156_adj_1752), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i9.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i10 (.D(n155_adj_1751), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i10.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i11 (.D(n154_adj_1750), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i11.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i12 (.D(n153_adj_1749), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i12.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i13 (.D(n152_adj_1748), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i13.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i14 (.D(n151_adj_1747), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i14.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i15 (.D(n150_adj_1746), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i15.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i16 (.D(n149_adj_1745), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i16.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i17 (.D(n148_adj_1744), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i17.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i18 (.D(n147_adj_1743), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i18.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i19 (.D(n146_adj_1742), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i19.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i20 (.D(n145_adj_1741), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i20.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i21 (.D(n144_adj_1740), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i21.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i22 (.D(n143_adj_1739), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i22.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i23 (.D(n142_adj_1738), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i23.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i24 (.D(n141_adj_1737), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i24.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i25 (.D(n140_adj_1736), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i25.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i26 (.D(n139_adj_1735), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i26.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i27 (.D(n138_adj_1734), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i27.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i28 (.D(n137_adj_1733), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i28.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i29 (.D(n136_adj_1732), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i29.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i30 (.D(n135_adj_1731), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i30.GSR = "ENABLED";
    FD1S3DX csi_byte_clk_count_1912__i31 (.D(n134_adj_1730), .CK(csi_clk_byte_hs), 
            .CD(reset_byte_fr_sync_1__N_129), .Q(csi_byte_clk_count[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(169[31:56])
    defparam csi_byte_clk_count_1912__i31.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i1 (.D(n104), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i1.GSR = "ENABLED";
    CCU2C csi_long_packet_count_1914_add_4_5 (.A0(csi_long_packet_count[3]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[4]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11958), .COUT(n11959), 
          .S0(n162_adj_1694), .S1(n161_adj_1693));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_5.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_5.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_5.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_5.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_19 (.A0(blink_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12033), .COUT(n12034), .S0(n108), .S1(n107));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_19.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_19.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_19.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_19.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_3 (.A0(csi_long_packet_count[1]), 
          .B0(GND_net), .C0(GND_net), .D0(VCC_net), .A1(csi_long_packet_count[2]), 
          .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n11957), .COUT(n11958), 
          .S0(n164_adj_1696), .S1(n163_adj_1695));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_3.INIT0 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_3.INIT1 = 16'haaa0;
    defparam csi_long_packet_count_1914_add_4_3.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_3.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_17 (.A0(blink_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12032), .COUT(n12033), .S0(n110), .S1(n109));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_17.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_17.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_17.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_17.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_15 (.A0(blink_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12031), .COUT(n12032), .S0(n112), .S1(n111));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_15.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_15.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_15.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_15.INJECT1_1 = "NO";
    CCU2C csi_long_packet_count_1914_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(csi_long_packet_count[0]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n11957), .S1(n165_adj_1697));   // d:/project/crosslink/project/mipi_3ch_top.v(175[38:66])
    defparam csi_long_packet_count_1914_add_4_1.INIT0 = 16'h0000;
    defparam csi_long_packet_count_1914_add_4_1.INIT1 = 16'h555f;
    defparam csi_long_packet_count_1914_add_4_1.INJECT1_0 = "NO";
    defparam csi_long_packet_count_1914_add_4_1.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_13 (.A0(blink_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12030), .COUT(n12031), .S0(n114), .S1(n113));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_13.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_13.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_13.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_13.INJECT1_1 = "NO";
    FD1P3DX cam_cnt_1911__i2 (.D(n103), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i2.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i3 (.D(n102), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i3.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i4 (.D(n101), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i4.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i5 (.D(n100), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i5.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i6 (.D(n99), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i6.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i7 (.D(n98), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i7.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i8 (.D(n97), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i8.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i9 (.D(n96), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i9.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i10 (.D(n95), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i10.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i11 (.D(n94), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i11.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i12 (.D(n93), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i12.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i13 (.D(n92_adj_1762), .SP(sys_clk_c_enable_188), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(cam_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i13.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i14 (.D(n91), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i14.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i15 (.D(n90), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i15.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i16 (.D(n89), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i16.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i17 (.D(n88), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i17.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i18 (.D(n87), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i18.GSR = "ENABLED";
    FD1P3DX cam_cnt_1911__i19 (.D(n86), .SP(sys_clk_c_enable_188), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(cam_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911__i19.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i1 (.D(n104_adj_1781), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i1.GSR = "ENABLED";
    CCU2C add_86_19 (.A0(rst_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11860), .COUT(n11861), .S0(n1178), .S1(n1177));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_19.INIT0 = 16'haaaa;
    defparam add_86_19.INIT1 = 16'haaaa;
    defparam add_86_19.INJECT1_0 = "NO";
    defparam add_86_19.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_11 (.A0(blink_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12029), .COUT(n12030), .S0(n116), .S1(n115));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_11.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_11.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_11.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_11.INJECT1_1 = "NO";
    LUT4 i13676_3_lut (.A(xshutdn_r), .B(n14840), .C(cam_ready), .Z(sys_clk_c_enable_188)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(90[14] 97[12])
    defparam i13676_3_lut.init = 16'h0808;
    FD1P3DX xshutdn_cnt_1910__i2 (.D(n103_adj_1780), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i2.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i3 (.D(n102_adj_1779), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i3.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i4 (.D(n101_adj_1778), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i4.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i5 (.D(n100_adj_1777), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i5.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i6 (.D(n99_adj_1776), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i6.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i7 (.D(n98_adj_1775), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i7.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i8 (.D(n97_adj_1774), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i8.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i9 (.D(n96_adj_1773), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i9.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i10 (.D(n95_adj_1772), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i10.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i11 (.D(n94_adj_1771), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i11.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i12 (.D(n93_adj_1770), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i12.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i13 (.D(n92_adj_1769), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i13.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i14 (.D(n91_adj_1768), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i14.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i15 (.D(n90_adj_1767), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i15.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i16 (.D(n89_adj_1766), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i16.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i17 (.D(n88_adj_1765), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i17.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i18 (.D(n87_adj_1764), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i18.GSR = "ENABLED";
    FD1P3DX xshutdn_cnt_1910__i19 (.D(n86_adj_1763), .SP(sys_clk_c_enable_207), 
            .CK(sys_clk_c), .CD(led_c_2), .Q(xshutdn_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i1 (.D(n150_adj_1803), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i1.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i2 (.D(n149_adj_1802), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i2.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i3 (.D(n148_adj_1801), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i3.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i4 (.D(n147_adj_1800), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i4.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i5 (.D(n146_adj_1799), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i5.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i6 (.D(n145_adj_1798), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i6.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i7 (.D(n144_adj_1797), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i7.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i8 (.D(n143_adj_1796), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i8.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i9 (.D(n142_adj_1795), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i9.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i10 (.D(n141_adj_1794), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i10.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i11 (.D(n140_adj_1793), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i11.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i12 (.D(n139_adj_1792), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i12.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i13 (.D(n138_adj_1791), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i13.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i14 (.D(n137_adj_1790), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i14.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i15 (.D(n136_adj_1789), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i15.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i16 (.D(n135_adj_1788), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i16.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i17 (.D(n134_adj_1787), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i17.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i18 (.D(n133), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i18.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i19 (.D(n132), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i19.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i20 (.D(n131), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i20.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i21 (.D(n130), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i21.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i22 (.D(n129), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i22.GSR = "ENABLED";
    FD1S3DX blink_cnt_1909__i23 (.D(n128), .CK(sys_clk_c), .CD(led_c_2), 
            .Q(blink_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909__i23.GSR = "ENABLED";
    FD1P3DX rst_cnt__i8 (.D(n7041), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[8]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i8.GSR = "ENABLED";
    LUT4 i6698_2_lut_rep_318_4_lut (.A(n17769), .B(n9643), .C(rd_cnt[2]), 
         .D(rd_cnt[3]), .Z(n17722)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i6698_2_lut_rep_318_4_lut.init = 16'haaa8;
    FD1P3DX rst_cnt__i9 (.D(n7039), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[9]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i9.GSR = "ENABLED";
    FD1P3DX rst_cnt__i10 (.D(n7037), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[10]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i10.GSR = "ENABLED";
    CCU2C blink_cnt_1909_add_4_9 (.A0(blink_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12028), .COUT(n12029), .S0(n118), .S1(n117));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_9.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_9.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_9.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_9.INJECT1_1 = "NO";
    LUT4 i6445_2_lut (.A(n1193), .B(rst_cnt_25__N_445), .Z(n7053)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6445_2_lut.init = 16'h2222;
    LUT4 i6444_2_lut (.A(n1192), .B(rst_cnt_25__N_445), .Z(n7051)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6444_2_lut.init = 16'h2222;
    CCU2C blink_cnt_1909_add_4_7 (.A0(blink_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12027), .COUT(n12028), .S0(n120), .S1(n119));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_7.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_7.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_7.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_7.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_5 (.A0(blink_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12026), .COUT(n12027), .S0(n122), .S1(n121));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_5.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_5.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_5.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_5.INJECT1_1 = "NO";
    LUT4 i6443_2_lut (.A(n1191), .B(rst_cnt_25__N_445), .Z(n7049)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6443_2_lut.init = 16'h2222;
    LUT4 i6442_2_lut (.A(n1190), .B(rst_cnt_25__N_445), .Z(n7047)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6442_2_lut.init = 16'h2222;
    LUT4 i6441_2_lut (.A(n1189), .B(rst_cnt_25__N_445), .Z(n7045)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6441_2_lut.init = 16'h2222;
    CCU2C blink_cnt_1909_add_4_3 (.A0(blink_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(blink_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12025), .COUT(n12026), .S0(n124), .S1(n123));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_3.INIT0 = 16'haaa0;
    defparam blink_cnt_1909_add_4_3.INIT1 = 16'haaa0;
    defparam blink_cnt_1909_add_4_3.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_3.INJECT1_1 = "NO";
    CCU2C blink_cnt_1909_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(blink_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12025), .S1(n125));   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam blink_cnt_1909_add_4_1.INIT0 = 16'h0000;
    defparam blink_cnt_1909_add_4_1.INIT1 = 16'h555f;
    defparam blink_cnt_1909_add_4_1.INJECT1_0 = "NO";
    defparam blink_cnt_1909_add_4_1.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_21 (.A0(xshutdn_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12024), .S0(n86_adj_1763));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_21.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_21.INIT1 = 16'h0000;
    defparam xshutdn_cnt_1910_add_4_21.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_21.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_19 (.A0(xshutdn_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12023), .COUT(n12024), .S0(n88_adj_1765), 
          .S1(n87_adj_1764));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_19.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_19.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_19.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_19.INJECT1_1 = "NO";
    LUT4 i6440_2_lut (.A(n1188), .B(rst_cnt_25__N_445), .Z(n7043)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6440_2_lut.init = 16'h2222;
    CCU2C add_86_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rst_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11852), .S1(n1195));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_1.INIT0 = 16'h0000;
    defparam add_86_1.INIT1 = 16'h555a;
    defparam add_86_1.INJECT1_0 = "NO";
    defparam add_86_1.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_17 (.A0(xshutdn_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12022), .COUT(n12023), .S0(n90_adj_1767), 
          .S1(n89_adj_1766));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_17.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_17.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_17.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_17.INJECT1_1 = "NO";
    FD1P3DX rst_cnt__i11 (.D(n7035), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[11]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i11.GSR = "ENABLED";
    FD1P3DX rst_cnt__i12 (.D(n7033), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[12]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i12.GSR = "ENABLED";
    FD1P3DX rst_cnt__i13 (.D(n7031), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[13]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i13.GSR = "ENABLED";
    FD1P3DX rst_cnt__i14 (.D(n7029), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[14]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i14.GSR = "ENABLED";
    FD1P3DX rst_cnt__i15 (.D(n7027), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[15]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i15.GSR = "ENABLED";
    FD1P3DX rst_cnt__i16 (.D(n7025), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[16]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i16.GSR = "ENABLED";
    FD1P3DX rst_cnt__i17 (.D(n7023), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[17]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i17.GSR = "ENABLED";
    LUT4 i5899_2_lut (.A(n1195), .B(rst_cnt_25__N_445), .Z(n6959)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i5899_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_338 (.A(led_c_3), .B(n47), .Z(led_3__N_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_338.init = 16'h9999;
    FD1P3DX rst_cnt__i18 (.D(n7021), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[18]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i18.GSR = "ENABLED";
    FD1P3DX rst_cnt__i19 (.D(n7019), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[19]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i19.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(current_state[1]), .B(n3009), .C(n8218), .Z(n2855)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(36[17:30])
    defparam i1_3_lut.init = 16'hecec;
    FD1P3DX rst_cnt__i20 (.D(n7017), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[20]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i20.GSR = "ENABLED";
    FD1P3DX rst_cnt__i21 (.D(n7015), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[21]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i21.GSR = "ENABLED";
    FD1P3DX rst_cnt__i22 (.D(n7013), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[22]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i22.GSR = "ENABLED";
    FD1P3DX rst_cnt__i23 (.D(n7011), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[23]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i23.GSR = "ENABLED";
    FD1P3DX rst_cnt__i24 (.D(n7009), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[24]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i24.GSR = "ENABLED";
    FD1P3DX rst_cnt__i25 (.D(n7007), .SP(sys_clk_c_enable_225), .CK(sys_clk_c), 
            .CD(led_c_2), .Q(rst_cnt[25]));   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam rst_cnt__i25.GSR = "ENABLED";
    CCU2C xshutdn_cnt_1910_add_4_15 (.A0(xshutdn_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12021), .COUT(n12022), .S0(n92_adj_1769), 
          .S1(n91_adj_1768));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_15.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_15.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_15.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_15.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_13 (.A0(xshutdn_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12020), .COUT(n12021), .S0(n94_adj_1771), 
          .S1(n93_adj_1770));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_13.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_13.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_13.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_13.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_11 (.A0(xshutdn_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(xshutdn_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n12019), .COUT(n12020), .S0(n96_adj_1773), 
          .S1(n95_adj_1772));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_11.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_11.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_11.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_11.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_9 (.A0(xshutdn_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12018), .COUT(n12019), .S0(n98_adj_1775), 
          .S1(n97_adj_1774));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_9.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_9.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_9.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_9.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_7 (.A0(xshutdn_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12017), .COUT(n12018), .S0(n100_adj_1777), 
          .S1(n99_adj_1776));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_7.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_7.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_7.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_7.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_5 (.A0(xshutdn_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12016), .COUT(n12017), .S0(n102_adj_1779), 
          .S1(n101_adj_1778));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_5.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_5.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_5.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_5.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_3 (.A0(xshutdn_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(xshutdn_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12015), .COUT(n12016), .S0(n104_adj_1781), 
          .S1(n103_adj_1780));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_3.INIT0 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_3.INIT1 = 16'haaa0;
    defparam xshutdn_cnt_1910_add_4_3.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_3.INJECT1_1 = "NO";
    CCU2C xshutdn_cnt_1910_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xshutdn_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n12015), .S1(n105_adj_1782));   // d:/project/crosslink/project/mipi_3ch_top.v(86[32:50])
    defparam xshutdn_cnt_1910_add_4_1.INIT0 = 16'h0000;
    defparam xshutdn_cnt_1910_add_4_1.INIT1 = 16'h555f;
    defparam xshutdn_cnt_1910_add_4_1.INJECT1_0 = "NO";
    defparam xshutdn_cnt_1910_add_4_1.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_21 (.A0(cam_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12014), .S0(n86));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_21.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_21.INIT1 = 16'h0000;
    defparam cam_cnt_1911_add_4_21.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_339 (.A(current_state[8]), .B(n8218), .Z(n12775)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_339.init = 16'h8888;
    CCU2C cam_cnt_1911_add_4_19 (.A0(cam_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12013), .COUT(n12014), .S0(n88), .S1(n87));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_19.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_19.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_19.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_19.INJECT1_1 = "NO";
    LUT4 i6465_2_lut (.A(n124), .B(n47), .Z(n150_adj_1803)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6465_2_lut.init = 16'h8888;
    CCU2C cam_cnt_1911_add_4_17 (.A0(cam_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12012), .COUT(n12013), .S0(n90), .S1(n89));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_17.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_17.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_17.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_17.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_15 (.A0(cam_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12011), .COUT(n12012), .S0(n92_adj_1762), 
          .S1(n91));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_15.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_15.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_15.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_15.INJECT1_1 = "NO";
    LUT4 i6466_2_lut (.A(n123), .B(n47), .Z(n149_adj_1802)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6466_2_lut.init = 16'h8888;
    CCU2C cam_cnt_1911_add_4_13 (.A0(cam_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12010), .COUT(n12011), .S0(n94), .S1(n93));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_13.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_13.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_13.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_13.INJECT1_1 = "NO";
    LUT4 i5888_4_lut_rep_326 (.A(xshutdn_r), .B(n15991), .C(n16545), .D(n15995), 
         .Z(sys_clk_c_enable_38)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(85[18] 87[16])
    defparam i5888_4_lut_rep_326.init = 16'haaba;
    LUT4 i6467_2_lut (.A(n122), .B(n47), .Z(n148_adj_1801)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6467_2_lut.init = 16'h8888;
    LUT4 i6468_2_lut (.A(n121), .B(n47), .Z(n147_adj_1800)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6468_2_lut.init = 16'h8888;
    LUT4 i6469_2_lut (.A(n120), .B(n47), .Z(n146_adj_1799)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6469_2_lut.init = 16'h8888;
    LUT4 i6470_2_lut (.A(n119), .B(n47), .Z(n145_adj_1798)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6470_2_lut.init = 16'h8888;
    CCU2C add_86_17 (.A0(rst_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11859), .COUT(n11860), .S0(n1180), .S1(n1179));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_17.INIT0 = 16'haaaa;
    defparam add_86_17.INIT1 = 16'haaaa;
    defparam add_86_17.INJECT1_0 = "NO";
    defparam add_86_17.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_11 (.A0(cam_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12009), .COUT(n12010), .S0(n96), .S1(n95));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_11.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_11.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_11.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_11.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_9 (.A0(cam_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12008), .COUT(n12009), .S0(n98), .S1(n97));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_9.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_9.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_9.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_9.INJECT1_1 = "NO";
    LUT4 i6471_2_lut (.A(n118), .B(n47), .Z(n144_adj_1797)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6471_2_lut.init = 16'h8888;
    LUT4 i6472_2_lut (.A(n117), .B(n47), .Z(n143_adj_1796)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6472_2_lut.init = 16'h8888;
    CCU2C add_86_15 (.A0(rst_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(rst_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11858), .COUT(n11859), .S0(n1182), .S1(n1181));   // d:/project/crosslink/project/mipi_3ch_top.v(356[24:38])
    defparam add_86_15.INIT0 = 16'haaaa;
    defparam add_86_15.INIT1 = 16'haaaa;
    defparam add_86_15.INJECT1_0 = "NO";
    defparam add_86_15.INJECT1_1 = "NO";
    CCU2C cam_cnt_1911_add_4_7 (.A0(cam_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(cam_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n12007), .COUT(n12008), .S0(n100), .S1(n99));   // d:/project/crosslink/project/mipi_3ch_top.v(95[28:42])
    defparam cam_cnt_1911_add_4_7.INIT0 = 16'haaa0;
    defparam cam_cnt_1911_add_4_7.INIT1 = 16'haaa0;
    defparam cam_cnt_1911_add_4_7.INJECT1_0 = "NO";
    defparam cam_cnt_1911_add_4_7.INJECT1_1 = "NO";
    LUT4 i6473_2_lut (.A(n116), .B(n47), .Z(n142_adj_1795)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6473_2_lut.init = 16'h8888;
    LUT4 i6474_2_lut (.A(n115), .B(n47), .Z(n141_adj_1794)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6474_2_lut.init = 16'h8888;
    LUT4 i6475_2_lut (.A(n114), .B(n47), .Z(n140_adj_1793)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6475_2_lut.init = 16'h8888;
    LUT4 i6476_2_lut (.A(n113), .B(n47), .Z(n139_adj_1792)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6476_2_lut.init = 16'h8888;
    LUT4 i6477_2_lut (.A(n112), .B(n47), .Z(n138_adj_1791)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6477_2_lut.init = 16'h8888;
    LUT4 i6478_2_lut (.A(n111), .B(n47), .Z(n137_adj_1790)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6478_2_lut.init = 16'h8888;
    LUT4 i6479_2_lut (.A(n110), .B(n47), .Z(n136_adj_1789)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6479_2_lut.init = 16'h8888;
    LUT4 i6480_2_lut (.A(n109), .B(n47), .Z(n135_adj_1788)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6480_2_lut.init = 16'h8888;
    LUT4 i6481_2_lut (.A(n108), .B(n47), .Z(n134_adj_1787)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6481_2_lut.init = 16'h8888;
    LUT4 i6482_2_lut (.A(n107), .B(n47), .Z(n133)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6482_2_lut.init = 16'h8888;
    LUT4 i6483_2_lut (.A(n106), .B(n47), .Z(n132)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6483_2_lut.init = 16'h8888;
    LUT4 i6484_2_lut (.A(n105_adj_1786), .B(n47), .Z(n131)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6484_2_lut.init = 16'h8888;
    LUT4 i6485_2_lut (.A(n104_adj_1785), .B(n47), .Z(n130)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6485_2_lut.init = 16'h8888;
    LUT4 i3641_1_lut_4_lut (.A(xshutdn_r), .B(n15991), .C(n16545), .D(n15995), 
         .Z(sys_clk_c_enable_207)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(85[18] 87[16])
    defparam i3641_1_lut_4_lut.init = 16'h5545;
    LUT4 i6486_2_lut (.A(n103_adj_1784), .B(n47), .Z(n129)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6486_2_lut.init = 16'h8888;
    LUT4 i6487_2_lut (.A(n102_adj_1783), .B(n47), .Z(n128)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6487_2_lut.init = 16'h8888;
    LUT4 i6439_2_lut (.A(n1187), .B(rst_cnt_25__N_445), .Z(n7041)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6439_2_lut.init = 16'h2222;
    LUT4 i6350_2_lut (.A(n125), .B(n47), .Z(n151_adj_1804)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(58[22:38])
    defparam i6350_2_lut.init = 16'h8888;
    LUT4 i6438_2_lut (.A(n1186), .B(rst_cnt_25__N_445), .Z(n7039)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6438_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_340 (.A(n16537), .B(n16097), .C(n16489), .D(n16333), 
         .Z(n47)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_340.init = 16'hdfff;
    LUT4 i6437_2_lut (.A(n1185), .B(rst_cnt_25__N_445), .Z(n7037)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6437_2_lut.init = 16'h2222;
    LUT4 i13325_4_lut (.A(blink_cnt[19]), .B(n16485), .C(blink_cnt[15]), 
         .D(blink_cnt[9]), .Z(n16537)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13325_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_341 (.A(blink_cnt[2]), .B(n16125), .C(n16123), .D(n16113), 
         .Z(n16097)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_341.init = 16'hfffd;
    LUT4 i13277_4_lut (.A(blink_cnt[1]), .B(blink_cnt[3]), .C(blink_cnt[23]), 
         .D(blink_cnt[6]), .Z(n16489)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13277_4_lut.init = 16'h8000;
    LUT4 i6436_2_lut (.A(n1184), .B(rst_cnt_25__N_445), .Z(n7035)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6436_2_lut.init = 16'h2222;
    LUT4 i13122_2_lut (.A(blink_cnt[20]), .B(blink_cnt[10]), .Z(n16333)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13122_2_lut.init = 16'h8888;
    LUT4 i13273_4_lut (.A(blink_cnt[5]), .B(blink_cnt[12]), .C(blink_cnt[4]), 
         .D(blink_cnt[0]), .Z(n16485)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13273_4_lut.init = 16'h8000;
    LUT4 i6435_2_lut (.A(n1183), .B(rst_cnt_25__N_445), .Z(n7033)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6435_2_lut.init = 16'h2222;
    LUT4 i6434_2_lut (.A(n1182), .B(rst_cnt_25__N_445), .Z(n7031)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6434_2_lut.init = 16'h2222;
    LUT4 i6433_2_lut (.A(n1181), .B(rst_cnt_25__N_445), .Z(n7029)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6433_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_342 (.A(blink_cnt[7]), .B(blink_cnt[14]), .C(blink_cnt[21]), 
         .D(blink_cnt[18]), .Z(n16125)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(53[14:38])
    defparam i1_4_lut_adj_342.init = 16'hfffe;
    LUT4 i6432_2_lut (.A(n1180), .B(rst_cnt_25__N_445), .Z(n7027)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6432_2_lut.init = 16'h2222;
    LUT4 i6431_2_lut (.A(n1179), .B(rst_cnt_25__N_445), .Z(n7025)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6431_2_lut.init = 16'h2222;
    LUT4 i6430_2_lut (.A(n1178), .B(rst_cnt_25__N_445), .Z(n7023)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6430_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_343 (.A(blink_cnt[16]), .B(blink_cnt[13]), .C(blink_cnt[17]), 
         .D(blink_cnt[22]), .Z(n16123)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(53[14:38])
    defparam i1_4_lut_adj_343.init = 16'hfffe;
    LUT4 i6429_2_lut (.A(n1177), .B(rst_cnt_25__N_445), .Z(n7021)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6429_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_344 (.A(blink_cnt[8]), .B(blink_cnt[11]), .Z(n16113)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(53[14:38])
    defparam i1_2_lut_adj_344.init = 16'heeee;
    LUT4 i6428_2_lut (.A(n1176), .B(rst_cnt_25__N_445), .Z(n7019)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6428_2_lut.init = 16'h2222;
    LUT4 i6427_2_lut (.A(n1175), .B(rst_cnt_25__N_445), .Z(n7017)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6427_2_lut.init = 16'h2222;
    LUT4 i6426_2_lut (.A(n1174), .B(rst_cnt_25__N_445), .Z(n7015)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6426_2_lut.init = 16'h2222;
    LUT4 i6425_2_lut (.A(n1173), .B(rst_cnt_25__N_445), .Z(n7013)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6425_2_lut.init = 16'h2222;
    LUT4 i6424_2_lut (.A(n1172), .B(rst_cnt_25__N_445), .Z(n7011)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6424_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(n5), .B(n8953), .C(n17783), .D(n17775), .Z(n3909)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    LUT4 i6423_2_lut (.A(n1171), .B(rst_cnt_25__N_445), .Z(n7009)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6423_2_lut.init = 16'h2222;
    LUT4 i6401_2_lut (.A(n1170), .B(rst_cnt_25__N_445), .Z(n7007)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6401_2_lut.init = 16'h2222;
    LUT4 csi_dt_5__I_0_2_lut (.A(csi_dt_c_5), .B(csi_lp_en_d), .Z(csi_long_packet_count_31__N_384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(174[13:45])
    defparam csi_dt_5__I_0_2_lut.init = 16'h2222;
    LUT4 i1956_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(sys_clk_c_enable_225)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1956_2_lut.init = 16'hdddd;
    LUT4 i6446_2_lut (.A(n1194), .B(rst_cnt_25__N_445), .Z(n7055)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i6446_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_345 (.A(n16267), .B(n16271), .C(n16215), .D(n16211), 
         .Z(rst_cnt_25__N_445)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_345.init = 16'h1000;
    LUT4 i13056_2_lut (.A(rx_data[3]), .B(rx_data[4]), .Z(n16267)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13056_2_lut.init = 16'heeee;
    LUT4 i13060_2_lut (.A(rx_data[0]), .B(rx_data[7]), .Z(n16271)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13060_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_adj_346 (.A(rx_data[2]), .B(rx_flag), .C(rx_data[1]), 
         .Z(n16215)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_346.init = 16'h8080;
    LUT4 i13666_3_lut_4_lut (.A(n17783), .B(n92), .C(n6323), .D(n3966), 
         .Z(drive_clk_enable_22)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i13666_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_adj_347 (.A(rx_data[5]), .B(rx_data[6]), .Z(n16211)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_347.init = 16'h8888;
    LUT4 i5900_4_lut (.A(rst_n_pulse), .B(n14675), .C(n15669), .D(n16479), 
         .Z(rst_n_pulse_N_449)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(355[14] 357[12])
    defparam i5900_4_lut.init = 16'haeaa;
    LUT4 i1_4_lut_adj_348 (.A(rst_cnt[25]), .B(n15681), .C(n15679), .D(rst_cnt[6]), 
         .Z(n14675)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_348.init = 16'h8000;
    LUT4 i1_4_lut_adj_349 (.A(n16311), .B(n16481), .C(n15647), .D(n15649), 
         .Z(n15669)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_349.init = 16'hfff7;
    LUT4 i13267_4_lut (.A(rst_cnt[19]), .B(rst_cnt[2]), .C(rst_cnt[21]), 
         .D(rst_cnt[5]), .Z(n16479)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13267_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_350 (.A(rst_cnt[3]), .B(rst_cnt[13]), .C(rst_cnt[0]), 
         .D(rst_cnt[17]), .Z(n15681)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_350.init = 16'h8000;
    LUT4 i1_2_lut_adj_351 (.A(rst_cnt[15]), .B(rst_cnt[20]), .Z(n15679)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_351.init = 16'h8888;
    LUT4 i13100_2_lut (.A(rst_cnt[12]), .B(rst_cnt[4]), .Z(n16311)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13100_2_lut.init = 16'h8888;
    LUT4 i13269_4_lut (.A(rst_cnt[1]), .B(rst_cnt[23]), .C(rst_cnt[14]), 
         .D(rst_cnt[22]), .Z(n16481)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13269_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_352 (.A(rst_cnt[11]), .B(rst_cnt[8]), .C(rst_cnt[7]), 
         .D(rst_cnt[24]), .Z(n15647)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_352.init = 16'hfffe;
    LUT4 i1_4_lut_adj_353 (.A(rst_cnt[16]), .B(rst_cnt[9]), .C(rst_cnt[10]), 
         .D(rst_cnt[18]), .Z(n15649)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_353.init = 16'hfffe;
    \top_iic(IIC_CLK=26'b011000011010100000)  u_top_iic (.sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .GND_net(GND_net), .VCC_net(VCC_net), 
            .\frame_count[0] (frame_count[0]), .led_c_1(led_c_1), .frame_count_valid(frame_count_valid), 
            .\frame_count[7] (frame_count[7]), .\frame_count[6] (frame_count[6]), 
            .\frame_count[5] (frame_count[5]), .\frame_count[4] (frame_count[4]), 
            .\frame_count[3] (frame_count[3]), .\frame_count[2] (frame_count[2]), 
            .\frame_count[1] (frame_count[1]), .cam_ready(cam_ready), .n17783(n17783), 
            .sda_transmit(sda_transmit), .sda_transmit_en_N_1145(sda_transmit_en_N_1145), 
            .\current_state[2] (current_state[2]), .n8953(n8953), .\rd_cnt[3] (rd_cnt[3]), 
            .n17722(n17722), .\rd_cnt[2] (rd_cnt[2]), .\current_state[1] (current_state[1]), 
            .\current_state[4] (current_state[4]), .n4(n4), .\current_state[3] (current_state[3]), 
            .n9643(n9643), .n17769(n17769), .n17728(n17728), .n3909(n3909), 
            .n3966(n3966), .n92(n92), .n17775(n17775), .n3009(n3009), 
            .n5(n5), .\current_state[8] (current_state[8]), .n17776(n17776), 
            .drive_clk_enable_22(drive_clk_enable_22), .n2855(n2855), .n12775(n12775), 
            .n6323(n6323), .n8218(n8218), .i2c_sclk_0_c(i2c_sclk_0_c), 
            .i2c_sda_0_out(i2c_sda_0_out)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(111[3] 123[2])
    VLO i1 (.Z(GND_net));
    LUT4 i5901_2_lut (.A(rst_n_pulse_N_449), .B(rst_cnt_25__N_445), .Z(n5003)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(347[10] 358[8])
    defparam i5901_2_lut.init = 16'h2222;
    uart_send_ctrl u_send_ctrl (.tx_state({tx_state[1], Open_0}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .work_en_N_1466(work_en_N_1466), .\tx_data[0] (tx_data[0]), 
            .csi_long_packet_count_sys({csi_long_packet_count_sys}), .csi_payload_byte_count_sys({csi_payload_byte_count_sys}), 
            .tx_phase({Open_1, Open_2, tx_phase[0]}), .csi_byte_clk_count_sys({csi_byte_clk_count_sys}), 
            .csi_hs_sync_count_sys({csi_hs_sync_count_sys}), .\tx_phase[1] (tx_phase[1]), 
            .uart_busy(uart_busy), .n12098(n12098), .n16662(n16662), .\tx_data[6] (tx_data[6]), 
            .\tx_data[5] (tx_data[5]), .\tx_data[4] (tx_data[4]), .\tx_data[3] (tx_data[3]), 
            .\tx_data[2] (tx_data[2]), .\tx_data[1] (tx_data[1]), .\frame_count[7] (frame_count[7]), 
            .frame_count_valid(frame_count_valid), .csi_last_wc_sys({csi_last_wc_sys}), 
            .\frame_count[6] (frame_count[6]), .\frame_count[5] (frame_count[5]), 
            .\frame_count[2] (frame_count[2]), .\frame_count[1] (frame_count[1]), 
            .\frame_count[0] (frame_count[0]), .\frame_count[4] (frame_count[4]), 
            .\frame_count[3] (frame_count[3]), .csi_last_dt_sys({csi_last_dt_sys})) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(302[16] 316[2])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    uart_rx u_uart_rx (.sys_clk_c(sys_clk_c), .sys_rst_n_N_472(sys_rst_n_N_472), 
            .rx_data({rx_data}), .rx_flag(rx_flag), .uart_rxd_c(uart_rxd_c), 
            .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(333[3] 339[2])
    csi2dsi u_csi2dsi (.csi_clk_byte_hs(csi_clk_byte_hs), .\reset_byte_fr_sync[1] (reset_byte_fr_sync[1]), 
            .VCC_net(VCC_net), .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), 
            .csi_wc({csi_wc}), .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), 
            .n17768(n17768), .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), 
            .csi_lp_en_c(csi_lp_en_c), .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (reset_byte_sync[1]), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(247[9] 293[2])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (sys_clk_c, sys_rst_n_N_472, uart_busy, GND_net, VCC_net, 
            \tx_data[4] , work_en_N_1466, uart_txd_c, \tx_data[5] , 
            \tx_data[6] , \tx_data[0] , \tx_data[1] , \tx_data[2] , 
            \tx_data[3] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output uart_busy;
    input GND_net;
    input VCC_net;
    input \tx_data[4] ;
    input work_en_N_1466;
    output uart_txd_c;
    input \tx_data[5] ;
    input \tx_data[6] ;
    input \tx_data[0] ;
    input \tx_data[1] ;
    input \tx_data[2] ;
    input \tx_data[3] ;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    
    wire bit_flag, bit_flag_N_1476, n6927;
    wire [15:0]n1957;
    
    wire sys_clk_c_enable_59, n6995, n6989;
    wire [15:0]n1992;
    
    wire n6993, n6987;
    wire [12:0]baud_cnt;   // d:/project/crosslink/project/impl1/source/uart_tx.v(19[12:20])
    wire [12:0]n41;
    
    wire work_en_N_1469, n6985, n6983, n11870;
    wire [12:0]n18;
    
    wire n6981, n11869, n6979, n11868, n7001, n11867, n5911, n5914, 
        n5915, n6977, n6991, n8482, n6975, n6999;
    wire [0:0]n4521;
    
    wire n5913, n11866, n15437, n15435;
    wire [0:0]n4533;
    
    wire tx_N_1475, n6973, n6997, n11865, n16465, n16195, n16443, 
        n16191, n16453, n21_adj_1665, n16445, n16417, n16718, n16727;
    
    FD1S3DX bit_flag_47 (.D(bit_flag_N_1476), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(47[10] 50[26])
    defparam bit_flag_47.GSR = "ENABLED";
    FD1S3DX work_en_45 (.D(n6927), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(27[10] 30[25])
    defparam work_en_45.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i4 (.D(n6995), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[4]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i4.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i7 (.D(n6989), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[7]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i7.GSR = "ENABLED";
    FD1P3BX bit_cnt_FSM_i0 (.D(n1992[0]), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(n1957[0]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i0.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i5 (.D(n6993), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[5]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i5.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i8 (.D(n6987), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[8]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n41[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i9 (.D(n6985), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(work_en_N_1469));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i9.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i10 (.D(n6983), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[10]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i10.GSR = "ENABLED";
    CCU2C add_18_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11870), .S0(n18[11]), .S1(n18[12]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_13.INIT0 = 16'haaaa;
    defparam add_18_13.INIT1 = 16'haaaa;
    defparam add_18_13.INJECT1_0 = "NO";
    defparam add_18_13.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i11 (.D(n6981), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[11]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i11.GSR = "ENABLED";
    CCU2C add_18_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11869), .COUT(n11870), .S0(n18[9]), .S1(n18[10]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_11.INIT0 = 16'haaaa;
    defparam add_18_11.INIT1 = 16'haaaa;
    defparam add_18_11.INJECT1_0 = "NO";
    defparam add_18_11.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i12 (.D(n6979), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[12]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i12.GSR = "ENABLED";
    CCU2C add_18_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11868), .COUT(n11869), .S0(n18[7]), .S1(n18[8]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_9.INIT0 = 16'haaaa;
    defparam add_18_9.INIT1 = 16'haaaa;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    FD1P3DX bit_cnt_FSM_i1 (.D(n7001), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[1]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i1.GSR = "ENABLED";
    CCU2C add_18_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11867), .COUT(n11868), .S0(n18[5]), .S1(n18[6]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_7.INIT0 = 16'haaaa;
    defparam add_18_7.INIT1 = 16'haaaa;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    LUT4 i13610_4_lut_4_lut_4_lut (.A(n1957[7]), .B(n5911), .C(n5914), 
         .D(n1957[6]), .Z(n5915)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam i13610_4_lut_4_lut_4_lut.init = 16'hf0e4;
    FD1P3DX bit_cnt_FSM_i13 (.D(n6977), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[13]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i13.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i6 (.D(n6991), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[6]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i6.GSR = "ENABLED";
    LUT4 i6111_2_lut (.A(n18[12]), .B(n8482), .Z(n41[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6111_2_lut.init = 16'h8888;
    LUT4 i6112_2_lut (.A(n18[11]), .B(n8482), .Z(n41[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6112_2_lut.init = 16'h8888;
    LUT4 i6113_2_lut (.A(n18[10]), .B(n8482), .Z(n41[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6113_2_lut.init = 16'h8888;
    LUT4 i6114_2_lut (.A(n18[9]), .B(n8482), .Z(n41[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6114_2_lut.init = 16'h8888;
    LUT4 i6115_2_lut (.A(n18[8]), .B(n8482), .Z(n41[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6115_2_lut.init = 16'h8888;
    LUT4 i6128_2_lut (.A(n18[7]), .B(n8482), .Z(n41[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6128_2_lut.init = 16'h8888;
    LUT4 i6131_2_lut (.A(n18[6]), .B(n8482), .Z(n41[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6131_2_lut.init = 16'h8888;
    LUT4 i6132_2_lut (.A(n18[5]), .B(n8482), .Z(n41[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6132_2_lut.init = 16'h8888;
    LUT4 i6614_2_lut (.A(n18[4]), .B(n8482), .Z(n41[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam i6614_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(n8482), .B(n18[3]), .Z(n41[3])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1P3DX bit_cnt_FSM_i14 (.D(n6975), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[14]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i14.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i2 (.D(n6999), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[2]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i2.GSR = "ENABLED";
    LUT4 i2903_3_lut (.A(n4521[0]), .B(\tx_data[4] ), .C(n1957[5]), .Z(n5913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2903_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_323 (.A(n8482), .B(n18[2]), .Z(n41[2])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_323.init = 16'h8888;
    LUT4 i1_2_lut_adj_324 (.A(n8482), .B(n18[1]), .Z(n41[1])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_324.init = 16'h8888;
    LUT4 i3882_3_lut_4_lut (.A(bit_flag), .B(work_en_N_1469), .C(uart_busy), 
         .D(work_en_N_1466), .Z(n6927)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (C+(D))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i3882_3_lut_4_lut.init = 16'hff70;
    CCU2C add_18_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11866), .COUT(n11867), .S0(n18[3]), .S1(n18[4]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_5.INIT0 = 16'haaaa;
    defparam add_18_5.INIT1 = 16'haaaa;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n15437), .B(n1957[8]), .C(n15435), .D(n4533[0]), 
         .Z(tx_N_1475)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i1_4_lut.init = 16'hfbfa;
    FD1P3BX tx_50 (.D(tx_N_1475), .SP(bit_flag), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(uart_txd_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(67[10] 80[16])
    defparam tx_50.GSR = "ENABLED";
    FD1P3DX bit_cnt_FSM_i15 (.D(n6973), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[15]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_325 (.A(n1957[12]), .B(n1957[13]), .C(n1957[10]), 
         .D(n1957[11]), .Z(n15437)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i1_4_lut_adj_325.init = 16'hfffe;
    LUT4 i1_3_lut (.A(n1957[14]), .B(work_en_N_1469), .C(n1957[15]), .Z(n15435)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i1_3_lut.init = 16'hfefe;
    FD1P3DX bit_cnt_FSM_i3 (.D(n6997), .SP(sys_clk_c_enable_59), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(n1957[3]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam bit_cnt_FSM_i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i12 (.D(n41[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n41[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n41[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n41[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n41[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n41[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n41[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n41[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n41[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n41[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n41[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n41[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=321, LSE_RLINE=328 */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(37[10] 40[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    CCU2C add_18_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11865), .COUT(n11866), .S0(n18[1]), .S1(n18[2]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_3.INIT0 = 16'haaaa;
    defparam add_18_3.INIT1 = 16'haaaa;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    CCU2C add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11865), .S1(n18[0]));   // d:/project/crosslink/project/impl1/source/uart_tx.v(40[21:36])
    defparam add_18_1.INIT0 = 16'h0000;
    defparam add_18_1.INIT1 = 16'h555a;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_326 (.A(n8482), .B(n18[0]), .Z(n41[0])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_326.init = 16'h8888;
    LUT4 i1_4_lut_adj_327 (.A(uart_busy), .B(n16465), .C(n16195), .D(baud_cnt[5]), 
         .Z(n8482)) /* synthesis lut_function=(A ((C+!(D))+!B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(136[21:31])
    defparam i1_4_lut_adj_327.init = 16'ha2aa;
    LUT4 i13253_4_lut (.A(baud_cnt[7]), .B(baud_cnt[8]), .C(baud_cnt[0]), 
         .D(baud_cnt[4]), .Z(n16465)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13253_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_328 (.A(n16443), .B(n16191), .C(baud_cnt[3]), .D(baud_cnt[2]), 
         .Z(n16195)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_328.init = 16'hfffe;
    LUT4 i1_4_lut_adj_329 (.A(baud_cnt[9]), .B(baud_cnt[11]), .C(baud_cnt[6]), 
         .D(baud_cnt[1]), .Z(n16191)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_329.init = 16'hfffe;
    LUT4 i6388_2_lut (.A(work_en_N_1469), .B(bit_flag), .Z(n6983)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam i6388_2_lut.init = 16'h2222;
    LUT4 i12_4_lut (.A(n16453), .B(n21_adj_1665), .C(n16443), .D(n16445), 
         .Z(bit_flag_N_1476)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i12_4_lut.init = 16'h0004;
    LUT4 i13242_4_lut (.A(baud_cnt[9]), .B(baud_cnt[7]), .C(baud_cnt[1]), 
         .D(n16417), .Z(n16453)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13242_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(baud_cnt[4]), .B(baud_cnt[6]), .C(baud_cnt[0]), 
         .D(baud_cnt[2]), .Z(n21_adj_1665)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i8_4_lut.init = 16'h0010;
    LUT4 i2904_3_lut (.A(\tx_data[5] ), .B(\tx_data[6] ), .C(n1957[7]), 
         .Z(n5914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2904_3_lut.init = 16'hcaca;
    LUT4 i2901_4_lut (.A(\tx_data[0] ), .B(\tx_data[1] ), .C(n1957[2]), 
         .D(n1957[1]), .Z(n5911)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2901_4_lut.init = 16'hcac0;
    LUT4 i13234_2_lut (.A(baud_cnt[3]), .B(baud_cnt[11]), .Z(n16445)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13234_2_lut.init = 16'heeee;
    LUT4 i13206_2_lut (.A(baud_cnt[5]), .B(baud_cnt[8]), .Z(n16417)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13206_2_lut.init = 16'heeee;
    LUT4 i13232_2_lut (.A(baud_cnt[12]), .B(baud_cnt[10]), .Z(n16443)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13232_2_lut.init = 16'heeee;
    LUT4 i2902_3_lut (.A(\tx_data[2] ), .B(\tx_data[3] ), .C(n1957[4]), 
         .Z(n4521[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i2902_3_lut.init = 16'hcaca;
    LUT4 i13506_2_lut (.A(n1957[4]), .B(n1957[3]), .Z(n16718)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(68[9] 80[16])
    defparam i13506_2_lut.init = 16'h1111;
    LUT4 i13717_4_lut_4_lut (.A(n1957[6]), .B(n16718), .C(n1957[5]), .D(n1957[7]), 
         .Z(n16727)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam i13717_4_lut_4_lut.init = 16'hffae;
    LUT4 i6395_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[2]), 
         .Z(n6997)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6395_2_lut_3_lut.init = 16'h7070;
    LUT4 i6387_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[10]), 
         .Z(n6981)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6387_2_lut_3_lut.init = 16'h7070;
    LUT4 i6397_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[0]), 
         .Z(n7001)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6397_2_lut_3_lut.init = 16'h7070;
    LUT4 i6389_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[8]), 
         .Z(n6985)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6389_2_lut_3_lut.init = 16'h7070;
    LUT4 i6392_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[5]), 
         .Z(n6991)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6392_2_lut_3_lut.init = 16'h7070;
    LUT4 i6390_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[7]), 
         .Z(n6987)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6390_2_lut_3_lut.init = 16'h7070;
    LUT4 i6393_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[4]), 
         .Z(n6993)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6393_2_lut_3_lut.init = 16'h7070;
    LUT4 i6396_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[1]), 
         .Z(n6999)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6396_2_lut_3_lut.init = 16'h7070;
    LUT4 i5919_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[15]), 
         .Z(n1992[0])) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i5919_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i6391_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[6]), 
         .Z(n6989)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6391_2_lut_3_lut.init = 16'h7070;
    LUT4 i5911_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(uart_busy), 
         .Z(sys_clk_c_enable_59)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(60[20:34])
    defparam i5911_3_lut.init = 16'ha8a8;
    LUT4 i6384_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[13]), 
         .Z(n6975)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6384_2_lut_3_lut.init = 16'h7070;
    PFUMX i2906 (.BLUT(n5913), .ALUT(n5915), .C0(n16727), .Z(n4533[0]));
    LUT4 i6385_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[12]), 
         .Z(n6977)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6385_2_lut_3_lut.init = 16'h7070;
    LUT4 i6383_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[14]), 
         .Z(n6973)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6383_2_lut_3_lut.init = 16'h7070;
    LUT4 i6394_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[3]), 
         .Z(n6995)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6394_2_lut_3_lut.init = 16'h7070;
    LUT4 i6386_2_lut_3_lut (.A(bit_flag), .B(work_en_N_1469), .C(n1957[11]), 
         .Z(n6979)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_tx.v(29[13:52])
    defparam i6386_2_lut_3_lut.init = 16'h7070;
    
endmodule
//
// Verilog Description of module \top_iic(IIC_CLK=26'b011000011010100000) 
//

module \top_iic(IIC_CLK=26'b011000011010100000)  (sys_clk_c, sys_rst_n_N_472, 
            GND_net, VCC_net, \frame_count[0] , led_c_1, frame_count_valid, 
            \frame_count[7] , \frame_count[6] , \frame_count[5] , \frame_count[4] , 
            \frame_count[3] , \frame_count[2] , \frame_count[1] , cam_ready, 
            n17783, sda_transmit, sda_transmit_en_N_1145, \current_state[2] , 
            n8953, \rd_cnt[3] , n17722, \rd_cnt[2] , \current_state[1] , 
            \current_state[4] , n4, \current_state[3] , n9643, n17769, 
            n17728, n3909, n3966, n92, n17775, n3009, n5, \current_state[8] , 
            n17776, drive_clk_enable_22, n2855, n12775, n6323, n8218, 
            i2c_sclk_0_c, i2c_sda_0_out) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    input GND_net;
    input VCC_net;
    output \frame_count[0] ;
    output led_c_1;
    output frame_count_valid;
    output \frame_count[7] ;
    output \frame_count[6] ;
    output \frame_count[5] ;
    output \frame_count[4] ;
    output \frame_count[3] ;
    output \frame_count[2] ;
    output \frame_count[1] ;
    input cam_ready;
    output n17783;
    output sda_transmit;
    output sda_transmit_en_N_1145;
    output \current_state[2] ;
    output n8953;
    output \rd_cnt[3] ;
    input n17722;
    output \rd_cnt[2] ;
    output \current_state[1] ;
    output \current_state[4] ;
    input n4;
    output \current_state[3] ;
    output n9643;
    output n17769;
    input n17728;
    input n3909;
    output n3966;
    output n92;
    output n17775;
    output n3009;
    output n5;
    output \current_state[8] ;
    output n17776;
    input drive_clk_enable_22;
    input n2855;
    input n12775;
    output n6323;
    output n8218;
    output i2c_sclk_0_c;
    input i2c_sda_0_out;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    wire [7:0]data_write;   // d:/project/crosslink/project/impl1/source/top_iic.v(26[17:27])
    wire [15:0]addr;   // d:/project/crosslink/project/impl1/source/top_iic.v(25[17:21])
    wire [7:0]data_read;   // d:/project/crosslink/project/impl1/source/top_iic.v(28[17:26])
    wire [3:0]rd_byte_num;   // d:/project/crosslink/project/impl1/source/top_iic.v(14[19:30])
    
    wire flag_done, ctrl_w0_r1, start;
    
    ov9734_ctrl inst_ov9734_ctrl (.data_write({data_write}), .sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .GND_net(GND_net), .VCC_net(VCC_net), 
            .addr({addr}), .\frame_count[0] (\frame_count[0] ), .data_read({data_read}), 
            .\rd_byte_num[0] (rd_byte_num[0]), .flag_done(flag_done), .\rd_byte_num[1] (rd_byte_num[1]), 
            .led_c_1(led_c_1), .ctrl_w0_r1(ctrl_w0_r1), .frame_count_valid(frame_count_valid), 
            .\frame_count[7] (\frame_count[7] ), .\frame_count[6] (\frame_count[6] ), 
            .\frame_count[5] (\frame_count[5] ), .\frame_count[4] (\frame_count[4] ), 
            .\frame_count[3] (\frame_count[3] ), .\frame_count[2] (\frame_count[2] ), 
            .\frame_count[1] (\frame_count[1] ), .start(start), .cam_ready(cam_ready)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/impl1/source/top_iic.v(33[17] 51[6])
    \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100)  inst_i2c_drive (.sys_clk_c(sys_clk_c), 
            .sys_rst_n_N_472(sys_rst_n_N_472), .data_read({data_read}), 
            .n17783(n17783), .sda_transmit(sda_transmit), .sda_transmit_en_N_1145(sda_transmit_en_N_1145), 
            .\current_state[2] (\current_state[2] ), .n8953(n8953), .rd_cnt({\rd_cnt[3] , 
            Open_3, Open_4, Open_5}), .n17722(n17722), .\rd_cnt[2] (\rd_cnt[2] ), 
            .\current_state[1] (\current_state[1] ), .addr({addr}), .\current_state[4] (\current_state[4] ), 
            .GND_net(GND_net), .VCC_net(VCC_net), .n4(n4), .\current_state[3] (\current_state[3] ), 
            .\rd_byte_num[1] (rd_byte_num[1]), .\rd_byte_num[0] (rd_byte_num[0]), 
            .n9643(n9643), .n17769(n17769), .n17728(n17728), .data_write({data_write}), 
            .ctrl_w0_r1(ctrl_w0_r1), .start(start), .n3909(n3909), .n3966(n3966), 
            .n92(n92), .n17775(n17775), .n3009(n3009), .n5(n5), .\current_state[8] (\current_state[8] ), 
            .n17776(n17776), .flag_done(flag_done), .drive_clk_enable_22(drive_clk_enable_22), 
            .n2855(n2855), .n12775(n12775), .n6323(n6323), .n8218(n8218), 
            .i2c_sclk_0_c(i2c_sclk_0_c), .i2c_sda_0_out(i2c_sda_0_out)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/impl1/source/top_iic.v(59[7] 73[6])
    
endmodule
//
// Verilog Description of module ov9734_ctrl
//

module ov9734_ctrl (data_write, sys_clk_c, sys_rst_n_N_472, GND_net, 
            VCC_net, addr, \frame_count[0] , data_read, \rd_byte_num[0] , 
            flag_done, \rd_byte_num[1] , led_c_1, ctrl_w0_r1, frame_count_valid, 
            \frame_count[7] , \frame_count[6] , \frame_count[5] , \frame_count[4] , 
            \frame_count[3] , \frame_count[2] , \frame_count[1] , start, 
            cam_ready) /* synthesis syn_module_defined=1 */ ;
    output [7:0]data_write;
    input sys_clk_c;
    input sys_rst_n_N_472;
    input GND_net;
    input VCC_net;
    output [15:0]addr;
    output \frame_count[0] ;
    input [7:0]data_read;
    output \rd_byte_num[0] ;
    input flag_done;
    output \rd_byte_num[1] ;
    output led_c_1;
    output ctrl_w0_r1;
    output frame_count_valid;
    output \frame_count[7] ;
    output \frame_count[6] ;
    output \frame_count[5] ;
    output \frame_count[4] ;
    output \frame_count[3] ;
    output \frame_count[2] ;
    output \frame_count[1] ;
    output start;
    input cam_ready;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    
    wire sys_clk_c_enable_117;
    wire [23:0]reg_cfg_23__N_517;
    
    wire n11894;
    wire [19:0]final_cnt;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(237[16:25])
    wire [19:0]n349;
    
    wire n11895, delay_swrst, sys_clk_c_enable_37, start_N_824, sys_clk_c_enable_110, 
        n1, flag_done_d2, flag_done_d1;
    wire [7:0]reg_index;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(42[16:25])
    wire [15:0]addr_15__N_455;
    
    wire n16077, n16241, n16235, sys_clk_c_enable_26;
    wire [25:0]frame_wait_cnt;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(238[16:30])
    
    wire sys_clk_c_enable_91, n6556, sys_clk_c_enable_66;
    wire [3:0]rd_byte_num_3__N_481;
    wire [6:0]n4312;
    
    wire n5466, n11893, n16237, n13871, n13873, n16229, n16227, 
        n11892, n16071, n16079;
    wire [16:0]wait_cnt;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(235[16:24])
    
    wire sys_clk_c_enable_55;
    wire [16:0]n92;
    wire [7:0]n37;
    
    wire n17726;
    wire [15:0]addr_15__N_669;
    
    wire n13857, n13853, n16503, n16049, n15, n2, n15151, n51, 
        sys_clk_c_enable_28, n17715, n2_adj_1635, n15147, n17792, 
        n13510, n17751, n13891, n13508, n13867, n17725, n17772, 
        n1_adj_1636, n1_adj_1637, n1_adj_1638, n1_adj_1639, n1_adj_1640, 
        n1_adj_1641, n1_adj_1642, n1_adj_1643, n1_adj_1644, n1_adj_1645, 
        n1_adj_1646, n1_adj_1647, n1_adj_1648, n1_adj_1649, n1_adj_1650, 
        n1_adj_1651, n1_adj_1652, n1_adj_1653, n1_adj_1654, n13420, 
        n5464, n13426, n13421, n33, n33_adj_1655;
    wire [16:0]n73;
    
    wire n13419, n5462, n17718, n17742, n13437, n13430, n13435, 
        n13439, n13424, n13417, n5451, n14279, n5458, n5460, n6526, 
        n6568, n6565, n6562, n6559, n6571, n6553, n6550, n6547, 
        n6538, n6535, n6589, n6598, n6601, n6604, n6607, n6595, 
        n6592, n6586, n6583, n6580, n6574, n6541, n6577, n6544, 
        n11914;
    wire [25:0]n450;
    
    wire n11913, n11912, n11911, n11910, sys_clk_c_enable_163, n14659, 
        n15733, n15731, n11909, n15961, n16515, n16413, n15957, 
        n15941, n15939, n11908, n15927, n11907, n11906, n11905, 
        n11904, n11903, n11902, n11901, n11956, n11900, n11955, 
        n11954, n11953, n11951, n11899, n16493, n15339, n16337, 
        n7, n7_adj_1656, n11950, n15337, n15329, n11898, n11897, 
        n11949, n11896, n11948, n11947, n15177, n15167, n15165, 
        n11946, n11945, n15171, n11944, n14419, n16497, n15589, 
        n16499, n15611, n15609, n2084, n16345, n15567, n15575, 
        n15569, n17788, n14465, n15155, n15923, n15915, n15909, 
        n15911, n15903, n15905, n15895, n15883, n15887, n15907, 
        n15901, n15889, n15875, n15881, n15899, n15877, n2_adj_1657, 
        n15143;
    
    FD1P3DX data_write__i0 (.D(reg_cfg_23__N_517[0]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i0.GSR = "ENABLED";
    CCU2C add_48_7 (.A0(final_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11894), .COUT(n11895), .S0(n349[5]), .S1(n349[6]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_7.INIT0 = 16'haaaa;
    defparam add_48_7.INIT1 = 16'haaaa;
    defparam add_48_7.INJECT1_0 = "NO";
    defparam add_48_7.INJECT1_1 = "NO";
    FD1P3DX delay_swrst_133 (.D(start_N_824), .SP(sys_clk_c_enable_37), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(delay_swrst)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam delay_swrst_133.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i0 (.D(n1), .SP(sys_clk_c_enable_110), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(final_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i0.GSR = "ENABLED";
    FD1S3DX flag_done_d2_117 (.D(flag_done_d1), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d2)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(29[14] 32[12])
    defparam flag_done_d2_117.GSR = "ENABLED";
    PDPW8KE mux_272 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(reg_index[0]), .ADR5(reg_index[1]), 
            .ADR6(reg_index[2]), .ADR7(reg_index[3]), .ADR8(reg_index[4]), 
            .ADR9(reg_index[5]), .ADR10(reg_index[6]), .ADR11(reg_index[7]), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(sys_clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO0(reg_cfg_23__N_517[9]), .DO1(reg_cfg_23__N_517[10]), .DO2(reg_cfg_23__N_517[11]), 
            .DO3(reg_cfg_23__N_517[12]), .DO4(reg_cfg_23__N_517[13]), .DO5(reg_cfg_23__N_517[14]), 
            .DO6(reg_cfg_23__N_517[15]), .DO7(reg_cfg_23__N_517[16]), .DO8(reg_cfg_23__N_517[17]), 
            .DO9(reg_cfg_23__N_517[0]), .DO10(reg_cfg_23__N_517[1]), .DO11(reg_cfg_23__N_517[2]), 
            .DO12(reg_cfg_23__N_517[3]), .DO13(reg_cfg_23__N_517[4]), .DO14(reg_cfg_23__N_517[5]), 
            .DO15(reg_cfg_23__N_517[6]), .DO16(reg_cfg_23__N_517[7]), .DO17(reg_cfg_23__N_517[8]));
    defparam mux_272.DATA_WIDTH_W = 18;
    defparam mux_272.DATA_WIDTH_R = 18;
    defparam mux_272.REGMODE = "NOREG";
    defparam mux_272.CSDECODE_W = "0b000";
    defparam mux_272.CSDECODE_R = "0b000";
    defparam mux_272.GSR = "DISABLED";
    defparam mux_272.RESETMODE = "ASYNC";
    defparam mux_272.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_272.INIT_DATA = "STATIC";
    defparam mux_272.INITVAL_00 = "0x085010840208300082040813C080020301901E150142201108010000070000200001001000010301";
    defparam mux_272.INITVAL_01 = "0x3840525A02259222582225707256772557725410211E72052220102200551030108A000890108601";
    defparam mux_272.INITVAL_02 = "0x00DC600C0500BD000A020090000805007DB006020050B00405003040020000104000003C00738555";
    defparam mux_272.INITVAL_03 = "0x10200101311000002C060210002018019040180001700016000130401200011040100000F2200E03";
    defparam mux_272.INITVAL_04 = "0x1090010800107001060010500104001030010200101001000010B4010A0010910105001040010303";
    defparam mux_272.INITVAL_05 = "0x18F0018B00187031861F1850018400183A418238181001800010F0010E0010D0010C0010B0010A00";
    defparam mux_272.INITVAL_06 = "0x30080200000372D023500215000500000002018020000309003050030400301FF300030090B001E0";
    defparam mux_272.INITVAL_07 = "0x011000100000F0000E0000D0000C000002F309003080030700306003050030400303003020030110";
    defparam mux_272.INITVAL_08 = "0x3803E00F2A3080618500184011830018201181001800108000017000160001500014000130001200";
    defparam mux_272.INITVAL_09 = "0x3900838F0C38E0838D0338CF538BF538AFD3890F388023870438600385013840138302382443810F";
    defparam mux_272.INITVAL_0A = "0x3FFFF10001013040110400BD800908007DF0050F0030000100100000003F394A3393523920039104";
    defparam mux_272.INITVAL_0B = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_272.INITVAL_0C = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_272.INITVAL_0D = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_272.INITVAL_0E = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_272.INITVAL_0F = "0x3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF3FFFF";
    defparam mux_272.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_272.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1S3DX addr_i0 (.D(addr_15__N_455[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n16077), .B(n16241), .C(n16235), .D(final_cnt[19]), 
         .Z(sys_clk_c_enable_26)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut.init = 16'h0040;
    PDPW8KE mux_273 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .ADW0(GND_net), .ADW1(GND_net), 
            .ADW2(GND_net), .ADW3(GND_net), .ADW4(GND_net), .ADW5(GND_net), 
            .ADW6(GND_net), .ADW7(GND_net), .ADW8(GND_net), .BE0(GND_net), 
            .BE1(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(reg_index[0]), .ADR5(reg_index[1]), 
            .ADR6(reg_index[2]), .ADR7(reg_index[3]), .ADR8(reg_index[4]), 
            .ADR9(reg_index[5]), .ADR10(reg_index[6]), .ADR11(reg_index[7]), 
            .ADR12(GND_net), .CER(VCC_net), .OCER(VCC_net), .CLKR(sys_clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), 
            .DO9(reg_cfg_23__N_517[18]), .DO10(reg_cfg_23__N_517[19]), .DO11(reg_cfg_23__N_517[20]), 
            .DO12(reg_cfg_23__N_517[21]), .DO13(reg_cfg_23__N_517[22]), 
            .DO14(reg_cfg_23__N_517[23]));
    defparam mux_273.DATA_WIDTH_W = 18;
    defparam mux_273.DATA_WIDTH_R = 18;
    defparam mux_273.REGMODE = "NOREG";
    defparam mux_273.CSDECODE_W = "0b000";
    defparam mux_273.CSDECODE_R = "0b000";
    defparam mux_273.GSR = "DISABLED";
    defparam mux_273.RESETMODE = "ASYNC";
    defparam mux_273.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_273.INIT_DATA = "STATIC";
    defparam mux_273.INITVAL_00 = "0x0000C0000C0000C0000C0000C0000C0000C0000C0000C0000C0000C0000C0000C0000C0000000000";
    defparam mux_273.INITVAL_01 = "0x0000D0000D0000D0000D0000D0000D0000D0000D0000D0000D0000D0000D0000C0000C0000C0000C";
    defparam mux_273.INITVAL_02 = "0x0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000D0000D";
    defparam mux_273.INITVAL_03 = "0x0000D0000D0000D0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E0000E";
    defparam mux_273.INITVAL_04 = "0x0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000D0000D0000D0000D0000D0000D";
    defparam mux_273.INITVAL_05 = "0x0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F0000F";
    defparam mux_273.INITVAL_06 = "0x00013000120001200012000120001200012000110001100010000100001000010000100001000010";
    defparam mux_273.INITVAL_07 = "0x00014000140001400014000140001400014000130001300013000130001300013000130001300013";
    defparam mux_273.INITVAL_08 = "0x000150000E0001500014000140001400014000140001400014000140001400014000140001400014";
    defparam mux_273.INITVAL_09 = "0x00015000150001500015000150001500015000150001500015000150001500015000150001500015";
    defparam mux_273.INITVAL_0A = "0x0003F000000000E0000E0000E0000E0000E0000E0000E0000E000000001400015000150001500015";
    defparam mux_273.INITVAL_0B = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_273.INITVAL_0C = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_273.INITVAL_0D = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_273.INITVAL_0E = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_273.INITVAL_0F = "0x0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F0003F";
    defparam mux_273.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_273.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3DX frame_wait_cnt_i0_i0 (.D(n6556), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i0.GSR = "ENABLED";
    FD1P3DX frame_count__i1 (.D(data_read[0]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i1.GSR = "ENABLED";
    FD1S3DX rd_byte_num_i0 (.D(rd_byte_num_3__N_481[0]), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\rd_byte_num[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam rd_byte_num_i0.GSR = "ENABLED";
    FD1S3DX flag_done_d1_116 (.D(flag_done), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(flag_done_d1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(29[14] 32[12])
    defparam flag_done_d1_116.GSR = "ENABLED";
    FD1S3DX state_FSM_i0 (.D(n5466), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[0]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i0.GSR = "ENABLED";
    CCU2C add_48_5 (.A0(final_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11893), .COUT(n11894), .S0(n349[3]), .S1(n349[4]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_5.INIT0 = 16'haaaa;
    defparam add_48_5.INIT1 = 16'haaaa;
    defparam add_48_5.INJECT1_0 = "NO";
    defparam add_48_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_212 (.A(final_cnt[11]), .B(n16237), .C(n4312[3]), 
         .D(final_cnt[16]), .Z(n16241)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_212.init = 16'h4000;
    LUT4 i1_2_lut (.A(n13871), .B(n13873), .Z(n16237)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_213 (.A(final_cnt[13]), .B(final_cnt[2]), .C(final_cnt[15]), 
         .D(final_cnt[17]), .Z(n13871)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_213.init = 16'h8000;
    LUT4 i1_4_lut_adj_214 (.A(final_cnt[3]), .B(final_cnt[0]), .C(final_cnt[1]), 
         .D(final_cnt[4]), .Z(n13873)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_214.init = 16'h8000;
    LUT4 i1_4_lut_adj_215 (.A(final_cnt[12]), .B(n16229), .C(final_cnt[5]), 
         .D(n16227), .Z(n16077)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_4_lut_adj_215.init = 16'hfffe;
    LUT4 i1_2_lut_adj_216 (.A(final_cnt[7]), .B(final_cnt[10]), .Z(n16227)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_2_lut_adj_216.init = 16'heeee;
    CCU2C add_48_3 (.A0(final_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11892), .COUT(n11893), .S0(n349[1]), .S1(n349[2]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_3.INIT0 = 16'haaaa;
    defparam add_48_3.INIT1 = 16'haaaa;
    defparam add_48_3.INJECT1_0 = "NO";
    defparam add_48_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_217 (.A(n16077), .B(final_cnt[16]), .C(n16071), 
         .D(final_cnt[9]), .Z(n16079)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_4_lut_adj_217.init = 16'hfffb;
    CCU2C add_48_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(final_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11892), .S1(n349[0]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_1.INIT0 = 16'h0000;
    defparam add_48_1.INIT1 = 16'h555a;
    defparam add_48_1.INJECT1_0 = "NO";
    defparam add_48_1.INJECT1_1 = "NO";
    FD1P3DX wait_cnt_1918__i0 (.D(n92[0]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i0.GSR = "ENABLED";
    FD1P3DX reg_index_1919__i0 (.D(n37[0]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_218 (.A(final_cnt[19]), .B(final_cnt[11]), .Z(n16071)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_2_lut_adj_218.init = 16'heeee;
    LUT4 mux_32_i1_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[8]), 
         .D(addr[0]), .Z(addr_15__N_669[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_219 (.A(n13857), .B(addr_15__N_669[13]), .C(n4312[2]), 
         .D(n4312[5]), .Z(addr_15__N_455[13])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_219.init = 16'hfefa;
    LUT4 i1_4_lut_adj_220 (.A(n13853), .B(addr_15__N_669[12]), .C(n4312[2]), 
         .D(n4312[5]), .Z(addr_15__N_455[12])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_220.init = 16'hfefa;
    LUT4 i1_4_lut_adj_221 (.A(n16503), .B(reg_index[2]), .C(n16049), .D(reg_index[6]), 
         .Z(n15)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_221.init = 16'hfff7;
    LUT4 i1_4_lut_adj_222 (.A(n2), .B(addr_15__N_669[11]), .C(n15151), 
         .D(n4312[5]), .Z(addr_15__N_455[11])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_222.init = 16'hfefa;
    LUT4 select_525_Select_11_i2_3_lut (.A(addr[11]), .B(n4312[1]), .C(n51), 
         .Z(n2)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam select_525_Select_11_i2_3_lut.init = 16'h8c8c;
    LUT4 i1_3_lut (.A(addr[11]), .B(n4312[0]), .C(sys_clk_c_enable_28), 
         .Z(n15151)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_3_lut.init = 16'hcece;
    LUT4 i1_4_lut_adj_223 (.A(addr_15__N_669[10]), .B(addr[10]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[10])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_223.init = 16'heca0;
    LUT4 i13291_4_lut (.A(reg_index[5]), .B(reg_index[3]), .C(reg_index[7]), 
         .D(reg_index[1]), .Z(n16503)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13291_4_lut.init = 16'h8000;
    LUT4 mux_32_i14_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[21]), 
         .D(addr[13]), .Z(addr_15__N_669[13])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i14_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_4_lut_adj_224 (.A(n2_adj_1635), .B(addr_15__N_669[9]), .C(n15147), 
         .D(n4312[5]), .Z(addr_15__N_455[9])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_224.init = 16'hfefa;
    LUT4 select_525_Select_9_i2_3_lut (.A(addr[9]), .B(n4312[1]), .C(n51), 
         .Z(n2_adj_1635)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam select_525_Select_9_i2_3_lut.init = 16'h8c8c;
    LUT4 i1_3_lut_adj_225 (.A(addr[9]), .B(n4312[0]), .C(sys_clk_c_enable_28), 
         .Z(n15147)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_3_lut_adj_225.init = 16'hcece;
    LUT4 reduce_or_259_i1_2_lut_rep_388 (.A(n4312[0]), .B(n4312[2]), .Z(n17792)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam reduce_or_259_i1_2_lut_rep_388.init = 16'heeee;
    LUT4 i1_2_lut_adj_226 (.A(reg_index[4]), .B(reg_index[0]), .Z(n16049)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_226.init = 16'heeee;
    LUT4 i1_4_lut_adj_227 (.A(addr_15__N_669[8]), .B(addr[8]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[8])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_227.init = 16'heca0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n4312[0]), .B(n4312[2]), .C(n4312[1]), 
         .D(n51), .Z(n13510)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'heefe;
    LUT4 i1_4_lut_adj_228 (.A(addr_15__N_669[7]), .B(addr[7]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_228.init = 16'heca0;
    LUT4 i1_2_lut_rep_348_3_lut (.A(n4312[0]), .B(n4312[2]), .C(n4312[1]), 
         .Z(sys_clk_c_enable_91)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_rep_348_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_229 (.A(addr_15__N_669[6]), .B(addr[6]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_229.init = 16'heca0;
    LUT4 i1_2_lut_rep_347_3_lut_4_lut (.A(n4312[0]), .B(n4312[2]), .C(flag_done_d2), 
         .D(flag_done), .Z(n17751)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_rep_347_3_lut_4_lut.init = 16'he0ee;
    LUT4 i1_4_lut_adj_230 (.A(addr_15__N_669[5]), .B(addr[5]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_230.init = 16'heca0;
    LUT4 select_532_Select_1_i4_3_lut_4_lut_4_lut (.A(n4312[0]), .B(n4312[2]), 
         .C(\rd_byte_num[1] ), .D(n4312[1]), .Z(rd_byte_num_3__N_481[1])) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam select_532_Select_1_i4_3_lut_4_lut_4_lut.init = 16'hccdc;
    LUT4 i1_4_lut_adj_231 (.A(addr_15__N_669[4]), .B(addr[4]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_231.init = 16'heca0;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n4312[0]), .B(n4312[2]), .C(\rd_byte_num[0] ), 
         .D(n4312[1]), .Z(rd_byte_num_3__N_481[0])) /* synthesis lut_function=(A+(B (D)+!B (C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hffba;
    LUT4 i1_4_lut_adj_232 (.A(n13891), .B(addr_15__N_669[3]), .C(n4312[2]), 
         .D(n4312[5]), .Z(addr_15__N_455[3])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_232.init = 16'hfefa;
    LUT4 i1_2_lut_3_lut (.A(n4312[0]), .B(n4312[2]), .C(n4312[4]), .Z(n13508)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_233 (.A(addr_15__N_669[2]), .B(addr[2]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_233.init = 16'heca0;
    LUT4 i1_4_lut_adj_234 (.A(n13867), .B(addr_15__N_669[1]), .C(n4312[2]), 
         .D(n4312[5]), .Z(addr_15__N_455[1])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_234.init = 16'hfefa;
    LUT4 mux_32_i13_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[20]), 
         .D(addr[12]), .Z(addr_15__N_669[12])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i13_3_lut_4_lut.init = 16'hf2d0;
    FD1P3DX cfg_done_127 (.D(VCC_net), .SP(sys_clk_c_enable_26), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(led_c_1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam cfg_done_127.GSR = "ENABLED";
    LUT4 mux_32_i12_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[19]), 
         .D(addr[11]), .Z(addr_15__N_669[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i12_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i11_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[18]), 
         .D(addr[10]), .Z(addr_15__N_669[10])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i11_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i10_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[17]), 
         .D(addr[9]), .Z(addr_15__N_669[9])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i10_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i9_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[16]), 
         .D(addr[8]), .Z(addr_15__N_669[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i9_3_lut_4_lut.init = 16'hf2d0;
    LUT4 select_1487_Select_0_i2_2_lut_rep_321 (.A(n51), .B(n4312[1]), .Z(n17725)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam select_1487_Select_0_i2_2_lut_rep_321.init = 16'h4444;
    LUT4 mux_32_i8_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[15]), 
         .D(addr[7]), .Z(addr_15__N_669[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i8_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i7_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[14]), 
         .D(addr[6]), .Z(addr_15__N_669[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2457_3_lut_4_lut (.A(n51), .B(n4312[1]), .C(n4312[0]), .D(n17772), 
         .Z(n5466)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i2457_3_lut_4_lut.init = 16'h44f4;
    LUT4 mux_32_i6_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[13]), 
         .D(addr[5]), .Z(addr_15__N_669[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i5_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[12]), 
         .D(addr[4]), .Z(addr_15__N_669[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i5_3_lut_4_lut.init = 16'hf2d0;
    FD1P3DX ctrl_w0_r1_122 (.D(n13510), .SP(sys_clk_c_enable_28), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(ctrl_w0_r1)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam ctrl_w0_r1_122.GSR = "ENABLED";
    LUT4 mux_32_i4_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[11]), 
         .D(addr[3]), .Z(addr_15__N_669[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 mux_32_i3_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[10]), 
         .D(addr[2]), .Z(addr_15__N_669[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10709_2_lut_3_lut_4_lut (.A(n4312[1]), .B(n51), .C(addr[13]), 
         .D(sys_clk_c_enable_28), .Z(n13857)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i10709_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 select_716_Select_19_i1_2_lut (.A(n349[19]), .B(n4312[3]), .Z(n1_adj_1636)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_19_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_18_i1_2_lut (.A(n349[18]), .B(n4312[3]), .Z(n1_adj_1637)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_18_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_17_i1_2_lut (.A(n349[17]), .B(n4312[3]), .Z(n1_adj_1638)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_17_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_16_i1_2_lut (.A(n349[16]), .B(n4312[3]), .Z(n1_adj_1639)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_16_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_15_i1_2_lut (.A(n349[15]), .B(n4312[3]), .Z(n1_adj_1640)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_15_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_14_i1_2_lut (.A(n349[14]), .B(n4312[3]), .Z(n1_adj_1641)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_14_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_13_i1_2_lut (.A(n349[13]), .B(n4312[3]), .Z(n1_adj_1642)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_13_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_12_i1_2_lut (.A(n349[12]), .B(n4312[3]), .Z(n1_adj_1643)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_12_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_11_i1_2_lut (.A(n349[11]), .B(n4312[3]), .Z(n1_adj_1644)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_11_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_10_i1_2_lut (.A(n349[10]), .B(n4312[3]), .Z(n1_adj_1645)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_10_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_9_i1_2_lut (.A(n349[9]), .B(n4312[3]), .Z(n1_adj_1646)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_9_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_8_i1_2_lut (.A(n349[8]), .B(n4312[3]), .Z(n1_adj_1647)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_8_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_7_i1_2_lut (.A(n349[7]), .B(n4312[3]), .Z(n1_adj_1648)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_7_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_6_i1_2_lut (.A(n349[6]), .B(n4312[3]), .Z(n1_adj_1649)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_6_i1_2_lut.init = 16'h8888;
    LUT4 mux_32_i2_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[9]), 
         .D(addr[1]), .Z(addr_15__N_669[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 select_716_Select_5_i1_2_lut (.A(n349[5]), .B(n4312[3]), .Z(n1_adj_1650)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_5_i1_2_lut.init = 16'h8888;
    FD1P3DX reg_index_1919__i7 (.D(n37[7]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i7.GSR = "ENABLED";
    LUT4 select_716_Select_4_i1_2_lut (.A(n349[4]), .B(n4312[3]), .Z(n1_adj_1651)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_4_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_3_i1_2_lut (.A(n349[3]), .B(n4312[3]), .Z(n1_adj_1652)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_3_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_2_i1_2_lut (.A(n349[2]), .B(n4312[3]), .Z(n1_adj_1653)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_2_i1_2_lut.init = 16'h8888;
    LUT4 select_716_Select_1_i1_2_lut (.A(n349[1]), .B(n4312[3]), .Z(n1_adj_1654)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_1_i1_2_lut.init = 16'h8888;
    LUT4 flag_done_I_0_2_lut_rep_368 (.A(flag_done), .B(flag_done_d2), .Z(n17772)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam flag_done_I_0_2_lut_rep_368.init = 16'h2222;
    LUT4 i259_2_lut_3_lut (.A(flag_done), .B(flag_done_d2), .C(n4312[0]), 
         .Z(sys_clk_c_enable_66)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i259_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_311_3_lut (.A(n4312[1]), .B(n51), .C(sys_clk_c_enable_28), 
         .Z(n17715)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_rep_311_3_lut.init = 16'h8f8f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[21]), .D(n17792), .Z(n13420)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'hd000;
    LUT4 i2455_3_lut_4_lut (.A(n4312[1]), .B(n51), .C(n17792), .D(n17772), 
         .Z(n5464)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;
    defparam i2455_3_lut_4_lut.init = 16'hf888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_236 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[25]), .D(n17792), .Z(n13426)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_236.init = 16'hd000;
    LUT4 i10705_2_lut_3_lut_4_lut (.A(n4312[1]), .B(n51), .C(addr[12]), 
         .D(sys_clk_c_enable_28), .Z(n13853)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i10705_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_237 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[22]), .D(n17792), .Z(n13421)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_237.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_238 (.A(flag_done), .B(flag_done_d2), 
         .C(n15), .D(n4312[4]), .Z(sys_clk_c_enable_37)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_238.init = 16'h2000;
    LUT4 i10742_2_lut_3_lut_4_lut (.A(n4312[1]), .B(n51), .C(addr[3]), 
         .D(sys_clk_c_enable_28), .Z(n13891)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i10742_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i10719_2_lut_3_lut_4_lut (.A(n4312[1]), .B(n51), .C(addr[1]), 
         .D(sys_clk_c_enable_28), .Z(n13867)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i10719_2_lut_3_lut_4_lut.init = 16'h80f0;
    LUT4 i6030_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[0]), .Z(n92[0])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6030_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_239 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[0]), .D(n17792), .Z(n13419)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_239.init = 16'hd000;
    LUT4 i2453_3_lut_4_lut (.A(flag_done), .B(flag_done_d2), .C(sys_clk_c_enable_26), 
         .D(n4312[2]), .Z(n5462)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i2453_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i6578_2_lut_rep_314_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(start_N_824), .Z(n17718)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6578_2_lut_rep_314_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_338_3_lut (.A(flag_done), .B(flag_done_d2), .C(n4312[4]), 
         .Z(n17742)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_rep_338_3_lut.init = 16'h2020;
    FD1P3DX reg_index_1919__i6 (.D(n37[6]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i6.GSR = "ENABLED";
    FD1P3DX reg_index_1919__i5 (.D(n37[5]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i5.GSR = "ENABLED";
    FD1P3DX reg_index_1919__i4 (.D(n37[4]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i4.GSR = "ENABLED";
    FD1P3DX reg_index_1919__i3 (.D(n37[3]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i3.GSR = "ENABLED";
    LUT4 i6295_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[3]), .Z(n92[3])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6295_2_lut_4_lut.init = 16'hca00;
    FD1P3DX reg_index_1919__i2 (.D(n37[2]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i2.GSR = "ENABLED";
    FD1P3DX reg_index_1919__i1 (.D(n37[1]), .SP(sys_clk_c_enable_37), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(reg_index[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919__i1.GSR = "ENABLED";
    LUT4 i6296_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[2]), .Z(n92[2])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6296_2_lut_4_lut.init = 16'hca00;
    LUT4 i6251_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[16]), .Z(n92[16])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6251_2_lut_4_lut.init = 16'hca00;
    LUT4 i6252_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[15]), .Z(n92[15])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6252_2_lut_4_lut.init = 16'hca00;
    LUT4 i6253_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[14]), .Z(n92[14])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6253_2_lut_4_lut.init = 16'hca00;
    LUT4 i6254_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[13]), .Z(n92[13])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6254_2_lut_4_lut.init = 16'hca00;
    LUT4 i6261_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[12]), .Z(n92[12])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6261_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_240 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[20]), .D(n17792), .Z(n13437)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_240.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_241 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[12]), .D(n17792), .Z(n13430)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_241.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_242 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[5]), .D(n17792), .Z(n13435)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_242.init = 16'hd000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_243 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[4]), .D(n17792), .Z(n13439)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_243.init = 16'hd000;
    FD1P3DX frame_count_valid_131 (.D(VCC_net), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_count_valid)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count_valid_131.GSR = "ENABLED";
    LUT4 i6268_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[11]), .Z(n92[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6268_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_244 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[1]), .D(n17792), .Z(n13424)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_244.init = 16'hd000;
    LUT4 i6269_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[10]), .Z(n92[10])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6269_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(flag_done), .B(flag_done_d2), 
         .C(frame_wait_cnt[23]), .D(n17792), .Z(n13417)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(34[30:56])
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'hd000;
    FD1P3DX wait_cnt_1918__i16 (.D(n92[16]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i16.GSR = "ENABLED";
    LUT4 i6270_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[9]), .Z(n92[9])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6270_2_lut_4_lut.init = 16'hca00;
    FD1P3DX wait_cnt_1918__i15 (.D(n92[15]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i15.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i14 (.D(n92[14]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i14.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i13 (.D(n92[13]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i13.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i12 (.D(n92[12]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i12.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i11 (.D(n92[11]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i11.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i10 (.D(n92[10]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i10.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i9 (.D(n92[9]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i9.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i8 (.D(n92[8]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i8.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i7 (.D(n92[7]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i7.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i6 (.D(n92[6]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i6.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i5 (.D(n92[5]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i5.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i4 (.D(n92[4]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i4.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i3 (.D(n92[3]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i3.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i2 (.D(n92[2]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i2.GSR = "ENABLED";
    FD1P3DX wait_cnt_1918__i1 (.D(n92[1]), .SP(sys_clk_c_enable_55), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(wait_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918__i1.GSR = "ENABLED";
    FD1S3BX state_FSM_i6 (.D(n5451), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(n4312[6]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3DX state_FSM_i5 (.D(n14279), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[5]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3DX state_FSM_i4 (.D(n5458), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[4]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3DX state_FSM_i3 (.D(n5460), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[3]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3DX state_FSM_i2 (.D(n5462), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[2]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3DX state_FSM_i1 (.D(n5464), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(n4312[1]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i6286_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[8]), .Z(n92[8])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6286_2_lut_4_lut.init = 16'hca00;
    FD1S3BX rd_byte_num_i1 (.D(rd_byte_num_3__N_481[1]), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(\rd_byte_num[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam rd_byte_num_i1.GSR = "ENABLED";
    FD1P3DX frame_count__i8 (.D(data_read[7]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i8.GSR = "ENABLED";
    FD1P3DX frame_count__i7 (.D(data_read[6]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i7.GSR = "ENABLED";
    FD1P3DX frame_count__i6 (.D(data_read[5]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i6.GSR = "ENABLED";
    FD1P3DX frame_count__i5 (.D(data_read[4]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i5.GSR = "ENABLED";
    FD1P3DX frame_count__i4 (.D(data_read[3]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i4.GSR = "ENABLED";
    FD1P3DX frame_count__i3 (.D(data_read[2]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i3.GSR = "ENABLED";
    FD1P3DX frame_count__i2 (.D(data_read[1]), .SP(sys_clk_c_enable_66), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(\frame_count[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_count__i2.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i25 (.D(n6526), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[25])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i25.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i24 (.D(n6568), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[24])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i24.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i23 (.D(n6565), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[23])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i23.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i22 (.D(n6562), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[22])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i22.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i21 (.D(n6559), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[21])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i21.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i20 (.D(n6571), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[20])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i20.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i19 (.D(n6553), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i19.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i18 (.D(n6550), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i18.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i17 (.D(n6547), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i17.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i16 (.D(n6538), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i16.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i15 (.D(n6535), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i15.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i14 (.D(n6589), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i14.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i13 (.D(n6598), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i13.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i12 (.D(n6601), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i12.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i11 (.D(n6604), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i11.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i10 (.D(n6607), .SP(sys_clk_c_enable_91), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i10.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i9 (.D(n6595), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i9.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i8 (.D(n6592), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i8.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i7 (.D(n6586), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i7.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i6 (.D(n6583), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i6.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i5 (.D(n6580), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i5.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i4 (.D(n6574), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i4.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i3 (.D(n6541), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i3.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i2 (.D(n6577), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i2.GSR = "ENABLED";
    FD1P3DX frame_wait_cnt_i0_i1 (.D(n6544), .SP(sys_clk_c_enable_91), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(frame_wait_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam frame_wait_cnt_i0_i1.GSR = "ENABLED";
    FD1S3DX addr_i15 (.D(addr_15__N_455[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i15.GSR = "ENABLED";
    FD1S3DX addr_i14 (.D(addr_15__N_455[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i14.GSR = "ENABLED";
    FD1S3DX addr_i13 (.D(addr_15__N_455[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i13.GSR = "ENABLED";
    FD1S3DX addr_i12 (.D(addr_15__N_455[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i12.GSR = "ENABLED";
    FD1S3DX addr_i11 (.D(addr_15__N_455[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i11.GSR = "ENABLED";
    FD1S3DX addr_i10 (.D(addr_15__N_455[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i10.GSR = "ENABLED";
    FD1S3DX addr_i9 (.D(addr_15__N_455[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i9.GSR = "ENABLED";
    FD1S3DX addr_i8 (.D(addr_15__N_455[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i8.GSR = "ENABLED";
    FD1S3DX addr_i7 (.D(addr_15__N_455[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i7.GSR = "ENABLED";
    FD1S3DX addr_i6 (.D(addr_15__N_455[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i6.GSR = "ENABLED";
    FD1S3DX addr_i5 (.D(addr_15__N_455[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i5.GSR = "ENABLED";
    FD1S3DX addr_i4 (.D(addr_15__N_455[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i4.GSR = "ENABLED";
    FD1S3DX addr_i3 (.D(addr_15__N_455[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i3.GSR = "ENABLED";
    FD1S3DX addr_i2 (.D(addr_15__N_455[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i2.GSR = "ENABLED";
    FD1S3DX addr_i1 (.D(addr_15__N_455[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(addr[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam addr_i1.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i19 (.D(n1_adj_1636), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[19])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i19.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i18 (.D(n1_adj_1637), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[18])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i18.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i17 (.D(n1_adj_1638), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[17])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i17.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i16 (.D(n1_adj_1639), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[16])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i16.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i15 (.D(n1_adj_1640), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i15.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i14 (.D(n1_adj_1641), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i14.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i13 (.D(n1_adj_1642), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i13.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i12 (.D(n1_adj_1643), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i12.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i11 (.D(n1_adj_1644), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i11.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i10 (.D(n1_adj_1645), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i10.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i9 (.D(n1_adj_1646), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i9.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i8 (.D(n1_adj_1647), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i8.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i7 (.D(n1_adj_1648), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i7.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i6 (.D(n1_adj_1649), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i6.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i5 (.D(n1_adj_1650), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i5.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i4 (.D(n1_adj_1651), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i4.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i3 (.D(n1_adj_1652), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i3.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i2 (.D(n1_adj_1653), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i2.GSR = "ENABLED";
    FD1P3DX final_cnt_i0_i1 (.D(n1_adj_1654), .SP(sys_clk_c_enable_110), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(final_cnt[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam final_cnt_i0_i1.GSR = "ENABLED";
    LUT4 i6287_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[7]), .Z(n92[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6287_2_lut_4_lut.init = 16'hca00;
    LUT4 i6288_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[6]), .Z(n92[6])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6288_2_lut_4_lut.init = 16'hca00;
    LUT4 i6289_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[5]), .Z(n92[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6289_2_lut_4_lut.init = 16'hca00;
    FD1P3DX data_write__i7 (.D(reg_cfg_23__N_517[7]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i7.GSR = "ENABLED";
    FD1P3DX data_write__i6 (.D(reg_cfg_23__N_517[6]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i6.GSR = "ENABLED";
    FD1P3DX data_write__i5 (.D(reg_cfg_23__N_517[5]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i5.GSR = "ENABLED";
    FD1P3DX data_write__i4 (.D(reg_cfg_23__N_517[4]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i4.GSR = "ENABLED";
    FD1P3DX data_write__i3 (.D(reg_cfg_23__N_517[3]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i3.GSR = "ENABLED";
    FD1P3DX data_write__i2 (.D(reg_cfg_23__N_517[2]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i2.GSR = "ENABLED";
    FD1P3DX data_write__i1 (.D(reg_cfg_23__N_517[1]), .SP(sys_clk_c_enable_117), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(data_write[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam data_write__i1.GSR = "ENABLED";
    LUT4 i6290_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[4]), .Z(n92[4])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6290_2_lut_4_lut.init = 16'hca00;
    LUT4 i6298_2_lut_4_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), 
         .D(n73[1]), .Z(n92[1])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(290[30] 301[28])
    defparam i6298_2_lut_4_lut.init = 16'hca00;
    CCU2C add_58_27 (.A0(frame_wait_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n11914), .S0(n450[25]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_27.INIT0 = 16'haaaa;
    defparam add_58_27.INIT1 = 16'h0000;
    defparam add_58_27.INJECT1_0 = "NO";
    defparam add_58_27.INJECT1_1 = "NO";
    CCU2C add_58_25 (.A0(frame_wait_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11913), .COUT(n11914), .S0(n450[23]), 
          .S1(n450[24]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_25.INIT0 = 16'haaaa;
    defparam add_58_25.INIT1 = 16'haaaa;
    defparam add_58_25.INJECT1_0 = "NO";
    defparam add_58_25.INJECT1_1 = "NO";
    CCU2C add_58_23 (.A0(frame_wait_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11912), .COUT(n11913), .S0(n450[21]), 
          .S1(n450[22]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_23.INIT0 = 16'haaaa;
    defparam add_58_23.INIT1 = 16'haaaa;
    defparam add_58_23.INJECT1_0 = "NO";
    defparam add_58_23.INJECT1_1 = "NO";
    CCU2C add_58_21 (.A0(frame_wait_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11911), .COUT(n11912), .S0(n450[19]), 
          .S1(n450[20]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_21.INIT0 = 16'haaaa;
    defparam add_58_21.INIT1 = 16'haaaa;
    defparam add_58_21.INJECT1_0 = "NO";
    defparam add_58_21.INJECT1_1 = "NO";
    CCU2C add_58_19 (.A0(frame_wait_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11910), .COUT(n11911), .S0(n450[17]), 
          .S1(n450[18]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_19.INIT0 = 16'haaaa;
    defparam add_58_19.INIT1 = 16'haaaa;
    defparam add_58_19.INJECT1_0 = "NO";
    defparam add_58_19.INJECT1_1 = "NO";
    FD1P3DX start_121 (.D(n14659), .SP(sys_clk_c_enable_163), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(start)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=51 */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(259[14] 388[12])
    defparam start_121.GSR = "ENABLED";
    LUT4 i13733_4_lut (.A(reg_index[6]), .B(n15733), .C(n15731), .D(reg_index[4]), 
         .Z(start_N_824)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(271[25:39])
    defparam i13733_4_lut.init = 16'h0001;
    CCU2C add_58_17 (.A0(frame_wait_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11909), .COUT(n11910), .S0(n450[15]), 
          .S1(n450[16]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_17.INIT0 = 16'haaaa;
    defparam add_58_17.INIT1 = 16'haaaa;
    defparam add_58_17.INJECT1_0 = "NO";
    defparam add_58_17.INJECT1_1 = "NO";
    LUT4 i13680_4_lut (.A(n4312[5]), .B(n4312[3]), .C(n15961), .D(n16515), 
         .Z(sys_clk_c_enable_110)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i13680_4_lut.init = 16'heeae;
    LUT4 i1_4_lut_adj_246 (.A(n16413), .B(n15957), .C(n15941), .D(n15939), 
         .Z(n15961)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_246.init = 16'h4000;
    LUT4 i13303_4_lut (.A(final_cnt[19]), .B(final_cnt[11]), .C(final_cnt[9]), 
         .D(final_cnt[10]), .Z(n16515)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13303_4_lut.init = 16'hfffe;
    CCU2C add_58_15 (.A0(frame_wait_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11908), .COUT(n11909), .S0(n450[13]), 
          .S1(n450[14]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_15.INIT0 = 16'haaaa;
    defparam add_58_15.INIT1 = 16'haaaa;
    defparam add_58_15.INJECT1_0 = "NO";
    defparam add_58_15.INJECT1_1 = "NO";
    LUT4 i13202_2_lut (.A(final_cnt[7]), .B(final_cnt[12]), .Z(n16413)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13202_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_247 (.A(n16229), .B(final_cnt[5]), .C(n15927), .D(final_cnt[16]), 
         .Z(n15957)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_247.init = 16'h1000;
    LUT4 i1_4_lut_adj_248 (.A(final_cnt[18]), .B(final_cnt[0]), .C(final_cnt[1]), 
         .D(final_cnt[13]), .Z(n15941)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_248.init = 16'h8000;
    LUT4 i1_4_lut_adj_249 (.A(final_cnt[3]), .B(final_cnt[4]), .C(final_cnt[2]), 
         .D(final_cnt[8]), .Z(n15939)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_249.init = 16'h8000;
    CCU2C add_58_13 (.A0(frame_wait_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11907), .COUT(n11908), .S0(n450[11]), 
          .S1(n450[12]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_13.INIT0 = 16'haaaa;
    defparam add_58_13.INIT1 = 16'haaaa;
    defparam add_58_13.INJECT1_0 = "NO";
    defparam add_58_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_250 (.A(final_cnt[15]), .B(final_cnt[17]), .Z(n15927)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_250.init = 16'h8888;
    CCU2C add_58_11 (.A0(frame_wait_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11906), .COUT(n11907), .S0(n450[9]), .S1(n450[10]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_11.INIT0 = 16'haaaa;
    defparam add_58_11.INIT1 = 16'haaaa;
    defparam add_58_11.INJECT1_0 = "NO";
    defparam add_58_11.INJECT1_1 = "NO";
    LUT4 select_716_Select_0_i1_2_lut (.A(n349[0]), .B(n4312[3]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;
    defparam select_716_Select_0_i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_251 (.A(final_cnt[6]), .B(final_cnt[14]), .Z(n16229)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_2_lut_adj_251.init = 16'heeee;
    CCU2C add_58_9 (.A0(frame_wait_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11905), .COUT(n11906), .S0(n450[7]), .S1(n450[8]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_9.INIT0 = 16'haaaa;
    defparam add_58_9.INIT1 = 16'haaaa;
    defparam add_58_9.INJECT1_0 = "NO";
    defparam add_58_9.INJECT1_1 = "NO";
    CCU2C add_58_7 (.A0(frame_wait_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11904), .COUT(n11905), .S0(n450[5]), .S1(n450[6]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_7.INIT0 = 16'haaaa;
    defparam add_58_7.INIT1 = 16'haaaa;
    defparam add_58_7.INJECT1_0 = "NO";
    defparam add_58_7.INJECT1_1 = "NO";
    CCU2C add_58_5 (.A0(frame_wait_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11903), .COUT(n11904), .S0(n450[3]), .S1(n450[4]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_5.INIT0 = 16'haaaa;
    defparam add_58_5.INIT1 = 16'haaaa;
    defparam add_58_5.INJECT1_0 = "NO";
    defparam add_58_5.INJECT1_1 = "NO";
    CCU2C add_58_3 (.A0(frame_wait_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(frame_wait_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11902), .COUT(n11903), .S0(n450[1]), .S1(n450[2]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_3.INIT0 = 16'haaaa;
    defparam add_58_3.INIT1 = 16'haaaa;
    defparam add_58_3.INJECT1_0 = "NO";
    defparam add_58_3.INJECT1_1 = "NO";
    CCU2C add_58_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(frame_wait_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11902), .S1(n450[0]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(365[43:64])
    defparam add_58_1.INIT0 = 16'h0000;
    defparam add_58_1.INIT1 = 16'h555a;
    defparam add_58_1.INJECT1_0 = "NO";
    defparam add_58_1.INJECT1_1 = "NO";
    CCU2C add_48_21 (.A0(final_cnt[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n11901), 
          .S0(n349[19]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_21.INIT0 = 16'haaaa;
    defparam add_48_21.INIT1 = 16'h0000;
    defparam add_48_21.INJECT1_0 = "NO";
    defparam add_48_21.INJECT1_1 = "NO";
    CCU2C reg_index_1919_add_4_9 (.A0(reg_index[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n11956), .S0(n37[7]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919_add_4_9.INIT0 = 16'haaa0;
    defparam reg_index_1919_add_4_9.INIT1 = 16'h0000;
    defparam reg_index_1919_add_4_9.INJECT1_0 = "NO";
    defparam reg_index_1919_add_4_9.INJECT1_1 = "NO";
    CCU2C add_48_19 (.A0(final_cnt[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11900), .COUT(n11901), .S0(n349[17]), .S1(n349[18]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_19.INIT0 = 16'haaaa;
    defparam add_48_19.INIT1 = 16'haaaa;
    defparam add_48_19.INJECT1_0 = "NO";
    defparam add_48_19.INJECT1_1 = "NO";
    CCU2C reg_index_1919_add_4_7 (.A0(reg_index[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11955), .COUT(n11956), .S0(n37[5]), .S1(n37[6]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919_add_4_7.INIT0 = 16'haaa0;
    defparam reg_index_1919_add_4_7.INIT1 = 16'haaa0;
    defparam reg_index_1919_add_4_7.INJECT1_0 = "NO";
    defparam reg_index_1919_add_4_7.INJECT1_1 = "NO";
    LUT4 i13669_2_lut (.A(n4312[6]), .B(n4312[3]), .Z(sys_clk_c_enable_163)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13669_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_252 (.A(n17725), .B(sys_clk_c_enable_117), .C(n17772), 
         .D(n13508), .Z(n14659)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_252.init = 16'hefee;
    CCU2C reg_index_1919_add_4_5 (.A0(reg_index[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11954), .COUT(n11955), .S0(n37[3]), .S1(n37[4]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919_add_4_5.INIT0 = 16'haaa0;
    defparam reg_index_1919_add_4_5.INIT1 = 16'haaa0;
    defparam reg_index_1919_add_4_5.INJECT1_0 = "NO";
    defparam reg_index_1919_add_4_5.INJECT1_1 = "NO";
    CCU2C reg_index_1919_add_4_3 (.A0(reg_index[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reg_index[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11953), .COUT(n11954), .S0(n37[1]), .S1(n37[2]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919_add_4_3.INIT0 = 16'haaa0;
    defparam reg_index_1919_add_4_3.INIT1 = 16'haaa0;
    defparam reg_index_1919_add_4_3.INJECT1_0 = "NO";
    defparam reg_index_1919_add_4_3.INJECT1_1 = "NO";
    CCU2C reg_index_1919_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(reg_index[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n11953), .S1(n37[0]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(313[44:60])
    defparam reg_index_1919_add_4_1.INIT0 = 16'h0000;
    defparam reg_index_1919_add_4_1.INIT1 = 16'h555f;
    defparam reg_index_1919_add_4_1.INJECT1_0 = "NO";
    defparam reg_index_1919_add_4_1.INJECT1_1 = "NO";
    CCU2C wait_cnt_1918_add_4_17 (.A0(wait_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11951), .S0(n73[15]), .S1(n73[16]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_17.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_17.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_17.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_17.INJECT1_1 = "NO";
    CCU2C add_48_17 (.A0(final_cnt[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11899), .COUT(n11900), .S0(n349[15]), .S1(n349[16]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_17.INIT0 = 16'haaaa;
    defparam add_48_17.INIT1 = 16'haaaa;
    defparam add_48_17.INJECT1_0 = "NO";
    defparam add_48_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_253 (.A(reg_index[3]), .B(reg_index[0]), .C(reg_index[5]), 
         .D(reg_index[1]), .Z(n15733)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(308[29:54])
    defparam i1_4_lut_adj_253.init = 16'hfffe;
    LUT4 i1_2_lut_adj_254 (.A(reg_index[2]), .B(reg_index[7]), .Z(n15731)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(308[29:54])
    defparam i1_2_lut_adj_254.init = 16'heeee;
    LUT4 i1_4_lut_adj_255 (.A(n16493), .B(n15339), .C(n16337), .D(n7), 
         .Z(n33)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_4_lut_adj_255.init = 16'hffdf;
    LUT4 i13281_4_lut (.A(n7_adj_1656), .B(wait_cnt[2]), .C(wait_cnt[7]), 
         .D(wait_cnt[1]), .Z(n16493)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13281_4_lut.init = 16'h8000;
    CCU2C wait_cnt_1918_add_4_15 (.A0(wait_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11950), .COUT(n11951), .S0(n73[13]), .S1(n73[14]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_15.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_15.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_15.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_256 (.A(wait_cnt[11]), .B(n15337), .C(n15329), .D(wait_cnt[13]), 
         .Z(n15339)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_4_lut_adj_256.init = 16'hfffe;
    LUT4 i13126_2_lut (.A(wait_cnt[12]), .B(wait_cnt[8]), .Z(n16337)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13126_2_lut.init = 16'h8888;
    CCU2C add_48_15 (.A0(final_cnt[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11898), .COUT(n11899), .S0(n349[13]), .S1(n349[14]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_15.INIT0 = 16'haaaa;
    defparam add_48_15.INIT1 = 16'haaaa;
    defparam add_48_15.INJECT1_0 = "NO";
    defparam add_48_15.INJECT1_1 = "NO";
    CCU2C add_48_13 (.A0(final_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11897), .COUT(n11898), .S0(n349[11]), .S1(n349[12]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_13.INIT0 = 16'haaaa;
    defparam add_48_13.INIT1 = 16'haaaa;
    defparam add_48_13.INJECT1_0 = "NO";
    defparam add_48_13.INJECT1_1 = "NO";
    CCU2C wait_cnt_1918_add_4_13 (.A0(wait_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11949), .COUT(n11950), .S0(n73[11]), .S1(n73[12]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_13.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_13.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_13.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_13.INJECT1_1 = "NO";
    CCU2C add_48_11 (.A0(final_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11896), .COUT(n11897), .S0(n349[9]), .S1(n349[10]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_11.INIT0 = 16'haaaa;
    defparam add_48_11.INIT1 = 16'haaaa;
    defparam add_48_11.INJECT1_0 = "NO";
    defparam add_48_11.INJECT1_1 = "NO";
    CCU2C wait_cnt_1918_add_4_11 (.A0(wait_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11948), .COUT(n11949), .S0(n73[9]), .S1(n73[10]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_11.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_11.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_11.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_11.INJECT1_1 = "NO";
    CCU2C wait_cnt_1918_add_4_9 (.A0(wait_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11947), .COUT(n11948), .S0(n73[7]), .S1(n73[8]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_9.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_9.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_9.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_257 (.A(wait_cnt[10]), .B(wait_cnt[16]), .C(wait_cnt[4]), 
         .D(wait_cnt[6]), .Z(n15337)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_4_lut_adj_257.init = 16'hfffe;
    LUT4 i1_2_lut_adj_258 (.A(wait_cnt[3]), .B(wait_cnt[15]), .Z(n15329)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_2_lut_adj_258.init = 16'heeee;
    LUT4 i1_4_lut_adj_259 (.A(n15177), .B(n15167), .C(n7_adj_1656), .D(n15165), 
         .Z(n33_adj_1655)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_259.init = 16'hffef;
    CCU2C wait_cnt_1918_add_4_7 (.A0(wait_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11946), .COUT(n11947), .S0(n73[5]), .S1(n73[6]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_7.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_7.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_7.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_7.INJECT1_1 = "NO";
    CCU2C wait_cnt_1918_add_4_5 (.A0(wait_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11945), .COUT(n11946), .S0(n73[3]), .S1(n73[4]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_5.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_5.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_5.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_5.INJECT1_1 = "NO";
    CCU2C add_48_9 (.A0(final_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(final_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11895), .COUT(n11896), .S0(n349[7]), .S1(n349[8]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(328[38:54])
    defparam add_48_9.INIT0 = 16'haaaa;
    defparam add_48_9.INIT1 = 16'haaaa;
    defparam add_48_9.INJECT1_0 = "NO";
    defparam add_48_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_260 (.A(addr_15__N_669[0]), .B(addr[0]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_260.init = 16'heca0;
    LUT4 i1_4_lut_adj_261 (.A(wait_cnt[10]), .B(wait_cnt[15]), .C(wait_cnt[4]), 
         .D(n15171), .Z(n15177)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_261.init = 16'hff7f;
    CCU2C wait_cnt_1918_add_4_3 (.A0(wait_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wait_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11944), .COUT(n11945), .S0(n73[1]), .S1(n73[2]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_3.INIT0 = 16'haaa0;
    defparam wait_cnt_1918_add_4_3.INIT1 = 16'haaa0;
    defparam wait_cnt_1918_add_4_3.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_3.INJECT1_1 = "NO";
    LUT4 i13728_3_lut (.A(n4312[4]), .B(n4312[3]), .C(n4312[6]), .Z(sys_clk_c_enable_28)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i13728_3_lut.init = 16'h0101;
    CCU2C wait_cnt_1918_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wait_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n11944), .S1(n73[0]));   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(299[45:60])
    defparam wait_cnt_1918_add_4_1.INIT0 = 16'h0000;
    defparam wait_cnt_1918_add_4_1.INIT1 = 16'h555f;
    defparam wait_cnt_1918_add_4_1.INJECT1_0 = "NO";
    defparam wait_cnt_1918_add_4_1.INJECT1_1 = "NO";
    LUT4 i18_4_lut (.A(n14419), .B(n16497), .C(n15589), .D(n16499), 
         .Z(n51)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i18_4_lut.init = 16'hf7ff;
    LUT4 i2443_2_lut (.A(n4312[6]), .B(cam_ready), .Z(n5451)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i2443_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_262 (.A(frame_wait_cnt[0]), .B(n15611), .C(n15609), 
         .D(frame_wait_cnt[23]), .Z(n14419)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_262.init = 16'h8000;
    LUT4 i13285_4_lut (.A(frame_wait_cnt[19]), .B(frame_wait_cnt[17]), .C(frame_wait_cnt[3]), 
         .D(frame_wait_cnt[14]), .Z(n16497)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13285_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_263 (.A(sys_clk_c_enable_37), .B(sys_clk_c_enable_55), 
         .C(n2084), .D(n17726), .Z(n14279)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_263.init = 16'hfefa;
    LUT4 i1_4_lut_adj_264 (.A(n7), .B(wait_cnt[7]), .C(wait_cnt[1]), .D(wait_cnt[3]), 
         .Z(n15167)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_4_lut_adj_264.init = 16'hbfff;
    LUT4 i1_4_lut_adj_265 (.A(n16345), .B(n15567), .C(n15575), .D(n15569), 
         .Z(n15589)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_265.init = 16'hfffd;
    LUT4 i1_4_lut_adj_266 (.A(n17788), .B(n13871), .C(n13873), .D(n16079), 
         .Z(n14465)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(323[25:49])
    defparam i1_4_lut_adj_266.init = 16'hff7f;
    LUT4 i2451_4_lut (.A(n4312[3]), .B(n15), .C(n14465), .D(n17742), 
         .Z(n5460)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i2451_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_267 (.A(wait_cnt[16]), .B(wait_cnt[2]), .C(n15155), 
         .D(wait_cnt[13]), .Z(n15165)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_4_lut_adj_267.init = 16'hfff7;
    LUT4 i243_2_lut (.A(cam_ready), .B(n4312[6]), .Z(n2084)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i243_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_268 (.A(wait_cnt[8]), .B(wait_cnt[12]), .Z(n15171)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_268.init = 16'heeee;
    LUT4 i1_2_lut_adj_269 (.A(wait_cnt[11]), .B(wait_cnt[6]), .Z(n15155)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i1_2_lut_adj_269.init = 16'heeee;
    LUT4 i13287_4_lut (.A(frame_wait_cnt[13]), .B(frame_wait_cnt[2]), .C(frame_wait_cnt[6]), 
         .D(frame_wait_cnt[15]), .Z(n16499)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13287_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_270 (.A(frame_wait_cnt[22]), .B(frame_wait_cnt[4]), 
         .C(frame_wait_cnt[12]), .D(frame_wait_cnt[20]), .Z(n15611)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_270.init = 16'h8000;
    LUT4 i2_2_lut (.A(wait_cnt[14]), .B(wait_cnt[5]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(291[33:56])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_271 (.A(frame_wait_cnt[25]), .B(frame_wait_cnt[5]), 
         .Z(n15609)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_271.init = 16'h8888;
    LUT4 i13134_2_lut (.A(frame_wait_cnt[1]), .B(frame_wait_cnt[21]), .Z(n16345)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13134_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_272 (.A(frame_wait_cnt[18]), .B(frame_wait_cnt[7]), 
         .Z(n15567)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_272.init = 16'heeee;
    LUT4 i1_4_lut_adj_273 (.A(frame_wait_cnt[8]), .B(frame_wait_cnt[11]), 
         .C(frame_wait_cnt[16]), .D(frame_wait_cnt[9]), .Z(n15575)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_273.init = 16'hfffe;
    LUT4 i1_2_lut_adj_274 (.A(frame_wait_cnt[10]), .B(frame_wait_cnt[24]), 
         .Z(n15569)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_274.init = 16'heeee;
    LUT4 i1_4_lut_adj_275 (.A(n450[0]), .B(n13419), .C(n51), .D(n4312[1]), 
         .Z(n6556)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_275.init = 16'heccc;
    LUT4 i2_2_lut_adj_276 (.A(wait_cnt[9]), .B(wait_cnt[0]), .Z(n7_adj_1656)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_276.init = 16'h8888;
    LUT4 i1_4_lut_adj_277 (.A(n450[25]), .B(n13426), .C(n51), .D(n4312[1]), 
         .Z(n6526)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_277.init = 16'heccc;
    LUT4 i13527_3_lut (.A(n33), .B(n33_adj_1655), .C(delay_swrst), .Z(n17726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i13527_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_278 (.A(n15923), .B(frame_wait_cnt[24]), .C(n51), 
         .D(n17751), .Z(n6568)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_278.init = 16'heca0;
    LUT4 i1_2_lut_adj_279 (.A(n450[24]), .B(n4312[1]), .Z(n15923)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_279.init = 16'h8888;
    LUT4 i1_4_lut_adj_280 (.A(n450[23]), .B(n13417), .C(n51), .D(n4312[1]), 
         .Z(n6565)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_280.init = 16'heccc;
    LUT4 i1_4_lut_adj_281 (.A(n450[22]), .B(n13421), .C(n51), .D(n4312[1]), 
         .Z(n6562)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_281.init = 16'heccc;
    LUT4 i1_4_lut_adj_282 (.A(n450[21]), .B(n13420), .C(n51), .D(n4312[1]), 
         .Z(n6559)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_282.init = 16'heccc;
    LUT4 i1_4_lut_adj_283 (.A(n450[20]), .B(n13437), .C(n51), .D(n4312[1]), 
         .Z(n6571)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_283.init = 16'heccc;
    LUT4 i2449_3_lut_4_lut (.A(n17718), .B(n4312[5]), .C(n17772), .D(n4312[4]), 
         .Z(n5458)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i2449_3_lut_4_lut.init = 16'h4f44;
    LUT4 i1_4_lut_adj_284 (.A(n15915), .B(frame_wait_cnt[19]), .C(n51), 
         .D(n17751), .Z(n6553)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_284.init = 16'heca0;
    LUT4 i1_2_lut_adj_285 (.A(n450[19]), .B(n4312[1]), .Z(n15915)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_285.init = 16'h8888;
    LUT4 i1_4_lut_adj_286 (.A(n15909), .B(frame_wait_cnt[18]), .C(n51), 
         .D(n17751), .Z(n6550)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_286.init = 16'heca0;
    LUT4 i1_2_lut_adj_287 (.A(n450[18]), .B(n4312[1]), .Z(n15909)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_287.init = 16'h8888;
    LUT4 i1_4_lut_adj_288 (.A(n15911), .B(frame_wait_cnt[17]), .C(n51), 
         .D(n17751), .Z(n6547)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_288.init = 16'heca0;
    LUT4 i1_2_lut_adj_289 (.A(n450[17]), .B(n4312[1]), .Z(n15911)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_289.init = 16'h8888;
    LUT4 i1_4_lut_adj_290 (.A(n15903), .B(frame_wait_cnt[16]), .C(n51), 
         .D(n17751), .Z(n6538)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_290.init = 16'heca0;
    LUT4 i1_2_lut_adj_291 (.A(n450[16]), .B(n4312[1]), .Z(n15903)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_291.init = 16'h8888;
    LUT4 i1_4_lut_adj_292 (.A(n15905), .B(frame_wait_cnt[15]), .C(n51), 
         .D(n17751), .Z(n6535)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_292.init = 16'heca0;
    LUT4 i1_2_lut_adj_293 (.A(n450[15]), .B(n4312[1]), .Z(n15905)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_293.init = 16'h8888;
    LUT4 i1_4_lut_adj_294 (.A(n15895), .B(frame_wait_cnt[14]), .C(n51), 
         .D(n17751), .Z(n6589)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_294.init = 16'heca0;
    LUT4 i1_2_lut_adj_295 (.A(n450[14]), .B(n4312[1]), .Z(n15895)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_295.init = 16'h8888;
    LUT4 i1_4_lut_adj_296 (.A(n15883), .B(frame_wait_cnt[13]), .C(n51), 
         .D(n17751), .Z(n6598)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_296.init = 16'heca0;
    LUT4 mux_32_i16_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[23]), 
         .D(addr[15]), .Z(addr_15__N_669[15])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i16_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_297 (.A(n450[13]), .B(n4312[1]), .Z(n15883)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_297.init = 16'h8888;
    LUT4 i1_4_lut_adj_298 (.A(n450[12]), .B(n13430), .C(n51), .D(n4312[1]), 
         .Z(n6601)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_298.init = 16'heccc;
    LUT4 i1_4_lut_adj_299 (.A(n15887), .B(frame_wait_cnt[11]), .C(n51), 
         .D(n17751), .Z(n6604)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_299.init = 16'heca0;
    LUT4 mux_32_i15_3_lut_4_lut (.A(n17726), .B(start_N_824), .C(reg_cfg_23__N_517[22]), 
         .D(addr[14]), .Z(addr_15__N_669[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam mux_32_i15_3_lut_4_lut.init = 16'hf2d0;
    LUT4 select_1487_Select_0_i5_2_lut_rep_308_3_lut (.A(n17726), .B(start_N_824), 
         .C(n4312[5]), .Z(sys_clk_c_enable_117)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;
    defparam select_1487_Select_0_i5_2_lut_rep_308_3_lut.init = 16'hd0d0;
    LUT4 i1_2_lut_adj_300 (.A(n450[11]), .B(n4312[1]), .Z(n15887)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_300.init = 16'h8888;
    LUT4 i1_4_lut_adj_301 (.A(n15907), .B(frame_wait_cnt[10]), .C(n51), 
         .D(n17751), .Z(n6607)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_301.init = 16'heca0;
    LUT4 i1_2_lut_adj_302 (.A(n450[10]), .B(n4312[1]), .Z(n15907)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_302.init = 16'h8888;
    LUT4 i1_4_lut_adj_303 (.A(n15901), .B(frame_wait_cnt[9]), .C(n51), 
         .D(n17751), .Z(n6595)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_303.init = 16'heca0;
    LUT4 i1_2_lut_adj_304 (.A(n450[9]), .B(n4312[1]), .Z(n15901)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_304.init = 16'h8888;
    LUT4 i1_2_lut_adj_305 (.A(start_N_824), .B(n4312[5]), .Z(sys_clk_c_enable_55)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_305.init = 16'h4444;
    LUT4 i1_4_lut_adj_306 (.A(n15889), .B(frame_wait_cnt[8]), .C(n51), 
         .D(n17751), .Z(n6592)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_306.init = 16'heca0;
    LUT4 i1_2_lut_adj_307 (.A(n450[8]), .B(n4312[1]), .Z(n15889)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_307.init = 16'h8888;
    LUT4 i1_4_lut_adj_308 (.A(n15875), .B(frame_wait_cnt[7]), .C(n51), 
         .D(n17751), .Z(n6586)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_308.init = 16'heca0;
    LUT4 i1_2_lut_adj_309 (.A(n450[7]), .B(n4312[1]), .Z(n15875)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_309.init = 16'h8888;
    LUT4 i1_4_lut_adj_310 (.A(n15881), .B(frame_wait_cnt[6]), .C(n51), 
         .D(n17751), .Z(n6583)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_310.init = 16'heca0;
    LUT4 i10554_2_lut_rep_384 (.A(final_cnt[18]), .B(final_cnt[8]), .Z(n17788)) /* synthesis lut_function=(A (B)) */ ;
    defparam i10554_2_lut_rep_384.init = 16'h8888;
    LUT4 i1_2_lut_adj_311 (.A(n450[6]), .B(n4312[1]), .Z(n15881)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_311.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_312 (.A(final_cnt[18]), .B(final_cnt[8]), .C(final_cnt[9]), 
         .Z(n16235)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_312.init = 16'h0808;
    LUT4 i1_4_lut_adj_313 (.A(n450[5]), .B(n13435), .C(n51), .D(n4312[1]), 
         .Z(n6580)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_313.init = 16'heccc;
    LUT4 i1_4_lut_adj_314 (.A(n450[4]), .B(n13439), .C(n51), .D(n4312[1]), 
         .Z(n6574)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_314.init = 16'heccc;
    LUT4 i1_4_lut_adj_315 (.A(n15899), .B(frame_wait_cnt[3]), .C(n51), 
         .D(n17751), .Z(n6541)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_315.init = 16'heca0;
    LUT4 i1_2_lut_adj_316 (.A(n450[3]), .B(n4312[1]), .Z(n15899)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_316.init = 16'h8888;
    LUT4 i1_4_lut_adj_317 (.A(n15877), .B(frame_wait_cnt[2]), .C(n51), 
         .D(n17751), .Z(n6577)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_317.init = 16'heca0;
    LUT4 i1_2_lut_adj_318 (.A(n450[2]), .B(n4312[1]), .Z(n15877)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_2_lut_adj_318.init = 16'h8888;
    LUT4 i1_4_lut_adj_319 (.A(n450[1]), .B(n13424), .C(n51), .D(n4312[1]), 
         .Z(n6544)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_319.init = 16'heccc;
    LUT4 i1_4_lut_adj_320 (.A(addr_15__N_669[15]), .B(addr[15]), .C(n4312[5]), 
         .D(n17715), .Z(addr_15__N_455[15])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_320.init = 16'heca0;
    LUT4 i1_4_lut_adj_321 (.A(n2_adj_1657), .B(addr_15__N_669[14]), .C(n15143), 
         .D(n4312[5]), .Z(addr_15__N_455[14])) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_4_lut_adj_321.init = 16'hfefa;
    LUT4 select_525_Select_14_i2_3_lut (.A(addr[14]), .B(n4312[1]), .C(n51), 
         .Z(n2_adj_1657)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam select_525_Select_14_i2_3_lut.init = 16'h8c8c;
    LUT4 i1_3_lut_adj_322 (.A(addr[14]), .B(n4312[0]), .C(sys_clk_c_enable_28), 
         .Z(n15143)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/ov9734_ctrl.v(260[13] 387[20])
    defparam i1_3_lut_adj_322.init = 16'hcece;
    
endmodule
//
// Verilog Description of module \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100) 
//

module \i2c_drive(IIC_CLK=26'b011000011010100000,DIV_FREQ_FACTOR=26'b0111110100)  (sys_clk_c, 
            sys_rst_n_N_472, data_read, n17783, sda_transmit, sda_transmit_en_N_1145, 
            \current_state[2] , n8953, rd_cnt, n17722, \rd_cnt[2] , 
            \current_state[1] , addr, \current_state[4] , GND_net, VCC_net, 
            n4, \current_state[3] , \rd_byte_num[1] , \rd_byte_num[0] , 
            n9643, n17769, n17728, data_write, ctrl_w0_r1, start, 
            n3909, n3966, n92, n17775, n3009, n5, \current_state[8] , 
            n17776, flag_done, drive_clk_enable_22, n2855, n12775, 
            n6323, n8218, i2c_sclk_0_c, i2c_sda_0_out) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output [7:0]data_read;
    output n17783;
    output sda_transmit;
    output sda_transmit_en_N_1145;
    output \current_state[2] ;
    output n8953;
    output [3:0]rd_cnt;
    input n17722;
    output \rd_cnt[2] ;
    output \current_state[1] ;
    input [15:0]addr;
    output \current_state[4] ;
    input GND_net;
    input VCC_net;
    input n4;
    output \current_state[3] ;
    input \rd_byte_num[1] ;
    input \rd_byte_num[0] ;
    output n9643;
    output n17769;
    input n17728;
    input [7:0]data_write;
    input ctrl_w0_r1;
    input start;
    input n3909;
    output n3966;
    output n92;
    output n17775;
    output n3009;
    output n5;
    output \current_state[8] ;
    output n17776;
    output flag_done;
    input drive_clk_enable_22;
    input n2855;
    input n12775;
    output n6323;
    output n8218;
    output i2c_sclk_0_c;
    input i2c_sda_0_out;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    wire drive_clk /* synthesis SET_AS_NETWORK=\u_top_iic/inst_i2c_drive/drive_clk, is_clock=1 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(32[18:27])
    wire [14:0]cnt_div;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(33[18:25])
    
    wire n14244;
    wire [7:0]data_read_temp;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(39[17:31])
    
    wire drive_clk_enable_20, n16657;
    wire [9:0]current_state;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(36[17:30])
    wire [9:0]next_state;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(36[32:42])
    wire [9:0]cnt_scl;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(34[18:25])
    wire [9:0]cnt_scl_9__N_877;
    
    wire n18597, n17746, n16487, drive_clk_enable_18, n17781, n17766, 
        n48, n3007, sda_transmit_en, drive_clk_enable_3;
    wire [0:0]n4010;
    
    wire drive_clk_enable_4;
    wire [0:0]n3967;
    
    wire flag_ack, drive_clk_enable_5, n17587, drive_clk_N_1118, n16261, 
        n14649, n16265, n8, n17787, n17748, n10, n17723, n15501;
    wire [3:0]n1;
    
    wire n15529, n17745, n15491, n17786;
    wire [3:0]rd_cnt_c;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(41[17:23])
    
    wire n13498, n13829, n9539, n17779, n15305, n13984, n15269, 
        n17758, n4778, n62, n17759, n35, n17760, n17799, n17800, 
        n10_adj_1593, n3276, n5_c, n17721, n17762, n20, n14199, 
        n14182, n3706, n12308, n17609;
    wire [9:0]cnt_scl_9__N_983;
    
    wire n19, n11294, n19_adj_1594, n13594, drive_clk_enable_10, n13476, 
        n16401, n13478, n15179, n6939, n15483, n17731, n17764, 
        n15475, n15473, n21, n15787, n12, n17724, n15819, n15451, 
        n15449, n17338, n17336, n17645, n6276, n110, n15441, n17744, 
        n11891, n15467, n15457, n11890, drive_clk_enable_7, n17789, 
        n11889, n17767, n15721, n77, n24, n31_adj_1595, n17803, 
        n17802, n14278, n17777, n15075, n20_adj_1596, n11888, n12718, 
        n14109, n12717, n17410, n13982;
    wire [0:0]n3984;
    
    wire n38, n14628, n14680;
    wire [1:0]n4314;
    
    wire n17733, n80, n3003, n13975, n17793, drive_clk_enable_21, 
        n17794, n3005, n17561;
    wire [9:0]n2818;
    
    wire n16291, n13976, n11887, n11885;
    wire [14:0]n2;
    
    wire n17795, n13, n15707, n11884, n15601, n20_adj_1598, n16612, 
        n16615, n12719, n14180, n17714, n4_adj_1599, n17614, sda_transmit_N_1190, 
        n17337, n17774, n15201, n17552, n22, n15861, n14184, n17780, 
        n22_adj_1600, n14185, n22_adj_1601, n14186, n22_adj_1602, 
        n17562, n22_adj_1603, n14188, n10_adj_1604, n17784, n22_adj_1605, 
        n14183, n55, n30_adj_1606, n22_adj_1607, n17719, n22_adj_1608, 
        n14179, drive_clk_enable_31;
    wire [9:0]n2846;
    wire [0:0]n3630;
    wire [0:0]n3642;
    wire [0:0]n3579;
    wire [0:0]n3591;
    
    wire n16415, n14100, n22_adj_1609, n17390, n14187, n17773, n15195, 
        n22_adj_1610, n14181, n17720, n55_adj_1611, n14263, n6437, 
        n15851, n15741, n6436, n4_adj_1612, n4267, n14239, n14236;
    wire [0:0]n3951;
    
    wire n14164, n3960;
    wire [0:0]n3964;
    
    wire n14241, n14242, n14243, n14238, n14240, n6329, n14088, 
        n15637, n9165, n9637;
    wire [14:0]n3;
    wire [9:0]n2834;
    wire [6:0]n4356;
    
    wire n16459, n14614, n17584, n9639, n22_adj_1619, n17716, n14247, 
        n15221, n14177, n17586, n17729, n16259, n17785, n16275, 
        n74, n17739, n15737, n13987, n4762, n22_adj_1626, n17743, 
        n13311, n14615, n20_adj_1627, drive_clk_enable_19, n16659, 
        n16660, n16661, n17741, n11883, n15553, n18167, n11882, 
        n17727, n14609, n13442, n56, sda_transmit_N_1187, n17610;
    wire [9:0]n2804;
    
    wire n14519, n12300, n5923, n15043, n18168, n15053, n17804, 
        n15213, n15311, n15041, n15325, n17713, n11881, n11880, 
        n17796, n17797, n17611, n12733, n12761;
    wire [0:0]n4004;
    
    wire n12863, n11879, n14140, n6058, n5998, n14993, n16293, 
        n15705, n17612, n17613, n4_adj_1629, n15689, n17791, n15115, 
        n15261, n17717, n16431, n12674, n74_adj_1630, n42, drive_clk_enable_32, 
        drive_clk_enable_33, drive_clk_enable_34, sys_clk_c_enable_226, 
        n9708, n17563, n14950, n28_adj_1631, n15411, n17753, n14740, 
        n15099, n14122, n17642, n17703, n17639, n17704, n17747, 
        n17732, n14957, n15803, n17790, n17750, n15779, n15817, 
        n14127, n17735, n15831, n15423, n17644, n14024, n86, n16732, 
        n16391, n16557;
    wire [0:0]n3645;
    
    wire n66, n14573;
    wire [0:0]n3594;
    
    wire n13983, n14828, n13310, n17553, n16535, n17585, n15833, 
        n31_adj_1632, n14698, n5238, n17755, n16527, n33_adj_1633, 
        n41, n16555, n16556, n16469, n13954, n15059, n17554, n16513, 
        n30_adj_1634, n14258, n15533;
    
    FD1S3DX cnt_div__i0 (.D(n14244), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i0.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i0 (.D(n16657), .SP(drive_clk_enable_20), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i0.GSR = "ENABLED";
    FD1S3BX current_state_i0 (.D(next_state[0]), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(current_state[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i0.GSR = "ENABLED";
    FD1S3DX cnt_scl_i0 (.D(cnt_scl_9__N_877[0]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i0.GSR = "ENABLED";
    LUT4 i13275_3_lut_4_lut (.A(cnt_scl[5]), .B(n18597), .C(current_state[0]), 
         .D(n17746), .Z(n16487)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(269[21] 295[28])
    defparam i13275_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_scl[2]), .B(cnt_scl[3]), .Z(drive_clk_enable_20)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3DX data_read_i0_i0 (.D(data_read_temp[0]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i0.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n17781), .B(n17766), .C(n48), .D(n17783), 
         .Z(n3007)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0010;
    FD1P3BX sda_transmit_en_259 (.D(n4010[0]), .SP(drive_clk_enable_3), 
            .CK(drive_clk), .PD(sys_rst_n_N_472), .Q(sda_transmit_en)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam sda_transmit_en_259.GSR = "ENABLED";
    FD1P3BX sda_transmit_260 (.D(n3967[0]), .SP(drive_clk_enable_4), .CK(drive_clk), 
            .PD(sys_rst_n_N_472), .Q(sda_transmit)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam sda_transmit_260.GSR = "ENABLED";
    FD1P3DX flag_ack_262 (.D(n17587), .SP(drive_clk_enable_5), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_ack)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam flag_ack_262.GSR = "ENABLED";
    FD1S3BX drive_clk_255 (.D(drive_clk_N_1118), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(drive_clk)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam drive_clk_255.GSR = "ENABLED";
    LUT4 sda_transmit_en_I_0_1_lut (.A(sda_transmit_en), .Z(sda_transmit_en_N_1145)) /* synthesis lut_function=(!(A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(45[31:59])
    defparam sda_transmit_en_I_0_1_lut.init = 16'h5555;
    LUT4 i13050_2_lut_3_lut_4_lut (.A(n17783), .B(\current_state[2] ), .C(n17781), 
         .D(current_state[5]), .Z(n16261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13050_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n17783), .B(\current_state[2] ), .C(n8953), 
         .D(current_state[0]), .Z(n14649)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut (.A(n16265), .B(n8), .C(n17787), .D(n17748), .Z(n10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i13054_2_lut (.A(cnt_scl[0]), .B(cnt_scl[7]), .Z(n16265)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13054_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_50 (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(current_state[6]), 
         .D(n17723), .Z(n8)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(303[21] 345[28])
    defparam i1_4_lut_adj_50.init = 16'h0020;
    LUT4 i6228_4_lut (.A(rd_cnt[3]), .B(current_state[6]), .C(n15501), 
         .D(n17722), .Z(n1[3])) /* synthesis lut_function=(A (B ((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i6228_4_lut.init = 16'h8848;
    LUT4 i1_4_lut_adj_51 (.A(n15529), .B(n17745), .C(n17787), .D(n15491), 
         .Z(n15501)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_51.init = 16'h0200;
    LUT4 i1_4_lut_adj_52 (.A(cnt_scl[7]), .B(n17786), .C(rd_cnt_c[1]), 
         .D(\rd_cnt[2] ), .Z(n15491)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_52.init = 16'h4000;
    LUT4 cnt_scl_9__N_983_9__I_0_304_i12_2_lut_rep_353 (.A(cnt_scl[3]), .B(cnt_scl[4]), 
         .Z(n18597)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam cnt_scl_9__N_983_9__I_0_304_i12_2_lut_rep_353.init = 16'heeee;
    LUT4 i10681_3_lut_4_lut (.A(n18597), .B(cnt_scl[2]), .C(cnt_scl[1]), 
         .D(n13498), .Z(n13829)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i10681_3_lut_4_lut.init = 16'hffe0;
    LUT4 i6498_2_lut (.A(\current_state[1] ), .B(current_state[0]), .Z(n9539)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6498_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n17779), 
         .D(n17787), .Z(n15305)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n18597), .B(cnt_scl[2]), .C(n17787), .D(n13498), 
         .Z(n13984)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_3_lut_4_lut.init = 16'h000e;
    LUT4 i1_3_lut_4_lut_adj_53 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n15269)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_3_lut_4_lut_adj_53.init = 16'hfffe;
    LUT4 i13112_2_lut_rep_354 (.A(cnt_scl[8]), .B(cnt_scl[0]), .Z(n17758)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13112_2_lut_rep_354.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_54 (.A(cnt_scl[8]), .B(cnt_scl[0]), .C(cnt_scl[6]), 
         .D(n4778), .Z(n62)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_54.init = 16'h0100;
    LUT4 i1_2_lut_rep_355 (.A(cnt_scl[5]), .B(cnt_scl[2]), .Z(n17759)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(269[21] 295[28])
    defparam i1_2_lut_rep_355.init = 16'h8888;
    LUT4 i52_3_lut_4_lut (.A(cnt_scl[5]), .B(cnt_scl[2]), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n35)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(269[21] 295[28])
    defparam i52_3_lut_4_lut.init = 16'h808f;
    LUT4 i1665_2_lut_rep_356 (.A(cnt_scl[1]), .B(cnt_scl[5]), .Z(n17760)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i1665_2_lut_rep_356.init = 16'h8888;
    PFUMX i14047 (.BLUT(n17799), .ALUT(n17800), .C0(cnt_scl[5]), .Z(n10_adj_1593));
    LUT4 i3797_3_lut_3_lut (.A(cnt_scl[5]), .B(cnt_scl[0]), .C(n3276), 
         .Z(n5_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i3797_3_lut_3_lut.init = 16'h3838;
    LUT4 i1_2_lut_rep_317_3_lut_4_lut (.A(n18597), .B(cnt_scl[2]), .C(n13498), 
         .D(n17746), .Z(n17721)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_2_lut_rep_317_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5916_2_lut_rep_358 (.A(cnt_scl[1]), .B(cnt_scl[5]), .Z(n17762)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5916_2_lut_rep_358.init = 16'heeee;
    LUT4 i1_4_lut_adj_55 (.A(n20), .B(n14199), .C(n14649), .D(n14182), 
         .Z(cnt_scl_9__N_877[0])) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_55.init = 16'hafae;
    LUT4 i2_3_lut_4_lut_adj_56 (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[2]), 
         .D(n3706), .Z(n12308)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_56.init = 16'h00e0;
    LUT4 n22_bdd_2_lut_3_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(addr[15]), 
         .Z(n17609)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n22_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_adj_57 (.A(cnt_scl_9__N_983[0]), .B(n19), .Z(n20)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_adj_57.init = 16'h8888;
    LUT4 i8337_4_lut (.A(current_state[6]), .B(n11294), .C(current_state[7]), 
         .D(n19_adj_1594), .Z(n13594)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(36[17:30])
    defparam i8337_4_lut.init = 16'hcac0;
    FD1P3DX rd_cnt_1920__i0 (.D(n1[0]), .SP(drive_clk_enable_10), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt_c[0]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam rd_cnt_1920__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(n13476), .D(n16401), 
         .Z(n13478)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h10d0;
    LUT4 i1_2_lut_3_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[4]), 
         .Z(n15179)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i3796_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(n3276), 
         .D(n17760), .Z(n6939)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i3796_4_lut_4_lut.init = 16'h2c20;
    LUT4 i6229_4_lut (.A(\rd_cnt[2] ), .B(current_state[6]), .C(n15483), 
         .D(n17722), .Z(n1[2])) /* synthesis lut_function=(A (B ((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i6229_4_lut.init = 16'h8848;
    LUT4 i1894_rep_50_4_lut (.A(cnt_scl[1]), .B(current_state[6]), .C(n17731), 
         .D(n13498), .Z(n11294)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;
    defparam i1894_rep_50_4_lut.init = 16'h3331;
    LUT4 i1_2_lut_rep_360 (.A(cnt_scl[2]), .B(cnt_scl[0]), .Z(n17764)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_360.init = 16'heeee;
    LUT4 i1_4_lut_adj_58 (.A(n15475), .B(n17745), .C(n17787), .D(n15473), 
         .Z(n15483)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_58.init = 16'h0200;
    LUT4 i1_2_lut_adj_59 (.A(cnt_scl[0]), .B(cnt_scl[5]), .Z(n13498)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_59.init = 16'heeee;
    LUT4 i37_3_lut_3_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .Z(n21)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam i37_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i1_3_lut_4_lut_adj_60 (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[6]), 
         .D(cnt_scl[3]), .Z(n15787)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_60.init = 16'hfffe;
    LUT4 i2_2_lut_rep_320_3_lut_3_lut_4_lut (.A(n18597), .B(cnt_scl[2]), 
         .C(n12), .D(n17746), .Z(n17724)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i2_2_lut_rep_320_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_61 (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[6]), 
         .D(cnt_scl[4]), .Z(n15819)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_61.init = 16'hfffe;
    LUT4 i1_4_lut_adj_62 (.A(n15451), .B(n19_adj_1594), .C(n15449), .D(n17338), 
         .Z(n19)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_62.init = 16'hfefa;
    LUT4 i1_4_lut_adj_63 (.A(n17336), .B(current_state[5]), .C(n17645), 
         .D(n6276), .Z(n15451)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_63.init = 16'hfefa;
    LUT4 i1_4_lut_adj_64 (.A(n110), .B(n15441), .C(\current_state[4] ), 
         .D(n17744), .Z(n15449)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_64.init = 16'hfeee;
    LUT4 i1_2_lut_rep_327_3_lut_4_lut (.A(n17787), .B(n17779), .C(cnt_scl[2]), 
         .D(n18597), .Z(n17731)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_327_3_lut_4_lut.init = 16'hfffe;
    CCU2C add_47_11 (.A0(cnt_scl[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n11891), 
          .S0(cnt_scl_9__N_983[9]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_11.INIT0 = 16'haaaa;
    defparam add_47_11.INIT1 = 16'h0000;
    defparam add_47_11.INJECT1_0 = "NO";
    defparam add_47_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_65 (.A(cnt_scl[9]), .B(rd_cnt_c[0]), .C(cnt_scl[5]), 
         .D(rd_cnt_c[1]), .Z(n15473)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_65.init = 16'h4000;
    LUT4 i1_3_lut (.A(\current_state[2] ), .B(current_state[0]), .C(\current_state[1] ), 
         .Z(n110)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_66 (.A(n17783), .B(current_state[6]), .C(current_state[5]), 
         .D(n4), .Z(n15441)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_66.init = 16'heeea;
    LUT4 i6144_2_lut_rep_362 (.A(current_state[5]), .B(current_state[0]), 
         .Z(n17766)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6144_2_lut_rep_362.init = 16'heeee;
    LUT4 i6230_4_lut (.A(rd_cnt_c[1]), .B(current_state[6]), .C(n15467), 
         .D(n17722), .Z(n1[1])) /* synthesis lut_function=(A (B ((D)+!C))+!A !(((D)+!C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i6230_4_lut.init = 16'h8848;
    LUT4 i1_4_lut_adj_67 (.A(n15529), .B(n17745), .C(n17787), .D(n15457), 
         .Z(n15467)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_67.init = 16'h0200;
    LUT4 i5926_2_lut (.A(\current_state[4] ), .B(\current_state[3] ), .Z(n8953)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5926_2_lut.init = 16'heeee;
    CCU2C add_47_9 (.A0(cnt_scl[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11890), .COUT(n11891), .S0(cnt_scl_9__N_983[7]), .S1(cnt_scl_9__N_983[8]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_9.INIT0 = 16'haaaa;
    defparam add_47_9.INIT1 = 16'haaaa;
    defparam add_47_9.INJECT1_0 = "NO";
    defparam add_47_9.INJECT1_1 = "NO";
    FD1P3DX data_read_temp_i0_i7 (.D(n17789), .SP(drive_clk_enable_7), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(data_read_temp[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i7.GSR = "ENABLED";
    CCU2C add_47_7 (.A0(cnt_scl[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11889), .COUT(n11890), .S0(cnt_scl_9__N_983[5]), .S1(cnt_scl_9__N_983[6]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_7.INIT0 = 16'haaaa;
    defparam add_47_7.INIT1 = 16'haaaa;
    defparam add_47_7.INJECT1_0 = "NO";
    defparam add_47_7.INJECT1_1 = "NO";
    LUT4 i28_2_lut_rep_363 (.A(current_state[6]), .B(current_state[7]), 
         .Z(n17767)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i28_2_lut_rep_363.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_68 (.A(current_state[6]), .B(current_state[7]), 
         .C(n17783), .D(n9539), .Z(n15721)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_68.init = 16'h0006;
    LUT4 i1_4_lut_4_lut_4_lut (.A(current_state[5]), .B(\current_state[4] ), 
         .C(\current_state[1] ), .D(\current_state[2] ), .Z(n77)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0116;
    LUT4 i38_4_lut_4_lut (.A(cnt_scl[2]), .B(cnt_scl[0]), .C(cnt_scl[3]), 
         .D(cnt_scl[5]), .Z(n24)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i38_4_lut_4_lut.init = 16'h02c1;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(cnt_div[1]), .B(cnt_div[3]), .C(cnt_div[2]), 
         .D(cnt_div[7]), .Z(n31_adj_1595)) /* synthesis lut_function=(!((B (C+(D))+!B !(C (D)))+!A)) */ ;
    defparam i1_4_lut_4_lut_adj_69.init = 16'h2008;
    LUT4 i3798_4_lut_then_3_lut (.A(n3276), .B(cnt_scl[5]), .C(cnt_scl[1]), 
         .Z(n17803)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i3798_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i3798_4_lut_else_3_lut (.A(cnt_scl[2]), .B(n3276), .Z(n17802)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i3798_4_lut_else_3_lut.init = 16'hbbbb;
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_div[2]), .B(cnt_div[7]), .C(cnt_div[3]), 
         .D(cnt_div[1]), .Z(n14278)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 i1_4_lut_else_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .D(cnt_scl[1]), .Z(n17799)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_else_3_lut_4_lut.init = 16'hfffe;
    LUT4 i5949_4_lut_4_lut (.A(cnt_scl[5]), .B(n17745), .C(n17777), .D(n15075), 
         .Z(n20_adj_1596)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(269[21] 295[28])
    defparam i5949_4_lut_4_lut.init = 16'h0002;
    CCU2C add_47_5 (.A0(cnt_scl[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11888), .COUT(n11889), .S0(cnt_scl_9__N_983[3]), .S1(cnt_scl_9__N_983[4]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_5.INIT0 = 16'haaaa;
    defparam add_47_5.INIT1 = 16'haaaa;
    defparam add_47_5.INJECT1_0 = "NO";
    defparam add_47_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_70 (.A(\current_state[1] ), .B(n15305), .C(n17777), 
         .D(n17759), .Z(n12718)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_4_lut_adj_70.init = 16'h5455;
    LUT4 i1_4_lut_4_lut_adj_71 (.A(cnt_scl[2]), .B(n14109), .C(n15269), 
         .D(\current_state[1] ), .Z(n12717)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(290[25:31])
    defparam i1_4_lut_4_lut_adj_71.init = 16'hfd00;
    LUT4 i6143_4_lut_4_lut (.A(current_state[6]), .B(n17410), .C(n13982), 
         .D(n10_adj_1593), .Z(n3984[0])) /* synthesis lut_function=(!(A ((C+(D))+!B))) */ ;
    defparam i6143_4_lut_4_lut.init = 16'h555d;
    LUT4 i1_3_lut_4_lut_adj_72 (.A(n17787), .B(n17779), .C(n12308), .D(n38), 
         .Z(n14628)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_72.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_73 (.A(n17787), .B(n17779), .C(current_state[0]), 
         .D(cnt_scl[1]), .Z(n14680)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_73.init = 16'h0100;
    LUT4 LessThan_727_i4_4_lut_4_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .C(rd_cnt_c[0]), .D(rd_cnt_c[1]), .Z(n9643)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+(C (D)))) */ ;
    defparam LessThan_727_i4_4_lut_4_lut.init = 16'hfe64;
    LUT4 i2065_2_lut_rep_365 (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .Z(n17769)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(328[42:57])
    defparam i2065_2_lut_rep_365.init = 16'heeee;
    LUT4 i6349_2_lut_3_lut_4_lut (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .C(current_state[6]), .D(n17728), .Z(n4314[1])) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(328[42:57])
    defparam i6349_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i1_4_lut_4_lut_4_lut_adj_74 (.A(n17733), .B(n80), .C(current_state[5]), 
         .D(n3003), .Z(n13975)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_74.init = 16'h0040;
    LUT4 i36_2_lut_rep_389 (.A(\current_state[1] ), .B(\current_state[2] ), 
         .Z(n17793)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i36_2_lut_rep_389.init = 16'h6666;
    LUT4 i1_2_lut_rep_306 (.A(cnt_scl[4]), .B(n10), .Z(drive_clk_enable_21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_306.init = 16'h8888;
    LUT4 i13664_2_lut_rep_390 (.A(flag_ack), .B(\current_state[4] ), .Z(n17794)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13664_2_lut_rep_390.init = 16'h1111;
    LUT4 i13445_3_lut_4_lut (.A(cnt_scl[4]), .B(n10), .C(n17789), .D(data_read_temp[0]), 
         .Z(n16657)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i13445_3_lut_4_lut.init = 16'hf780;
    LUT4 n80_bdd_3_lut_4_lut (.A(flag_ack), .B(\current_state[4] ), .C(\current_state[2] ), 
         .D(n3005), .Z(n17561)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n80_bdd_3_lut_4_lut.init = 16'h0f10;
    LUT4 i1_4_lut_then_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[0]), 
         .D(cnt_scl[2]), .Z(n17800)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_then_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6557_2_lut_3_lut (.A(flag_ack), .B(\current_state[4] ), .C(current_state[6]), 
         .Z(n2818[6])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i6557_2_lut_3_lut.init = 16'h1010;
    LUT4 i6491_2_lut_3_lut (.A(flag_ack), .B(\current_state[4] ), .C(current_state[0]), 
         .Z(n2818[0])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i6491_2_lut_3_lut.init = 16'h1010;
    LUT4 i13080_2_lut_3_lut_4_lut (.A(cnt_div[1]), .B(cnt_div[6]), .C(cnt_div[5]), 
         .D(cnt_div[4]), .Z(n16291)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13080_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_4_lut_adj_75 (.A(n17733), .B(n80), .C(\current_state[4] ), 
         .D(n3003), .Z(n13976)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_75.init = 16'h0040;
    CCU2C add_47_3 (.A0(cnt_scl[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_scl[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11887), .COUT(n11888), .S0(cnt_scl_9__N_983[1]), .S1(cnt_scl_9__N_983[2]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_3.INIT0 = 16'haaaa;
    defparam add_47_3.INIT1 = 16'haaaa;
    defparam add_47_3.INJECT1_0 = "NO";
    defparam add_47_3.INJECT1_1 = "NO";
    CCU2C add_47_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_scl[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11887), .S1(cnt_scl_9__N_983[0]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(115[23:37])
    defparam add_47_1.INIT0 = 16'h0000;
    defparam add_47_1.INIT1 = 16'h555a;
    defparam add_47_1.INJECT1_0 = "NO";
    defparam add_47_1.INJECT1_1 = "NO";
    CCU2C add_23_15 (.A0(cnt_div[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11885), .S0(n2[13]), .S1(n2[14]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_15.INIT0 = 16'haaaa;
    defparam add_23_15.INIT1 = 16'haaaa;
    defparam add_23_15.INJECT1_0 = "NO";
    defparam add_23_15.INJECT1_1 = "NO";
    LUT4 i3_2_lut_rep_391 (.A(cnt_div[12]), .B(cnt_div[11]), .Z(n17795)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(67[22:56])
    defparam i3_2_lut_rep_391.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_76 (.A(cnt_div[12]), .B(cnt_div[11]), .C(n13), 
         .Z(n15707)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_2_lut_3_lut_adj_76.init = 16'hfefe;
    CCU2C add_23_13 (.A0(cnt_div[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11884), .COUT(n11885), .S0(n2[11]), .S1(n2[12]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_13.INIT0 = 16'haaaa;
    defparam add_23_13.INIT1 = 16'haaaa;
    defparam add_23_13.INJECT1_0 = "NO";
    defparam add_23_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_77 (.A(\rd_byte_num[1] ), .B(\rd_byte_num[0] ), 
         .C(current_state[6]), .Z(n15601)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(328[42:57])
    defparam i1_2_lut_3_lut_adj_77.init = 16'he0e0;
    FD1P3DX rd_cnt_1920__i3 (.D(n1[3]), .SP(drive_clk_enable_10), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt[3]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam rd_cnt_1920__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_78 (.A(\current_state[3] ), .B(flag_ack), .Z(n20_adj_1598)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_78.init = 16'h4444;
    LUT4 i13400_3_lut (.A(addr[3]), .B(addr[2]), .C(cnt_scl[2]), .Z(n16612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13400_3_lut.init = 16'hcaca;
    LUT4 i13403_3_lut (.A(data_write[3]), .B(data_write[2]), .C(cnt_scl[2]), 
         .Z(n16615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13403_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_79 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[6]), .Z(n14180)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_79.init = 16'h1000;
    LUT4 i13761_2_lut_rep_310 (.A(\current_state[4] ), .B(n3005), .Z(n17714)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i13761_2_lut_rep_310.init = 16'h1111;
    LUT4 i1_3_lut_3_lut_4_lut_adj_80 (.A(n17787), .B(n17779), .C(n4_adj_1599), 
         .D(n17614), .Z(sda_transmit_N_1190)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_80.init = 16'h1000;
    FD1P3DX rd_cnt_1920__i2 (.D(n1[2]), .SP(drive_clk_enable_10), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(\rd_cnt[2] ));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam rd_cnt_1920__i2.GSR = "ENABLED";
    FD1P3DX rd_cnt_1920__i1 (.D(n1[1]), .SP(drive_clk_enable_10), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(rd_cnt_c[1]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam rd_cnt_1920__i1.GSR = "ENABLED";
    LUT4 n17337_bdd_2_lut_13888_3_lut_4_lut (.A(current_state[7]), .B(n17783), 
         .C(n17337), .D(n17774), .Z(n17338)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n17337_bdd_2_lut_13888_3_lut_4_lut.init = 16'h0010;
    LUT4 i6560_4_lut_4_lut (.A(\current_state[4] ), .B(n3005), .C(flag_ack), 
         .D(ctrl_w0_r1), .Z(n2818[4])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6560_4_lut_4_lut.init = 16'h0010;
    LUT4 flag_ack_N_1200_bdd_4_lut_13964 (.A(n38), .B(n12308), .C(n15201), 
         .D(n3706), .Z(n17552)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam flag_ack_N_1200_bdd_4_lut_13964.init = 16'h2000;
    LUT4 i1_4_lut_adj_81 (.A(cnt_scl_9__N_983[9]), .B(n22), .C(n19), .D(n14649), 
         .Z(cnt_scl_9__N_877[9])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_81.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_82 (.A(n15861), .B(n17722), .C(n17745), .D(n17787), 
         .Z(drive_clk_enable_18)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_82.init = 16'h0008;
    LUT4 i1_4_lut_adj_83 (.A(cnt_scl_9__N_983[9]), .B(n14184), .C(n13594), 
         .D(n17780), .Z(n22)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_83.init = 16'hccec;
    LUT4 i1_4_lut_adj_84 (.A(cnt_scl_9__N_983[8]), .B(n22_adj_1600), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[8])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_84.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_85 (.A(cnt_scl_9__N_983[8]), .B(n14185), .C(n13594), 
         .D(n17780), .Z(n22_adj_1600)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_85.init = 16'hccec;
    LUT4 i1_4_lut_adj_86 (.A(cnt_scl_9__N_983[7]), .B(n22_adj_1601), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_86.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_87 (.A(cnt_scl_9__N_983[7]), .B(n14186), .C(n13594), 
         .D(n17780), .Z(n22_adj_1601)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_87.init = 16'hccec;
    LUT4 i1_4_lut_adj_88 (.A(cnt_scl_9__N_983[6]), .B(n22_adj_1602), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[6])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_88.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_89 (.A(cnt_scl_9__N_983[6]), .B(n14180), .C(n13594), 
         .D(n17780), .Z(n22_adj_1602)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_89.init = 16'hccec;
    LUT4 n80_bdd_4_lut_13969 (.A(n80), .B(n3003), .C(n17733), .D(\current_state[2] ), 
         .Z(n17562)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam n80_bdd_4_lut_13969.init = 16'h0200;
    LUT4 i1_4_lut_adj_90 (.A(cnt_scl_9__N_983[5]), .B(n22_adj_1603), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[5])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_90.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_91 (.A(cnt_scl_9__N_983[5]), .B(n14188), .C(n13594), 
         .D(n17780), .Z(n22_adj_1603)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_91.init = 16'hccec;
    LUT4 i1_2_lut_adj_92 (.A(flag_ack), .B(current_state[5]), .Z(n10_adj_1604)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_92.init = 16'h8888;
    LUT4 i6748_2_lut_rep_319_3_lut_4_lut (.A(current_state[7]), .B(n17783), 
         .C(n17784), .D(n9539), .Z(n17723)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6748_2_lut_rep_319_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_93 (.A(cnt_scl_9__N_983[4]), .B(n22_adj_1605), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[4])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_93.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_94 (.A(cnt_scl_9__N_983[4]), .B(n14183), .C(n13594), 
         .D(n17780), .Z(n22_adj_1605)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_94.init = 16'hccec;
    LUT4 i1_2_lut_adj_95 (.A(start), .B(current_state[0]), .Z(n55)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_95.init = 16'h4444;
    LUT4 i46_3_lut (.A(addr[13]), .B(n30_adj_1606), .C(cnt_scl[2]), .Z(n22_adj_1607)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(166[21] 190[28])
    defparam i46_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_315 (.A(n3909), .B(n3966), .Z(n17719)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_rep_315.init = 16'h2222;
    LUT4 i1_4_lut_adj_96 (.A(cnt_scl_9__N_983[3]), .B(n22_adj_1608), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[3])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_96.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_97 (.A(cnt_scl_9__N_983[3]), .B(n14179), .C(n13594), 
         .D(n17780), .Z(n22_adj_1608)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_97.init = 16'hccec;
    FD1P3BX next_state_i0_i0 (.D(n2846[0]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .PD(sys_rst_n_N_472), .Q(next_state[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i0.GSR = "ENABLED";
    LUT4 mux_1084_i1_3_lut (.A(data_write[5]), .B(n3630[0]), .C(cnt_scl[2]), 
         .Z(n3642[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(236[21] 261[28])
    defparam mux_1084_i1_3_lut.init = 16'hcaca;
    LUT4 mux_1046_i1_3_lut (.A(addr[5]), .B(n3579[0]), .C(cnt_scl[2]), 
         .Z(n3591[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(198[21] 231[28])
    defparam mux_1046_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_98 (.A(n4_adj_1599), .B(n17724), .C(n16415), .D(n17787), 
         .Z(n14100)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(34[18:25])
    defparam i1_4_lut_adj_98.init = 16'h0008;
    LUT4 i1_4_lut_adj_99 (.A(cnt_scl_9__N_983[2]), .B(n22_adj_1609), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[2])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_99.init = 16'ha0ec;
    LUT4 cnt_scl_0__bdd_3_lut (.A(cnt_scl[0]), .B(cnt_scl[2]), .C(cnt_scl[1]), 
         .Z(n17390)) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;
    defparam cnt_scl_0__bdd_3_lut.init = 16'h2626;
    LUT4 i1_4_lut_adj_100 (.A(cnt_scl_9__N_983[2]), .B(n14187), .C(n13594), 
         .D(n17780), .Z(n22_adj_1609)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_100.init = 16'hccec;
    LUT4 current_state_9__I_0_278_i12_2_lut_rep_369 (.A(\current_state[3] ), 
         .B(\current_state[4] ), .Z(n17773)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(302[17:24])
    defparam current_state_9__I_0_278_i12_2_lut_rep_369.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_101 (.A(n3909), .B(n3966), .C(current_state[0]), 
         .Z(n15195)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_3_lut_adj_101.init = 16'h0202;
    LUT4 i1_4_lut_adj_102 (.A(cnt_scl_9__N_983[1]), .B(n22_adj_1610), .C(n19), 
         .D(n14649), .Z(cnt_scl_9__N_877[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_102.init = 16'ha0ec;
    LUT4 i1_4_lut_adj_103 (.A(cnt_scl_9__N_983[1]), .B(n14181), .C(n13594), 
         .D(n17780), .Z(n22_adj_1610)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_103.init = 16'hccec;
    LUT4 i2_2_lut_rep_316 (.A(n3909), .B(n3966), .Z(n17720)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_316.init = 16'heeee;
    LUT4 i1_4_lut_adj_104 (.A(n3276), .B(n55_adj_1611), .C(n17779), .D(n17764), 
         .Z(n14263)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_104.init = 16'h0008;
    LUT4 i1_2_lut_adj_105 (.A(cnt_scl[2]), .B(cnt_scl[3]), .Z(n6437)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_105.init = 16'h2222;
    LUT4 i1_4_lut_adj_106 (.A(n15529), .B(cnt_scl[7]), .C(cnt_scl[5]), 
         .D(n15851), .Z(n15861)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_106.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_adj_107 (.A(n3909), .B(n3966), .C(current_state[6]), 
         .Z(n15741)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_107.init = 16'hfefe;
    LUT4 i1_4_lut_adj_108 (.A(n6436), .B(\current_state[3] ), .C(n4_adj_1612), 
         .D(\current_state[1] ), .Z(n92)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_108.init = 16'haaba;
    LUT4 i1_3_lut_adj_109 (.A(n2[14]), .B(n4267), .C(start), .Z(n14239)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_109.init = 16'h2020;
    LUT4 i1_3_lut_adj_110 (.A(n2[13]), .B(n4267), .C(start), .Z(n14236)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_110.init = 16'h2020;
    LUT4 mux_1325_i1_3_lut (.A(n3951[0]), .B(n14164), .C(n3960), .Z(n3964[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam mux_1325_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_111 (.A(n2[12]), .B(n4267), .C(start), .Z(n14241)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_111.init = 16'h2020;
    LUT4 i1_3_lut_adj_112 (.A(n2[11]), .B(n4267), .C(start), .Z(n14242)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_112.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_113 (.A(\current_state[3] ), .B(\current_state[4] ), 
         .C(n17775), .D(current_state[0]), .Z(n6276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(302[17:24])
    defparam i1_2_lut_3_lut_4_lut_adj_113.init = 16'hfffe;
    LUT4 i1_3_lut_adj_114 (.A(n2[10]), .B(n4267), .C(start), .Z(n14243)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_114.init = 16'h2020;
    LUT4 i1_2_lut_rep_370 (.A(current_state[6]), .B(current_state[5]), .Z(n17774)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(197[17:26])
    defparam i1_2_lut_rep_370.init = 16'heeee;
    LUT4 i1_3_lut_adj_115 (.A(n2[9]), .B(n4267), .C(start), .Z(n14238)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_115.init = 16'h2020;
    LUT4 i1_3_lut_adj_116 (.A(n2[8]), .B(n4267), .C(start), .Z(n14240)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_116.init = 16'h2020;
    LUT4 i1_4_lut_adj_117 (.A(n38), .B(n6329), .C(n3706), .D(n16487), 
         .Z(n14088)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_117.init = 16'h0020;
    LUT4 i13678_4_lut (.A(current_state[5]), .B(n15637), .C(n9165), .D(n19_adj_1594), 
         .Z(drive_clk_enable_31)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i13678_4_lut.init = 16'hfbff;
    LUT4 i6326_4_lut (.A(n2[7]), .B(start), .C(n9637), .D(n4267), .Z(n3[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6326_4_lut.init = 16'h0c88;
    LUT4 i6596_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n9637)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6596_2_lut.init = 16'heeee;
    LUT4 i5965_2_lut (.A(n2834[0]), .B(n3009), .Z(n2846[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i5965_2_lut.init = 16'h2222;
    LUT4 i6327_4_lut (.A(n2[6]), .B(start), .C(n4356[5]), .D(n4267), 
         .Z(n3[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6327_4_lut.init = 16'hc088;
    LUT4 i6_4_lut (.A(n17784), .B(n16459), .C(start), .D(current_state[0]), 
         .Z(n3009)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i6_4_lut.init = 16'h1000;
    LUT4 i6034_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n4356[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i6034_2_lut.init = 16'h4444;
    LUT4 n14100_bdd_4_lut_13980 (.A(n14100), .B(n14614), .C(cnt_scl[1]), 
         .D(cnt_scl[0]), .Z(n17584)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n14100_bdd_4_lut_13980.init = 16'hc0a0;
    LUT4 i6162_2_lut_rep_371 (.A(\current_state[2] ), .B(\current_state[1] ), 
         .Z(n17775)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6162_2_lut_rep_371.init = 16'heeee;
    LUT4 i6328_4_lut (.A(n2[5]), .B(start), .C(n9639), .D(n4267), .Z(n3[5])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6328_4_lut.init = 16'h0c88;
    LUT4 i6598_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n9639)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6598_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_118 (.A(n15601), .B(n22_adj_1619), .C(n17716), .D(n17728), 
         .Z(n14247)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C)+!B))) */ ;
    defparam i1_4_lut_adj_118.init = 16'h040c;
    LUT4 n14100_bdd_4_lut (.A(n15221), .B(n14177), .C(n3909), .D(current_state[6]), 
         .Z(n17586)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam n14100_bdd_4_lut.init = 16'h4f40;
    LUT4 i1_4_lut_adj_119 (.A(n17729), .B(n16259), .C(n17773), .D(current_state[6]), 
         .Z(n15851)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_119.init = 16'h0100;
    LUT4 i13064_2_lut_3_lut_4_lut (.A(current_state[7]), .B(current_state[6]), 
         .C(current_state[0]), .D(n17785), .Z(n16275)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13064_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i6329_4_lut (.A(n2[4]), .B(start), .C(n9639), .D(n4267), .Z(n3[4])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6329_4_lut.init = 16'h0c88;
    LUT4 i1_4_lut_adj_120 (.A(n74), .B(n17739), .C(n15737), .D(n9165), 
         .Z(n6436)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'h3032;
    LUT4 i1_4_lut_adj_121 (.A(n17767), .B(n9165), .C(n5), .D(n17766), 
         .Z(n4_adj_1612)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i1_4_lut_adj_121.init = 16'h3032;
    LUT4 i124_2_lut (.A(\current_state[1] ), .B(\current_state[3] ), .Z(n74)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i124_2_lut.init = 16'h6666;
    LUT4 i6330_4_lut (.A(n2[3]), .B(start), .C(n9639), .D(n4267), .Z(n3[3])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6330_4_lut.init = 16'h0c88;
    LUT4 i6331_4_lut (.A(n2[2]), .B(start), .C(n4356[1]), .D(n4267), 
         .Z(n3[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6331_4_lut.init = 16'hc088;
    LUT4 i2380_2_lut (.A(cnt_div[2]), .B(cnt_div[1]), .Z(n4356[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i2380_2_lut.init = 16'h6666;
    FD1P3DX data_read_i0_i7 (.D(data_read_temp[7]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i7.GSR = "ENABLED";
    FD1P3DX data_read_i0_i6 (.D(data_read_temp[6]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i6.GSR = "ENABLED";
    FD1P3DX data_read_i0_i5 (.D(data_read_temp[5]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i5.GSR = "ENABLED";
    FD1P3DX data_read_i0_i4 (.D(data_read_temp[4]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_i0_i3 (.D(data_read_temp[3]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_i0_i2 (.D(data_read_temp[2]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i2.GSR = "ENABLED";
    FD1P3DX data_read_i0_i1 (.D(data_read_temp[1]), .SP(drive_clk_enable_18), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_i0_i1.GSR = "ENABLED";
    LUT4 i6332_4_lut (.A(n2[1]), .B(start), .C(cnt_div[1]), .D(n4267), 
         .Z(n3[1])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i6332_4_lut.init = 16'h0c88;
    FD1S3DX cnt_scl_i9 (.D(cnt_scl_9__N_877[9]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i9.GSR = "ENABLED";
    LUT4 i13528_4_lut (.A(n13987), .B(n4762), .C(n3960), .D(\current_state[1] ), 
         .Z(n22_adj_1626)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i13528_4_lut.init = 16'hcacc;
    FD1S3DX cnt_scl_i8 (.D(cnt_scl_9__N_877[8]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i8.GSR = "ENABLED";
    FD1S3DX cnt_scl_i7 (.D(cnt_scl_9__N_877[7]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i7.GSR = "ENABLED";
    FD1S3DX cnt_scl_i6 (.D(cnt_scl_9__N_877[6]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i6.GSR = "ENABLED";
    FD1S3DX cnt_scl_i5 (.D(cnt_scl_9__N_877[5]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i5.GSR = "ENABLED";
    FD1S3DX cnt_scl_i4 (.D(cnt_scl_9__N_877[4]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i4.GSR = "ENABLED";
    FD1S3DX cnt_scl_i3 (.D(cnt_scl_9__N_877[3]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i3.GSR = "ENABLED";
    FD1S3DX cnt_scl_i2 (.D(cnt_scl_9__N_877[2]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i2.GSR = "ENABLED";
    FD1S3DX cnt_scl_i1 (.D(cnt_scl_9__N_877[1]), .CK(drive_clk), .CD(sys_rst_n_N_472), 
            .Q(cnt_scl[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam cnt_scl_i1.GSR = "ENABLED";
    FD1S3DX current_state_i9 (.D(next_state[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i9.GSR = "ENABLED";
    FD1S3DX current_state_i8 (.D(next_state[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i8.GSR = "ENABLED";
    FD1S3DX current_state_i7 (.D(next_state[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i7.GSR = "ENABLED";
    FD1S3DX current_state_i6 (.D(next_state[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i6.GSR = "ENABLED";
    FD1S3DX current_state_i5 (.D(next_state[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(current_state[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i5.GSR = "ENABLED";
    FD1S3DX current_state_i4 (.D(next_state[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i4.GSR = "ENABLED";
    FD1S3DX current_state_i3 (.D(next_state[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i3.GSR = "ENABLED";
    FD1S3DX current_state_i2 (.D(next_state[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i2.GSR = "ENABLED";
    FD1S3DX current_state_i1 (.D(next_state[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(\current_state[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam current_state_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_339_3_lut (.A(\current_state[2] ), .B(\current_state[1] ), 
         .C(current_state[0]), .Z(n17743)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_339_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_122 (.A(n3909), .B(n13311), .C(n14615), .D(current_state[6]), 
         .Z(n20_adj_1627)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_122.init = 16'h5044;
    FD1P3DX data_read_temp_i0_i6 (.D(n16659), .SP(drive_clk_enable_19), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i6.GSR = "ENABLED";
    LUT4 current_state_1__bdd_4_lut_13882 (.A(\current_state[1] ), .B(\current_state[3] ), 
         .C(current_state[0]), .D(\current_state[2] ), .Z(n17336)) /* synthesis lut_function=(A (B+(C))+!A (B (C+(D)))) */ ;
    defparam current_state_1__bdd_4_lut_13882.init = 16'hece8;
    FD1P3DX data_read_temp_i0_i4 (.D(n16660), .SP(drive_clk_enable_20), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i4.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i2 (.D(n16661), .SP(drive_clk_enable_21), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i2.GSR = "ENABLED";
    LUT4 current_state_9__I_0_278_i11_2_lut_rep_372 (.A(current_state[0]), 
         .B(\current_state[1] ), .Z(n17776)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(302[17:24])
    defparam current_state_9__I_0_278_i11_2_lut_rep_372.init = 16'heeee;
    FD1S3DX cnt_div__i14 (.D(n14239), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i14.GSR = "ENABLED";
    FD1S3DX cnt_div__i13 (.D(n14236), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i13.GSR = "ENABLED";
    FD1S3DX cnt_div__i12 (.D(n14241), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i12.GSR = "ENABLED";
    FD1S3DX cnt_div__i11 (.D(n14242), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i11.GSR = "ENABLED";
    FD1S3DX cnt_div__i10 (.D(n14243), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i10.GSR = "ENABLED";
    FD1S3DX cnt_div__i9 (.D(n14238), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i9.GSR = "ENABLED";
    FD1S3DX cnt_div__i8 (.D(n14240), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i8.GSR = "ENABLED";
    FD1S3DX cnt_div__i7 (.D(n3[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i7.GSR = "ENABLED";
    FD1S3DX cnt_div__i6 (.D(n3[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i6.GSR = "ENABLED";
    FD1S3DX cnt_div__i5 (.D(n3[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i5.GSR = "ENABLED";
    FD1S3DX cnt_div__i4 (.D(n3[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i4.GSR = "ENABLED";
    FD1S3DX cnt_div__i3 (.D(n3[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i3.GSR = "ENABLED";
    FD1S3DX cnt_div__i2 (.D(n3[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i2.GSR = "ENABLED";
    FD1S3DX cnt_div__i1 (.D(n3[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(cnt_div[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam cnt_div__i1.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_340_4_lut (.A(current_state[0]), .B(\current_state[1] ), 
         .C(\current_state[3] ), .D(\current_state[2] ), .Z(n17744)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(302[17:24])
    defparam i2_3_lut_rep_340_4_lut.init = 16'hfffe;
    LUT4 i13048_2_lut_3_lut (.A(current_state[0]), .B(\current_state[1] ), 
         .C(current_state[7]), .Z(n16259)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(302[17:24])
    defparam i13048_2_lut_3_lut.init = 16'hfefe;
    LUT4 i13248_4_lut (.A(n17741), .B(\current_state[1] ), .C(current_state[9]), 
         .D(\current_state[8] ), .Z(n16459)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13248_4_lut.init = 16'hfffe;
    LUT4 i13758_2_lut_rep_373 (.A(cnt_scl[0]), .B(cnt_scl[1]), .Z(n17777)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i13758_2_lut_rep_373.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_adj_123 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(cnt_scl[7]), 
         .Z(n15475)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_123.init = 16'h0808;
    LUT4 n18_bdd_4_lut (.A(n17776), .B(\current_state[4] ), .C(\current_state[3] ), 
         .D(\current_state[2] ), .Z(n17337)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C (D)+!C !(D))))) */ ;
    defparam n18_bdd_4_lut.init = 16'h0114;
    LUT4 i1_2_lut_3_lut_adj_124 (.A(cnt_scl[0]), .B(cnt_scl[1]), .C(cnt_scl[9]), 
         .Z(n15529)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_124.init = 16'h0808;
    CCU2C add_23_11 (.A0(cnt_div[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11883), .COUT(n11884), .S0(n2[9]), .S1(n2[10]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_11.INIT0 = 16'haaaa;
    defparam add_23_11.INIT1 = 16'haaaa;
    defparam add_23_11.INJECT1_0 = "NO";
    defparam add_23_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_125 (.A(n17745), .B(n12), .C(n17762), .D(n17746), 
         .Z(n15553)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_125.init = 16'h0004;
    LUT4 cnt_scl_0__bdd_4_lut (.A(n17746), .B(n18597), .C(cnt_scl[1]), 
         .D(cnt_scl[2]), .Z(n18167)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam cnt_scl_0__bdd_4_lut.init = 16'hfffe;
    LUT4 i6559_4_lut (.A(current_state[5]), .B(n17714), .C(ctrl_w0_r1), 
         .D(flag_ack), .Z(n2818[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6559_4_lut.init = 16'hc088;
    CCU2C add_23_9 (.A0(cnt_div[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11882), .COUT(n11883), .S0(n2[7]), .S1(n2[8]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_9.INIT0 = 16'haaaa;
    defparam add_23_9.INIT1 = 16'haaaa;
    defparam add_23_9.INJECT1_0 = "NO";
    defparam add_23_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_323_3_lut_4_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n12), 
         .D(cnt_scl[2]), .Z(n17727)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_323_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_126 (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(n35), 
         .D(n13829), .Z(n38)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_126.init = 16'h10ff;
    LUT4 i1_2_lut_rep_341_3_lut (.A(cnt_scl[3]), .B(cnt_scl[4]), .C(cnt_scl[2]), 
         .Z(n17745)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_341_3_lut.init = 16'hfefe;
    LUT4 i1_rep_14_4_lut_4_lut (.A(n17745), .B(n12), .C(cnt_scl[0]), .D(n17762), 
         .Z(n4_adj_1599)) /* synthesis lut_function=(!(A (C+(D))+!A !(B))) */ ;
    defparam i1_rep_14_4_lut_4_lut.init = 16'h444e;
    FD1P3DX flag_done_261 (.D(n14609), .SP(drive_clk_enable_22), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(flag_done)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam flag_done_261.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_127 (.A(n17779), .B(n13442), .C(n56), .D(n3276), 
         .Z(sda_transmit_N_1187)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_4_lut_4_lut_adj_127.init = 16'h4000;
    LUT4 cnt_scl_2__bdd_3_lut_13989 (.A(addr[8]), .B(addr[10]), .C(cnt_scl[3]), 
         .Z(n17610)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam cnt_scl_2__bdd_3_lut_13989.init = 16'hacac;
    LUT4 i5979_4_lut_4_lut (.A(n3003), .B(n17733), .C(n80), .D(current_state[0]), 
         .Z(n2804[0])) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;
    defparam i5979_4_lut_4_lut.init = 16'h5545;
    LUT4 i1_4_lut_adj_128 (.A(n14519), .B(n12300), .C(n5923), .D(n15043), 
         .Z(drive_clk_enable_3)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_128.init = 16'h0100;
    LUT4 i1_2_lut_rep_307 (.A(cnt_scl[4]), .B(n10), .Z(drive_clk_enable_19)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_307.init = 16'h4444;
    LUT4 i13448_3_lut_4_lut (.A(cnt_scl[4]), .B(n10), .C(n17789), .D(data_read_temp[4]), 
         .Z(n16660)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i13448_3_lut_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_129 (.A(current_state[6]), .B(n18168), .C(n17720), 
         .D(n13982), .Z(n14519)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_129.init = 16'h0a08;
    LUT4 i1_4_lut_adj_130 (.A(n15053), .B(n17804), .C(n55_adj_1611), .D(n17779), 
         .Z(n12300)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_130.init = 16'haa8a;
    LUT4 i1_4_lut_adj_131 (.A(n6329), .B(n17719), .C(n38), .D(n15213), 
         .Z(n5923)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_131.init = 16'hcc8c;
    LUT4 i1_4_lut_adj_132 (.A(n15311), .B(n15041), .C(n15325), .D(n4_adj_1599), 
         .Z(n15043)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_132.init = 16'h4c44;
    LUT4 i1_2_lut_adj_133 (.A(\current_state[1] ), .B(n3966), .Z(n15053)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_adj_133.init = 16'h8888;
    LUT4 n18167_bdd_2_lut (.A(n18167), .B(cnt_scl[0]), .Z(n18168)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n18167_bdd_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_134 (.A(\current_state[1] ), .B(n3966), .Z(n15311)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_adj_134.init = 16'h4444;
    LUT4 i1_4_lut_adj_135 (.A(n15741), .B(n17713), .C(cnt_scl[1]), .D(n17721), 
         .Z(n15041)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_135.init = 16'h888c;
    CCU2C add_23_7 (.A0(cnt_div[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11881), .COUT(n11882), .S0(n2[5]), .S1(n2[6]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_7.INIT0 = 16'haaaa;
    defparam add_23_7.INIT1 = 16'haaaa;
    defparam add_23_7.INJECT1_0 = "NO";
    defparam add_23_7.INJECT1_1 = "NO";
    LUT4 i1_rep_37_4_lut (.A(n13829), .B(cnt_scl[4]), .C(cnt_scl[3]), 
         .D(n17759), .Z(n14177)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(269[21] 295[28])
    defparam i1_rep_37_4_lut.init = 16'h5755;
    CCU2C add_23_5 (.A0(cnt_div[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11880), .COUT(n11881), .S0(n2[3]), .S1(n2[4]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_5.INIT0 = 16'haaaa;
    defparam add_23_5.INIT1 = 16'haaaa;
    defparam add_23_5.INJECT1_0 = "NO";
    defparam add_23_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_136 (.A(n17727), .B(n17787), .C(cnt_scl[1]), .D(n17779), 
         .Z(n15325)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_136.init = 16'hfffd;
    PFUMX i14045 (.BLUT(n17796), .ALUT(n17797), .C0(n3706), .Z(n6329));
    FD1P3DX next_state_i0_i1 (.D(n2855), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i1.GSR = "ENABLED";
    LUT4 cnt_scl_2__bdd_3_lut (.A(addr[11]), .B(addr[9]), .C(cnt_scl[3]), 
         .Z(n17611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam cnt_scl_2__bdd_3_lut.init = 16'hcaca;
    FD1P3DX next_state_i0_i2 (.D(n2846[2]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i2.GSR = "ENABLED";
    FD1P3DX next_state_i0_i3 (.D(n12733), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i3.GSR = "ENABLED";
    FD1P3DX next_state_i0_i4 (.D(n2846[4]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i4.GSR = "ENABLED";
    FD1P3DX next_state_i0_i5 (.D(n2846[5]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i5.GSR = "ENABLED";
    FD1P3DX next_state_i0_i6 (.D(n2846[6]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i6.GSR = "ENABLED";
    FD1P3DX next_state_i0_i7 (.D(n2846[7]), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i7.GSR = "ENABLED";
    FD1P3DX next_state_i0_i8 (.D(n12775), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i8.GSR = "ENABLED";
    FD1P3DX next_state_i0_i9 (.D(n12761), .SP(drive_clk_enable_31), .CK(drive_clk), 
            .CD(sys_rst_n_N_472), .Q(next_state[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam next_state_i0_i9.GSR = "ENABLED";
    LUT4 i13188_2_lut_rep_375 (.A(cnt_scl[9]), .B(cnt_scl[7]), .Z(n17779)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13188_2_lut_rep_375.init = 16'heeee;
    LUT4 i13769_3_lut (.A(n4004[0]), .B(n12863), .C(n3966), .Z(n4010[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13769_3_lut.init = 16'hcaca;
    CCU2C add_23_3 (.A0(cnt_div[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(cnt_div[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11879), .COUT(n11880), .S0(n2[1]), .S1(n2[2]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_3.INIT0 = 16'haaaa;
    defparam add_23_3.INIT1 = 16'haaaa;
    defparam add_23_3.INJECT1_0 = "NO";
    defparam add_23_3.INJECT1_1 = "NO";
    LUT4 i1_3_lut_3_lut_4_lut_adj_137 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n6939), 
         .D(n55_adj_1611), .Z(n14140)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_137.init = 16'h1000;
    CCU2C add_23_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_div[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11879), .S1(n2[0]));   // d:/project/crosslink/project/impl1/source/i2c_drive.v(73[30:44])
    defparam add_23_1.INIT0 = 16'h0000;
    defparam add_23_1.INIT1 = 16'h555a;
    defparam add_23_1.INJECT1_0 = "NO";
    defparam add_23_1.INJECT1_1 = "NO";
    LUT4 i13767_4_lut (.A(n6058), .B(start), .C(drive_clk), .D(n5998), 
         .Z(drive_clk_N_1118)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C)))) */ ;
    defparam i13767_4_lut.init = 16'h3fb7;
    LUT4 i1_4_lut_4_lut_adj_138 (.A(n17779), .B(n14993), .C(n55_adj_1611), 
         .D(n3276), .Z(n14614)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_4_lut_4_lut_adj_138.init = 16'h0040;
    LUT4 i1_4_lut_adj_139 (.A(n16291), .B(n15707), .C(n16293), .D(n15705), 
         .Z(n6058)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_139.init = 16'hffdf;
    LUT4 i13082_2_lut (.A(cnt_div[2]), .B(cnt_div[7]), .Z(n16293)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13082_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_adj_140 (.A(cnt_div[0]), .B(cnt_div[3]), .C(cnt_div[8]), 
         .Z(n15705)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_adj_140.init = 16'hfdfd;
    LUT4 n22_bdd_3_lut (.A(n22_adj_1607), .B(n17612), .C(cnt_scl[4]), 
         .Z(n17613)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n22_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(current_state[0]), 
         .D(n17787), .Z(n15213)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'hfffe;
    LUT4 i1_4_lut_adj_142 (.A(n13), .B(n4_adj_1629), .C(n17795), .D(n15689), 
         .Z(n5998)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_142.init = 16'h0400;
    LUT4 i1_4_lut_adj_143 (.A(cnt_div[1]), .B(cnt_div[7]), .C(cnt_div[2]), 
         .D(cnt_div[6]), .Z(n4_adj_1629)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(59[18] 76[16])
    defparam i1_4_lut_adj_143.init = 16'h0214;
    LUT4 i1_4_lut_adj_144 (.A(cnt_div[8]), .B(n17791), .C(cnt_div[3]), 
         .D(cnt_div[0]), .Z(n15689)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_144.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_adj_145 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[4]), 
         .Z(n15115)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_145.init = 16'hfefe;
    LUT4 i1_4_lut_adj_146 (.A(cnt_div[13]), .B(cnt_div[14]), .C(cnt_div[10]), 
         .D(cnt_div[9]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(67[22:56])
    defparam i1_4_lut_adj_146.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_147 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(n56), 
         .D(n5_c), .Z(n13987)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_147.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[5]), 
         .D(n17787), .Z(n14109)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_adj_149 (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(cnt_scl[1]), 
         .Z(n15261)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_149.init = 16'h1010;
    LUT4 i3801_3_lut (.A(current_state[6]), .B(current_state[0]), .C(n3909), 
         .Z(n6323)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i3801_3_lut.init = 16'h3a3a;
    LUT4 i1_4_lut_adj_150 (.A(n3909), .B(flag_done), .C(current_state[6]), 
         .D(n17717), .Z(n14609)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_150.init = 16'h0504;
    LUT4 i13204_2_lut_3_lut (.A(cnt_scl[9]), .B(cnt_scl[7]), .C(\current_state[1] ), 
         .Z(n16415)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13204_2_lut_3_lut.init = 16'hfefe;
    LUT4 i20_4_lut (.A(n16431), .B(n17794), .C(n3007), .D(n80), .Z(n8218)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i20_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_151 (.A(n17775), .B(n12674), .C(n74_adj_1630), .D(n17785), 
         .Z(n80)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_151.init = 16'hccdc;
    LUT4 i1_4_lut_adj_152 (.A(current_state[7]), .B(flag_ack), .C(current_state[0]), 
         .D(n77), .Z(n12674)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_152.init = 16'h0100;
    LUT4 i1_4_lut_adj_153 (.A(n42), .B(n15737), .C(n9165), .D(flag_ack), 
         .Z(n48)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_153.init = 16'hce0a;
    FD1P3DX data_read_temp_i0_i1 (.D(n17789), .SP(drive_clk_enable_32), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i1.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i3 (.D(n17789), .SP(drive_clk_enable_33), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i3.GSR = "ENABLED";
    FD1P3DX data_read_temp_i0_i5 (.D(n17789), .SP(drive_clk_enable_34), 
            .CK(drive_clk), .CD(sys_rst_n_N_472), .Q(data_read_temp[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam data_read_temp_i0_i5.GSR = "ENABLED";
    FD1P3BX scl_256 (.D(n9708), .SP(sys_clk_c_enable_226), .CK(sys_clk_c), 
            .PD(sys_rst_n_N_472), .Q(i2c_sclk_0_c)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=59, LSE_RLINE=73 */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam scl_256.GSR = "ENABLED";
    LUT4 i5894_2_lut_rep_376 (.A(current_state[5]), .B(\current_state[1] ), 
         .Z(n17780)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5894_2_lut_rep_376.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_154 (.A(current_state[5]), .B(\current_state[1] ), 
         .C(n13594), .D(cnt_scl_9__N_983[0]), .Z(n14199)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_154.init = 16'h1000;
    LUT4 i6348_2_lut (.A(n17563), .B(n3009), .Z(n2846[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6348_2_lut.init = 16'h2222;
    LUT4 i3_4_lut (.A(n17739), .B(n14950), .C(n17783), .D(n28_adj_1631), 
         .Z(n3966)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i3_4_lut.init = 16'h0504;
    LUT4 i2_4_lut (.A(\current_state[1] ), .B(\current_state[3] ), .C(\current_state[4] ), 
         .D(\current_state[2] ), .Z(n14950)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0104;
    LUT4 i1_4_lut_adj_155 (.A(n15411), .B(\current_state[3] ), .C(n48), 
         .D(n8218), .Z(n12733)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_4_lut_adj_155.init = 16'heca0;
    LUT4 i5912_2_lut_rep_377 (.A(current_state[7]), .B(current_state[6]), 
         .Z(n17781)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5912_2_lut_rep_377.init = 16'heeee;
    LUT4 i1_4_lut_adj_156 (.A(n16275), .B(flag_ack), .C(n17753), .D(n17793), 
         .Z(n3005)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_156.init = 16'h0400;
    LUT4 i6346_2_lut (.A(n2834[4]), .B(n3009), .Z(n2846[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6346_2_lut.init = 16'h2222;
    LUT4 i6345_2_lut (.A(n2834[5]), .B(n3009), .Z(n2846[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6345_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_157 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[5]), .Z(n14188)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_157.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_158 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[0]), .Z(n14182)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_158.init = 16'h1000;
    LUT4 i1_4_lut_4_lut_adj_159 (.A(n17787), .B(n15261), .C(n17724), .D(n4_adj_1599), 
         .Z(n14740)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_159.init = 16'h4000;
    LUT4 i6344_2_lut (.A(n2834[6]), .B(n3009), .Z(n2846[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6344_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_4_lut_adj_160 (.A(n17787), .B(n15529), .C(n15099), 
         .D(n17745), .Z(n14122)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_160.init = 16'h0040;
    LUT4 i6343_4_lut (.A(n2804[7]), .B(n3009), .C(n2818[7]), .D(n3007), 
         .Z(n2846[7])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6343_4_lut.init = 16'h3022;
    LUT4 i6342_4_lut (.A(current_state[7]), .B(n3005), .C(\current_state[4] ), 
         .D(flag_ack), .Z(n2818[7])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i6342_4_lut.init = 16'h3032;
    LUT4 i1_2_lut_adj_161 (.A(current_state[9]), .B(n8218), .Z(n12761)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_161.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_162 (.A(current_state[7]), .B(current_state[6]), 
         .C(current_state[5]), .D(current_state[0]), .Z(n5)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_162.init = 16'h0110;
    LUT4 i3800_4_lut_then_3_lut (.A(cnt_scl[4]), .B(cnt_scl[3]), .C(cnt_scl[5]), 
         .Z(n17797)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3800_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i13214_2_lut_rep_335_3_lut_4_lut (.A(current_state[7]), .B(current_state[6]), 
         .C(current_state[0]), .D(current_state[5]), .Z(n17739)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13214_2_lut_rep_335_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_163 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[9]), .Z(n14184)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_163.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_164 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[8]), .Z(n14185)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_164.init = 16'h1000;
    LUT4 i6129_2_lut (.A(\current_state[4] ), .B(\current_state[2] ), .Z(n9165)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6129_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_165 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[4]), .Z(n14183)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_165.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_166 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[3]), .Z(n14179)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_166.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_167 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[2]), .Z(n14187)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_167.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_168 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[1]), .Z(n14181)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_168.init = 16'h1000;
    LUT4 i1_4_lut_adj_169 (.A(\current_state[3] ), .B(\current_state[2] ), 
         .C(\current_state[1] ), .D(\current_state[4] ), .Z(n15737)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_169.init = 16'h0104;
    LUT4 i13721_2_lut_rep_313_3_lut_4_lut (.A(n17746), .B(n17745), .C(cnt_scl[1]), 
         .D(n13498), .Z(n17717)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i13721_2_lut_rep_313_3_lut_4_lut.init = 16'h0010;
    LUT4 cnt_scl_1__bdd_4_lut_14116 (.A(cnt_scl[1]), .B(cnt_scl[0]), .C(cnt_scl[5]), 
         .D(n17746), .Z(n17410)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam cnt_scl_1__bdd_4_lut_14116.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_170 (.A(n17746), .B(n17745), .C(cnt_scl[5]), 
         .D(n17777), .Z(n19_adj_1594)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(324[25:31])
    defparam i1_3_lut_4_lut_adj_170.init = 16'hffef;
    LUT4 i1_3_lut_4_lut_adj_171 (.A(current_state[7]), .B(current_state[6]), 
         .C(n12719), .D(cnt_scl_9__N_983[7]), .Z(n14186)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_171.init = 16'h1000;
    LUT4 i1_2_lut_rep_379 (.A(\current_state[8] ), .B(current_state[9]), 
         .Z(n17783)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i1_2_lut_rep_379.init = 16'heeee;
    LUT4 i10550_2_lut_rep_329_3_lut_4_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(current_state[6]), .D(\current_state[3] ), .Z(n17733)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i10550_2_lut_rep_329_3_lut_4_lut.init = 16'hfffe;
    LUT4 n8943_bdd_4_lut_14044 (.A(n17762), .B(data_write[7]), .C(n17642), 
         .D(n17724), .Z(n17703)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n8943_bdd_4_lut_14044.init = 16'h44f0;
    LUT4 n8943_bdd_4_lut (.A(n17762), .B(addr[7]), .C(n17639), .D(n17724), 
         .Z(n17704)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n8943_bdd_4_lut.init = 16'h44f0;
    LUT4 i1_2_lut_rep_343_3_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(current_state[7]), .Z(n17747)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i1_2_lut_rep_343_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_328_3_lut_4_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(n9539), .D(current_state[7]), .Z(n17732)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i1_2_lut_rep_328_3_lut_4_lut.init = 16'hfffe;
    LUT4 addr_1__bdd_3_lut (.A(addr[1]), .B(addr[0]), .C(cnt_scl[2]), 
         .Z(n17639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam addr_1__bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_172 (.A(\current_state[8] ), .B(current_state[9]), 
         .C(n92), .Z(n14957)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i1_2_lut_3_lut_adj_172.init = 16'hefef;
    LUT4 i6291_2_lut_rep_349_3_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(\current_state[3] ), .Z(n17753)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i6291_2_lut_rep_349_3_lut.init = 16'hfefe;
    LUT4 i23_3_lut (.A(cnt_scl[0]), .B(cnt_scl[5]), .C(cnt_scl[1]), .Z(n12)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;
    defparam i23_3_lut.init = 16'hc5c5;
    LUT4 i1_4_lut_adj_173 (.A(n15115), .B(n24), .C(cnt_scl[1]), .D(n17787), 
         .Z(n3276)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_173.init = 16'h0004;
    LUT4 i10691_2_lut_rep_325_3_lut_4_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(current_state[5]), .D(\current_state[2] ), .Z(n17729)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i10691_2_lut_rep_325_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_309_3_lut (.A(\current_state[8] ), .B(current_state[9]), 
         .C(n92), .Z(n17713)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(90[13:41])
    defparam i1_2_lut_rep_309_3_lut.init = 16'h1010;
    LUT4 i10494_2_lut_rep_312_3_lut_4_lut (.A(n9539), .B(n17747), .C(\current_state[4] ), 
         .D(n17784), .Z(n17716)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10494_2_lut_rep_312_3_lut_4_lut.init = 16'hfffe;
    LUT4 data_write_1__bdd_3_lut (.A(data_write[1]), .B(data_write[0]), 
         .C(cnt_scl[2]), .Z(n17642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam data_write_1__bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_174 (.A(n9539), .B(n17747), .C(current_state[6]), 
         .D(\current_state[3] ), .Z(n15637)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_174.init = 16'h0110;
    LUT4 i13749_4_lut (.A(n15803), .B(n8), .C(cnt_scl[3]), .D(cnt_scl[4]), 
         .Z(drive_clk_enable_32)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i13749_4_lut.init = 16'h4000;
    LUT4 i6124_2_lut_rep_380 (.A(\current_state[2] ), .B(\current_state[3] ), 
         .Z(n17784)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6124_2_lut_rep_380.init = 16'heeee;
    LUT4 i1_4_lut_adj_175 (.A(n17790), .B(n17750), .C(n15779), .D(cnt_scl[2]), 
         .Z(n15803)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_175.init = 16'hfffe;
    LUT4 i1_2_lut_adj_176 (.A(cnt_scl[8]), .B(cnt_scl[9]), .Z(n15779)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_176.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_177 (.A(\current_state[2] ), .B(\current_state[3] ), 
         .C(\current_state[4] ), .D(\current_state[1] ), .Z(n28_adj_1631)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_177.init = 16'h0110;
    LUT4 i5981_2_lut_rep_381 (.A(current_state[5]), .B(\current_state[4] ), 
         .Z(n17785)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5981_2_lut_rep_381.init = 16'heeee;
    LUT4 i13747_4_lut (.A(n15787), .B(n8), .C(cnt_scl[4]), .D(n15817), 
         .Z(drive_clk_enable_33)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i13747_4_lut.init = 16'h0040;
    LUT4 i13745_4_lut (.A(n15819), .B(n8), .C(cnt_scl[3]), .D(n15817), 
         .Z(drive_clk_enable_34)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i13745_4_lut.init = 16'h0040;
    LUT4 i13764_2_lut (.A(start), .B(n5998), .Z(sys_clk_c_enable_226)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i13764_2_lut.init = 16'h7777;
    LUT4 i13739_3_lut (.A(i2c_sclk_0_c), .B(start), .C(n6058), .Z(n9708)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i13739_3_lut.init = 16'hb7b7;
    LUT4 i1_4_lut_adj_178 (.A(n12), .B(n17746), .C(n16401), .D(n15179), 
         .Z(n14127)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_178.init = 16'h0200;
    LUT4 i1_2_lut_rep_344_3_lut (.A(current_state[5]), .B(\current_state[4] ), 
         .C(cnt_scl[9]), .Z(n17748)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_344_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_179 (.A(n17779), .B(n17735), .C(n13498), .D(cnt_scl[2]), 
         .Z(n13311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(34[18:25])
    defparam i1_4_lut_adj_179.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_180 (.A(current_state[5]), .B(\current_state[4] ), 
         .C(cnt_scl[2]), .D(cnt_scl[9]), .Z(n15831)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_180.init = 16'hfffe;
    LUT4 i1_4_lut_adj_181 (.A(n15423), .B(n14109), .C(cnt_scl[0]), .D(cnt_scl[3]), 
         .Z(n14615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_4_lut_adj_181.init = 16'hfffe;
    LUT4 i1_3_lut_adj_182 (.A(cnt_scl[1]), .B(cnt_scl[2]), .C(cnt_scl[4]), 
         .Z(n15423)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_3_lut_adj_182.init = 16'hfefe;
    LUT4 i1_2_lut_rep_346_3_lut (.A(current_state[5]), .B(\current_state[4] ), 
         .C(cnt_scl[7]), .Z(n17750)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_346_3_lut.init = 16'hfefe;
    LUT4 current_state_4__bdd_4_lut_14193 (.A(n17743), .B(current_state[7]), 
         .C(n17774), .D(\current_state[3] ), .Z(n17644)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+(D)))) */ ;
    defparam current_state_4__bdd_4_lut_14193.init = 16'hccc9;
    LUT4 i1_4_lut_adj_183 (.A(n14127), .B(n4_adj_1599), .C(n17787), .D(n17779), 
         .Z(n4762)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_183.init = 16'hfffb;
    LUT4 i3_4_lut_adj_184 (.A(\current_state[3] ), .B(n16261), .C(n9539), 
         .D(\current_state[4] ), .Z(n3960)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i3_4_lut_adj_184.init = 16'h0102;
    LUT4 i6126_2_lut_rep_337_3_lut_4_lut (.A(current_state[5]), .B(\current_state[4] ), 
         .C(current_state[6]), .D(current_state[7]), .Z(n17741)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6126_2_lut_rep_337_3_lut_4_lut.init = 16'hfffe;
    LUT4 i7730_4_lut (.A(n14024), .B(n62), .C(cnt_scl[4]), .D(n86), 
         .Z(n56)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(34[18:25])
    defparam i7730_4_lut.init = 16'hcfca;
    LUT4 n17644_bdd_3_lut (.A(n17644), .B(current_state[7]), .C(\current_state[4] ), 
         .Z(n17645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17644_bdd_3_lut.init = 16'hcaca;
    LUT4 i13685_2_lut_3_lut_4_lut_4_lut (.A(n17746), .B(cnt_scl[4]), .C(n12), 
         .D(n17745), .Z(n16732)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i13685_2_lut_3_lut_4_lut_4_lut.init = 16'hccdc;
    LUT4 i1_4_lut_adj_185 (.A(n14680), .B(cnt_scl[2]), .C(n17789), .D(cnt_scl[0]), 
         .Z(n15221)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_185.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_186 (.A(current_state[5]), .B(\current_state[4] ), 
         .C(n15779), .D(cnt_scl[7]), .Z(n15817)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_186.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_187 (.A(n17746), .B(cnt_scl[3]), .C(n16391), 
         .D(cnt_scl[2]), .Z(n15201)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_4_lut_adj_187.init = 16'h0501;
    LUT4 i1_4_lut_4_lut_adj_188 (.A(n17746), .B(n14127), .C(n16557), .D(n4_adj_1599), 
         .Z(n14164)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_188.init = 16'h1000;
    LUT4 i13180_2_lut (.A(cnt_scl[4]), .B(current_state[0]), .Z(n16391)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13180_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_189 (.A(cnt_scl[5]), .B(\current_state[1] ), .Z(n14993)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(117[13] 375[20])
    defparam i1_2_lut_adj_189.init = 16'h8888;
    LUT4 mux_1037_i1_3_lut (.A(addr[6]), .B(addr[4]), .C(cnt_scl[3]), 
         .Z(n3579[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(198[21] 231[28])
    defparam mux_1037_i1_3_lut.init = 16'hcaca;
    LUT4 i49_3_lut (.A(addr[14]), .B(addr[12]), .C(cnt_scl[3]), .Z(n30_adj_1606)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(166[21] 190[28])
    defparam i49_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_190 (.A(cnt_scl[7]), .B(n15779), .C(cnt_scl[6]), 
         .D(current_state[5]), .Z(n15075)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_190.init = 16'hfffe;
    LUT4 i13627_3_lut_4_lut (.A(n17724), .B(cnt_scl[3]), .C(n17703), .D(n16615), 
         .Z(n3645[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(236[21] 261[28])
    defparam i13627_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_3_lut_4_lut_adj_191 (.A(n17784), .B(n17732), .C(n22_adj_1619), 
         .D(\current_state[4] ), .Z(n3003)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_191.init = 16'h0010;
    PFUMX i13992 (.BLUT(n17613), .ALUT(n17609), .C0(n17724), .Z(n17614));
    LUT4 i1_3_lut_adj_192 (.A(cnt_scl[7]), .B(cnt_scl[5]), .C(\current_state[3] ), 
         .Z(n15099)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_192.init = 16'h4040;
    LUT4 i1_2_lut_rep_382 (.A(cnt_scl[5]), .B(rd_cnt_c[0]), .Z(n17786)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_382.init = 16'h8888;
    LUT4 i5921_3_lut_4_lut (.A(cnt_scl[1]), .B(n17721), .C(current_state[0]), 
         .D(flag_done), .Z(n66)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(355[25:30])
    defparam i5921_3_lut_4_lut.init = 16'h000d;
    LUT4 i1_2_lut_3_lut_adj_193 (.A(cnt_scl[5]), .B(rd_cnt_c[0]), .C(cnt_scl[7]), 
         .Z(n15457)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_193.init = 16'h0808;
    LUT4 i13224_2_lut_rep_383 (.A(cnt_scl[8]), .B(cnt_scl[6]), .Z(n17787)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13224_2_lut_rep_383.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_194 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[3]), 
         .D(n17390), .Z(n14573)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_194.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_195 (.A(n17739), .B(n17783), .C(\current_state[2] ), 
         .D(n3005), .Z(n15411)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_195.init = 16'h1000;
    LUT4 i3800_4_lut_else_3_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .C(cnt_scl[2]), 
         .Z(n17796)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i3800_4_lut_else_3_lut.init = 16'hbfbf;
    LUT4 i1803_2_lut (.A(cnt_scl[1]), .B(cnt_scl[5]), .Z(n4778)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(303[21] 345[28])
    defparam i1803_2_lut.init = 16'h2222;
    LUT4 i13220_2_lut_3_lut_4_lut (.A(n17783), .B(\current_state[3] ), .C(n3003), 
         .D(current_state[6]), .Z(n16431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13220_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13629_3_lut_4_lut (.A(n17724), .B(cnt_scl[3]), .C(n17704), .D(n16612), 
         .Z(n3594[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(236[21] 261[28])
    defparam i13629_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_3_lut_4_lut_adj_196 (.A(n17753), .B(current_state[6]), 
         .C(current_state[7]), .D(n80), .Z(n13983)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_196.init = 16'h1000;
    LUT4 i1_3_lut_4_lut_adj_197 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[1]), 
         .D(n21), .Z(n14828)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_197.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_198 (.A(n18597), .B(n17787), .C(n17764), .D(n17760), 
         .Z(n13310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(34[18:25])
    defparam i1_3_lut_4_lut_adj_198.init = 16'hfffe;
    LUT4 i1_2_lut_rep_331_3_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[4]), 
         .D(cnt_scl[3]), .Z(n17735)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_331_3_lut_4_lut.init = 16'hfffe;
    LUT4 i13297_2_lut_rep_342_3_lut_4_lut (.A(cnt_scl[8]), .B(cnt_scl[6]), 
         .C(cnt_scl[7]), .D(cnt_scl[9]), .Z(n17746)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13297_2_lut_rep_342_3_lut_4_lut.init = 16'hfffe;
    LUT4 flag_ack_N_1200_bdd_4_lut (.A(n17722), .B(n13311), .C(cnt_scl[1]), 
         .D(current_state[6]), .Z(n17553)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam flag_ack_N_1200_bdd_4_lut.init = 16'haa30;
    LUT4 i1_4_lut_adj_199 (.A(n16535), .B(n17745), .C(cnt_scl[5]), .D(n18597), 
         .Z(n3706)) /* synthesis lut_function=(!(A+(B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_199.init = 16'h1511;
    PFUMX i13990 (.BLUT(n17611), .ALUT(n17610), .C0(cnt_scl[2]), .Z(n17612));
    LUT4 i13323_4_lut (.A(n17779), .B(cnt_scl[1]), .C(n17758), .D(cnt_scl[6]), 
         .Z(n16535)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13323_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_200 (.A(n17785), .B(n15721), .C(n17784), .D(n11294), 
         .Z(drive_clk_enable_10)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_200.init = 16'h0004;
    LUT4 i6036_4_lut (.A(n19_adj_1594), .B(current_state[6]), .C(rd_cnt_c[0]), 
         .D(n17722), .Z(n1[0])) /* synthesis lut_function=(A (B (C))+!A (B (C (D)+!C !(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(130[21] 152[28])
    defparam i6036_4_lut.init = 16'hc084;
    PFUMX mux_559_i1 (.BLUT(n2804[0]), .ALUT(n2818[0]), .C0(n3007), .Z(n2834[0]));
    LUT4 i2229_2_lut_rep_385 (.A(i2c_sda_0_out), .B(sda_transmit_en), .Z(n17789)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(45[17:28])
    defparam i2229_2_lut_rep_385.init = 16'h2222;
    LUT4 n17584_bdd_2_lut_3_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), 
         .C(n17584), .Z(n17585)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(45[17:28])
    defparam n17584_bdd_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i13447_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n6437), 
         .D(data_read_temp[6]), .Z(n16659)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(45[17:28])
    defparam i13447_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13449_3_lut_4_lut (.A(i2c_sda_0_out), .B(sda_transmit_en), .C(n6437), 
         .D(data_read_temp[2]), .Z(n16661)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(45[17:28])
    defparam i13449_3_lut_4_lut.init = 16'h2f20;
    PFUMX mux_559_i5 (.BLUT(n13976), .ALUT(n2818[4]), .C0(n3007), .Z(n2834[4]));
    LUT4 i1_2_lut_rep_386 (.A(cnt_scl[0]), .B(cnt_scl[6]), .Z(n17790)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_386.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_201 (.A(cnt_scl[0]), .B(cnt_scl[6]), .C(cnt_scl[7]), 
         .D(cnt_scl[8]), .Z(n15833)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_201.init = 16'hfffe;
    PFUMX mux_559_i6 (.BLUT(n13975), .ALUT(n2818[5]), .C0(n3007), .Z(n2834[5]));
    PFUMX mux_549_i8 (.BLUT(n13983), .ALUT(n4314[1]), .C0(n3003), .Z(n2804[7]));
    LUT4 i1_2_lut_rep_387 (.A(cnt_div[4]), .B(cnt_div[5]), .Z(n17791)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(54[14] 82[12])
    defparam i1_2_lut_rep_387.init = 16'h8888;
    PFUMX i37 (.BLUT(n20_adj_1627), .ALUT(n22_adj_1626), .C0(n3966), .Z(n31_adj_1632));
    PFUMX i13981 (.BLUT(n17586), .ALUT(n17585), .C0(n3966), .Z(n17587));
    LUT4 i86_4_lut (.A(n13478), .B(n62), .C(cnt_scl[4]), .D(n14698), 
         .Z(n55_adj_1611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i86_4_lut.init = 16'hcacf;
    PFUMX mux_559_i7 (.BLUT(n14247), .ALUT(n2818[6]), .C0(n3007), .Z(n2834[6]));
    LUT4 i1_4_lut_adj_202 (.A(n17787), .B(n5238), .C(n17755), .D(cnt_scl[0]), 
         .Z(n14698)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hfffe;
    LUT4 i2232_2_lut (.A(cnt_scl[2]), .B(cnt_scl[5]), .Z(n5238)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i2232_2_lut.init = 16'h6666;
    PFUMX mux_1356_i1 (.BLUT(n3984[0]), .ALUT(n14088), .C0(n3909), .Z(n4004[0]));
    LUT4 i1_3_lut_adj_203 (.A(n2[0]), .B(n4267), .C(start), .Z(n14244)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_203.init = 16'h2020;
    LUT4 i2_rep_42_4_lut (.A(n16527), .B(cnt_div[0]), .C(n33_adj_1633), 
         .D(n17791), .Z(n4267)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_rep_42_4_lut.init = 16'h4000;
    PFUMX i13529 (.BLUT(n14740), .ALUT(n14140), .C0(\current_state[1] ), 
          .Z(n41));
    LUT4 i13190_2_lut (.A(cnt_scl[2]), .B(cnt_scl[3]), .Z(n16401)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13190_2_lut.init = 16'heeee;
    PFUMX mux_1315_i1 (.BLUT(sda_transmit_N_1190), .ALUT(sda_transmit_N_1187), 
          .C0(\current_state[1] ), .Z(n3951[0]));
    LUT4 i1_3_lut_adj_204 (.A(cnt_scl[8]), .B(cnt_scl[6]), .C(cnt_scl[0]), 
         .Z(n13476)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_204.init = 16'h1010;
    L6MUX21 i13345 (.D0(n16555), .D1(n16556), .SD(\current_state[3] ), 
            .Z(n16557));
    PFUMX i16 (.BLUT(n15553), .ALUT(n14263), .C0(\current_state[1] ), 
          .Z(n12863));
    LUT4 i13315_4_lut (.A(n16469), .B(cnt_div[13]), .C(cnt_div[8]), .D(cnt_div[9]), 
         .Z(n16527)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13315_4_lut.init = 16'hfffe;
    LUT4 i13218_2_lut_rep_351 (.A(cnt_scl[3]), .B(cnt_scl[1]), .Z(n17755)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13218_2_lut_rep_351.init = 16'heeee;
    LUT4 i1_rep_11_4_lut (.A(n13310), .B(cnt_scl[1]), .C(n13954), .D(n13984), 
         .Z(n13982)) /* synthesis lut_function=(!((B (C+(D)))+!A)) */ ;
    defparam i1_rep_11_4_lut.init = 16'h222a;
    LUT4 i1_4_lut_adj_205 (.A(n15059), .B(n13442), .C(n17787), .D(cnt_scl[3]), 
         .Z(n13954)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_205.init = 16'h0008;
    LUT4 i1_2_lut_adj_206 (.A(cnt_scl[4]), .B(cnt_scl[5]), .Z(n15059)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_206.init = 16'h4444;
    LUT4 i13257_4_lut (.A(cnt_div[10]), .B(cnt_div[14]), .C(cnt_div[11]), 
         .D(cnt_div[12]), .Z(n16469)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13257_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_207 (.A(cnt_scl[0]), .B(cnt_scl[2]), .Z(n13442)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i1_2_lut_adj_207.init = 16'h2222;
    LUT4 i13683_4_lut (.A(n15195), .B(n31_adj_1632), .C(n14957), .D(n14628), 
         .Z(drive_clk_enable_4)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i13683_4_lut.init = 16'h0103;
    PFUMX i13344 (.BLUT(n3591[0]), .ALUT(n3594[0]), .C0(n16732), .Z(n16556));
    PFUMX i13343 (.BLUT(n3642[0]), .ALUT(n3645[0]), .C0(n16732), .Z(n16555));
    LUT4 i13768_3_lut (.A(n17554), .B(n3964[0]), .C(n3966), .Z(n3967[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13768_3_lut.init = 16'hcaca;
    LUT4 mux_1075_i1_3_lut (.A(data_write[6]), .B(data_write[4]), .C(cnt_scl[3]), 
         .Z(n3630[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(236[21] 261[28])
    defparam mux_1075_i1_3_lut.init = 16'hcaca;
    PFUMX i9587 (.BLUT(n12717), .ALUT(n12718), .C0(current_state[5]), 
          .Z(n12719));
    PFUMX i101 (.BLUT(n55), .ALUT(n66), .C0(current_state[7]), .Z(n74_adj_1630));
    PFUMX i33 (.BLUT(n10_adj_1604), .ALUT(n20_adj_1596), .C0(current_state[6]), 
          .Z(n22_adj_1619));
    LUT4 i1_3_lut_4_lut_adj_208 (.A(cnt_scl[3]), .B(cnt_scl[1]), .C(cnt_scl[5]), 
         .D(n13476), .Z(n14024)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_208.init = 16'h0100;
    PFUMX i13967 (.BLUT(n17562), .ALUT(n17561), .C0(n3007), .Z(n17563));
    PFUMX i13965 (.BLUT(n17553), .ALUT(n17552), .C0(n3909), .Z(n17554));
    LUT4 i13743_4_lut (.A(n15833), .B(n8), .C(n18597), .D(n15831), .Z(drive_clk_enable_7)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/i2c_drive.v(114[14] 376[12])
    defparam i13743_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_209 (.A(n16513), .B(n30_adj_1634), .C(n17713), .D(n17719), 
         .Z(drive_clk_enable_5)) /* synthesis lut_function=(A (B (C))+!A !(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_209.init = 16'h80c0;
    PFUMX i63 (.BLUT(n14122), .ALUT(n20_adj_1598), .C0(\current_state[1] ), 
          .Z(n42));
    LUT4 i13301_3_lut (.A(n14680), .B(n14177), .C(cnt_scl[2]), .Z(n16513)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i13301_3_lut.init = 16'h8080;
    LUT4 i57_4_lut (.A(n14258), .B(n41), .C(n3966), .D(n3909), .Z(n30_adj_1634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i57_4_lut.init = 16'hcfca;
    PFUMX i50 (.BLUT(n14278), .ALUT(n31_adj_1595), .C0(cnt_div[6]), .Z(n33_adj_1633));
    LUT4 i1_4_lut_adj_210 (.A(n15533), .B(n17722), .C(n17745), .D(n17787), 
         .Z(n14258)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_210.init = 16'h0008;
    PFUMX i86 (.BLUT(n14828), .ALUT(n14573), .C0(cnt_scl[5]), .Z(n86));
    LUT4 i1_4_lut_adj_211 (.A(n15529), .B(cnt_scl[7]), .C(cnt_scl[5]), 
         .D(current_state[6]), .Z(n15533)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_211.init = 16'h2000;
    PFUMX i14049 (.BLUT(n17802), .ALUT(n17803), .C0(cnt_scl[0]), .Z(n17804));
    
endmodule
//
// Verilog Description of module uart_send_ctrl
//

module uart_send_ctrl (tx_state, GND_net, VCC_net, sys_clk_c, sys_rst_n_N_472, 
            work_en_N_1466, \tx_data[0] , csi_long_packet_count_sys, csi_payload_byte_count_sys, 
            tx_phase, csi_byte_clk_count_sys, csi_hs_sync_count_sys, \tx_phase[1] , 
            uart_busy, n12098, n16662, \tx_data[6] , \tx_data[5] , 
            \tx_data[4] , \tx_data[3] , \tx_data[2] , \tx_data[1] , 
            \frame_count[7] , frame_count_valid, csi_last_wc_sys, \frame_count[6] , 
            \frame_count[5] , \frame_count[2] , \frame_count[1] , \frame_count[0] , 
            \frame_count[4] , \frame_count[3] , csi_last_dt_sys) /* synthesis syn_module_defined=1 */ ;
    output [1:0]tx_state;
    input GND_net;
    input VCC_net;
    input sys_clk_c;
    input sys_rst_n_N_472;
    output work_en_N_1466;
    output \tx_data[0] ;
    input [31:0]csi_long_packet_count_sys;
    input [31:0]csi_payload_byte_count_sys;
    output [2:0]tx_phase;
    input [31:0]csi_byte_clk_count_sys;
    input [31:0]csi_hs_sync_count_sys;
    output \tx_phase[1] ;
    input uart_busy;
    output n12098;
    input n16662;
    output \tx_data[6] ;
    output \tx_data[5] ;
    output \tx_data[4] ;
    output \tx_data[3] ;
    output \tx_data[2] ;
    output \tx_data[1] ;
    input \frame_count[7] ;
    input frame_count_valid;
    input [15:0]csi_last_wc_sys;
    input \frame_count[6] ;
    input \frame_count[5] ;
    input \frame_count[2] ;
    input \frame_count[1] ;
    input \frame_count[0] ;
    input \frame_count[4] ;
    input \frame_count[3] ;
    input [5:0]csi_last_dt_sys;
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    
    wire n16558, n16560, n16682;
    wire [31:0]field_value_31__N_1263;
    
    wire n4;
    wire [15:0]n92;
    wire [2:0]field_index;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(55[12:23])
    
    wire n16562, n17771, n9176, sys_clk_c_enable_151, n11942;
    wire [25:0]sec_cnt;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(19[12:19])
    wire [25:0]n109;
    
    wire n11943, sec_tick, sec_cnt_25__N_1325, n16552, n16554, n16161, 
        n11941, tx_flag_N_1429;
    wire [7:0]tx_data_7__N_1413;
    
    wire n11940, n17676, n11939, n2;
    wire [1:0]tx_state_c;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(53[12:20])
    
    wire sys_clk_c_enable_161;
    wire [1:0]tx_state_1__N_1247;
    
    wire sys_clk_c_enable_159;
    wire [2:0]tx_phase_2__N_1249;
    
    wire sys_clk_c_enable_158, n13819;
    wire [7:0]field_label;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(56[12:23])
    
    wire sys_clk_c_enable_156, n9021;
    wire [31:0]field_value;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(57[12:23])
    wire [3:0]digits_left;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(58[12:23])
    
    wire sys_clk_c_enable_120;
    wire [3:0]digits_left_3__N_1295;
    
    wire n17677, n17674, n16710, n1, n16155, n16593;
    wire [31:0]n3;
    
    wire n16600, n1_adj_1560, n16603, n11938, n16573, n16575, n5822;
    wire [2:0]tx_phase_c;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(54[12:20])
    
    wire n11937, n16549, n16551, n16606, n17770, n11936, n17782, 
        n11935, n16574, n11934, n16570, n16572, n17736, n11933, 
        n11932, n11931, n2_adj_1563;
    wire [25:0]n137;
    
    wire n1_adj_1564, n17765, n4_adj_1565, n16565, n16591, n16550, 
        n14605, n13704, n17806, n17805, n17809, n17808, n1_adj_1566, 
        n2_adj_1567, n16561, n16473, n17812, n17811, n17815, n17814, 
        n16553, n16595, n6, n16596, n16567, n16569, n16598, n6_adj_1568, 
        n16599, n16601, n6_adj_1569, n16602, n16604, n6_adj_1570, 
        n16605, n4_adj_1571, n16646, n16607, n6_adj_1572, n16608, 
        n4_adj_1573, n4_adj_1574, n16559, n4_adj_1575, n16568, n16645, 
        n4_adj_1576, n16571, n16564, n16566, n16643, n16642, n16640, 
        n16639, n17530, n2234, n16772, n17606, n2246;
    wire [3:0]n4890;
    wire [3:0]digits_left_3__N_1396;
    
    wire n14901, n16637, n16636, n16634, n16633, n17740, n4_adj_1578, 
        n16631, n16630, n16628, n16627, n16625, n16624, sys_clk_c_enable_160, 
        n16622, n16621, n16576, n16577, n16578, n16583, n16579, 
        n16580, n16581, n16582, n2_adj_1579, n16584, n16563, n16623, 
        n16626, n16629, n16632, n16635, n1_adj_1580, n16638, n16641, 
        n16644, n16647, n2244, n2248, n13267, n15699;
    wire [3:0]n3101;
    
    wire n17605, n17756, n1_adj_1581, n17734, n14, n1_adj_1582, 
        n2_adj_1583, n16467, n16529, n16171, n5625;
    wire [6:0]n4364;
    
    wire n5623, n16285, n16151, n17675, n1_adj_1584, n2_adj_1585, 
        n17670, n17669, n17671, n16597, n16594, n16475, n2_adj_1589, 
        n16592, n1_adj_1590, n17667, n17668, n16303, n2_adj_1591, 
        n17673, n6_adj_1592;
    
    PFUMX tx_state_1__I_0_90_Mux_18_i3 (.BLUT(n16558), .ALUT(n16560), .C0(n16682), 
          .Z(field_value_31__N_1263[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    PFUMX i13350 (.BLUT(n4), .ALUT(n92[3]), .C0(field_index[1]), .Z(n16562));
    LUT4 i13719_2_lut_3_lut (.A(n17771), .B(tx_state[1]), .C(n9176), .Z(sys_clk_c_enable_151)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i13719_2_lut_3_lut.init = 16'h0e0e;
    CCU2C sec_cnt_1916_add_4_25 (.A0(sec_cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11942), .COUT(n11943), .S0(n109[23]), 
          .S1(n109[24]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_25.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_25.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_25.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_25.INJECT1_1 = "NO";
    FD1S3DX sec_tick_79 (.D(sec_cnt_25__N_1325), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(26[14] 32[8])
    defparam sec_tick_79.GSR = "ENABLED";
    PFUMX tx_state_1__I_0_90_Mux_17_i3 (.BLUT(n16552), .ALUT(n16554), .C0(n16682), 
          .Z(field_value_31__N_1263[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i1_4_lut (.A(sec_cnt[18]), .B(sec_cnt[24]), .C(sec_cnt[11]), 
         .D(sec_cnt[7]), .Z(n16161)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    CCU2C sec_cnt_1916_add_4_23 (.A0(sec_cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11941), .COUT(n11942), .S0(n109[21]), 
          .S1(n109[22]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_23.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_23.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_23.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_23.INJECT1_1 = "NO";
    FD1S3DX tx_flag_80 (.D(tx_flag_N_1429), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1466)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_flag_80.GSR = "ENABLED";
    FD1P3DX tx_data_i0 (.D(tx_data_7__N_1413[0]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i0.GSR = "ENABLED";
    CCU2C sec_cnt_1916_add_4_21 (.A0(sec_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11940), .COUT(n11941), .S0(n109[19]), 
          .S1(n109[20]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_21.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_21.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_21.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_21.INJECT1_1 = "NO";
    LUT4 csi_long_packet_count_sys_24__bdd_3_lut_14224 (.A(csi_long_packet_count_sys[24]), 
         .B(csi_payload_byte_count_sys[24]), .C(field_index[0]), .Z(n17676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_24__bdd_3_lut_14224.init = 16'hcaca;
    CCU2C sec_cnt_1916_add_4_19 (.A0(sec_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11939), .COUT(n11940), .S0(n109[17]), 
          .S1(n109[18]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_19.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_19.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_19.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_19.INJECT1_1 = "NO";
    LUT4 mux_16_Mux_17_i2_3_lut (.A(csi_long_packet_count_sys[17]), .B(csi_payload_byte_count_sys[17]), 
         .C(field_index[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_17_i2_3_lut.init = 16'hcaca;
    FD1P3DX tx_state_i0 (.D(tx_state_1__N_1247[0]), .SP(sys_clk_c_enable_161), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state_c[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_state_i0.GSR = "ENABLED";
    FD1P3DX tx_phase_i0 (.D(tx_phase_2__N_1249[0]), .SP(sys_clk_c_enable_159), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i0.GSR = "ENABLED";
    FD1P3DX field_index_i0 (.D(n13819), .SP(sys_clk_c_enable_158), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i0.GSR = "ENABLED";
    FD1P3DX field_label_i0 (.D(n9021), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i0.GSR = "ENABLED";
    FD1P3DX field_value_i0 (.D(field_value_31__N_1263[0]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i0.GSR = "ENABLED";
    FD1P3DX digits_left_i0 (.D(digits_left_3__N_1295[0]), .SP(sys_clk_c_enable_120), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i0.GSR = "ENABLED";
    LUT4 n17677_bdd_3_lut (.A(n17677), .B(n17674), .C(n16710), .Z(field_value_31__N_1263[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17677_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_17_i1_3_lut (.A(csi_byte_clk_count_sys[17]), .B(csi_hs_sync_count_sys[17]), 
         .C(field_index[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_17_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(sec_cnt[8]), .B(sec_cnt[16]), .Z(n16155)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i3854 (.BLUT(n16593), .ALUT(n3[26]), .C0(n16710), .Z(field_value_31__N_1263[26]));
    LUT4 i13388_3_lut (.A(csi_byte_clk_count_sys[29]), .B(csi_hs_sync_count_sys[29]), 
         .C(field_index[0]), .Z(n16600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13388_3_lut.init = 16'hcaca;
    LUT4 i6196_2_lut (.A(tx_state_c[0]), .B(tx_state[1]), .Z(tx_flag_N_1429)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i6196_2_lut.init = 16'h2222;
    LUT4 mux_16_Mux_23_i1_3_lut (.A(csi_byte_clk_count_sys[23]), .B(csi_hs_sync_count_sys[23]), 
         .C(field_index[0]), .Z(n1_adj_1560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_23_i1_3_lut.init = 16'hcaca;
    LUT4 i13391_3_lut (.A(csi_byte_clk_count_sys[30]), .B(csi_hs_sync_count_sys[30]), 
         .C(field_index[0]), .Z(n16603)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13391_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_1916_add_4_17 (.A0(sec_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11938), .COUT(n11939), .S0(n109[15]), 
          .S1(n109[16]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_17.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_17.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_17.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_17.INJECT1_1 = "NO";
    PFUMX tx_state_1__I_0_90_Mux_23_i3 (.BLUT(n16573), .ALUT(n16575), .C0(n16682), 
          .Z(field_value_31__N_1263[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i5957_3_lut (.A(n5822), .B(tx_phase_c[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1413[0])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i5957_3_lut.init = 16'h3232;
    CCU2C sec_cnt_1916_add_4_15 (.A0(sec_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11937), .COUT(n11938), .S0(n109[13]), 
          .S1(n109[14]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_15.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_15.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_15.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_15.INJECT1_1 = "NO";
    PFUMX i3852 (.BLUT(n16549), .ALUT(n16551), .C0(n16682), .Z(field_value_31__N_1263[16]));
    LUT4 i13394_3_lut (.A(csi_byte_clk_count_sys[31]), .B(csi_hs_sync_count_sys[31]), 
         .C(field_index[0]), .Z(n16606)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13394_3_lut.init = 16'hcaca;
    LUT4 i13752_3_lut_4_lut (.A(n17770), .B(tx_state_c[0]), .C(tx_phase[0]), 
         .D(tx_state[1]), .Z(tx_phase_2__N_1249[0])) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13752_3_lut_4_lut.init = 16'h0400;
    CCU2C sec_cnt_1916_add_4_13 (.A0(sec_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11936), .COUT(n11937), .S0(n109[11]), 
          .S1(n109[12]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_13.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_13.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_13.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_13.INJECT1_1 = "NO";
    LUT4 i2812_4_lut (.A(field_label[0]), .B(field_value[28]), .C(\tx_phase[1] ), 
         .D(n17782), .Z(n5822)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2812_4_lut.init = 16'h3aca;
    CCU2C sec_cnt_1916_add_4_11 (.A0(sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11935), .COUT(n11936), .S0(n109[9]), .S1(n109[10]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_11.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_11.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_11.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_11.INJECT1_1 = "NO";
    LUT4 i13363_3_lut (.A(n16574), .B(field_value[19]), .C(tx_state[1]), 
         .Z(n16575)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13363_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_1916_add_4_9 (.A0(sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11934), .COUT(n11935), .S0(n109[7]), .S1(n109[8]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_9.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_9.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_9.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_9.INJECT1_1 = "NO";
    PFUMX tx_state_1__I_0_90_Mux_22_i3 (.BLUT(n16570), .ALUT(n16572), .C0(n16682), 
          .Z(field_value_31__N_1263[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 mux_16_Mux_30_i7_3_lut (.A(n16603), .B(field_value[26]), .C(tx_state[1]), 
         .Z(n3[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_30_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_332_3_lut (.A(tx_phase[0]), .B(tx_phase_c[2]), .C(\tx_phase[1] ), 
         .Z(n17736)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(125[21:26])
    defparam i1_2_lut_rep_332_3_lut.init = 16'hefef;
    CCU2C sec_cnt_1916_add_4_7 (.A0(sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11933), .COUT(n11934), .S0(n109[5]), .S1(n109[6]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_7.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_7.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_7.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_7.INJECT1_1 = "NO";
    CCU2C sec_cnt_1916_add_4_5 (.A0(sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11932), .COUT(n11933), .S0(n109[3]), .S1(n109[4]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_5.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_5.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_5.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_5.INJECT1_1 = "NO";
    CCU2C sec_cnt_1916_add_4_3 (.A0(sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n11931), .COUT(n11932), .S0(n109[1]), .S1(n109[2]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_3.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_3.INIT1 = 16'haaa0;
    defparam sec_cnt_1916_add_4_3.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_3.INJECT1_1 = "NO";
    LUT4 mux_16_Mux_16_i2_3_lut (.A(csi_long_packet_count_sys[16]), .B(csi_payload_byte_count_sys[16]), 
         .C(field_index[0]), .Z(n2_adj_1563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_16_i2_3_lut.init = 16'hcaca;
    FD1S3DX sec_cnt_1916__i0 (.D(n137[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i0.GSR = "ENABLED";
    CCU2C sec_cnt_1916_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n11931), .S1(n109[0]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_1.INIT0 = 16'h0000;
    defparam sec_cnt_1916_add_4_1.INIT1 = 16'h555f;
    defparam sec_cnt_1916_add_4_1.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_16_Mux_16_i1_3_lut (.A(csi_byte_clk_count_sys[16]), .B(csi_hs_sync_count_sys[16]), 
         .C(field_index[0]), .Z(n1_adj_1564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_16_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_361 (.A(uart_busy), .B(tx_state_c[0]), .Z(n17765)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i1_2_lut_rep_361.init = 16'hbbbb;
    LUT4 i13687_4_lut_4_lut (.A(uart_busy), .B(tx_state_c[0]), .C(tx_state[1]), 
         .D(tx_phase_c[2]), .Z(sys_clk_c_enable_158)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13687_4_lut_4_lut.init = 16'h4000;
    PFUMX i13353 (.BLUT(n4_adj_1565), .ALUT(n92[4]), .C0(field_index[1]), 
          .Z(n16565));
    LUT4 i13379_3_lut (.A(csi_byte_clk_count_sys[26]), .B(csi_hs_sync_count_sys[26]), 
         .C(field_index[0]), .Z(n16591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13379_3_lut.init = 16'hcaca;
    LUT4 i13339_3_lut (.A(n16550), .B(field_value[12]), .C(tx_state[1]), 
         .Z(n16551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13339_3_lut.init = 16'hcaca;
    LUT4 i13736_3_lut (.A(tx_state[1]), .B(field_index[2]), .C(field_index[1]), 
         .Z(n16710)) /* synthesis lut_function=(A+!(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13736_3_lut.init = 16'habab;
    LUT4 n4725_bdd_4_lut_4_lut_4_lut (.A(uart_busy), .B(tx_state_c[0]), 
         .C(sec_tick), .D(tx_state[1]), .Z(sys_clk_c_enable_161)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A !(B+!((D)+!C)))) */ ;
    defparam n4725_bdd_4_lut_4_lut_4_lut.init = 16'h66dc;
    LUT4 i13661_2_lut_3_lut (.A(field_index[2]), .B(field_index[1]), .C(field_index[0]), 
         .Z(n13819)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i13661_2_lut_3_lut.init = 16'h0707;
    LUT4 i1_3_lut (.A(\tx_phase[1] ), .B(tx_phase_c[2]), .C(tx_phase[0]), 
         .Z(n14605)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(157[25:42])
    defparam i1_3_lut.init = 16'hfbfb;
    LUT4 n16651_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[2]), .B(csi_long_packet_count_sys[2]), 
         .C(n13704), .D(field_index[0]), .Z(n17806)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16651_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16651_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[2]), .B(n13704), 
         .C(csi_hs_sync_count_sys[2]), .D(field_index[0]), .Z(n17805)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16651_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n16648_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[3]), .B(csi_long_packet_count_sys[3]), 
         .C(n13704), .D(field_index[0]), .Z(n17809)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16648_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16648_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[3]), .B(n13704), 
         .C(csi_hs_sync_count_sys[3]), .D(field_index[0]), .Z(n17808)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16648_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i13579_3_lut (.A(n1_adj_1566), .B(n2_adj_1567), .C(field_index[1]), 
         .Z(n16561)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13579_3_lut.init = 16'hcaca;
    LUT4 i13261_4_lut (.A(sec_cnt[25]), .B(sec_cnt[5]), .C(sec_cnt[0]), 
         .D(sec_cnt[22]), .Z(n16473)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13261_4_lut.init = 16'h8000;
    LUT4 n16654_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[1]), .B(csi_long_packet_count_sys[1]), 
         .C(n13704), .D(field_index[0]), .Z(n17812)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16654_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16654_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[1]), .B(n13704), 
         .C(csi_hs_sync_count_sys[1]), .D(field_index[0]), .Z(n17811)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16654_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 n16618_bdd_4_lut_then_4_lut (.A(csi_payload_byte_count_sys[0]), .B(csi_long_packet_count_sys[0]), 
         .C(n13704), .D(field_index[0]), .Z(n17815)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n16618_bdd_4_lut_then_4_lut.init = 16'h0a0c;
    LUT4 n16618_bdd_4_lut_else_4_lut (.A(csi_byte_clk_count_sys[0]), .B(n13704), 
         .C(csi_hs_sync_count_sys[0]), .D(field_index[0]), .Z(n17814)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16618_bdd_4_lut_else_4_lut.init = 16'h3022;
    LUT4 i13342_3_lut (.A(n16553), .B(field_value[13]), .C(tx_state[1]), 
         .Z(n16554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13342_3_lut.init = 16'hcaca;
    LUT4 i13593_3_lut (.A(n16595), .B(n6), .C(field_index[2]), .Z(n16596)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13593_3_lut.init = 16'hcaca;
    PFUMX tx_state_1__I_0_90_Mux_21_i3 (.BLUT(n16567), .ALUT(n16569), .C0(n16682), 
          .Z(field_value_31__N_1263[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i13595_3_lut (.A(n16598), .B(n6_adj_1568), .C(field_index[2]), 
         .Z(n16599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13595_3_lut.init = 16'hcaca;
    LUT4 i13597_3_lut (.A(n16601), .B(n6_adj_1569), .C(field_index[2]), 
         .Z(n16602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13597_3_lut.init = 16'hcaca;
    LUT4 i13599_3_lut (.A(n16604), .B(n6_adj_1570), .C(field_index[2]), 
         .Z(n16605)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13599_3_lut.init = 16'hcaca;
    PFUMX i13338 (.BLUT(n4_adj_1571), .ALUT(n92[0]), .C0(field_index[1]), 
          .Z(n16550));
    LUT4 i13434_3_lut (.A(csi_long_packet_count_sys[4]), .B(csi_payload_byte_count_sys[4]), 
         .C(field_index[0]), .Z(n16646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13434_3_lut.init = 16'hcaca;
    LUT4 i13601_3_lut (.A(n16607), .B(n6_adj_1572), .C(field_index[2]), 
         .Z(n16608)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13601_3_lut.init = 16'hcaca;
    PFUMX i13341 (.BLUT(n4_adj_1573), .ALUT(n92[1]), .C0(field_index[1]), 
          .Z(n16553));
    PFUMX i13347 (.BLUT(n4_adj_1574), .ALUT(n92[2]), .C0(field_index[1]), 
          .Z(n16559));
    PFUMX i13356 (.BLUT(n4_adj_1575), .ALUT(n92[5]), .C0(field_index[1]), 
          .Z(n16568));
    LUT4 i13433_3_lut (.A(csi_byte_clk_count_sys[4]), .B(csi_hs_sync_count_sys[4]), 
         .C(field_index[0]), .Z(n16645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13433_3_lut.init = 16'hcaca;
    PFUMX i13359 (.BLUT(n4_adj_1576), .ALUT(n92[6]), .C0(field_index[1]), 
          .Z(n16571));
    PFUMX tx_state_1__I_0_90_Mux_20_i3 (.BLUT(n16564), .ALUT(n16566), .C0(n16682), 
          .Z(field_value_31__N_1263[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i13431_3_lut (.A(csi_long_packet_count_sys[5]), .B(csi_payload_byte_count_sys[5]), 
         .C(field_index[0]), .Z(n16643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13431_3_lut.init = 16'hcaca;
    LUT4 i13430_3_lut (.A(csi_byte_clk_count_sys[5]), .B(csi_hs_sync_count_sys[5]), 
         .C(field_index[0]), .Z(n16642)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13430_3_lut.init = 16'hcaca;
    LUT4 i13428_3_lut (.A(csi_long_packet_count_sys[6]), .B(csi_payload_byte_count_sys[6]), 
         .C(field_index[0]), .Z(n16640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13428_3_lut.init = 16'hcaca;
    LUT4 i13427_3_lut (.A(csi_byte_clk_count_sys[6]), .B(csi_hs_sync_count_sys[6]), 
         .C(field_index[0]), .Z(n16639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13427_3_lut.init = 16'hcaca;
    LUT4 field_index_2__bdd_3_lut (.A(field_index[2]), .B(field_index[0]), 
         .C(field_index[1]), .Z(n17530)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam field_index_2__bdd_3_lut.init = 16'h1c1c;
    LUT4 i1_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n2234)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i13655_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n16772)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i13655_2_lut_3_lut.init = 16'he1e1;
    LUT4 n4_bdd_2_lut_3_lut (.A(field_index[0]), .B(field_index[1]), .C(field_index[2]), 
         .Z(n17606)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam n4_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_adj_39 (.A(field_index[1]), .B(field_index[0]), 
         .C(field_index[2]), .Z(n2246)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_2_lut_3_lut_adj_39.init = 16'h0606;
    LUT4 i2_3_lut_4_lut (.A(digits_left[1]), .B(digits_left[0]), .C(digits_left[2]), 
         .D(n4890[2]), .Z(digits_left_3__N_1396[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i2_3_lut_4_lut.init = 16'he1f0;
    LUT4 i1_3_lut_4_lut (.A(digits_left[1]), .B(digits_left[0]), .C(digits_left[2]), 
         .D(n4890[2]), .Z(n14901)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i1_3_lut_4_lut.init = 16'h0100;
    LUT4 i13389_3_lut (.A(csi_long_packet_count_sys[29]), .B(csi_payload_byte_count_sys[29]), 
         .C(field_index[0]), .Z(n16601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13389_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_29_i7_3_lut (.A(n16600), .B(field_value[25]), .C(tx_state[1]), 
         .Z(n3[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_29_i7_3_lut.init = 16'hcaca;
    LUT4 i13425_3_lut (.A(csi_long_packet_count_sys[7]), .B(csi_payload_byte_count_sys[7]), 
         .C(field_index[0]), .Z(n16637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13425_3_lut.init = 16'hcaca;
    LUT4 i1614_2_lut_rep_366 (.A(tx_phase_c[2]), .B(uart_busy), .Z(n17770)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i1614_2_lut_rep_366.init = 16'heeee;
    LUT4 i13424_3_lut (.A(csi_byte_clk_count_sys[7]), .B(csi_hs_sync_count_sys[7]), 
         .C(field_index[0]), .Z(n16636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13424_3_lut.init = 16'hcaca;
    LUT4 i13422_3_lut (.A(csi_long_packet_count_sys[8]), .B(csi_payload_byte_count_sys[8]), 
         .C(field_index[0]), .Z(n16634)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13422_3_lut.init = 16'hcaca;
    LUT4 i13421_3_lut (.A(csi_byte_clk_count_sys[8]), .B(csi_hs_sync_count_sys[8]), 
         .C(field_index[0]), .Z(n16633)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13421_3_lut.init = 16'hcaca;
    LUT4 i2413_2_lut_rep_336_3_lut (.A(tx_phase_c[2]), .B(uart_busy), .C(tx_state_c[0]), 
         .Z(n17740)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(136[17] 159[20])
    defparam i2413_2_lut_rep_336_3_lut.init = 16'hefef;
    PFUMX i13362 (.BLUT(n4_adj_1578), .ALUT(n92[7]), .C0(field_index[1]), 
          .Z(n16574));
    LUT4 i1_3_lut_rep_367 (.A(uart_busy), .B(tx_state_c[0]), .C(sec_tick), 
         .Z(n17771)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i1_3_lut_rep_367.init = 16'h1010;
    LUT4 i13419_3_lut (.A(csi_long_packet_count_sys[9]), .B(csi_payload_byte_count_sys[9]), 
         .C(field_index[0]), .Z(n16631)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13419_3_lut.init = 16'hcaca;
    LUT4 i13418_3_lut (.A(csi_byte_clk_count_sys[9]), .B(csi_hs_sync_count_sys[9]), 
         .C(field_index[0]), .Z(n16630)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13418_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_3_lut_4_lut (.A(uart_busy), .B(tx_state_c[0]), .C(sec_tick), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_120)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !((D)+!C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hcc10;
    LUT4 i13416_3_lut (.A(csi_long_packet_count_sys[10]), .B(csi_payload_byte_count_sys[10]), 
         .C(field_index[0]), .Z(n16628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13416_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_4_lut (.A(uart_busy), .B(tx_state_c[0]), .C(sec_tick), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_156)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i2_2_lut_4_lut.init = 16'h0010;
    LUT4 i13415_3_lut (.A(csi_byte_clk_count_sys[10]), .B(csi_hs_sync_count_sys[10]), 
         .C(field_index[0]), .Z(n16627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13415_3_lut.init = 16'hcaca;
    LUT4 i13413_3_lut (.A(csi_long_packet_count_sys[11]), .B(csi_payload_byte_count_sys[11]), 
         .C(field_index[0]), .Z(n16625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13413_3_lut.init = 16'hcaca;
    LUT4 i13412_3_lut (.A(csi_byte_clk_count_sys[11]), .B(csi_hs_sync_count_sys[11]), 
         .C(field_index[0]), .Z(n16624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13412_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_333_4_lut (.A(uart_busy), .B(tx_state_c[0]), .C(sec_tick), 
         .D(tx_state[1]), .Z(sys_clk_c_enable_160)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i1_2_lut_rep_333_4_lut.init = 16'hff10;
    LUT4 i13410_3_lut (.A(csi_long_packet_count_sys[12]), .B(csi_payload_byte_count_sys[12]), 
         .C(field_index[0]), .Z(n16622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13410_3_lut.init = 16'hcaca;
    LUT4 i13409_3_lut (.A(csi_byte_clk_count_sys[12]), .B(csi_hs_sync_count_sys[12]), 
         .C(field_index[0]), .Z(n16621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13409_3_lut.init = 16'hcaca;
    LUT4 i6675_4_lut_4_lut (.A(uart_busy), .B(tx_state[1]), .C(tx_state_c[0]), 
         .D(n14605), .Z(tx_state_1__N_1247[0])) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i6675_4_lut_4_lut.init = 16'h4f0f;
    PFUMX i13366 (.BLUT(n16576), .ALUT(n16577), .C0(field_index[1]), .Z(n16578));
    LUT4 i23_3_lut (.A(n17771), .B(n12098), .C(tx_state[1]), .Z(sys_clk_c_enable_159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23_3_lut.init = 16'hcaca;
    LUT4 i13371_3_lut (.A(csi_long_packet_count_sys[15]), .B(csi_payload_byte_count_sys[15]), 
         .C(field_index[0]), .Z(n16583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13371_3_lut.init = 16'hcaca;
    PFUMX i13369 (.BLUT(n16579), .ALUT(n16580), .C0(field_index[1]), .Z(n16581));
    LUT4 i13370_3_lut (.A(csi_byte_clk_count_sys[15]), .B(csi_hs_sync_count_sys[15]), 
         .C(field_index[0]), .Z(n16582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13370_3_lut.init = 16'hcaca;
    LUT4 i13741_2_lut (.A(tx_state[1]), .B(field_index[2]), .Z(n16682)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13741_2_lut.init = 16'heeee;
    LUT4 i13368_3_lut (.A(csi_long_packet_count_sys[14]), .B(csi_payload_byte_count_sys[14]), 
         .C(field_index[0]), .Z(n16580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13368_3_lut.init = 16'hcaca;
    LUT4 i13367_3_lut (.A(csi_byte_clk_count_sys[14]), .B(csi_hs_sync_count_sys[14]), 
         .C(field_index[0]), .Z(n16579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13367_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_18_i2_3_lut (.A(csi_long_packet_count_sys[18]), .B(csi_payload_byte_count_sys[18]), 
         .C(field_index[0]), .Z(n2_adj_1579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_18_i2_3_lut.init = 16'hcaca;
    PFUMX i13372 (.BLUT(n16582), .ALUT(n16583), .C0(field_index[1]), .Z(n16584));
    FD1S3DX sec_cnt_1916__i25 (.D(n137[25]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i25.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i24 (.D(n137[24]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i24.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i23 (.D(n137[23]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i23.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i22 (.D(n137[22]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i22.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i21 (.D(n137[21]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i21.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i20 (.D(n137[20]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i20.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i19 (.D(n137[19]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i19.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i18 (.D(n137[18]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i18.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i17 (.D(n137[17]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i17.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i16 (.D(n137[16]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i16.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i15 (.D(n137[15]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i15.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i14 (.D(n137[14]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i14.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i13 (.D(n137[13]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i13.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i12 (.D(n137[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i12.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i11 (.D(n137[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i11.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i10 (.D(n137[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i10.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i9 (.D(n137[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i9.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i8 (.D(n137[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i8.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i7 (.D(n137[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i7.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i6 (.D(n137[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i6.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i5 (.D(n137[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i5.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i4 (.D(n137[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i4.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i3 (.D(n137[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i3.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i2 (.D(n137[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i2.GSR = "ENABLED";
    FD1S3DX sec_cnt_1916__i1 (.D(n137[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916__i1.GSR = "ENABLED";
    LUT4 i13351_3_lut (.A(n16562), .B(field_value[15]), .C(tx_state[1]), 
         .Z(n16563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13351_3_lut.init = 16'hcaca;
    PFUMX i13411 (.BLUT(n16621), .ALUT(n16622), .C0(field_index[1]), .Z(n16623));
    PFUMX i13414 (.BLUT(n16624), .ALUT(n16625), .C0(field_index[1]), .Z(n16626));
    PFUMX i13417 (.BLUT(n16627), .ALUT(n16628), .C0(field_index[1]), .Z(n16629));
    PFUMX i13420 (.BLUT(n16630), .ALUT(n16631), .C0(field_index[1]), .Z(n16632));
    PFUMX i13423 (.BLUT(n16633), .ALUT(n16634), .C0(field_index[1]), .Z(n16635));
    LUT4 mux_16_Mux_18_i1_3_lut (.A(csi_byte_clk_count_sys[18]), .B(csi_hs_sync_count_sys[18]), 
         .C(field_index[0]), .Z(n1_adj_1580)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_18_i1_3_lut.init = 16'hcaca;
    PFUMX i13426 (.BLUT(n16636), .ALUT(n16637), .C0(field_index[1]), .Z(n16638));
    PFUMX i13429 (.BLUT(n16639), .ALUT(n16640), .C0(field_index[1]), .Z(n16641));
    PFUMX i13432 (.BLUT(n16642), .ALUT(n16643), .C0(field_index[1]), .Z(n16644));
    PFUMX i13435 (.BLUT(n16645), .ALUT(n16646), .C0(field_index[1]), .Z(n16647));
    PFUMX tx_state_1__I_0_90_Mux_19_i3 (.BLUT(n16561), .ALUT(n16563), .C0(n16682), 
          .Z(field_value_31__N_1263[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;
    LUT4 i3870_4_lut (.A(field_index[2]), .B(n14901), .C(tx_state[1]), 
         .D(digits_left[3]), .Z(digits_left_3__N_1295[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3870_4_lut.init = 16'h35c5;
    LUT4 i3850_4_lut (.A(n16584), .B(field_value[11]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3850_4_lut.init = 16'hc0ca;
    FD1P3DX digits_left_i3 (.D(digits_left_3__N_1295[3]), .SP(sys_clk_c_enable_120), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i3.GSR = "ENABLED";
    FD1P3DX digits_left_i2 (.D(digits_left_3__N_1295[2]), .SP(sys_clk_c_enable_120), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i2.GSR = "ENABLED";
    FD1P3DX digits_left_i1 (.D(digits_left_3__N_1295[1]), .SP(sys_clk_c_enable_120), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(digits_left[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam digits_left_i1.GSR = "ENABLED";
    FD1P3DX field_value_i31 (.D(field_value_31__N_1263[31]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[31])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i31.GSR = "ENABLED";
    FD1P3DX field_value_i30 (.D(field_value_31__N_1263[30]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[30])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i30.GSR = "ENABLED";
    FD1P3DX field_value_i29 (.D(field_value_31__N_1263[29]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[29])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i29.GSR = "ENABLED";
    FD1P3DX field_value_i28 (.D(field_value_31__N_1263[28]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[28])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i28.GSR = "ENABLED";
    FD1P3DX field_value_i27 (.D(field_value_31__N_1263[27]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[27])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i27.GSR = "ENABLED";
    FD1P3DX field_value_i26 (.D(field_value_31__N_1263[26]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[26])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i26.GSR = "ENABLED";
    FD1P3DX field_value_i25 (.D(field_value_31__N_1263[25]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[25])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i25.GSR = "ENABLED";
    FD1P3DX field_value_i24 (.D(field_value_31__N_1263[24]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[24])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i24.GSR = "ENABLED";
    FD1P3DX field_value_i23 (.D(field_value_31__N_1263[23]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[23])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i23.GSR = "ENABLED";
    FD1P3DX field_value_i22 (.D(field_value_31__N_1263[22]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[22])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i22.GSR = "ENABLED";
    FD1P3DX field_value_i21 (.D(field_value_31__N_1263[21]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i21.GSR = "ENABLED";
    FD1P3DX field_value_i20 (.D(field_value_31__N_1263[20]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i20.GSR = "ENABLED";
    FD1P3DX field_value_i19 (.D(field_value_31__N_1263[19]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i19.GSR = "ENABLED";
    FD1P3DX field_value_i18 (.D(field_value_31__N_1263[18]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i18.GSR = "ENABLED";
    FD1P3DX field_value_i17 (.D(field_value_31__N_1263[17]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i17.GSR = "ENABLED";
    FD1P3DX field_value_i16 (.D(field_value_31__N_1263[16]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i16.GSR = "ENABLED";
    FD1P3DX field_value_i15 (.D(field_value_31__N_1263[15]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i15.GSR = "ENABLED";
    FD1P3DX field_value_i14 (.D(field_value_31__N_1263[14]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i14.GSR = "ENABLED";
    FD1P3DX field_value_i13 (.D(field_value_31__N_1263[13]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i13.GSR = "ENABLED";
    FD1P3DX field_value_i12 (.D(field_value_31__N_1263[12]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i12.GSR = "ENABLED";
    FD1P3DX field_value_i11 (.D(field_value_31__N_1263[11]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i11.GSR = "ENABLED";
    FD1P3DX field_value_i10 (.D(field_value_31__N_1263[10]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i10.GSR = "ENABLED";
    FD1P3DX field_value_i9 (.D(field_value_31__N_1263[9]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i9.GSR = "ENABLED";
    FD1P3DX field_value_i8 (.D(field_value_31__N_1263[8]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i8.GSR = "ENABLED";
    FD1P3DX field_value_i7 (.D(field_value_31__N_1263[7]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i7.GSR = "ENABLED";
    FD1P3DX field_value_i6 (.D(field_value_31__N_1263[6]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i6.GSR = "ENABLED";
    FD1P3DX field_value_i5 (.D(field_value_31__N_1263[5]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i5.GSR = "ENABLED";
    FD1P3DX field_value_i4 (.D(field_value_31__N_1263[4]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i4.GSR = "ENABLED";
    FD1P3DX field_value_i3 (.D(field_value_31__N_1263[3]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i3.GSR = "ENABLED";
    FD1P3DX field_value_i2 (.D(field_value_31__N_1263[2]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i2.GSR = "ENABLED";
    FD1P3DX field_value_i1 (.D(field_value_31__N_1263[1]), .SP(sys_clk_c_enable_151), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(field_value[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_value_i1.GSR = "ENABLED";
    FD1P3DX field_label_i6 (.D(VCC_net), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i6.GSR = "ENABLED";
    LUT4 i3848_4_lut (.A(n16581), .B(field_value[10]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3848_4_lut.init = 16'hc0ca;
    FD1P3DX field_label_i4 (.D(n2244), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i4.GSR = "ENABLED";
    FD1P3DX field_label_i3 (.D(n2246), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i3.GSR = "ENABLED";
    FD1P3DX field_label_i2 (.D(n2248), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i2.GSR = "ENABLED";
    FD1P3DX field_label_i1 (.D(n16772), .SP(sys_clk_c_enable_156), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_label[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_label_i1.GSR = "ENABLED";
    FD1P3DX field_index_i2 (.D(n13267), .SP(sys_clk_c_enable_158), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i2.GSR = "ENABLED";
    FD1P3DX field_index_i1 (.D(n17530), .SP(sys_clk_c_enable_158), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(field_index[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam field_index_i1.GSR = "ENABLED";
    FD1P3DX tx_phase_i2 (.D(tx_phase_2__N_1249[2]), .SP(sys_clk_c_enable_159), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_phase_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i2.GSR = "ENABLED";
    FD1P3DX tx_phase_i1 (.D(n16662), .SP(sys_clk_c_enable_160), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_phase[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_phase_i1.GSR = "ENABLED";
    FD1P3DX tx_state_i1 (.D(tx_state_1__N_1247[1]), .SP(sys_clk_c_enable_161), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(tx_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_state_i1.GSR = "ENABLED";
    FD1P3DX tx_data_i6 (.D(tx_data_7__N_1413[6]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i6.GSR = "ENABLED";
    FD1P3DX tx_data_i5 (.D(tx_data_7__N_1413[5]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i5.GSR = "ENABLED";
    FD1P3DX tx_data_i4 (.D(tx_data_7__N_1413[4]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i4.GSR = "ENABLED";
    FD1P3DX tx_data_i3 (.D(tx_data_7__N_1413[3]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i3.GSR = "ENABLED";
    FD1P3DX tx_data_i2 (.D(tx_data_7__N_1413[2]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i2.GSR = "ENABLED";
    FD1P3DX tx_data_i1 (.D(tx_data_7__N_1413[1]), .SP(tx_flag_N_1429), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(\tx_data[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=302, LSE_RLINE=316 */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(74[14] 163[8])
    defparam tx_data_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_40 (.A(n17770), .B(n15699), .C(tx_state_c[0]), .D(n3101[1]), 
         .Z(n12098)) /* synthesis lut_function=(!(A+!(B (C)+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'h4050;
    LUT4 i1_2_lut_adj_41 (.A(\tx_phase[1] ), .B(tx_phase[0]), .Z(n15699)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_41.init = 16'hdddd;
    LUT4 i3846_4_lut (.A(n16578), .B(field_value[9]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3846_4_lut.init = 16'hc0ca;
    LUT4 i13365_3_lut (.A(csi_long_packet_count_sys[13]), .B(csi_payload_byte_count_sys[13]), 
         .C(field_index[0]), .Z(n16577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13365_3_lut.init = 16'hcaca;
    LUT4 i3844_4_lut (.A(n16623), .B(field_value[8]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3844_4_lut.init = 16'hc0ca;
    LUT4 i13364_3_lut (.A(csi_byte_clk_count_sys[13]), .B(csi_hs_sync_count_sys[13]), 
         .C(field_index[0]), .Z(n16576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13364_3_lut.init = 16'hcaca;
    LUT4 i3842_4_lut (.A(n16626), .B(field_value[7]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3842_4_lut.init = 16'hc0ca;
    LUT4 i13348_3_lut (.A(n16559), .B(field_value[14]), .C(tx_state[1]), 
         .Z(n16560)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13348_3_lut.init = 16'hcaca;
    LUT4 i3840_4_lut (.A(n16629), .B(field_value[6]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3840_4_lut.init = 16'hc0ca;
    LUT4 i6299_2_lut (.A(n109[25]), .B(sec_cnt_25__N_1325), .Z(n137[25])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6299_2_lut.init = 16'h2222;
    LUT4 i6300_2_lut (.A(n109[24]), .B(sec_cnt_25__N_1325), .Z(n137[24])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6300_2_lut.init = 16'h2222;
    LUT4 i6464_2_lut (.A(\frame_count[7] ), .B(frame_count_valid), .Z(n92[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6464_2_lut.init = 16'h8888;
    LUT4 i3838_4_lut (.A(n16632), .B(field_value[5]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3838_4_lut.init = 16'hc0ca;
    LUT4 i6301_2_lut (.A(n109[23]), .B(sec_cnt_25__N_1325), .Z(n137[23])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6301_2_lut.init = 16'h2222;
    LUT4 i3836_4_lut (.A(n16635), .B(field_value[4]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3836_4_lut.init = 16'hc0ca;
    LUT4 i1_4_lut_adj_42 (.A(digits_left[2]), .B(digits_left[0]), .C(digits_left[1]), 
         .D(digits_left[3]), .Z(n3101[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(141[33:52])
    defparam i1_4_lut_adj_42.init = 16'hfffb;
    LUT4 i5928_2_lut (.A(csi_last_wc_sys[7]), .B(field_index[0]), .Z(n4_adj_1578)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5928_2_lut.init = 16'h8888;
    LUT4 i3834_4_lut (.A(n16638), .B(field_value[3]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3834_4_lut.init = 16'hc0ca;
    LUT4 i3832_4_lut (.A(n16641), .B(field_value[2]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3832_4_lut.init = 16'hc0ca;
    LUT4 n4_bdd_3_lut (.A(n4890[2]), .B(digits_left[1]), .C(digits_left[0]), 
         .Z(n17605)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;
    defparam n4_bdd_3_lut.init = 16'hc6c6;
    LUT4 i3830_4_lut (.A(n16644), .B(field_value[1]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3830_4_lut.init = 16'hc0ca;
    LUT4 i3828_4_lut (.A(n16647), .B(field_value[0]), .C(tx_state[1]), 
         .D(field_index[2]), .Z(field_value_31__N_1263[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3828_4_lut.init = 16'hc0ca;
    LUT4 i6302_2_lut (.A(n109[22]), .B(sec_cnt_25__N_1325), .Z(n137[22])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6302_2_lut.init = 16'h2222;
    LUT4 i1_3_lut_adj_43 (.A(field_index[0]), .B(field_index[2]), .C(field_index[1]), 
         .Z(n2244)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_3_lut_adj_43.init = 16'h2828;
    LUT4 i1_3_lut_adj_44 (.A(field_index[0]), .B(field_index[2]), .C(field_index[1]), 
         .Z(n2248)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i1_3_lut_adj_44.init = 16'hdcdc;
    LUT4 i1_4_lut_adj_45 (.A(tx_phase[0]), .B(n17740), .C(tx_state[1]), 
         .D(\tx_phase[1] ), .Z(tx_phase_2__N_1249[2])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_45.init = 16'h2000;
    LUT4 i6463_2_lut (.A(\frame_count[6] ), .B(frame_count_valid), .Z(n92[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6463_2_lut.init = 16'h8888;
    LUT4 i6303_2_lut (.A(n109[21]), .B(sec_cnt_25__N_1325), .Z(n137[21])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6303_2_lut.init = 16'h2222;
    LUT4 i6304_2_lut (.A(n109[20]), .B(sec_cnt_25__N_1325), .Z(n137[20])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6304_2_lut.init = 16'h2222;
    LUT4 i3912_2_lut (.A(tx_state_c[0]), .B(tx_state[1]), .Z(tx_state_1__N_1247[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i3912_2_lut.init = 16'h6666;
    LUT4 i6305_2_lut (.A(n109[19]), .B(sec_cnt_25__N_1325), .Z(n137[19])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6305_2_lut.init = 16'h2222;
    LUT4 i6563_4_lut (.A(field_label[6]), .B(n17756), .C(n17782), .D(\tx_phase[1] ), 
         .Z(tx_data_7__N_1413[6])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6563_4_lut.init = 16'h3022;
    LUT4 i6352_4_lut (.A(n1_adj_1581), .B(tx_phase_c[2]), .C(n17734), 
         .D(\tx_phase[1] ), .Z(tx_data_7__N_1413[4])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6352_4_lut.init = 16'h0322;
    LUT4 i5925_2_lut (.A(csi_last_wc_sys[6]), .B(field_index[0]), .Z(n4_adj_1576)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5925_2_lut.init = 16'h8888;
    LUT4 i6142_2_lut (.A(field_label[4]), .B(tx_phase[0]), .Z(n1_adj_1581)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6142_2_lut.init = 16'heeee;
    LUT4 i13671_4_lut (.A(n17756), .B(field_label[3]), .C(n14), .D(\tx_phase[1] ), 
         .Z(tx_data_7__N_1413[3])) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i13671_4_lut.init = 16'hafee;
    LUT4 i13581_3_lut (.A(n1_adj_1582), .B(n2_adj_1583), .C(field_index[1]), 
         .Z(n16564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13581_3_lut.init = 16'hcaca;
    LUT4 i13715_4_lut (.A(n16467), .B(n16529), .C(n16473), .D(n16171), 
         .Z(sec_cnt_25__N_1325)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(26[18:36])
    defparam i13715_4_lut.init = 16'h0080;
    LUT4 i6353_3_lut (.A(n5625), .B(tx_phase_c[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1413[2])) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6353_3_lut.init = 16'h3232;
    LUT4 i2616_3_lut (.A(field_label[2]), .B(n4364[2]), .C(\tx_phase[1] ), 
         .Z(n5625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2616_3_lut.init = 16'hcaca;
    LUT4 i6354_3_lut (.A(n5623), .B(tx_phase_c[2]), .C(tx_phase[0]), .Z(tx_data_7__N_1413[1])) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i6354_3_lut.init = 16'hcece;
    LUT4 i2614_3_lut (.A(field_label[1]), .B(n4364[1]), .C(\tx_phase[1] ), 
         .Z(n5623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(121[17] 127[24])
    defparam i2614_3_lut.init = 16'hcaca;
    LUT4 i6306_2_lut (.A(n109[18]), .B(sec_cnt_25__N_1325), .Z(n137[18])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6306_2_lut.init = 16'h2222;
    LUT4 i6307_2_lut (.A(n109[17]), .B(sec_cnt_25__N_1325), .Z(n137[17])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6307_2_lut.init = 16'h2222;
    LUT4 i6308_2_lut (.A(n109[16]), .B(sec_cnt_25__N_1325), .Z(n137[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6308_2_lut.init = 16'h2222;
    LUT4 i6309_2_lut (.A(n109[15]), .B(sec_cnt_25__N_1325), .Z(n137[15])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6309_2_lut.init = 16'h2222;
    LUT4 i6462_2_lut (.A(\frame_count[5] ), .B(frame_count_valid), .Z(n92[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6462_2_lut.init = 16'h8888;
    LUT4 i6310_2_lut (.A(n109[14]), .B(sec_cnt_25__N_1325), .Z(n137[14])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6310_2_lut.init = 16'h2222;
    LUT4 i6311_2_lut (.A(n109[13]), .B(sec_cnt_25__N_1325), .Z(n137[13])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6311_2_lut.init = 16'h2222;
    LUT4 i6312_2_lut (.A(n109[12]), .B(sec_cnt_25__N_1325), .Z(n137[12])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6312_2_lut.init = 16'h2222;
    LUT4 i5924_2_lut (.A(csi_last_wc_sys[5]), .B(field_index[0]), .Z(n4_adj_1575)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5924_2_lut.init = 16'h8888;
    LUT4 i6313_2_lut (.A(n109[11]), .B(sec_cnt_25__N_1325), .Z(n137[11])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6313_2_lut.init = 16'h2222;
    LUT4 i6459_2_lut (.A(\frame_count[2] ), .B(frame_count_valid), .Z(n92[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6459_2_lut.init = 16'h8888;
    LUT4 i6314_2_lut (.A(n109[10]), .B(sec_cnt_25__N_1325), .Z(n137[10])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6314_2_lut.init = 16'h2222;
    LUT4 i5908_2_lut (.A(csi_last_wc_sys[2]), .B(field_index[0]), .Z(n4_adj_1574)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5908_2_lut.init = 16'h8888;
    LUT4 i6458_2_lut (.A(\frame_count[1] ), .B(frame_count_valid), .Z(n92[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6458_2_lut.init = 16'h8888;
    LUT4 i6315_2_lut (.A(n109[9]), .B(sec_cnt_25__N_1325), .Z(n137[9])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6315_2_lut.init = 16'h2222;
    LUT4 i6316_2_lut (.A(n109[8]), .B(sec_cnt_25__N_1325), .Z(n137[8])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6316_2_lut.init = 16'h2222;
    LUT4 i5905_2_lut (.A(csi_last_wc_sys[1]), .B(field_index[0]), .Z(n4_adj_1573)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5905_2_lut.init = 16'h8888;
    LUT4 i6317_2_lut (.A(n109[7]), .B(sec_cnt_25__N_1325), .Z(n137[7])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6317_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_46 (.A(n16285), .B(n16151), .C(n16161), .D(n16155), 
         .Z(n16171)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_46.init = 16'hfffd;
    LUT4 i6297_2_lut (.A(\frame_count[0] ), .B(frame_count_valid), .Z(n92[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6297_2_lut.init = 16'h8888;
    LUT4 i6318_2_lut (.A(n109[6]), .B(sec_cnt_25__N_1325), .Z(n137[6])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6318_2_lut.init = 16'h2222;
    LUT4 i5902_2_lut (.A(csi_last_wc_sys[0]), .B(field_index[0]), .Z(n4_adj_1571)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5902_2_lut.init = 16'h8888;
    LUT4 i6319_2_lut (.A(n109[5]), .B(sec_cnt_25__N_1325), .Z(n137[5])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6319_2_lut.init = 16'h2222;
    LUT4 i6320_2_lut (.A(n109[4]), .B(sec_cnt_25__N_1325), .Z(n137[4])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6320_2_lut.init = 16'h2222;
    PFUMX i14028 (.BLUT(n17676), .ALUT(n17675), .C0(field_index[2]), .Z(n17677));
    LUT4 i6321_2_lut (.A(n109[3]), .B(sec_cnt_25__N_1325), .Z(n137[3])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6321_2_lut.init = 16'h2222;
    LUT4 i13583_3_lut (.A(n1_adj_1584), .B(n2_adj_1585), .C(field_index[1]), 
         .Z(n16567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13583_3_lut.init = 16'hcaca;
    LUT4 i6322_2_lut (.A(n109[2]), .B(sec_cnt_25__N_1325), .Z(n137[2])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6322_2_lut.init = 16'h2222;
    LUT4 mux_16_Mux_20_i1_3_lut (.A(csi_byte_clk_count_sys[20]), .B(csi_hs_sync_count_sys[20]), 
         .C(field_index[0]), .Z(n1_adj_1582)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_20_i1_3_lut.init = 16'hcaca;
    LUT4 i13395_3_lut (.A(csi_long_packet_count_sys[31]), .B(csi_payload_byte_count_sys[31]), 
         .C(field_index[0]), .Z(n16607)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13395_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_20_i2_3_lut (.A(csi_long_packet_count_sys[20]), .B(csi_payload_byte_count_sys[20]), 
         .C(field_index[0]), .Z(n2_adj_1583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_20_i2_3_lut.init = 16'hcaca;
    LUT4 i13354_3_lut (.A(n16565), .B(field_value[16]), .C(tx_state[1]), 
         .Z(n16566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13354_3_lut.init = 16'hcaca;
    LUT4 i6323_2_lut (.A(n109[1]), .B(sec_cnt_25__N_1325), .Z(n137[1])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6323_2_lut.init = 16'h2222;
    PFUMX i14025 (.BLUT(n17670), .ALUT(n17669), .C0(field_index[2]), .Z(n17671));
    LUT4 mux_16_Mux_31_i7_3_lut (.A(n16606), .B(field_value[27]), .C(tx_state[1]), 
         .Z(n3[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_31_i7_3_lut.init = 16'hcaca;
    CCU2C sec_cnt_1916_add_4_27 (.A0(sec_cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n11943), .S0(n109[25]));   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam sec_cnt_1916_add_4_27.INIT0 = 16'haaa0;
    defparam sec_cnt_1916_add_4_27.INIT1 = 16'h0000;
    defparam sec_cnt_1916_add_4_27.INJECT1_0 = "NO";
    defparam sec_cnt_1916_add_4_27.INJECT1_1 = "NO";
    LUT4 i13255_4_lut (.A(sec_cnt[2]), .B(sec_cnt[19]), .C(sec_cnt[1]), 
         .D(sec_cnt[14]), .Z(n16467)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13255_4_lut.init = 16'h8000;
    LUT4 mux_16_Mux_21_i2_3_lut (.A(csi_long_packet_count_sys[21]), .B(csi_payload_byte_count_sys[21]), 
         .C(field_index[0]), .Z(n2_adj_1585)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_21_i2_3_lut.init = 16'hcaca;
    LUT4 i13392_3_lut (.A(csi_long_packet_count_sys[30]), .B(csi_payload_byte_count_sys[30]), 
         .C(field_index[0]), .Z(n16604)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13392_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_21_i1_3_lut (.A(csi_byte_clk_count_sys[21]), .B(csi_hs_sync_count_sys[21]), 
         .C(field_index[0]), .Z(n1_adj_1584)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_21_i1_3_lut.init = 16'hcaca;
    LUT4 i13386_3_lut (.A(csi_long_packet_count_sys[28]), .B(csi_payload_byte_count_sys[28]), 
         .C(field_index[0]), .Z(n16598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13386_3_lut.init = 16'hcaca;
    LUT4 i6696_2_lut_rep_330_3_lut_4_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(tx_phase[0]), .D(field_value[31]), .Z(n17734)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i6696_2_lut_rep_330_3_lut_4_lut.init = 16'hfef0;
    LUT4 i6461_2_lut (.A(\frame_count[4] ), .B(frame_count_valid), .Z(n92[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6461_2_lut.init = 16'h8888;
    LUT4 i5923_2_lut (.A(csi_last_wc_sys[4]), .B(field_index[0]), .Z(n4_adj_1565)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5923_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(field_value[30]), .B(field_value[29]), 
         .C(field_value[31]), .Z(n14)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_47.init = 16'hefef;
    LUT4 mux_1495_i2_3_lut_4_lut_4_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(field_value[28]), .D(field_value[31]), .Z(n4364[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam mux_1495_i2_3_lut_4_lut_4_lut.init = 16'hc2cc;
    LUT4 i1_2_lut_rep_378 (.A(field_value[30]), .B(field_value[29]), .C(field_value[31]), 
         .Z(n17782)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_rep_378.init = 16'he0e0;
    LUT4 mux_16_Mux_28_i7_3_lut (.A(n16597), .B(field_value[24]), .C(tx_state[1]), 
         .Z(n3[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_28_i7_3_lut.init = 16'hcaca;
    LUT4 mux_1495_i3_4_lut_4_lut (.A(field_value[30]), .B(field_value[29]), 
         .C(field_value[31]), .D(field_value[28]), .Z(n4364[2])) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam mux_1495_i3_4_lut_4_lut.init = 16'haa8a;
    LUT4 i13383_3_lut (.A(csi_long_packet_count_sys[27]), .B(csi_payload_byte_count_sys[27]), 
         .C(field_index[0]), .Z(n16595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13383_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_19_i2_3_lut (.A(csi_long_packet_count_sys[19]), .B(csi_payload_byte_count_sys[19]), 
         .C(field_index[0]), .Z(n2_adj_1567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_19_i2_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_27_i7_3_lut (.A(n16594), .B(field_value[23]), .C(tx_state[1]), 
         .Z(n3[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_27_i7_3_lut.init = 16'hcaca;
    LUT4 i13263_4_lut (.A(sec_cnt[12]), .B(sec_cnt[6]), .C(sec_cnt[23]), 
         .D(sec_cnt[4]), .Z(n16475)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13263_4_lut.init = 16'h8000;
    LUT4 i13357_3_lut (.A(n16568), .B(field_value[17]), .C(tx_state[1]), 
         .Z(n16569)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13357_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_22_i2_3_lut (.A(csi_long_packet_count_sys[22]), .B(csi_payload_byte_count_sys[22]), 
         .C(field_index[0]), .Z(n2_adj_1589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_22_i2_3_lut.init = 16'hcaca;
    LUT4 i13380_3_lut (.A(csi_long_packet_count_sys[26]), .B(csi_payload_byte_count_sys[26]), 
         .C(field_index[0]), .Z(n16592)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13380_3_lut.init = 16'hcaca;
    LUT4 mux_16_Mux_26_i7_3_lut (.A(n16591), .B(field_value[22]), .C(tx_state[1]), 
         .Z(n3[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_26_i7_3_lut.init = 16'hcaca;
    LUT4 i13585_3_lut (.A(n1_adj_1590), .B(n2_adj_1589), .C(field_index[1]), 
         .Z(n16570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13585_3_lut.init = 16'hcaca;
    LUT4 i13674_3_lut (.A(field_index[1]), .B(field_index[2]), .C(field_index[0]), 
         .Z(n9021)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam i13674_3_lut.init = 16'h4141;
    LUT4 i6460_2_lut (.A(\frame_count[3] ), .B(frame_count_valid), .Z(n92[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(112[45:86])
    defparam i6460_2_lut.init = 16'h8888;
    LUT4 csi_byte_clk_count_sys_25__bdd_3_lut_14228 (.A(csi_byte_clk_count_sys[25]), 
         .B(field_index[0]), .C(csi_hs_sync_count_sys[25]), .Z(n17667)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_byte_clk_count_sys_25__bdd_3_lut_14228.init = 16'he2e2;
    LUT4 n17667_bdd_3_lut (.A(n17667), .B(field_value[21]), .C(tx_state[1]), 
         .Z(n17668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17667_bdd_3_lut.init = 16'hcaca;
    LUT4 i13571_3_lut (.A(n1_adj_1564), .B(n2_adj_1563), .C(field_index[1]), 
         .Z(n16549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13571_3_lut.init = 16'hcaca;
    LUT4 i10558_2_lut (.A(field_index[2]), .B(tx_state[1]), .Z(n13704)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i10558_2_lut.init = 16'heeee;
    LUT4 i6351_4_lut_4_lut (.A(n17782), .B(tx_phase[0]), .C(\tx_phase[1] ), 
         .D(tx_phase_c[2]), .Z(tx_data_7__N_1413[5])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i6351_4_lut_4_lut.init = 16'h001c;
    LUT4 i13092_2_lut (.A(sec_cnt[17]), .B(sec_cnt[20]), .Z(n16303)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13092_2_lut.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_25__bdd_3_lut_14024 (.A(csi_last_wc_sys[9]), 
         .B(field_index[0]), .C(field_index[1]), .Z(n17669)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam csi_long_packet_count_sys_25__bdd_3_lut_14024.init = 16'h0808;
    LUT4 i1_3_lut_4_lut_adj_48 (.A(\tx_phase[1] ), .B(n17756), .C(uart_busy), 
         .D(n3101[1]), .Z(n4890[2])) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(125[21:26])
    defparam i1_3_lut_4_lut_adj_48.init = 16'h0200;
    LUT4 csi_long_packet_count_sys_25__bdd_3_lut_14229 (.A(csi_long_packet_count_sys[25]), 
         .B(csi_payload_byte_count_sys[25]), .C(field_index[0]), .Z(n17670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam csi_long_packet_count_sys_25__bdd_3_lut_14229.init = 16'hcaca;
    LUT4 mux_16_Mux_22_i1_3_lut (.A(csi_byte_clk_count_sys[22]), .B(csi_hs_sync_count_sys[22]), 
         .C(field_index[0]), .Z(n1_adj_1590)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_22_i1_3_lut.init = 16'hcaca;
    LUT4 i13360_3_lut (.A(n16571), .B(field_value[18]), .C(tx_state[1]), 
         .Z(n16572)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13360_3_lut.init = 16'hcaca;
    LUT4 i6140_4_lut (.A(n17736), .B(tx_state[1]), .C(n3101[1]), .D(n17765), 
         .Z(n9176)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i6140_4_lut.init = 16'hcc8c;
    LUT4 i6027_2_lut (.A(n109[0]), .B(sec_cnt_25__N_1325), .Z(n137[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(30[21:35])
    defparam i6027_2_lut.init = 16'h2222;
    LUT4 n17671_bdd_3_lut (.A(n17671), .B(n17668), .C(n16710), .Z(field_value_31__N_1263[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17671_bdd_3_lut.init = 16'hcaca;
    LUT4 i13587_3_lut (.A(n1_adj_1560), .B(n2_adj_1591), .C(field_index[1]), 
         .Z(n16573)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13587_3_lut.init = 16'hcaca;
    LUT4 csi_byte_clk_count_sys_24__bdd_3_lut_14223 (.A(csi_byte_clk_count_sys[24]), 
         .B(field_index[0]), .C(csi_hs_sync_count_sys[24]), .Z(n17673)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam csi_byte_clk_count_sys_24__bdd_3_lut_14223.init = 16'he2e2;
    LUT4 i13317_4_lut (.A(sec_cnt[21]), .B(n16475), .C(n16303), .D(sec_cnt[13]), 
         .Z(n16529)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13317_4_lut.init = 16'h8000;
    LUT4 i13382_3_lut (.A(csi_byte_clk_count_sys[27]), .B(csi_hs_sync_count_sys[27]), 
         .C(field_index[0]), .Z(n16594)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13382_3_lut.init = 16'hcaca;
    LUT4 i5942_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[13]), 
         .D(csi_last_dt_sys[3]), .Z(n6_adj_1569)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5942_4_lut_4_lut.init = 16'h5140;
    PFUMX i13987 (.BLUT(n17606), .ALUT(n17605), .C0(tx_state[1]), .Z(digits_left_3__N_1295[1]));
    LUT4 mux_16_Mux_23_i2_3_lut (.A(csi_long_packet_count_sys[23]), .B(csi_payload_byte_count_sys[23]), 
         .C(field_index[0]), .Z(n2_adj_1591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_23_i2_3_lut.init = 16'hcaca;
    LUT4 i5954_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[15]), 
         .D(csi_last_dt_sys[5]), .Z(n6_adj_1572)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5954_4_lut_4_lut.init = 16'h5140;
    LUT4 n17673_bdd_3_lut (.A(n17673), .B(field_value[20]), .C(tx_state[1]), 
         .Z(n17674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n17673_bdd_3_lut.init = 16'hcaca;
    LUT4 i6337_3_lut (.A(digits_left[0]), .B(tx_state[1]), .C(n4890[2]), 
         .Z(digits_left_3__N_1295[0])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i6337_3_lut.init = 16'h4848;
    LUT4 i13074_2_lut (.A(sec_cnt[3]), .B(sec_cnt[15]), .Z(n16285)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13074_2_lut.init = 16'h8888;
    LUT4 i5946_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[14]), 
         .D(csi_last_dt_sys[4]), .Z(n6_adj_1570)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5946_4_lut_4_lut.init = 16'h5140;
    LUT4 i5918_2_lut (.A(csi_last_wc_sys[3]), .B(field_index[0]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5918_2_lut.init = 16'h8888;
    LUT4 csi_long_packet_count_sys_24__bdd_3_lut_14027 (.A(csi_last_wc_sys[8]), 
         .B(field_index[0]), .C(field_index[1]), .Z(n17675)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam csi_long_packet_count_sys_24__bdd_3_lut_14027.init = 16'h0808;
    LUT4 i13385_3_lut (.A(csi_byte_clk_count_sys[28]), .B(csi_hs_sync_count_sys[28]), 
         .C(field_index[0]), .Z(n16597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13385_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_49 (.A(sec_cnt[9]), .B(sec_cnt[10]), .Z(n16151)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_49.init = 16'heeee;
    LUT4 i12_4_lut_3_lut (.A(field_index[1]), .B(field_index[0]), .C(field_index[2]), 
         .Z(n13267)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i12_4_lut_3_lut.init = 16'h5858;
    LUT4 i5939_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[12]), 
         .D(csi_last_dt_sys[2]), .Z(n6_adj_1568)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5939_4_lut_4_lut.init = 16'h5140;
    LUT4 i13573_3_lut (.A(n16592), .B(n6_adj_1592), .C(field_index[2]), 
         .Z(n16593)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13573_3_lut.init = 16'hcaca;
    PFUMX i3868 (.BLUT(n2234), .ALUT(digits_left_3__N_1396[2]), .C0(tx_state[1]), 
          .Z(digits_left_3__N_1295[2]));
    LUT4 i5933_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[11]), 
         .D(csi_last_dt_sys[1]), .Z(n6)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5933_4_lut_4_lut.init = 16'h5140;
    LUT4 i5930_4_lut_4_lut (.A(field_index[1]), .B(field_index[0]), .C(csi_last_wc_sys[10]), 
         .D(csi_last_dt_sys[0]), .Z(n6_adj_1592)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam i5930_4_lut_4_lut.init = 16'h5140;
    LUT4 mux_16_Mux_19_i1_3_lut (.A(csi_byte_clk_count_sys[19]), .B(csi_hs_sync_count_sys[19]), 
         .C(field_index[0]), .Z(n1_adj_1566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(79[21] 115[28])
    defparam mux_16_Mux_19_i1_3_lut.init = 16'hcaca;
    LUT4 i13575_3_lut (.A(n1), .B(n2), .C(field_index[1]), .Z(n16552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13575_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_352 (.A(tx_phase[0]), .B(tx_phase_c[2]), .Z(n17756)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(125[21:26])
    defparam i1_2_lut_rep_352.init = 16'heeee;
    PFUMX i3864 (.BLUT(n16608), .ALUT(n3[31]), .C0(n16710), .Z(field_value_31__N_1263[31]));
    PFUMX i3862 (.BLUT(n16605), .ALUT(n3[30]), .C0(n16710), .Z(field_value_31__N_1263[30]));
    PFUMX i3860 (.BLUT(n16602), .ALUT(n3[29]), .C0(n16710), .Z(field_value_31__N_1263[29]));
    PFUMX i3858 (.BLUT(n16599), .ALUT(n3[28]), .C0(n16710), .Z(field_value_31__N_1263[28]));
    PFUMX i14057 (.BLUT(n17814), .ALUT(n17815), .C0(field_index[1]), .Z(field_value_31__N_1263[0]));
    PFUMX i3856 (.BLUT(n16596), .ALUT(n3[27]), .C0(n16710), .Z(field_value_31__N_1263[27]));
    PFUMX i14055 (.BLUT(n17811), .ALUT(n17812), .C0(field_index[1]), .Z(field_value_31__N_1263[1]));
    PFUMX i14053 (.BLUT(n17808), .ALUT(n17809), .C0(field_index[1]), .Z(field_value_31__N_1263[3]));
    PFUMX i14051 (.BLUT(n17805), .ALUT(n17806), .C0(field_index[1]), .Z(field_value_31__N_1263[2]));
    LUT4 i13577_3_lut (.A(n1_adj_1580), .B(n2_adj_1579), .C(field_index[1]), 
         .Z(n16558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_send_ctrl.v(76[9] 162[16])
    defparam i13577_3_lut.init = 16'hcaca;
    
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
    
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    
    wire n13300, n31, n16251;
    wire [12:0]baud_cnt;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    
    wire bit_flag_N_1544;
    wire [7:0]rx_data_adj_1559;   // d:/project/crosslink/project/impl1/source/uart_rx.v(27[11:18])
    
    wire rx_data_7__N_1537, rx_reg2, rx_reg1, rx_reg3, work_en_N_1529, 
        start_nedge_N_1541, work_en, n6924, bit_flag, n16175, n16177, 
        rx_flag_adj_1547, work_en_N_1531;
    wire [12:0]n32;
    
    wire n11872;
    wire [3:0]bit_cnt;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    wire [3:0]n14;
    wire [12:0]n1;
    
    wire n8542, n6971, n6969, n17648, n11877, n11876, n11875, 
        n11874, n11873, n16043, n16367, n17754, n17647, n17646, 
        n16365, n63;
    
    LUT4 i13735_4_lut (.A(n13300), .B(n31), .C(n16251), .D(baud_cnt[3]), 
         .Z(bit_flag_N_1544)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(90[13:43])
    defparam i13735_4_lut.init = 16'h0400;
    LUT4 i1_4_lut (.A(baud_cnt[6]), .B(baud_cnt[8]), .C(baud_cnt[0]), 
         .D(baud_cnt[5]), .Z(n16251)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfffd;
    FD1P3DX rx_data_i0_i0 (.D(rx_data_adj_1559[1]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3BX rx_reg2_76 (.D(rx_reg1), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(44[9:28])
    defparam rx_reg2_76.GSR = "ENABLED";
    FD1S3BX rx_reg3_77 (.D(rx_reg2), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(52[9:28])
    defparam rx_reg3_77.GSR = "ENABLED";
    FD1S3DX start_nedge_78 (.D(start_nedge_N_1541), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en_N_1529)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(59[10] 62[29])
    defparam start_nedge_78.GSR = "ENABLED";
    FD1S3DX work_en_79 (.D(n6924), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(work_en)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(69[10] 72[25])
    defparam work_en_79.GSR = "ENABLED";
    FD1S3DX bit_flag_81 (.D(bit_flag_N_1544), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(90[10] 93[26])
    defparam bit_flag_81.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_24 (.A(baud_cnt[12]), .B(n16175), .C(n16177), .D(baud_cnt[2]), 
         .Z(n13300)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_4_lut_adj_24.init = 16'hfffe;
    FD1P3DX po_data_i0_i0 (.D(rx_data_adj_1559[0]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i0.GSR = "ENABLED";
    FD1S3DX rx_flag_84 (.D(work_en_N_1531), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag_adj_1547)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(119[10] 122[25])
    defparam rx_flag_84.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(baud_cnt[9]), .B(baud_cnt[1]), .Z(n16175)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut.init = 16'heeee;
    FD1S3DX po_flag_86 (.D(rx_flag_adj_1547), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(rx_flag)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(138[9:28])
    defparam po_flag_86.GSR = "ENABLED";
    FD1S3BX rx_reg1_75 (.D(uart_rxd_c), .CK(sys_clk_c), .PD(sys_rst_n_N_472), 
            .Q(rx_reg1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(36[9:23])
    defparam rx_reg1_75.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_25 (.A(baud_cnt[11]), .B(baud_cnt[10]), .Z(n16177)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i1_2_lut_adj_25.init = 16'heeee;
    LUT4 i49_2_lut (.A(baud_cnt[4]), .B(baud_cnt[7]), .Z(n31)) /* synthesis lut_function=(A (B)) */ ;
    defparam i49_2_lut.init = 16'h8888;
    CCU2C add_32_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(baud_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n11872), .S1(n32[0]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_1.INIT0 = 16'h0000;
    defparam add_32_1.INIT1 = 16'h555a;
    defparam add_32_1.INJECT1_0 = "NO";
    defparam add_32_1.INJECT1_1 = "NO";
    FD1S3DX bit_cnt__i0 (.D(n14[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i0.GSR = "ENABLED";
    FD1S3DX baud_cnt__i0 (.D(n1[0]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_26 (.A(n8542), .B(n32[12]), .Z(n1[12])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_26.init = 16'h8888;
    LUT4 i1_2_lut_adj_27 (.A(n8542), .B(n32[11]), .Z(n1[11])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_27.init = 16'h8888;
    LUT4 i6421_2_lut (.A(n32[10]), .B(n8542), .Z(n1[10])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6421_2_lut.init = 16'h8888;
    LUT4 i6422_2_lut (.A(n32[9]), .B(n8542), .Z(n1[9])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6422_2_lut.init = 16'h8888;
    LUT4 i6678_2_lut (.A(n32[8]), .B(n8542), .Z(n1[8])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam i6678_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_28 (.A(n8542), .B(n32[7]), .Z(n1[7])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_28.init = 16'h8888;
    LUT4 i1_2_lut_adj_29 (.A(n8542), .B(n32[6]), .Z(n1[6])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_29.init = 16'h8888;
    LUT4 i1_2_lut_adj_30 (.A(n8542), .B(n32[5]), .Z(n1[5])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_30.init = 16'h8888;
    LUT4 i1_2_lut_adj_31 (.A(n8542), .B(n32[4]), .Z(n1[4])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_31.init = 16'h8888;
    LUT4 i1_2_lut_adj_32 (.A(n8542), .B(n32[3]), .Z(n1[3])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_32.init = 16'h8888;
    LUT4 i1_2_lut_adj_33 (.A(n8542), .B(n32[2]), .Z(n1[2])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_33.init = 16'h8888;
    LUT4 i1_2_lut_adj_34 (.A(n8542), .B(n32[1]), .Z(n1[1])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_34.init = 16'h8888;
    FD1P3DX bit_cnt__i1 (.D(n6971), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i1.GSR = "ENABLED";
    FD1S3DX baud_cnt__i12 (.D(n1[12]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i12.GSR = "ENABLED";
    FD1S3DX baud_cnt__i11 (.D(n1[11]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i11.GSR = "ENABLED";
    FD1S3DX baud_cnt__i10 (.D(n1[10]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i10.GSR = "ENABLED";
    FD1S3DX baud_cnt__i9 (.D(n1[9]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i9.GSR = "ENABLED";
    FD1S3DX baud_cnt__i8 (.D(n1[8]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i8.GSR = "ENABLED";
    FD1S3DX baud_cnt__i7 (.D(n1[7]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i7.GSR = "ENABLED";
    FD1S3DX baud_cnt__i6 (.D(n1[6]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i6.GSR = "ENABLED";
    FD1S3DX baud_cnt__i5 (.D(n1[5]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i5.GSR = "ENABLED";
    FD1S3DX baud_cnt__i4 (.D(n1[4]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i4.GSR = "ENABLED";
    FD1S3DX baud_cnt__i3 (.D(n1[3]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i3.GSR = "ENABLED";
    FD1S3DX baud_cnt__i2 (.D(n1[2]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i2.GSR = "ENABLED";
    FD1S3DX baud_cnt__i1 (.D(n1[1]), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(baud_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(79[10] 82[37])
    defparam baud_cnt__i1.GSR = "ENABLED";
    FD1P3DX po_data_i0_i7 (.D(rx_data_adj_1559[7]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i7.GSR = "ENABLED";
    FD1P3DX po_data_i0_i6 (.D(rx_data_adj_1559[6]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i6.GSR = "ENABLED";
    FD1P3DX po_data_i0_i5 (.D(rx_data_adj_1559[5]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i5.GSR = "ENABLED";
    FD1P3DX po_data_i0_i4 (.D(rx_data_adj_1559[4]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i4.GSR = "ENABLED";
    FD1P3DX po_data_i0_i3 (.D(rx_data_adj_1559[3]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i3.GSR = "ENABLED";
    FD1P3DX po_data_i0_i2 (.D(rx_data_adj_1559[2]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i2.GSR = "ENABLED";
    FD1P3DX po_data_i0_i1 (.D(rx_data_adj_1559[1]), .SP(rx_flag_adj_1547), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(129[10] 130[28])
    defparam po_data_i0_i1.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i7 (.D(rx_reg3), .SP(rx_data_7__N_1537), .CK(sys_clk_c), 
            .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i6 (.D(rx_data_adj_1559[7]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i5 (.D(rx_data_adj_1559[6]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i4 (.D(rx_data_adj_1559[5]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i3 (.D(rx_data_adj_1559[4]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i2 (.D(rx_data_adj_1559[3]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3DX rx_data_i0_i1 (.D(rx_data_adj_1559[2]), .SP(rx_data_7__N_1537), 
            .CK(sys_clk_c), .CD(sys_rst_n_N_472), .Q(rx_data_adj_1559[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(111[10] 112[44])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    FD1P3DX bit_cnt__i2 (.D(n6969), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i2.GSR = "ENABLED";
    FD1P3DX bit_cnt__i3 (.D(n17648), .SP(bit_flag), .CK(sys_clk_c), .CD(sys_rst_n_N_472), 
            .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=3, LSE_RCOL=2, LSE_LLINE=333, LSE_RLINE=339 */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam bit_cnt__i3.GSR = "ENABLED";
    CCU2C add_32_13 (.A0(baud_cnt[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11877), .S0(n32[11]), .S1(n32[12]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_13.INIT0 = 16'haaaa;
    defparam add_32_13.INIT1 = 16'haaaa;
    defparam add_32_13.INJECT1_0 = "NO";
    defparam add_32_13.INJECT1_1 = "NO";
    CCU2C add_32_11 (.A0(baud_cnt[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11876), .COUT(n11877), .S0(n32[9]), .S1(n32[10]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_11.INIT0 = 16'haaaa;
    defparam add_32_11.INIT1 = 16'haaaa;
    defparam add_32_11.INJECT1_0 = "NO";
    defparam add_32_11.INJECT1_1 = "NO";
    CCU2C add_32_9 (.A0(baud_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11875), .COUT(n11876), .S0(n32[7]), .S1(n32[8]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_9.INIT0 = 16'haaaa;
    defparam add_32_9.INIT1 = 16'haaaa;
    defparam add_32_9.INJECT1_0 = "NO";
    defparam add_32_9.INJECT1_1 = "NO";
    CCU2C add_32_7 (.A0(baud_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11874), .COUT(n11875), .S0(n32[5]), .S1(n32[6]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_7.INIT0 = 16'haaaa;
    defparam add_32_7.INIT1 = 16'haaaa;
    defparam add_32_7.INJECT1_0 = "NO";
    defparam add_32_7.INJECT1_1 = "NO";
    LUT4 i8608_3_lut (.A(bit_cnt[2]), .B(bit_cnt[1]), .C(bit_cnt[0]), 
         .Z(n6969)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    defparam i8608_3_lut.init = 16'h6a6a;
    CCU2C add_32_5 (.A0(baud_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11873), .COUT(n11874), .S0(n32[3]), .S1(n32[4]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_5.INIT0 = 16'haaaa;
    defparam add_32_5.INIT1 = 16'haaaa;
    defparam add_32_5.INJECT1_0 = "NO";
    defparam add_32_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_35 (.A(n8542), .B(n32[0]), .Z(n1[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_2_lut_adj_35.init = 16'h8888;
    CCU2C add_32_3 (.A0(baud_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(baud_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n11872), .COUT(n11873), .S0(n32[1]), .S1(n32[2]));   // d:/project/crosslink/project/impl1/source/uart_rx.v(82[21:36])
    defparam add_32_3.INIT0 = 16'haaaa;
    defparam add_32_3.INIT1 = 16'haaaa;
    defparam add_32_3.INJECT1_0 = "NO";
    defparam add_32_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_36 (.A(n16043), .B(work_en), .C(n31), .D(n16367), 
         .Z(n8542)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(24[12:20])
    defparam i1_4_lut_adj_36.init = 16'h8ccc;
    LUT4 i1_4_lut_adj_37 (.A(baud_cnt[8]), .B(n13300), .C(baud_cnt[6]), 
         .D(baud_cnt[3]), .Z(n16043)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_37.init = 16'hfffd;
    LUT4 i13156_2_lut (.A(baud_cnt[0]), .B(baud_cnt[5]), .Z(n16367)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13156_2_lut.init = 16'h8888;
    LUT4 i24_2_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n6971)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    defparam i24_2_lut.init = 16'h6666;
    LUT4 bit_cnt_3__bdd_4_lut (.A(bit_cnt[3]), .B(n17754), .C(bit_flag), 
         .D(bit_cnt[0]), .Z(rx_data_7__N_1537)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C)+!B (C (D))))) */ ;
    defparam bit_cnt_3__bdd_4_lut.init = 16'h5060;
    PFUMX i14009 (.BLUT(n17647), .ALUT(n17646), .C0(bit_cnt[0]), .Z(n17648));
    LUT4 bit_flag_bdd_3_lut (.A(bit_cnt[2]), .B(bit_cnt[3]), .C(bit_cnt[1]), 
         .Z(n17646)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;
    defparam bit_flag_bdd_3_lut.init = 16'h6c6c;
    LUT4 bit_flag_bdd_4_lut (.A(bit_flag), .B(bit_cnt[2]), .C(bit_cnt[3]), 
         .D(bit_cnt[1]), .Z(n17647)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam bit_flag_bdd_4_lut.init = 16'hf0d0;
    LUT4 start_nedge_I_0_2_lut (.A(rx_reg2), .B(rx_reg3), .Z(start_nedge_N_1541)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(59[13:36])
    defparam start_nedge_I_0_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_38 (.A(work_en_N_1529), .B(n16365), .C(work_en), 
         .D(n63), .Z(n6924)) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    defparam i1_4_lut_adj_38.init = 16'hfaba;
    LUT4 i1_3_lut_4_lut (.A(bit_cnt[3]), .B(n17754), .C(bit_flag), .D(bit_cnt[0]), 
         .Z(work_en_N_1531)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i1_3_lut_4_lut.init = 16'h0020;
    LUT4 i8583_3_lut_4_lut (.A(bit_cnt[3]), .B(n17754), .C(bit_cnt[0]), 
         .D(bit_flag), .Z(n14[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (C (D)+!C !(D)))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(101[10] 104[35])
    defparam i8583_3_lut_4_lut.init = 16'h0df0;
    LUT4 i1_2_lut_rep_350 (.A(bit_cnt[1]), .B(bit_cnt[2]), .Z(n17754)) /* synthesis lut_function=(A+(B)) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    defparam i1_2_lut_rep_350.init = 16'heeee;
    LUT4 i13154_2_lut (.A(bit_flag), .B(bit_cnt[3]), .Z(n16365)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13154_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[0]), 
         .Z(n63)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/project/crosslink/project/impl1/source/uart_rx.v(26[11:18])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module csi2dsi
//

module csi2dsi (csi_clk_byte_hs, \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, 
            csi_dt_parser, csi_wc, GND_net, csi_dt_c_4, n17768, csi_clk_byte, 
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
    input n17768;
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
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(127[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(126[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(18[22:32])
    
    \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT")  dphy_rx_inst (.csi_clk_byte_hs(csi_clk_byte_hs), 
            .\reset_byte_fr_sync[1] (\reset_byte_fr_sync[1] ), .VCC_net(VCC_net), 
            .csi_dt_c_5(csi_dt_c_5), .csi_dt_parser({csi_dt_parser}), .csi_wc({csi_wc}), 
            .GND_net(GND_net), .csi_dt_c_4(csi_dt_c_4), .n17768(n17768), 
            .csi_clk_byte(csi_clk_byte), .csi_sp_en_c(csi_sp_en_c), .csi_lp_en_c(csi_lp_en_c), 
            .sys_clk_c(sys_clk_c), .csi_payload_en_c(csi_payload_en_c), 
            .csi_dt_c_3(csi_dt_c_3), .csi_dt_c_2(csi_dt_c_2), .\reset_byte_sync[1] (\reset_byte_sync[1] ), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi.v(149[1] 207[2])
    
endmodule
//
// Verilog Description of module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT") 
//

module \csi2dsi_dphy_rx(RX_TYPE="CSI2",NUM_RX_LANE=1,RX_GEAR=8,RX_CLK_MODE="HS_ONLY",BYTECLK_MHZ=50,FIFO_TYPE="LUT")  (csi_clk_byte_hs, 
            \reset_byte_fr_sync[1] , VCC_net, csi_dt_c_5, csi_dt_parser, 
            csi_wc, GND_net, csi_dt_c_4, n17768, csi_clk_byte, csi_sp_en_c, 
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
    input n17768;
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
    
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(127[25:40])
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(126[25:37])
    wire sys_clk_c /* synthesis SET_AS_NETWORK=sys_clk_c, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(6[16:23])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(18[22:32])
    wire [7:0]bd0_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(125[46:51])
    wire [7:0]bd1_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(126[46:51])
    wire [7:0]bd2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(127[46:51])
    wire [7:0]bd3_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(128[46:51])
    
    wire capture_en_o, term_d0_en_w;
    wire [7:0]bd0;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(200[32:35])
    wire [7:0]bd1;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(200[37:40])
    wire [7:0]bd2;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(200[42:45])
    wire [7:0]bd3;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(200[47:50])
    
    wire lp_d0_rx_p_o, lp_d0_rx_n_o, lp_d1_rx_p_o, lp_d1_rx_n_o, lp_d2_rx_p_o, 
        lp_d2_rx_n_o, lp_d3_rx_p_o, lp_d3_rx_n_o, lp_clk_rx_p, lp_clk_rx_n, 
        hs_settle_en_w;
    wire [3:0]d_sot_det_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(246[20:31])
    wire [3:0]d_sote_det_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(247[20:32])
    wire [7:0]bd0_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(248[20:25])
    wire [7:0]bd1_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(249[20:25])
    wire [7:0]bd2_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(250[20:25])
    wire [7:0]bd3_w;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(251[20:25])
    
    csi2dsi_capture_ctrl \capture_ctrl_inst.capture_ctrl_inst  (.reset_n_i(\reset_byte_fr_sync[1] ), 
            .clk_byte_i(csi_clk_byte_hs), .bd0_i({bd0_o}), .bd1_i({bd1_o}), 
            .bd2_i({bd2_o}), .bd3_i({bd3_o}), .capture_en_i(capture_en_o), 
            .ref_dt_i({VCC_net, GND_net, VCC_net, GND_net, VCC_net, 
            VCC_net}), .lp_en_o(csi_dt_c_5), .payload_en_o(csi_dt_c_4), 
            .wc_o({csi_wc}), .dt_o({csi_dt_parser})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(423[9] 449[10])
    csi2dsi_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(n17768), .reset_lp_n_i(n17768), 
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
            csi_dt_c_2})) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(349[1] 390[2])
    csi2dsi_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(n17768), .reset_byte_n_i(\reset_byte_sync[1] ), 
            .reset_byte_fr_n_i(\reset_byte_fr_sync[1] ), .clk_byte_fr_i(csi_clk_byte_hs), 
            .term_d0_en_i(term_d0_en_w), .term_d1_en_i(term_d0_en_w), .term_d2_en_i(term_d0_en_w), 
            .term_d3_en_i(term_d0_en_w), .hs_d0_en_i(csi_sp_en_c), .hs_d1_en_i(csi_sp_en_c), 
            .hs_d2_en_i(csi_sp_en_c), .hs_d3_en_i(csi_sp_en_c), .d_sot_det({d_sot_det_w}), 
            .d_sote_det({d_sote_det_w}), .clk_byte_i(csi_clk_byte), .bd0_i({bd0_w}), 
            .bd1_i({bd1_w}), .bd2_i({bd2_w}), .bd3_i({bd3_w}), .bd0_o({bd0}), 
            .bd1_o({bd1}), .bd2_o({bd2}), .bd3_o({bd3}), .hs_sync_o(csi_lp_en_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=149, LSE_RLINE=207 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(254[1] 279[2])
    \csi2dsi_dphy_wrapper(RX_GEAR=8,WORD_ALIGN="OFF",NUM_RX_LANE=1)  u_dphy_wrapper (.GND_net(GND_net), 
            .VCC_net(VCC_net), .d_sot_det_w({d_sot_det_w}), .d_sote_det_w({d_sote_det_w}), 
            .bd0_w({bd0_w}), .bd1_w({bd1_w}), .bd2_w({bd2_w}), .bd3_w({bd3_w}), 
            .csi_payload_en_c(csi_payload_en_c), .term_d0_en_w(term_d0_en_w), 
            .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), .lp_d0_rx_p_o(lp_d0_rx_p_o), 
            .lp_d0_rx_n_o(lp_d0_rx_n_o), .lp_d1_rx_p_o(lp_d1_rx_p_o), .lp_d1_rx_n_o(lp_d1_rx_n_o), 
            .lp_d2_rx_p_o(lp_d2_rx_p_o), .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), 
            .lp_d3_rx_n_o(lp_d3_rx_n_o), .csi_clk_byte(csi_clk_byte), .csi_clk_byte_hs(csi_clk_byte_hs), 
            .mipi_rcp_0(mipi_rcp_0), .mipi_rcn_0(mipi_rcn_0), .mipi_rdp_0(mipi_rdp_0), 
            .mipi_rdn_0(mipi_rdn_0), .hs_settle_en_w(hs_settle_en_w), .csi_sp_en_c(csi_sp_en_c)) /* synthesis syn_module_defined=1 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    
endmodule
//
// Verilog Description of module csi2dsi_capture_ctrl
//

module csi2dsi_capture_ctrl (reset_n_i, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, capture_en_i, ref_dt_i, sp_en_o, sp2_en_o, lp_en_o, 
            lp2_en_o, lp_av_en_o, lp2_av_en_o, bd_o, vc_o, vc2_o, 
            payload_en_o, payload_o, wc_o, wc2_o, dt_o, dt2_o, ecc_o, 
            ecc2_o);   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(8[8:28])
    input reset_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(9[43:52])
    input clk_byte_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(10[43:53])
    input [7:0]bd0_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(11[34:39])
    input [7:0]bd1_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(12[34:39])
    input [7:0]bd2_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(13[34:39])
    input [7:0]bd3_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(14[34:39])
    input capture_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(15[43:55])
    input [5:0]ref_dt_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(16[43:51])
    output sp_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(17[43:50])
    output sp2_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(18[43:51])
    output lp_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(19[43:50])
    output lp2_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(20[43:51])
    output lp_av_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(21[43:53])
    output lp2_av_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(22[43:54])
    output [7:0]bd_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(23[30:34])
    output [1:0]vc_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(24[43:47])
    output [1:0]vc2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(25[43:48])
    output payload_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(26[43:55])
    output [7:0]payload_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(27[27:36])
    output [15:0]wc_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(28[43:47])
    output [15:0]wc2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(29[43:48])
    output [5:0]dt_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(30[43:47])
    output [5:0]dt2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(31[43:48])
    output [7:0]ecc_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(32[43:48])
    output [7:0]ecc2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_capture_ctrl_bb.v(33[43:49])
    
    
    
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
            lp_hs_state_d_o);   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(8[8:30])
    input reset_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(9[31:40])
    input reset_lp_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(10[31:43])
    input reset_byte_fr_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(11[31:48])
    input clk_lp_ctrl_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(12[31:44])
    input clk_byte_hs_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(13[31:44])
    input clk_byte_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(14[31:41])
    input clk_byte_fr_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(15[31:44])
    input pll_lock_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(16[31:41])
    input [7:0]bd0_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(18[25:30])
    input [7:0]bd1_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(19[25:30])
    input [7:0]bd2_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(20[25:30])
    input [7:0]bd3_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(21[25:30])
    input lp_clk_p_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(22[31:41])
    input lp_clk_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(23[31:41])
    input lp_d0_p_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(24[31:40])
    input lp_d0_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(25[31:40])
    input lp_d1_p_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(26[31:40])
    input lp_d1_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(27[31:40])
    input lp_d2_p_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(28[31:40])
    input lp_d2_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(29[31:40])
    input lp_d3_p_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(30[31:40])
    input lp_d3_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(31[31:40])
    input hs_sync_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(32[31:40])
    output [7:0]bd0_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(33[25:30])
    output [7:0]bd1_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(34[25:30])
    output [7:0]bd2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(35[25:30])
    output [7:0]bd3_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(36[25:30])
    output term_clk_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(37[31:44])
    output term_d0_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(38[31:43])
    output hs_d0_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(39[31:41])
    output term_d1_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(40[31:43])
    output hs_d1_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(41[31:41])
    output term_d2_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(42[31:43])
    output hs_d2_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(43[31:41])
    output term_d3_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(44[31:43])
    output hs_d3_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(45[31:41])
    output hs_sync_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(46[31:40])
    output hs_settle_en_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(47[31:45])
    output [1:0]lp_hs_state_clk_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(48[31:48])
    output [1:0]lp_hs_state_d_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_rx_global_ctrl_bb.v(49[31:46])
    
    
    
endmodule
//
// Verilog Description of module csi2dsi_dphy_rx_wrap
//

module csi2dsi_dphy_rx_wrap (reset_n_i, reset_byte_n_i, reset_byte_fr_n_i, 
            clk_byte_fr_i, term_d0_en_i, term_d1_en_i, term_d2_en_i, 
            term_d3_en_i, hs_d0_en_i, hs_d1_en_i, hs_d2_en_i, hs_d3_en_i, 
            d_sot_det, d_sote_det, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, bd0_o, bd1_o, bd2_o, bd3_o, hs_sync_o);   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(8[8:28])
    input reset_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(9[31:40])
    input reset_byte_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(10[31:45])
    input reset_byte_fr_n_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(11[31:48])
    input clk_byte_fr_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(12[31:44])
    input term_d0_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(13[31:43])
    input term_d1_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(14[31:43])
    input term_d2_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(15[31:43])
    input term_d3_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(16[31:43])
    input hs_d0_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(17[31:41])
    input hs_d1_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(18[31:41])
    input hs_d2_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(19[31:41])
    input hs_d3_en_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(20[31:41])
    input [3:0]d_sot_det;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(22[31:40])
    input [3:0]d_sote_det;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(23[31:41])
    input clk_byte_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(26[31:41])
    input [7:0]bd0_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(27[25:30])
    input [7:0]bd1_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(28[25:30])
    input [7:0]bd2_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(29[25:30])
    input [7:0]bd3_i;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(30[25:30])
    output [7:0]bd0_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(31[25:30])
    output [7:0]bd1_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(32[25:30])
    output [7:0]bd2_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(33[25:30])
    output [7:0]bd3_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(34[25:30])
    output hs_sync_o;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx_wrap_bb.v(35[31:40])
    
    
    
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
    
    wire csi_clk_byte /* synthesis is_clock=1, SET_AS_NETWORK=csi_clk_byte */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(126[25:37])
    wire csi_clk_byte_hs /* synthesis SET_AS_NETWORK=csi_clk_byte_hs, is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(127[25:40])
    wire mipi_rcp_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(17[22:32])
    wire mipi_rcn_0 /* synthesis is_clock=1 */ ;   // d:/project/crosslink/project/mipi_3ch_top.v(18[22:32])
    
    wire d1_p_i, d1_n_i, d2_p_i, d2_n_i, d3_p_i, d3_n_i, d_sot_det_o_3__N_1210;
    
    MIPIDPHYA \MIXEL.mixel_dphy  (.DP0(mipi_rdp_0), .DN0(mipi_rdn_0), .DP1(d1_p_i), 
            .DN1(d1_n_i), .DP2(d2_p_i), .DN2(d2_n_i), .DP3(d3_p_i), 
            .DN3(d3_n_i), .CKP(mipi_rcp_0), .CKN(mipi_rcn_0), .D0RXHSEN(term_d0_en_w), 
            .D0HSDESEREN(d_sot_det_o_3__N_1210), .D0RXLPEN(VCC_net), .D0CDEN(VCC_net), 
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
            .CLKHSBYTE(csi_clk_byte_hs), .CLKDRXLPP(lp_clk_rx_p), .CLKDRXLPN(lp_clk_rx_n)) /* synthesis HS_MODE="RX", DIR_PIN_DN3="INPUT", DIR_PIN_DP3="INPUT", DIR_PIN_DN2="INPUT", DIR_PIN_DP2="INPUT", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", DIR_PIN_DN0="INPUT", DIR_PIN_DP0="INPUT", FREQUENCY_PIN_HSBYTECLKD="50.0", syn_instantiated=1, LSE_LINE_FILE_ID=11, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_rx.v(297[1] 340[2])
    defparam \MIXEL.mixel_dphy .HSEL = 0;
    defparam \MIXEL.mixel_dphy .HS_16BIT_EN = 0;
    defparam \MIXEL.mixel_dphy .CN = 5'b00000;
    defparam \MIXEL.mixel_dphy .CM = 8'b00000000;
    defparam \MIXEL.mixel_dphy .CO = 2'b00;
    defparam \MIXEL.mixel_dphy .PLL_TST = 4'b1001;
    defparam \MIXEL.mixel_dphy .ENP_DESER = 1'b0;
    LUT4 hs_settle_en_i_I_0_2_lut (.A(hs_settle_en_w), .B(csi_sp_en_c), 
         .Z(d_sot_det_o_3__N_1210)) /* synthesis lut_function=(A (B)) */ ;   // d:/project/crosslink/project/theips/csi2dsi/csi2dsi_dphy_wrapper.v(238[29:56])
    defparam hs_settle_en_i_I_0_2_lut.init = 16'h8888;
    
endmodule
