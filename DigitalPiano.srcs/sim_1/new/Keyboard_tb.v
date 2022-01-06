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

Keyboard uut(.clk_100(clk),
    .clock_USB_in(clock_USB_in),
    .data_USB_in(data_USB_in));

initial
begin
    clk = 0;
    clock_USB_in = 0;
    data_USB_in = 0;
    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 0;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?
    #5000;

    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 1;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?
    #5000;

    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 0;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?
    #5000;

    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 1;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?

    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 1;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?
    #5000;

    //准备送入
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?1
    //送入10位开�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?2
        data_USB_in = 0;    //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?3
        data_USB_in = 1;    //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?4
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?5
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?6
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?7
        data_USB_in = 1;     //送入1
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?8
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?9
        data_USB_in = 0;     //送入0
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?10
        data_USB_in = 1;     //送入奇偶校验�?
    #66666 clock_USB_in = 1;
    #66666 clock_USB_in = 0;    //下降�?11
        data_USB_in = 1;     //送入结束�?
    //送入10位结�?
end

always begin
    #40 clk = ~clk;  //25MHZ时钟
end


endmodule
