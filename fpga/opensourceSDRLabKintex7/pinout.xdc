# Sys clk pin
create_clock -period 20.000 -name clk [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN G22 [get_ports clk]

# Rst_n pin
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]
set_property PACKAGE_PIN D26 [get_ports rst_n]

# Leds
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN A23 [get_ports {led[0]}]
set_property PACKAGE_PIN A24 [get_ports {led[1]}]
set_property PACKAGE_PIN D23 [get_ports {led[2]}]
set_property PACKAGE_PIN C24 [get_ports {led[3]}]
set_property PACKAGE_PIN C26 [get_ports {led[4]}]
set_property PACKAGE_PIN D24 [get_ports {led[5]}]
set_property PACKAGE_PIN D25 [get_ports {led[6]}]
set_property PACKAGE_PIN E25 [get_ports {led[7]}]

# SPI

set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { mosi }];
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { miso }];
set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { sck }];
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { cs }];
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { spi_rst }];

# I2S

set_property -dict { PACKAGE_PIN H12   IOSTANDARD LVCMOS33 } [get_ports { i2s_ws }]; 
set_property -dict { PACKAGE_PIN F12   IOSTANDARD LVCMOS33 } [get_ports { i2s_sd }];
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { i2s_lr }];
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { i2s_clk }];

# UART Pins
#set_property IOSTANDARD LVCMOS33 [get_ports rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports txd]
#set_property PACKAGE_PIN B20 [get_ports rxd]
#set_property PACKAGE_PIN C22 [get_ports txd]

# EEPROM Pins
#set_property IOSTANDARD LVCMOS33 [get_ports EEPROM_SCL]
#set_property IOSTANDARD LVCMOS33 [get_ports EEPROM_SDA]
#set_property PACKAGE_PIN B21 [get_ports EEPROM_SCL]
#set_property PACKAGE_PIN C21 [get_ports EEPROM_SDA]

# HDMI 1

#set_output_delay -clock clk 0.10  [get_ports TMDS_CLK_P2]
#set_output_delay -clock clk 0.10 [get_ports TMDS_CLK_N2]
#set_output_delay -clock clk 0.10  [get_ports TMDS_CLK_P1]
#set_output_delay -clock clk 0.10 [get_ports TMDS_CLK_N1]

#set_property IOSTANDARD LVCMOS33 [get_ports HDMI_OUT_EN1]
#set_property PACKAGE_PIN E22 [get_ports HDMI_OUT_EN1]

#set_property PACKAGE_PIN F17 [get_ports TMDS_CLK_P1]
#set_property PACKAGE_PIN J15 [get_ports {TMDS_DATA_P1[0]}]
#set_property PACKAGE_PIN E15 [get_ports {TMDS_DATA_P1[1]}]
#set_property PACKAGE_PIN G17 [get_ports {TMDS_DATA_P1[2]}]
#set_property PACKAGE_PIN E18 [get_ports TMDS_CLK_P2]
#set_property PACKAGE_PIN D19 [get_ports {TMDS_DATA_P2[0]}]
#set_property PACKAGE_PIN H17 [get_ports {TMDS_DATA_P2[1]}]
#set_property PACKAGE_PIN G19 [get_ports {TMDS_DATA_P2[2]}]

# sdcard

#set_property IOSTANDARD LVCMOS33 [get_ports sd_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports sd_cs]
#set_property IOSTANDARD LVCMOS33 [get_ports sd_miso]
#set_property IOSTANDARD LVCMOS33 [get_ports sd_mosi]

#set_property PACKAGE_PIN G24 [get_ports sd_clk]
#set_property PACKAGE_PIN F24 [get_ports sd_cs]
#set_property PACKAGE_PIN F23 [get_ports sd_miso]
#set_property PACKAGE_PIN G25 [get_ports sd_mosi]

# Device config

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]