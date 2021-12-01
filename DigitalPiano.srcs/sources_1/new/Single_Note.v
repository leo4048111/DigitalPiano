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
    input [3:0] note,
    input [2:0] octave,
    output reg speaker
    );

reg [16:0] clkdivider;
always @ (note)
begin
    case (note)
    0: clkdivider = 95419; // C3 = 25000000/262
    1: clkdivider = 90252; // #C3 = 25000000/277
    2: clkdivider = 85034; // D3 = 25000000/294
    3: clkdivider = 80385; // #D3 = 25000000/311
    4: clkdivider = 75757; // E3 = 25000000/330
    5: clkdivider = 71633; // F3 = 25000000/349
    6: clkdivider = 67567; // #F3 = 25000000/370
    7: clkdivider = 63775; // G3 = 25000000/392
    8: clkdivider = 60240; // #G3 = 25000000/415
    9: clkdivider = 56818; // A3 = 25000000/440
    10: clkdivider = 53648; // #A3 = 25000000/466
    11: clkdivider = 50607; // B3 = 25000000/494
    12: clkdivider = 0; // mute
    13: clkdivider = 0; // mute
    14: clkdivider = 0; // mute
    15: clkdivider = 0; // mute
    default: clkdivider = 0;
    endcase
end

reg [16:0] counter_note = 17'b0;
always @(posedge clk) begin
    if(counter_note == 0)
        counter_note <= clkdivider;
    else begin
        counter_note <= counter_note - 1;
    end
end

//C2为最低音，octave=2'd0;
reg [2:0] counter_octave = 3'b0;
always @ (posedge clk) begin
    if(counter_note == 0)
    begin
        if(counter_octave==0)
        begin
            counter_octave <= (octave==0?1:0);
        end
        else begin
            counter_octave <= counter_octave -1;
        end
    end
end

always @ (posedge clk)
begin
    if(note==12||ena == 0)
        speaker <= 0;
    else if(counter_note==0&&counter_octave==0)
        speaker <= ~speaker;
end

endmodule
