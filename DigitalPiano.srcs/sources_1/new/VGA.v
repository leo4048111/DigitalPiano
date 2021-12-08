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
    output [3:0] R_OUT,
    output [3:0] G_OUT,
    output [3:0] B_OUT,
    output reg hsync,
    output reg vsync
    );

//生成25MHZ时钟
clk_wiz_0 divider(.clk_in1(clk),.clk_out1(clock_25));

//640*480参数
localparam VISIBLE_HORIZONTAL = 640;
localparam FRONT_H = 16;
localparam SYNC_H = 96;
localparam BACK_H = 48; 
//1024*768参数
/*localparam VISIBLE_HORIZONTAL = 1024;
localparam FRONT_H = 24;
localparam SYNC_H = 136;
localparam BACK_H = 160; */
//640*480参数
localparam TOTAL_H = VISIBLE_HORIZONTAL+FRONT_H+SYNC_H+BACK_H;
localparam VISIBLE_VERTICAL = 480;
localparam FRONT_V = 10;
localparam SYNC_V = 2;
localparam BACK_V = 33;
//1024*768参数
/*localparam VISIBLE_VERTICAL = 768;
localparam FRONT_V = 3;
localparam SYNC_V = 6;
localparam BACK_V = 29;*/
localparam TOTAL_V = VISIBLE_VERTICAL+FRONT_V+SYNC_V+BACK_V;

(*dont_touch = "true"*) reg [10:0] hcount = 11'd0;
(*dont_touch = "true"*) reg [10:0] vcount = 11'd0;

//同步信号控制
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

    if (vcount < SYNC_V)
        vsync <= 1'b0;
    else begin
        vsync <= 1'b1;
    end

    if (hcount < SYNC_H)
        hsync <= 1'b0;
    else begin
        hsync <= 1'b1;
    end
end

//RGB输出控制
Pixel_Mapping p_m_inst(
    .clk(clock_25),
    .hcount(hcount),
    .vcount(vcount),
    .R_OUT(R_OUT),
    .G_OUT(G_OUT),
    .B_OUT(B_OUT));

endmodule


