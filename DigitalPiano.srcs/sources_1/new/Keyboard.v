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
    input data_USB_in,  //从USB口输入的串行信号
    output speaker,

    //数据输出
    output [3:0] note_out,
    output [1:0] octave_out
    );

//资源定义
reg reset;
reg [15:0] DATA_16BITS; //[15:8]为上次的数据，[7:0]为新数据
wire data_valid_flag;
wire [7:0] DATA_OUT;

//连接控制模块
PS2 PS2(
    .clk(clk),
    .kclk(clock_USB_in),
    .kdata(data_USB_in),
    .data_out(DATA_OUT),
    .data_valid_flag(data_valid_flag)    
        );

//上次的数据和这次的数据拼接
always @ (posedge data_valid_flag)
begin
    DATA_16BITS <= {DATA_16BITS[7:0], DATA_OUT};
end


//基础频率
parameter C2 = 262;
parameter C_SHARP2 = 277;
parameter D2 = 294;
parameter D_SHARP2 = 311;
parameter E2 = 330;
parameter F2 = 349;
parameter F_SHARP2 = 370;
parameter G2 = 392;
parameter G_SHARP2 = 415;
parameter A2 = 440;
parameter A_SHARP2 = 466;
parameter B2 = 494;

reg ena;

/*------key mapping------
C2   -->  Z
#C2  -->  S
D2   -->  X
#D2  -->  D
E2   -->  C
F2   -->  V
#F2  -->  G
G2   -->  B
#G2  -->  H
A2   -->  N
#A2  -->  J
B2   -->  M
--------------------------*/

reg [3:0] note;
reg [1:0] octave;

always @ (posedge clk)
begin
    if(data_valid_flag == 1'b1)
        begin
            case(DATA_16BITS[7:0])
            8'h1A:begin    //按键Z
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd0;
                    octave = 2'd0;
                end
            end

            8'h1B:begin    //按键S
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd1;
                    octave = 2'd0;
                end
            end

            8'h22:begin    //按键X
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd2;
                    octave = 2'd0;
                end
            end

            8'h23:begin    //按键D
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd3;
                    octave = 2'd0;
                end
            end

            8'h21:begin    //按键C
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd4;
                    octave = 2'd0;
                end
            end

            8'h2A:begin    //按键V
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd5;
                    octave = 2'd0;
                end
            end

            8'h34:begin    //按键G
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd6;
                    octave = 2'd0;
                end
            end

            8'h32:begin    //按键B
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd7;
                    octave = 2'd0;
                end
            end

            8'h33:begin    //按键H
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd8;
                    octave = 2'd0;
                end
            end

            8'h31:begin    //按键N
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd9;
                    octave = 2'd0;
                end
            end

            8'h3B:begin    //按键J
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd10;
                    octave = 2'd0;
                end
            end

            8'h3A:begin    //按键M
                if(DATA_16BITS[15:8] == 8'hF0) //弹起
                    begin
                        ena <= 1'b0;
                    end
                else begin
                    ena <= 1'b1;
                    note = 4'd11;
                    octave = 2'd0;
                end
            end

            default: begin
                ena <= 1'b0;
                note = 4'd12;
            end
            endcase // DATA
        end

end

Single_Note Single_Note_Inst(.clock(clk),
                             .ena(ena),
                             .note(note),
                             .octave(octave),
                             .speaker(speaker));


assign note_out = ena? note:4'd12;
assign octave_out = ena? octave:2'd0;

endmodule
