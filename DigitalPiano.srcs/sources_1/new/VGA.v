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
    input rst,
    output reg [3:0] red,
    output reg [3:0] green,
    output reg [3:0] blue,
    output reg hsync,
    output reg vsync
    );

//生成65MHZ时钟
clk_wiz_0 divider(.clk_in1(clk),.clk_out1(clock_65));

/*localparam VISIBLE_HORIZONTAL = 640;
localparam FRONT_H = 16;
localparam SYNC_H = 96;
localparam BACK_H = 48; */
localparam VISIBLE_HORIZONTAL = 1024;
localparam FRONT_H = 24;
localparam SYNC_H = 136;
localparam BACK_H = 160; 
localparam TOTAL_H = VISIBLE_HORIZONTAL+FRONT_H+SYNC_H+BACK_H;
/*localparam VISIBLE_VERTICAL = 480;
localparam FRONT_V = 10;
localparam SYNC_V = 2;
localparam BACK_V = 33;*/
localparam VISIBLE_VERTICAL = 768;
localparam FRONT_V = 3;
localparam SYNC_V = 6;
localparam BACK_V = 29;
localparam TOTAL_V = VISIBLE_VERTICAL+FRONT_V+SYNC_V+BACK_V;

reg [9:0] hcount = VISIBLE_HORIZONTAL;
reg [9:0] vcount = VISIBLE_VERTICAL;

/*reg [7:0] red_8 = 8'hff;
reg [7:0] green_8 = 8'hff;
reg [7:0] blue_8 = 8'hff;
reg [15:0] keycode = 16'h0400;
reg [2:0] OctaveSelect = 3'b010;
reg [2:0] Tone = 3'b001;
*/
always @(posedge clock_65) 
begin
    if(hcount < 1024/3)
        begin
            red <= 4'b1111;
            blue <= 4'b0000;
            green <= 4'b0000;
        end
    else begin
        red <= 4'b1111;
        blue <= 4'b1111;
        green <= 4'b1111;
    end
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
        vsync <= 1'b0;
    else
        vsync <= 1'b1;

    if (hcount >= VISIBLE_HORIZONTAL+FRONT_H && hcount < VISIBLE_HORIZONTAL+FRONT_H+SYNC_H)
        hsync <= 1'b0;
    else begin
        hsync <= 1'b1;
    end
end

/*color_mapper cm_inst(
    .clk(clk),
    .DrawX(hcount),
    .DrawY(vcount),
    .OctaveSelect(OctaveSelect),
    .Tone(Tone),
    .VGA_R(red_8),
    .VGA_G(green_8),
    .VGA_B(blue_8)
    );*/


endmodule


