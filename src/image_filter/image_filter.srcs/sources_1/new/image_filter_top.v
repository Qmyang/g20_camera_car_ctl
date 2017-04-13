`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2017 02:17:52 PM
// Design Name: 
// Module Name: image_filter_top
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


module image_filter_top(
    input wire clk,			//pixel clock: 25MHz
    input wire aresetn,            //asynchronous reset
    input wire [31:0] pixel_in,
    input wire tvalid,
    input wire pixel_out_ready,
    input wire [31:0] ctl_reg,
    output wire [31:0]pixel_out,
    output wire tready,
    output wire fsync,
    output wire pixel_out_valid,
    output wire [3:0]tkeep,
    output wire tlast
    );
parameter hpixels = 800;// horizontal pixels per line
    parameter vlines = 521; // vertical lines per frame
    parameter hpulse = 96;     // hsync pulse length
    parameter vpulse = 2;     // vsync pulse length
    parameter hbp = 144;     // end of horizontal back porch
    parameter hfp = 784;     // beginning of horizontal front porch
    parameter vbp = 31;         // end of vertical back porch
    parameter vfp = 511;     // beginning of vertical front porch

parameter [2:0] IDLE = 3'b000, // This state initiates AXI4Lite transaction 
        // after the state machine changes state to INIT_WRITE 
        // when there is 0 to 1 transition on INIT_AXI_TXN
    READ_FRAME_START   = 3'b001, // This state initializes write transaction,
        // once writes are done, the state machine 
        // changes state to INIT_READ 
    READ_LINES = 3'b010, // This state initializes read transaction
    
    WRITE_ONE_LINE = 3'b011,
    RESET_FILTERS_AFTER_WRITE = 3'b100,
    CHANGE_FILTER = 3'b101;

// registers for storing the horizontal & vertical counters
(* mark_debug *) reg [9:0] hc;
(* mark_debug *) reg [9:0] vc;
reg [63:0] filter_valid;
wire [23:0]out_line[0:63];
(* mark_debug *) reg[2:0] mst_exec_state;
(* mark_debug *) reg [6:0]write_index;
wire writes_done;
wire read_done;
wire resetn_filters;
wire [23:0]pixel_in_actual;
reg [23:0]pixel_out_actual;
reg filter_ready;
reg filter_ready_delayed;
wire next_pixel;
assign writes_done = (write_index == 64 - 1);
assign next_pixel = pixel_out_valid & pixel_out_ready;
assign fsync = (mst_exec_state == READ_FRAME_START);
assign pixel_out_valid = (mst_exec_state == WRITE_ONE_LINE);
assign resetn_filters = (mst_exec_state != RESET_FILTERS_AFTER_WRITE);
assign read_done = (vc + 1) % 10 == 0 && hc == 639;
assign tready = mst_exec_state == READ_LINES;
assign tkeep = 4'b1111;
assign tlast = writes_done;
assign pixel_in_actual = pixel_in[23:0];
assign pixel_out = {8'b0, pixel_out_actual};
// Horizontal & vertical counters --
// this is how we keep track of where we are on the screen.
// ------------------------
// Sequential "always block", which is a block that is
// only triggered on signal transitions or "edges".
// posedge = rising edge  &  negedge = falling edge
// Assignment statements can only be used on type "reg" and need to be of the "non-blocking" type: <=
always @(posedge clk)
begin
    // reset condition
    if (~aresetn)
    begin
        hc <= 0;
        vc <= 0;
    end
    else if (tready && tvalid)
    begin
        // keep counting until the end of the line
        if (hc < 640 - 1)
            hc <= hc + 1;
        else
        // When we hit the end of the line, reset the horizontal
        // counter and increment the vertical counter.
        // If vertical counter is at the end of the frame, then
        // reset that one too.
        begin
            hc <= 0;
            if (vc < 480 - 1)
                vc <= vc + 1;
            else
                vc <= 0;
        end
        
    end
end

// Assert delay by 1 cycle so that filter is ready
always @(posedge clk)                                          
begin                                                                 
    if (aresetn == 0)                   
      begin                                                             
        filter_ready_delayed <= 0;                                    
      end
    //Only check data when RVALID is active
    else if (filter_ready)
      begin
        filter_ready_delayed <= 1;
      end
    else
      begin
        filter_ready_delayed <= 0;
      end
end   	

always @(*)                                          
begin                                                                 
    if (mst_exec_state == READ_LINES)
        filter_valid <= 1 << (hc / 10);
    else
        filter_valid <= 0;                                                 
end

genvar i;
generate for (i = 0; i < 64; i = i + 1)
begin
serial_filter filter_inst(
        .pixel_in(pixel_in_actual),
        .clk(clk),
        .resetn(resetn_filters),
        .valid(filter_valid[i]),
        .pixel_out(out_line[i]));
end
endgenerate  

always @(posedge clk)                                                      
begin                                                                             
    if (aresetn == 0)    
      begin                                                                         
        write_index <= 0;                                                           
      end                                                                           
    else if (next_pixel)
      begin
       if (write_index != 64 - 1)                                                             
         write_index <= write_index + 1;
       else
         write_index <= 0;                                      
      end                                                                           
    else                                                                            
      write_index <= 0;                                                   
end               

always @(posedge clk)                                                      
begin                                                                             
    if (aresetn == 0)                                                         
      pixel_out_actual <= 'b0;                                                                                                                       
    else if (mst_exec_state == WRITE_ONE_LINE)                                                                 
      pixel_out_actual <= out_line[write_index];
    else                                                                            
      pixel_out_actual <= pixel_out_actual;                                                       
end 

always @ ( posedge clk)                                                                            
  begin                                                                                                     
    if (aresetn == 1'b0 )                                                                             
      begin                                                                                                 
        // reset condition                                                                                  
        // All the signals are assigned default values under reset condition                                
        mst_exec_state      <= IDLE;                                                                
      end                                                                                                   
    else                                                                                                    
      begin                                                                                                 
        // state transition
        case (mst_exec_state)
          IDLE:
            if (ctl_reg != 0)
                mst_exec_state <=  RESET_FILTERS_AFTER_WRITE;
            else
                mst_exec_state <= IDLE;
          
          READ_FRAME_START:
            // This state is responsible to wait for user defined C_M_START_COUNT
            // number of clock cycles.
              mst_exec_state <=  READ_LINES;                                                
          READ_LINES:
              if (read_done)
                mst_exec_state <= WRITE_ONE_LINE;
              else
                mst_exec_state <= READ_LINES;
          WRITE_ONE_LINE:
               if (writes_done)
                   mst_exec_state <= RESET_FILTERS_AFTER_WRITE;
               else
                   mst_exec_state <= WRITE_ONE_LINE;
          RESET_FILTERS_AFTER_WRITE:
               if (vc == 0)
                   mst_exec_state <= READ_FRAME_START;
               else
                   mst_exec_state <= READ_LINES;                                                                                                              
          default :                                                                                         
            begin                                                                                           
              mst_exec_state  <= IDLE;                                                              
            end                                                                                             
        endcase                                                                                             
      end                                                                                                   
  end //MASTER_EXECUTION_PROC      


endmodule


