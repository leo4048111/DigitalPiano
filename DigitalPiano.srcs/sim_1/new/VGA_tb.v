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
wire [3:0] red;
wire [3:0] green;
wire [3:0] blue;
wire hsync;
wire vsync;

VGA uut(
    .clk_100(clock),
    .R_OUT(red),
    .G_OUT(green),
    .B_OUT(blue),
    .hsync(hsync),
    .vsync(vsync)
);

initial 
begin 
    clock = 1'b0;
end

always begin
    #10 clock = ~clock;
end

endmodule
