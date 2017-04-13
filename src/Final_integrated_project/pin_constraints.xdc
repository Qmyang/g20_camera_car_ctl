#VGA Connector
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports {red[0]}]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports {red[1]}]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports {red[2]}]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports {red[3]}]

set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports {green[0]}]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports {green[1]}]
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS33} [get_ports {green[2]}]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports {green[3]}]

set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports {blue[0]}]
set_property -dict {PACKAGE_PIN C7 IOSTANDARD LVCMOS33} [get_ports {blue[1]}]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS33} [get_ports {blue[2]}]
set_property -dict {PACKAGE_PIN D8 IOSTANDARD LVCMOS33} [get_ports {blue[3]}]

set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33} [get_ports hsync]
set_property -dict {PACKAGE_PIN B12 IOSTANDARD LVCMOS33} [get_ports vsync]


##Yang's part
#VGA Connector


set_property PACKAGE_PIN C17 [get_ports pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]
set_property PACKAGE_PIN G16 [get_ports OV7670_VSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_VSYNC]
set_property PACKAGE_PIN H14 [get_ports OV7670_SIOC]
set_property PACKAGE_PIN G13 [get_ports OV7670_HREF]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_SIOC]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_HREF]
set_property PACKAGE_PIN H16 [get_ports OV7670_SIOD]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_SIOD]
set_property PULLUP true [get_ports OV7670_SIOD]
set_property PACKAGE_PIN E17 [get_ports {OV7670_D[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {OV7670_D[0]}]
set_property PACKAGE_PIN D18 [get_ports {OV7670_D[1]}]
set_property PACKAGE_PIN F18 [get_ports {OV7670_D[2]}]
set_property PACKAGE_PIN E18 [get_ports {OV7670_D[3]}]
set_property PACKAGE_PIN G18 [get_ports {OV7670_D[4]}]
set_property PACKAGE_PIN G17 [get_ports {OV7670_D[5]}]
set_property PACKAGE_PIN E16 [get_ports {OV7670_D[6]}]
set_property PACKAGE_PIN D14 [get_ports {OV7670_D[7]}]
set_property PACKAGE_PIN D17 [get_ports reset_1]
set_property IOSTANDARD LVCMOS33 [get_ports reset_1]
set_property PACKAGE_PIN F16 [get_ports OV7670_PCLK]
set_property IOSTANDARD LVCMOS33 [get_ports OV7670_PCLK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports OV7670_XCLK]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports BTNC]

###Buttons

#set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports BTNC]

#set_property IOSTANDARD LVCMOS33 [get_ports USB_Uart_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports USB_Uart_txd]

####

###Pmod Header JA (Camera)

#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { pwdn }]; #IO_L20N_T3_A19_15 Sch=ja[1]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[1] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[3] }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[5] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { reset_1 }]; #IO_L16N_T2_A27_15 Sch=ja[7]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[0] }]; #IO_L16P_T2_A28_15 Sch=ja[8]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[2] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[4] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


###Pmod Header JB (Camera)

#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[7] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { OV7670_PCLK }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
#set_property  CLOCK_DEDICATED_ROUTE FALSE [get_nets { OV7670_PCLK }];

#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { OV7670_VSYNC }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { OV7670_SIOC }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { OV7670_D[6] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { OV7670_XCLK }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { OV7670_HREF }]; #IO_0_15 Sch=jb[9]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33  PULLUP TRUE } [get_ports { OV7670_SIOD }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


###Buttons

#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTNC }]; #IO_L9P_T1_DQS_14 Sch=btnc

set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
set_property PACKAGE_PIN E3 [get_ports sys_clock]
#set_property PACKAGE_PIN C4 [get_ports usb_uart_txd]
#set_property PACKAGE_PIN D4 [get_ports usb_uart_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports usb_uart_txd]
set_property PACKAGE_PIN C12 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]


set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[0]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[1]}]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[2]}]
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[3]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[4]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[5]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[6]}]
set_property -dict {PACKAGE_PIN R13 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[7]}]
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS18} [get_ports {dip_switches_16bits_tri_i[8]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS18} [get_ports {dip_switches_16bits_tri_i[9]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[10]}]
set_property -dict {PACKAGE_PIN T13 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[11]}]
set_property -dict {PACKAGE_PIN H6 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[12]}]
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[13]}]
set_property -dict {PACKAGE_PIN U11 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[14]}]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports {dip_switches_16bits_tri_i[15]}]

#connect_debug_port u_ila_1/probe2 [get_nets [list design_1_i/image_filter_top_0_fsync]]

#connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[0]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[1]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[2]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[3]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[4]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[5]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[6]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[7]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[8]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[9]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[10]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[11]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[12]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[13]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[14]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[15]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[16]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[17]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[18]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[19]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[20]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[21]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[22]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[23]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[24]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[25]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[26]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[27]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[28]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[29]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[30]} {design_1_i/axi_vdma_1_M_AXIS_MM2S_TDATA[31]}]]
#connect_debug_port u_ila_0/probe1 [get_nets [list design_1_i/axi_vdma_1_M_AXIS_MM2S_TLAST]]
#connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/axi_vdma_1_M_AXIS_MM2S_TREADY]]
#connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/axi_vdma_1_M_AXIS_MM2S_TUSER]]
#connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/axi_vdma_1_M_AXIS_MM2S_TVALID]]
#connect_debug_port u_ila_1/probe3 [get_nets [list design_1_i/image_filter_0_fsync]]


connect_debug_port u_ila_1/probe0 [get_nets [list {design_1_i/axis_data_fifo_2_m_axis_tdata[0]} {design_1_i/axis_data_fifo_2_m_axis_tdata[1]} {design_1_i/axis_data_fifo_2_m_axis_tdata[2]} {design_1_i/axis_data_fifo_2_m_axis_tdata[3]} {design_1_i/axis_data_fifo_2_m_axis_tdata[4]} {design_1_i/axis_data_fifo_2_m_axis_tdata[5]} {design_1_i/axis_data_fifo_2_m_axis_tdata[6]} {design_1_i/axis_data_fifo_2_m_axis_tdata[7]} {design_1_i/axis_data_fifo_2_m_axis_tdata[8]} {design_1_i/axis_data_fifo_2_m_axis_tdata[9]} {design_1_i/axis_data_fifo_2_m_axis_tdata[10]} {design_1_i/axis_data_fifo_2_m_axis_tdata[11]} {design_1_i/axis_data_fifo_2_m_axis_tdata[12]} {design_1_i/axis_data_fifo_2_m_axis_tdata[13]} {design_1_i/axis_data_fifo_2_m_axis_tdata[14]} {design_1_i/axis_data_fifo_2_m_axis_tdata[15]} {design_1_i/axis_data_fifo_2_m_axis_tdata[16]} {design_1_i/axis_data_fifo_2_m_axis_tdata[17]} {design_1_i/axis_data_fifo_2_m_axis_tdata[18]} {design_1_i/axis_data_fifo_2_m_axis_tdata[19]} {design_1_i/axis_data_fifo_2_m_axis_tdata[20]} {design_1_i/axis_data_fifo_2_m_axis_tdata[21]} {design_1_i/axis_data_fifo_2_m_axis_tdata[22]} {design_1_i/axis_data_fifo_2_m_axis_tdata[23]} {design_1_i/axis_data_fifo_2_m_axis_tdata[24]} {design_1_i/axis_data_fifo_2_m_axis_tdata[25]} {design_1_i/axis_data_fifo_2_m_axis_tdata[26]} {design_1_i/axis_data_fifo_2_m_axis_tdata[27]} {design_1_i/axis_data_fifo_2_m_axis_tdata[28]} {design_1_i/axis_data_fifo_2_m_axis_tdata[29]} {design_1_i/axis_data_fifo_2_m_axis_tdata[30]} {design_1_i/axis_data_fifo_2_m_axis_tdata[31]}]]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axis_data_fifo_1_m_axis_tdata[0]} {design_1_i/axis_data_fifo_1_m_axis_tdata[1]} {design_1_i/axis_data_fifo_1_m_axis_tdata[2]} {design_1_i/axis_data_fifo_1_m_axis_tdata[3]} {design_1_i/axis_data_fifo_1_m_axis_tdata[4]} {design_1_i/axis_data_fifo_1_m_axis_tdata[5]} {design_1_i/axis_data_fifo_1_m_axis_tdata[6]} {design_1_i/axis_data_fifo_1_m_axis_tdata[7]} {design_1_i/axis_data_fifo_1_m_axis_tdata[8]} {design_1_i/axis_data_fifo_1_m_axis_tdata[9]} {design_1_i/axis_data_fifo_1_m_axis_tdata[10]} {design_1_i/axis_data_fifo_1_m_axis_tdata[11]} {design_1_i/axis_data_fifo_1_m_axis_tdata[12]} {design_1_i/axis_data_fifo_1_m_axis_tdata[13]} {design_1_i/axis_data_fifo_1_m_axis_tdata[14]} {design_1_i/axis_data_fifo_1_m_axis_tdata[15]} {design_1_i/axis_data_fifo_1_m_axis_tdata[16]} {design_1_i/axis_data_fifo_1_m_axis_tdata[17]} {design_1_i/axis_data_fifo_1_m_axis_tdata[18]} {design_1_i/axis_data_fifo_1_m_axis_tdata[19]} {design_1_i/axis_data_fifo_1_m_axis_tdata[20]} {design_1_i/axis_data_fifo_1_m_axis_tdata[21]} {design_1_i/axis_data_fifo_1_m_axis_tdata[22]} {design_1_i/axis_data_fifo_1_m_axis_tdata[23]} {design_1_i/axis_data_fifo_1_m_axis_tdata[24]} {design_1_i/axis_data_fifo_1_m_axis_tdata[25]} {design_1_i/axis_data_fifo_1_m_axis_tdata[26]} {design_1_i/axis_data_fifo_1_m_axis_tdata[27]} {design_1_i/axis_data_fifo_1_m_axis_tdata[28]} {design_1_i/axis_data_fifo_1_m_axis_tdata[29]} {design_1_i/axis_data_fifo_1_m_axis_tdata[30]} {design_1_i/axis_data_fifo_1_m_axis_tdata[31]}]]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/pixel_out[0]} {design_1_i/pixel_out[1]} {design_1_i/pixel_out[2]} {design_1_i/pixel_out[3]} {design_1_i/pixel_out[4]} {design_1_i/pixel_out[5]} {design_1_i/pixel_out[6]} {design_1_i/pixel_out[7]} {design_1_i/pixel_out[8]} {design_1_i/pixel_out[9]} {design_1_i/pixel_out[10]} {design_1_i/pixel_out[11]} {design_1_i/pixel_out[12]} {design_1_i/pixel_out[13]} {design_1_i/pixel_out[14]} {design_1_i/pixel_out[15]} {design_1_i/pixel_out[16]} {design_1_i/pixel_out[17]} {design_1_i/pixel_out[18]} {design_1_i/pixel_out[19]} {design_1_i/pixel_out[20]} {design_1_i/pixel_out[21]} {design_1_i/pixel_out[22]} {design_1_i/pixel_out[23]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/axis_data_fifo_1_m_axis_tvalid]]
connect_debug_port u_ila_0/probe8 [get_nets [list design_1_i/image_filter_0_tready]]
connect_debug_port u_ila_1/probe1 [get_nets [list design_1_i/vga640x480_0_fsync]]

connect_debug_port u_ila_0/probe28 [get_nets [list design_1_i/image_filter_top_0_tlast]]



connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[0]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[1]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[2]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[3]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[4]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[5]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[6]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[7]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[8]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[9]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[10]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[11]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[12]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[13]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[14]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[15]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[16]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[17]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[18]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[19]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[20]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[21]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[22]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[23]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[24]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[25]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[26]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[27]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[28]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[29]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[30]} {design_1_i/axi_vdma_0_M_AXIS_MM2S_TDATA[31]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[0]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[1]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[2]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[3]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[4]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[5]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[6]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[7]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[8]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[9]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[10]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[11]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[12]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[13]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[14]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[15]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[16]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[17]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[18]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[19]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[20]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[21]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[22]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[23]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[24]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[25]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[26]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[27]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[28]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[29]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[30]} {design_1_i/axis_data_fifo_1_M_AXIS_TDATA[31]}]]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[0]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[1]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[2]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[3]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[4]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[5]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[6]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[7]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[8]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[9]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[10]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[11]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[12]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[13]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[14]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[15]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[16]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[17]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[18]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[19]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[20]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[21]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[22]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[23]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[24]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[25]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[26]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[27]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[28]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[29]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[30]} {design_1_i/axis_data_fifo_2_M_AXIS_TDATA[31]}]]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/axis_data_fifo_2_M_AXIS_TKEEP[0]} {design_1_i/axis_data_fifo_2_M_AXIS_TKEEP[1]} {design_1_i/axis_data_fifo_2_M_AXIS_TKEEP[2]} {design_1_i/axis_data_fifo_2_M_AXIS_TKEEP[3]}]]
connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/axi_vdma_0_M_AXIS_MM2S_TLAST]]
connect_debug_port u_ila_0/probe16 [get_nets [list design_1_i/axi_vdma_0_M_AXIS_MM2S_TREADY]]
connect_debug_port u_ila_0/probe17 [get_nets [list design_1_i/axi_vdma_0_M_AXIS_MM2S_TUSER]]
connect_debug_port u_ila_0/probe18 [get_nets [list design_1_i/axi_vdma_0_M_AXIS_MM2S_TVALID]]
connect_debug_port u_ila_0/probe26 [get_nets [list design_1_i/axis_data_fifo_1_M_AXIS_TREADY]]
connect_debug_port u_ila_0/probe27 [get_nets [list design_1_i/axis_data_fifo_1_M_AXIS_TVALID]]
connect_debug_port u_ila_0/probe28 [get_nets [list design_1_i/axis_data_fifo_2_M_AXIS_TLAST]]
connect_debug_port u_ila_0/probe29 [get_nets [list design_1_i/axis_data_fifo_2_M_AXIS_TREADY]]
connect_debug_port u_ila_0/probe30 [get_nets [list design_1_i/axis_data_fifo_2_M_AXIS_TUSER]]
connect_debug_port u_ila_0/probe31 [get_nets [list design_1_i/axis_data_fifo_2_M_AXIS_TVALID]]
connect_debug_port u_ila_0/probe32 [get_nets [list design_1_i/axis_data_fifo_2_s_axis_tready]]


connect_debug_port u_ila_1/probe0 [get_nets [list {design_1_i/vga640x480_0_blue[0]} {design_1_i/vga640x480_0_blue[1]} {design_1_i/vga640x480_0_blue[2]} {design_1_i/vga640x480_0_blue[3]}]]
connect_debug_port u_ila_1/probe1 [get_nets [list {design_1_i/vga640x480_0_green[0]} {design_1_i/vga640x480_0_green[1]} {design_1_i/vga640x480_0_green[2]} {design_1_i/vga640x480_0_green[3]}]]
connect_debug_port u_ila_1/probe2 [get_nets [list {design_1_i/vga640x480_0_red[0]} {design_1_i/vga640x480_0_red[1]} {design_1_i/vga640x480_0_red[2]} {design_1_i/vga640x480_0_red[3]}]]
connect_debug_port u_ila_1/probe5 [get_nets [list design_1_i/vga640x480_0_hsync]]
connect_debug_port u_ila_1/probe7 [get_nets [list design_1_i/vga640x480_0_vsync]]


set_property PACKAGE_PIN H2 [get_ports {direction_2[3]}]
set_property PACKAGE_PIN G4 [get_ports {direction_2[2]}]
set_property PACKAGE_PIN G2 [get_ports {direction_2[1]}]
set_property PACKAGE_PIN F3 [get_ports {direction_2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_2[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {state[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {state[0]}]
set_property PACKAGE_PIN R18 [get_ports {state[0]}]
set_property PACKAGE_PIN V17 [get_ports {state[1]}]

set_property PACKAGE_PIN H17 [get_ports {direction_1[0]}]
set_property PACKAGE_PIN K15 [get_ports {direction_1[1]}]
set_property PACKAGE_PIN J13 [get_ports {direction_1[2]}]
set_property PACKAGE_PIN N14 [get_ports {direction_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {direction_1[0]}]

