`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2021 02:50:16 PM
// Design Name: 
// Module Name: Keyboard_tb
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


module Keyboard_tb;

reg clk; //驱动时钟
reg clock_USB_in;    //USB输入时钟
reg data_USB_in;     //USB串行输入

Keyboard uut(.clk(clk),
    .clock_USB_in(clock_USB_in),
    .data_USB_in(data_USB_in));

initial
begin
    clk = 0;
    clock_USB_in = 0;
    data_USB_in = 0;
    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿1
    //送入10位开始
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿5
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿6
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿7
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿10
        data_USB_in = 0;     //送入奇偶校验位
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿11
        data_USB_in = 1;     //送入结束位
    //送入10位结束
    #5000;
    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿1
    //送入10位开始
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿5
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿6
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿7
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿10
        data_USB_in = 1;     //送入奇偶校验位
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降沿11
        data_USB_in = 1;     //送入结束位
    //送入10位结束
end

always begin
    #40 clk = ~clk;  //25MHZ时钟
end


endmodule
