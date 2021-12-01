`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 02:28:50 PM
// Design Name: 
// Module Name: Single_Note
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


module Single_Note(
    input clk,     //25MHZ时钟
    input ena,
    output reg speaker
    );
parameter freq = 440;
parameter clkdivider = 25000000/freq/2;
reg [14:0] counter;

initial
begin
    speaker = 1'b0;
    counter = 15'b0;
end

always @ (posedge clk)
begin
    if(counter == clkdivider - 1 || ena == 0)
    begin
        counter <= 0;
    end
    else begin
        counter <= counter + 1;
    end
end

always @ (posedge clk)
begin
    if(counter == clkdivider - 1)
    begin
        speaker = ~speaker;
    end
end
endmodule
