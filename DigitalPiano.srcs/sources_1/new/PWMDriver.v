`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2021 12:51:05 PM
// Design Name: 
// Module Name: PWMDriver
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


module PWMDriver(
    input clk_100,
    input [11:0] pwm_level,
    output reg pwm_out
    );

reg [11:0] count;
reg [11:0] compare;

always @ (posedge clk_100)
begin
    if(count == 0)
    begin
        compare <= pwm_level;
        count <= count + 1;
    end
    else if (count == 3071) begin
        count <= 10'b0;
    end
    else begin
        count <= count + 1;
        if (count < compare)
            pwm_out <= 1'b1;
        else
            pwm_out <= 1'b0;
    end
end
endmodule
