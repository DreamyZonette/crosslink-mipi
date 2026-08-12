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
    output [7:0]  reg_4a00_val,      // 0x4A00 register readback (polled every 100ms)
    output        reg_4a00_valid,     // 1-cycle pulse when reg_4a00_val is updated
    input         cam_ready,
    output [3:0]  rd_byte_num         // number of bytes to read per read transaction
);

    parameter  SLAVE_ADDRESS   =  7'h10;
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
    wire [3:0]  rd_byte_num_int;

    assign rd_byte_num = rd_byte_num_int;

    ov9734_ctrl inst_ov9734_ctrl (
        .sys_clk           (sys_clk),
        .sys_rst_n         (sys_rst_n),
        .flag_done         (flag_done),
        .data_read         (data_read),
        .rd_byte0          (rd_byte0),

        .start             (start),
        .ctrl_w0_r1        (ctrl_w0_r1),
        .addr              (addr),
        .data_write        (data_write),
        .rd_byte_num       (rd_byte_num_int),
        .cfg_done          (cfg_done),
        .sensor_id         (sensor_id),
        .sensor_id_valid   (sensor_id_valid),
        .frame_count       (frame_count),
        .frame_count_valid (frame_count_valid),
        .reg_4a00_val      (reg_4a00_val),
        .reg_4a00_valid    (reg_4a00_valid),
        .cam_ready         (cam_ready)
    );

    i2c_drive #(
        .SLAVE_ADDRESS   (SLAVE_ADDRESS),
        .SYSTEM_CLK      (SYSTEM_CLK),
        .IIC_CLK         (IIC_CLK),
        .DIV_FREQ_FACTOR (DIV_FREQ_FACTOR),
        .ADDR_WIDTH      (ADDR_WIDTH)
    ) inst_i2c_drive (
        .sys_clk      (sys_clk),
        .sys_rst_n    (sys_rst_n),
        .start        (start),
        .ctrl_w0_r1   (ctrl_w0_r1),
        .addr         (addr),
        .data_write   (data_write),

        .scl          (scl),
        .sda          (sda),
        .flag_done    (flag_done),
        .data_read    (data_read),
        .rd_byte0     (rd_byte0),
        .rd_byte_num  (rd_byte_num_int)
    );

endmodule
