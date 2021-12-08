`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2021 01:14:29 PM
// Design Name: 
// Module Name: Pixel_Mapping
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


module Pixel_Mapping(
    input clk,
    input [10:0] hcount,
    input [10:0] vcount,
    output [3:0] R_OUT,
    output [3:0] G_OUT,
    output [3:0] B_OUT
    );

//640*480参数
localparam VISIBLE_HORIZONTAL = 640;
localparam FRONT_H = 16;
localparam SYNC_H = 96;
localparam BACK_H = 48; 
localparam TOTAL_H = VISIBLE_HORIZONTAL+FRONT_H+SYNC_H+BACK_H;
//1024*768参数
/*localparam VISIBLE_HORIZONTAL = 1024;
localparam FRONT_H = 24;
localparam SYNC_H = 136;
localparam BACK_H = 160; */
//640*480参数
localparam VISIBLE_VERTICAL = 480;
localparam FRONT_V = 10;
localparam SYNC_V = 2;
localparam BACK_V = 33;
localparam TOTAL_V = VISIBLE_VERTICAL+FRONT_V+SYNC_V+BACK_V;

//1024*768参数
/*localparam VISIBLE_VERTICAL = 768;
localparam FRONT_V = 3;
localparam SYNC_V = 6;
localparam BACK_V = 29;*/

/*(*dont_touch = "true"*) reg [3:0] red = 4'b0;
(*dont_touch = "true"*) reg [3:0] blue = 4'b0;
(*dont_touch = "true"*) reg [3:0] green = 4'b0;*/

//缓存字符点阵16X16
wire [15:0] ram[15:0];
reg [7:0] character = 8'd1;

//缓存钢琴点阵图
reg memPiano[0:67000];

//读入缓存数据
initial
begin
    $readmemb("Piano.txt", memPiano);
end

//动态显存控制
Set_Ram set_ram_inst(
    .clk(clk),
    .character(character),
    .row0(ram[0]),
    .row1(ram[1]),
    .row2(ram[2]),
    .row3(ram[3]),
    .row4(ram[4]),
    .row5(ram[5]),
    .row6(ram[6]),
    .row7(ram[7]),
    .row8(ram[8]),
    .row9(ram[9]),
    .row10(ram[10]),
    .row11(ram[11]),
    .row12(ram[12]),
    .row13(ram[13]),
    .row14(ram[14]),
    .row15(ram[15]));

//表示像素点是否在可视区域
reg is_display;
//表示像素点是否为字符显示
reg is_char;
//表示像素点是否为钢琴显示
reg is_piano;
//表示像素点是否为背景
reg is_background;

//字符坐标信息
localparam CH_1_X = 100;
localparam CH_1_Y = 200;
//钢琴坐标信息
localparam PIANO_X = 70;
localparam PIANO_Y = 300;
//字符大小
localparam CHAR_WIDTH = 16;
localparam CHAR_HEIGHT = 16;
//钢琴大小
localparam PIANO_WIDTH = 500;
localparam PIANO_HEIGHT = 134;


//更新缓存
always @ (posedge clk)
begin
    if(hcount == SYNC_H + BACK_H + CH_1_X - 1 && vcount == SYNC_V + BACK_V + CH_1_Y -1)
    begin
        character <= 8'd10;
    end
end

//读取缓存信息
always @ (posedge clk)
begin
    if(hcount >= SYNC_H + BACK_H && hcount < SYNC_H + BACK_H + VISIBLE_HORIZONTAL && vcount >= SYNC_V + BACK_V && vcount < SYNC_V + BACK_V +VISIBLE_VERTICAL)
    begin
        is_display <= 1'b1;
        //打印钢琴
        if(hcount >= SYNC_H + BACK_H + PIANO_X && hcount < SYNC_H + BACK_H + PIANO_X + PIANO_WIDTH && vcount >= SYNC_V + BACK_V + PIANO_Y && vcount < SYNC_V + BACK_V +PIANO_Y +PIANO_HEIGHT)
        begin
            is_background <= 1'b0;
            is_piano <= memPiano[(hcount - SYNC_H - BACK_H - PIANO_X) + PIANO_WIDTH * (vcount - SYNC_V - BACK_V - PIANO_Y)];
        end
        else begin
            is_background <= 1'b1;
        end
    end
    else begin
        is_display <= 1'b0;
    end
end   

assign R_OUT = is_display?(is_background?4'b0000:(is_piano? 4'b1111:4'b0000)):4'b0000;
assign G_OUT = is_display?(is_background?4'b0000:(is_piano? 4'b1111:4'b0000)):4'b0000;
assign B_OUT = is_display?(is_background?4'b0000:(is_piano? 4'b1111:4'b0000)):4'b0000;

endmodule
