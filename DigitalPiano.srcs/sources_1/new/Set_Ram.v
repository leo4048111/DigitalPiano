`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2021 11:08:22 AM
// Design Name: 
// Module Name: Set_Ram
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


module Set_Ram(
    input clk,
    input [7:0] character,
    output reg [15:0] row0,
    output reg [15:0] row1,
    output reg [15:0] row2,
    output reg [15:0] row3,
    output reg [15:0] row4,
    output reg [15:0] row5,
    output reg [15:0] row6,
    output reg [15:0] row7,
    output reg [15:0] row8,
    output reg [15:0] row9,
    output reg [15:0] row10,
    output reg [15:0] row11,
    output reg [15:0] row12,
    output reg [15:0] row13,
    output reg [15:0] row14,
    output reg [15:0] row15
    );

always @ (posedge clk)
begin
    case(character)
    default: begin
        row0 <= 16'h0;
        row1 <= 16'h0;
        row2 <= 16'h0;
        row3 <= 16'h0;
        row4 <= 16'h0;
        row5 <= 16'h0;
        row6 <= 16'h0;
        row7 <= 16'h0;
        row8 <= 16'h0;
        row9 <= 16'h0;
        row10 <= 16'h0;
        row11 <= 16'h0;
        row12 <= 16'h0;
        row13 <= 16'h0;
        row14 <= 16'h0;
        row15 <= 16'h0;
    end

    8'd0: begin       //字符0
        row0 <= 16'h0;
        row1 <= 16'h0;
        row2 <= 16'h0;
        row3 <= 16'h0;
        row4 <= 16'h0;
        row5 <= 16'h0;
        row6 <= 16'h0;
        row7 <= 16'h0;
        row8 <= 16'h0;
        row9 <= 16'h0;
        row10 <= 16'h0;
        row11 <= 16'h0;
        row12 <= 16'h0;
        row13 <= 16'h0;
        row14 <= 16'h0;
        row15 <= 16'h0;
    end

    8'd10: begin     //字符A
        row0 <= 16'B0000000000000000;
        row1 <= 16'B0000000000000000;
        row2 <= 16'B0011110000000000;
        row3 <= 16'B0110011000000000;
        row4 <= 16'B0110011000000000;
        row5 <= 16'B0110011000000000;
        row6 <= 16'B0110011000000000;
        row7 <= 16'B0110011000000000;
        row8 <= 16'B0111111000000000;
        row9 <= 16'B0110011000000000;
        row10 <= 16'B0110011000000000;
        row11 <= 16'B0110011000000000;
        row12 <= 16'B0110011000000000;
        row13 <= 16'B0110011000000000;
        row14 <= 16'B0000000000000000;
        row15 <= 16'B0000000000000000;
    end
    endcase
end

endmodule
