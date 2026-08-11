// top_iic.v — wraps i2c_drive + ov9734_ctrl
module top_iic(
    input         sys_clk,
    input         sys_rst_n,

    output        scl,
    inout         sda,
    output        cfg_done,
    output [15:0] sensor_id,
    output        sensor_id_valid,
    output [15:0] frame_count,
    output        frame_count_valid,
    input         cam_ready,
    output [3:0]  rd_byte_num   // number of bytes to read per read transaction
);

    parameter  SLAVE_ADDRESS   =  7'h10;   // OV9734: 7-bit 0x08 → write=0x10, read=0x11
    parameter  SYSTEM_CLK      =  26'd50_000_000;
    parameter  IIC_CLK         =  26'd250_000;
    parameter  DIV_FREQ_FACTOR =  SYSTEM_CLK/IIC_CLK;
    parameter  ADDR_WIDTH      =  1'b1;

    wire        start;
    wire        ctrl_w0_r1;
    wire [15:0] addr;
    wire [7:0]  data_write;
    wire        flag_done;
    wire [7:0]  data_read;
    wire [7:0]  rd_byte0;
    wire [3:0]  rd_byte_num_w;
    assign rd_byte_num = rd_byte_num_w;

    ov9734_ctrl inst_ov9734_ctrl (
        .sys_clk         (sys_clk),
        .sys_rst_n       (sys_rst_n),
        .flag_done       (flag_done),
        .data_read       (data_read),

        .start           (start),
        .ctrl_w0_r1      (ctrl_w0_r1),
        .addr            (addr),
        .data_write      (data_write),
        .rd_byte_num     (rd_byte_num_w),
        .cfg_done        (cfg_done),
        .sensor_id       (sensor_id),
        .sensor_id_valid (sensor_id_valid),
        .frame_count     (frame_count),
        .frame_count_valid(frame_count_valid),
        .cam_ready       (cam_ready),
        .rd_byte0        (rd_byte0)       // first byte from multi-byte read
    );

    i2c_drive #(
        .SLAVE_ADDRESS   (SLAVE_ADDRESS),
        .SYSTEM_CLK      (SYSTEM_CLK),
        .IIC_CLK         (IIC_CLK),
        .DIV_FREQ_FACTOR (DIV_FREQ_FACTOR),
        .ADDR_WIDTH      (ADDR_WIDTH)
    ) inst_i2c_drive (
        .sys_clk    (sys_clk),
        .sys_rst_n  (sys_rst_n),
        .start      (start),
        .ctrl_w0_r1 (ctrl_w0_r1),
        .addr       (addr),
        .data_write (data_write),

        .scl          (scl),
        .sda          (sda),
        .flag_done    (flag_done),
        .data_read    (data_read),
        .rd_byte0     (rd_byte0),
        .rd_byte_num  (rd_byte_num)
    );

endmodule
