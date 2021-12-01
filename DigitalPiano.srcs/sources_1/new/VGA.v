`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 08:55:04 AM
// Design Name: 
// Module Name: VGA
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


module VGA(
    input clk,
    output reg [2:0] red,
    output reg [2:0] green,
    output reg [2:0] blue,
    output reg hsync,
    output reg vsync
    );

//生成25MHZ像素时钟
clk_wiz_0 divider(.clk_in1(clk),.clk_out1(clock_25),.reset(rst));

localparam VISIBLE_HORIZONTAL = 640;
localparam FRONT_H = 16;
localparam SYNC_H = 96;
localparam BACK_H = 48; 
localparam TOTAL_H = VISIBLE_HORIZONTAL+FRONT_H+SYNC_H+BACK_H;
localparam VISIBLE_VERTICAL = 480;
localparam FRONT_V = 10;
localparam SYNC_V = 2;
localparam BACK_V = 33;
localparam TOTAL_V = VISIBLE_VERTICAL+FRONT_V+SYNC_V+BACK_V;

reg [9:0] hcount = VISIBLE_HORIZONTAL;
reg [9:0] vcount = VISIBLE_VERTICAL;

always @(posedge clock_25) 
begin
    if(hcount == TOTAL_H-1)
    begin
        hcount <= 0;
        if(vcount == TOTAL_V-1)
            vcount <=0;
        else begin
            vcount <= vcount + 1'b1;
        end
    end
    else begin
        hcount <= hcount + 1'b1;
    end

    if (vcount >= VISIBLE_VERTICAL+FRONT_V && vcount < VISIBLE_VERTICAL+FRONT_V+SYNC_V)
        vsync <= 1'b1;
    else
        vsync <= 1'b0;

    if (hcount >= VISIBLE_HORIZONTAL+FRONT_H && hcount < VISIBLE_HORIZONTAL+FRONT_H+SYNC_H)
        hsync <= 1'b1;
    else begin
        hsync <= 1'b0;
    end
end
endmodule
