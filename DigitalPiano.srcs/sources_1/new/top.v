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

    //控制器输??
    input x,

    //VGA控制
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B,
    output VGA_HS,
    output VGA_VS,

    //PS2控制
    input PS2_CLK,
    input PS2_DATA,

    //PWM单声道音频输出控??
    output AUD_PWM,
    output AUD_SD,

    //Led显示输出
    output [7:0] dig,
    output [7:0] seg
    );

//数据缓存
wire [3:0] note_out[3:0];
wire [1:0] octave_out[3:0];

//当前叠加波形位移
wire [11:0] PWM_LEVEL_OUT; 

//当前失真??
wire [9:0] od_level;
wire [9:0] od_level_bottom;

//当前音色
wire tone;

//当前控制器状??
wire [1:0] state;

//全局重置信号
wire rst_n;

//实例化控制器
Controller_FSM controller_inst(
    .clk_100(clk_100),
    .x(x),
    .state(state),
    .rst_n(rst_n)
    );

//实例化键盘控制模??
Keyboard keyboard_inst(
    .clk_100(clk_100),
    .state(state),
    .rst_n(rst_n),
    .clock_USB_in(PS2_CLK),
    .data_USB_in(PS2_DATA),
    .note_0(note_out[0]),
    .note_1(note_out[1]),
    .note_2(note_out[2]),
    .note_3(note_out[3]),
    .octave_0(octave_out[0]),
    .octave_1(octave_out[1]),
    .octave_2(octave_out[2]),
    .octave_3(octave_out[3]),
    .od_level(od_level),
    .od_level_bottom(od_level_bottom),
    .tone(tone)
    );

//实例化声音控制模??
Single_Note Single_Note_Inst(
    .clk_100(clk_100),
    .state(state),
    .rst_n(rst_n),
    .od_level(od_level),
    .od_level_bottom(od_level_bottom),
    .tone(tone),
    .note_0(note_out[0]),
    .note_1(note_out[1]),
    .note_2(note_out[2]),
    .note_3(note_out[3]),
    .octave_0(octave_out[0]),
    .octave_1(octave_out[1]),
    .octave_2(octave_out[2]),
    .octave_3(octave_out[3]),
    .PWM_LEVEL_OUT(PWM_LEVEL_OUT),
    .AUD_PWM(AUD_PWM),
    .AUD_SD(AUD_SD)
    );


//实例化VGA显示输出模块
VGA VGA_inst(
    .clk_100(clk_100),
    .state(state),
    .note_0(note_out[0]),
    .note_1(note_out[1]),
    .note_2(note_out[2]),
    .note_3(note_out[3]),
    .octave_0(octave_out[0]),
    .octave_1(octave_out[1]),
    .octave_2(octave_out[2]),
    .octave_3(octave_out[3]),
    .pwm_level(PWM_LEVEL_OUT),
    .R_OUT(VGA_R),
    .G_OUT(VGA_G),
    .B_OUT(VGA_B),
    .hsync(VGA_HS),
    .vsync(VGA_VS)
    );

//实例化LED显示模块
Led Led_inst(
    .clk_100(clk_100),
    .rst_n(rst_n),
    .dig(dig),
    .seg(seg)
    );


endmodule
