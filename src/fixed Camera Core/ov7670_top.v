`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2014/05/23 16:24:31
// Design Name: 
// Module Name: ov7725_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ov7670_top(
input  CLK100MHZ,
input  OV7670_VSYNC,
input  OV7670_HREF,
input  OV7670_PCLK,
output OV7670_XCLK,
output OV7670_SIOC,
inout  OV7670_SIOD,
input [7:0] OV7670_D,

output[3:0] LED,
output[3:0] vga444_red,
output[3:0] vga444_green,
output[3:0] vga444_blue,
output vga_hsync,
output vga_vsync,
input BTNC,
output pwdn,
output reset,
output [31:0]tdata,
output tvalid,
output tlast,
output fsync
);
wire [16:0] frame_addr;
wire [16:0] capture_addr;   
//wire  capture_we;  
wire  config_finished;  
wire  clk25; 
wire  clk50;     
wire  resend;        
wire [15:0] frame_pixel;  
wire [15:0]  data_16;
  
assign pwdn = 0;
assign reset = 1;
  

assign LED = {3'b0,config_finished};  // LED0 indicates camera configuration is done
assign  	OV7670_XCLK = clk25;

// The button (BTNC) is used to resend the configuration bits to the camera.
// The button is debounced with a 50 MHz clock
debounce   btn_debounce(
		.clk(clk50),
		.i(BTNC),
		.o(resend)
);
 
 vga444   Inst_vga(
		.clk25       (clk25),
		.vga_red    (vga444_red),
		.vga_green   (vga444_green),
		.vga_blue    (vga444_blue),
		.vga_hsync   (vga_hsync),
		.vga_vsync  (vga_vsync),
		.HCnt       (),
		.VCnt       (),
		
		.tdata(tdata),
        .tvalid(tvalid),
        .fsync(fsync),
        .tlast(tlast),

		.frame_addr   (frame_addr),
		.frame_pixel  (frame_pixel)
 );

// BRAM using memory generator from IP catalog
// dual-port, 16 bits wide, 76800 deep 
  
blk_mem_gen_0 u_frame_buffer (
   .clka(OV7670_PCLK),    // input wire clka
   .wea(1'b1),      // input wire [0 : 0] wea
   .addra(capture_addr),  // input wire [16 : 0] addra
   .dina(data_16),    // input wire [15 : 0] dina
   .clkb(clk25),    // input wire clkb
   .addrb(frame_addr),  // input wire [16 : 0] addrb
   .doutb(frame_pixel)  // output wire [15 : 0] doutb
 );



 ov7670_capture capture(
 		.pclk  (OV7670_PCLK),
 		.vsync (OV7670_VSYNC),
 		.href  (OV7670_HREF),
 		.d     ( OV7670_D),
 		.addr  (capture_addr),
 		.dout( data_16),
 		.we   ()
 	);
 
I2C_AV_Config IIC(
 		.iCLK   ( clk25),    
 		.iRST_N (! resend),    
 		.Config_Done ( config_finished),
 		.I2C_SDAT  ( OV7670_SIOD),    
 		.I2C_SCLK  ( OV7670_SIOC),
 		.LUT_INDEX (),
 		.I2C_RDATA ()
 		); 


// Derive two clocks for the board provided 100 MHz clock.
// Generated using clock wizard in IP Catalog
   
clk_wiz_0 u_clock
   (
   // Clock in ports
    .clk_in1(CLK100MHZ),      // input clk_in1
    // Clock out ports
    .clk_out1(clk50),     // output clk_out1
    .clk_out2(clk25));    // output clk_out2

endmodule
