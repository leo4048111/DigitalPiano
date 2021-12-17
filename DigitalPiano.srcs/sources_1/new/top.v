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
    input clk_100,
    //VGA控制
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS,

    //PS2控制
    input PS2_CLK,
    input PS2_DATA,

    //PWM单声道音频输出控制
    output AUD_PWM,
    output AUD_SD
    );

//数据缓存
wire [3:0] note_out;
wire [1:0] octave_out;

//实例化键盘控制模块
Keyboard keyboard_inst(
    .clk_100(clk_100),
    .clock_USB_in(PS2_CLK),
    .data_USB_in(PS2_DATA),
    .note_out(note_out),
    .octave_out(octave_out)
    );

//实例化声音控制模块
Single_Note Single_Note_Inst(
    .clk_100(clk_100),
    .ena(ena),
    .note(note_out),
    .octave(octave_out),
    .AUD_PWM(AUD_PWM),
    .AUD_SD(AUD_SD)
    );


//实例化VGA显示输出模块
VGA VGA_inst(
    .clk_100(clk_100),
    .note(note_out),
    .octave(octave_out),
    .R_OUT(VGA_R),
    .G_OUT(VGA_G),
    .B_OUT(VGA_B),
    .hsync(VGA_HS),
    .vsync(VGA_VS)
    );


endmodule
