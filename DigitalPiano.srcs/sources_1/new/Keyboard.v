`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 04:03:00 PM
// Design Name: 
// Module Name: Keyboard
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


module Keyboard(
    //控制时钟
    input clk,

    //USB输入
    input clock_USB_in, //从USB口输入的时钟
    input data_USB_in  //从USB口输入的串行信号
    );

reg reset;
wire [7:0] DATA;
wire DATA_VALID;
wire PS2_ERROR;


PS2 PS2(.clk(clk),
        .rst(reset),
        .clock_USB_in(clock_USB_in),
        .data_USB_in(data_USB_in),
        .parallel_data_in(DATA),
        .parallel_data_valid(DATA_VALID),
        .data_in_error(PS2_ERROR)
        );

parameter C = 262;
parameter C_SHARP = 277;
parameter D = 294;
parameter D_SHARP = 311;
parameter E = 330;
parameter F = 349;
parameter F_SHARP = 370;
parameter G = 392;
parameter G_SHARP = 415;
parameter A = 440;
parameter A_SHARP = 466;
parameter B = 494;

reg ena;

always @ (posedge clk)
begin
    case(DATA)
    F0:begin
        ena = 0;
    end

end

endmodule
