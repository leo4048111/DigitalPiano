`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2021 10:17:41 AM
// Design Name: 
// Module Name: top
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


module top(
    //全局时钟输入
    input clk,
    //VGA控制
    output [3:0] R_OUT,
    output [3:0] G_OUT,
    output [3:0] B_OUT,
    output hsync,
    output vsync,

    //PS2控制
    input clock_USB_in,
    input data_USB_in,

    //PWM单声道音频输出控制
    output speaker
    );

//数据缓存
wire [3:0] note_out;
wire [1:0] octave_out;

//实例化键盘控制模块
Keyboard keyboard_inst(
    .clk(clk),
    .clock_USB_in(clock_USB_in),
    .data_USB_in(data_USB_in),
    .speaker(speaker),
    .note_out(note_out),
    .octave_out(octave_out)
    );

//实例化VGA显示输出模块
VGA VGA_inst(
    .clk(clk),
    .note(note_out),
    .octave(octave_out),
    .R_OUT(R_OUT),
    .G_OUT(G_OUT),
    .B_OUT(B_OUT),
    .hsync(hsync),
    .vsync(vsync));


endmodule
