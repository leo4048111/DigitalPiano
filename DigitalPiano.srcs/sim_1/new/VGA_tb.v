`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 09:29:19 AM
// Design Name: 
// Module Name: VGA_tb
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


module VGA_tb;

reg clock;
reg rst;
wire hsync;
wire vsync;

VGA uut(.clk(clock),.hsync(hsync),.vsync(vsync));

initial begin : RST_GEN
    rst = 1;
    #1000;
    rst = 0;
end


initial 
begin 
    clock = 1'b0;
end

always begin
    #10 clock = ~clock;
end

endmodule
