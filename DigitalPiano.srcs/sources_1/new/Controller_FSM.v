`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/03/2022 10:44:40 PM
// Design Name: 
// Module Name: Controller_FSM
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


module Controller_FSM(
    input clk_100,
    input x,
    output [1:0] state,
    output rst_n
    );

localparam STATEMENT = 0;
localparam START = 1;
localparam CLOSE = 2;

reg [1:0] cur_state = 0;
reg [1:0] next_state = 0;
reg [25:0] counter = 0;

always @ (posedge clk_100)
begin
    case(cur_state)
    STATEMENT: begin      //a
        counter <= 0;
        if(x == 0) begin
        next_state <= STATEMENT;
        end
        else begin
        next_state <= START;
        end
    end

    START: begin         //b
        if(x == 0) begin
        next_state <= CLOSE;
        end
        else begin
        next_state <= START;
        end
    end

    CLOSE: begin        //c
        counter <= counter + 1;
        if(counter[25] == 0) begin
            next_state <= CLOSE;
        end
        else begin
            next_state <= STATEMENT;
        end
    end
    endcase
end

always @ (posedge clk_100)
begin
    cur_state <= next_state;
end

assign state = cur_state;
assign rst_n = ((state == START) ? 1:0);

endmodule
