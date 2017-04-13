module test ();



reg clk25;			//pixel clock: 25MHz
reg aresetn;		//asynchronous reset
wire hsync;		//horizontal sync out
wire vsync;		//vertical sync out
wire [3:0] red;	//red vga output
wire [3:0] green; //green vga output
wire [3:0] blue;	//blue vga output
reg [31:0] pixel_data;
reg tvalid;
wire tready;
wire fsync;

initial begin
    clk25 = 0;
    aresetn = 0;
    #10 aresetn = 1;
end always begin
    #5 clk25 = ~clk25;
end

initial begin
    pixel_data = 0;
    tvalid = 1;
end always begin
    #10 pixel_data = pixel_data + 1;
end


vga640x480 VGA(
	clk25,			//pixel clock: 25MHz
	aresetn,			//asynchronous reset
	hsync,		//horizontal sync out
	vsync,		//vertical sync out
	red,	//red vga output
	green, //green vga output
	blue,	//blue vga output
	pixel_data,
    tvalid,
    tready,
    fsync
	);



endmodule