`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2017 02:43:04 PM
// Design Name: 
// Module Name: serial_filter
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


module serial_filter(
input [23:0]pixel_in,
input clk,
input resetn,
input valid,
output reg [23:0]pixel_out
);
assign brightness_out = pixel_out[23:16] + pixel_out[15:8] + pixel_out[7:0];
assign brightness_in = pixel_in[23:16] + pixel_in[15:8] + pixel_in[7:0];

always@(posedge clk)
begin
    if (resetn == 0)
        begin
        pixel_out <= 32'hffffffff;
        end
    else
        begin
        if (valid)
            if (brightness_in < brightness_out)
                pixel_out <= pixel_in;
        end
end
endmodule
