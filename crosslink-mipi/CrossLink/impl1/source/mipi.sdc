# Main clock: 50MHz (20ns period)
create_clock -name sys_clk -period 20.000 [get_ports sys_clk]

# I2C SCL: 100kHz generated from sys_clk
# sys_clk = 50MHz, CLK_DIV = 50 * 500 / 100 = 250
# scl_x2 = 50M / 250 = 200kHz, iic_scl = scl_x2 / 2 = 100kHz
create_generated_clock -name i2c_scl -source [get_ports sys_clk] -divide_by 500 [get_ports i2c_sclk_0]
