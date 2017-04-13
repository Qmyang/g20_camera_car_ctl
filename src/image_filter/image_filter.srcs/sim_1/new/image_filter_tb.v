`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2017 04:47:08 PM
// Design Name: 
// Module Name: image_filter_tb
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


module image_filter_tb(

    );
parameter integer PIXEL_BIT_WIDTH = 32;
reg [7:0] memory [0:921600] ;
reg [7:0] buffer_out [0:9216];
reg sys_clk;
reg reset;
reg [PIXEL_BIT_WIDTH - 1:0] pixel_in;
reg tvalid;
reg pixel_out_ready;
wire [PIXEL_BIT_WIDTH - 1:0]pixel_out;
wire tready;
wire fsync;
wire pixel_out_valid;


integer i;
integer j;
integer k;
integer outfile;

image_filter_top dut(
    .clk(sys_clk),	//pixel clock: 25MHz
    .aresetn(~reset),            //asynchronous reset
    .pixel_in(pixel_in),
    .tvalid(tvalid),
    .pixel_out_ready(pixel_out_ready),
    .pixel_out(pixel_out),
    .tready(tready),
    .fsync(fsync),
    .pixel_out_valid(pixel_out_valid)
    );
    
always #5 sys_clk = ~sys_clk;

initial
begin
    $readmemh("F:/image_filter/image.mif", memory) ;
    sys_clk = 1'b0;
    reset = 1'b1;
    pixel_out_ready = 1'b1;
    i = 0;
    #45
    $display("Starting!");
    reset = 1'b0;
    
    while (i < 307199 || j < 3071)
    begin
        #50;
    end
    outfile = $fopen ("F:/image_filter/image_out.mif", "w");
    for (k = 0; k < 9216; k = k + 1)
    begin
        $fwrite (outfile, "%x\n", buffer_out[k]);
        //$fwrite (outfile, "%x\n", 8'h1c);
    end
    $fclose (outfile);
    $display("Finished!");

end

always@(posedge sys_clk)
begin
    if (reset) 
        begin
        i = 0;
        pixel_in = {memory[3*i], memory[3*i + 1], memory[3 *i + 2], 8'b0};
        tvalid = 1'b1;
        end
     else if (i < 307200 && tready)
        begin
            i <= i + 1;
            tvalid <= 1;
            pixel_in <= {memory[3*i], memory[3*i + 1], memory[3 *i + 2], 8'b0};
        end
     else
        begin
        tvalid <= 1;
        pixel_in <= {memory[3*i], memory[3*i + 1], memory[3 *i + 2], 8'b0};
        end
end

always@(posedge sys_clk)
begin
    if (reset) 
        begin
        j = 0;
        end
    else if (pixel_out_valid)
        begin
            if (j < 3072)
                begin
                buffer_out[3*j] <= pixel_out[31:24];
                buffer_out[3*j + 1] <= pixel_out[23:16];
                buffer_out[3 *j + 2] <= pixel_out[15:8];
                j <= j+1;
                end
        end
end

      
endmodule
