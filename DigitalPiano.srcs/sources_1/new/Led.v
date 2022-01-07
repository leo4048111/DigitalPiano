`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2022 11:15:37 AM
// Design Name: 
// Module Name: Led
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


module Led(
    input clk_100,
    input rst_n,
    output [7:0] dig,
    output [7:0] seg
    );

reg [7:0] dig_select = 8'b11111110;
reg [7:0] seg_store = 8'hff;
reg [10:0] count = 0;

always @ (posedge clk_100 or negedge rst_n)
begin
    count = count + 1;
    if(!rst_n) begin
        dig_select <= 8'b11111111;
        count <= 0;
    end
    else if(count[10:8] == 0) //2
    begin
        dig_select <= 8'b01111111;
        seg_store <= 8'ha4;
    end
    else if(count[10:8] == 1) //0
    begin
        dig_select <= 8'b10111111;
        seg_store <= 8'hc0;
    end
    else if(count[10:8] == 2) //5
    begin
        dig_select <= 8'b11011111;
        seg_store <= 8'h92;
    end
    else if(count[10:8] == 3) //0
    begin
        dig_select <= 8'b11101111;
        seg_store <= 8'hc0;
    end
    else if(count[10:8] == 4) //2
    begin
        dig_select <= 8'b11110111;
        seg_store <= 8'ha4;
    end
    else if(count[10:8] == 5) //5
    begin
        dig_select <= 8'b11111011;
        seg_store <= 8'h92;
    end
    else if(count[10:8] == 6) //0
    begin
        dig_select <= 8'b11111101;
        seg_store <= 8'hc0;
    end
    else begin
        count <= 0;
    end
    
end

assign dig = dig_select;
assign seg = seg_store;
endmodule
