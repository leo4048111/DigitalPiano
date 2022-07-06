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
    input clk_100,

    //控制信号
    input [1:0] state,
    input rst_n,
    
    //USB输入
    input clock_USB_in, //从USB口输入的时钟
    input data_USB_in,  //从USB口输入的串行信号

    //数据输出
    output [3:0] note_0,
    output [3:0] note_1,
    output [3:0] note_2,
    output [3:0] note_3,
    output [1:0] octave_0,
    output [1:0] octave_1,
    output [1:0] octave_2,
    output [1:0] octave_3,
    //失真度控制输出
    output [9:0] od_level,
    output [9:0] od_level_bottom,
    //音色控制输出
    output tone
    );

//资源定义
reg [15:0] DATA_16BITS; //[15:8]为上次的数据，[7:0]为新数据
wire data_valid_flag;
wire [7:0] DATA_OUT;
reg ena;
reg space_detect = 1'b0;
reg f1_detect = 1'b0;
reg f2_detect = 1'b0;
reg f3_detect = 1'b0;

//连接控制模块
PS2 PS2(
    .clk_100(clk_100),
    .kclk(clock_USB_in),
    .kdata(data_USB_in),
    .data_out(DATA_OUT),
    .data_valid_flag(data_valid_flag)    
        );

//上次的数据和这次的数据拼接
always @ (posedge data_valid_flag or negedge rst_n)
begin
    if(!rst_n) begin
        DATA_16BITS <= 16'b0;
    end
    else begin
        DATA_16BITS <= {DATA_16BITS[7:0], DATA_OUT};
    end
end

/*------key mapping------
C   -->  Z
#C  -->  S
D   -->  X
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

always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        ena <= 1'b0;
        note <= 4'd12;
        octave <= 2'd0;
    end
    else if(data_valid_flag == 1'b1)
    begin
        case(DATA_16BITS[7:0])
        8'h1A:begin    //按键Z
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd0;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd0;
                octave <= 2'd0;
            end
        end

        8'h1B:begin    //按键S
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd1;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd1;
                octave <= 2'd0;
            end
        end

        8'h22:begin    //按键X
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd2;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd2;
                octave <= 2'd0;
            end
        end

        8'h23:begin    //按键D
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd3;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd3;
                octave <= 2'd0;
            end
        end

        8'h21:begin    //按键C
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd4;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd4;
                octave <= 2'd0;
            end
        end

        8'h2A:begin    //按键V
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd5;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd5;
                octave <= 2'd0;
            end
        end

        8'h34:begin    //按键G
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd6;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd6;
                octave <= 2'd0;
            end
        end

        8'h32:begin    //按键B
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd7;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd7;
                octave <= 2'd0;
            end
        end

        8'h33:begin    //按键H
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd8;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd8;
                octave <= 2'd0;
            end
        end

        8'h31:begin    //按键N
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd9;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd9;
                octave <= 2'd0;
            end
        end

        8'h3B:begin    //按键J
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd10;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd10;
                octave <= 2'd0;
            end
        end

        8'h3A:begin    //按键M
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd11;
                octave <= 2'd0;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd11;
                octave <= 2'd0;
            end
        end
        //第二个八度
        8'h15:begin    //按键Q
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd0;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd0;
                octave <= 2'd1;
            end
        end

        8'h1E:begin    //按键2
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd1;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd1;
                octave <= 2'd1;
            end
        end

        8'h1D:begin    //按键W
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd2;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd2;
                octave <= 2'd1;
            end
        end

        8'h26:begin    //按键3
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd3;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd3;
                octave <= 2'd1;
            end
        end

        8'h24:begin    //按键E
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd4;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd4;
                octave <= 2'd1;
            end
        end

        8'h2D:begin    //按键R
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd5;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd5;
                octave <= 2'd1;
            end
        end

        8'h2E:begin    //按键5
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd6;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd6;
                octave <= 2'd1;
            end
        end

        8'h2C:begin    //按键T
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd7;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd7;
                octave <= 2'd1;
            end
        end

        8'h36:begin    //按键6
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd8;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd8;
                octave <= 2'd1;
            end
        end

        8'h35:begin    //按键Y
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd9;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd9;
                octave <= 2'd1;
            end
        end

        8'h3D:begin    //按键7
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd10;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd10;
                octave <= 2'd1;
            end
        end

        8'h3C:begin    //按键U
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                ena <= 1'b0;
                note <= 4'd11;
                octave <= 2'd1;
            end
            else begin
                ena <= 1'b1;
                note <= 4'd11;
                octave <= 2'd1;
            end
        end

        8'h29:begin    //空格
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                space_detect <= 0;
            end
            else begin
                space_detect <= 1;
            end
        end

        8'h05:begin   //F1 
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                f1_detect <= 0;
            end
            else begin
                f1_detect <= 1;
            end
        end

        8'h06:begin   //F2 
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                f2_detect <= 0;
            end
            else begin
                f2_detect <= 1;
            end
        end

        8'h04:begin   //F3
            if(DATA_16BITS[15:8] == 8'hF0) //弹起
            begin
                f3_detect <= 0;
            end
            else begin
                f3_detect <= 1;
            end
        end

        default: begin
            ena <= ena;
            note <= note;
            octave <= octave;
            space_detect <= space_detect;
        end
        endcase // DATA
    end
end

reg octave_select = 1'b0;

//空格按键触发八度选择
always @ (posedge space_detect or negedge rst_n)
begin
    if(!rst_n) begin
        octave_select <= 0;
    end
    else begin
        octave_select <= ~octave_select;
    end
end

reg [9:0] overdrive_level = 1023;

//F1触发失真度调整
always @ (posedge f1_detect or negedge rst_n)
begin
    if(!rst_n) begin
        overdrive_level <= 1023;
    end
    else begin
        overdrive_level <= overdrive_level - 50;
        if(overdrive_level < 600)
        begin
            overdrive_level <= 1023;
        end
    end
end

reg [9:0] overdrive_level_bottom = 0;

//F2触发失真度调整
always @ (posedge f2_detect or negedge rst_n)
begin
    if(!rst_n) begin
        overdrive_level_bottom <= 0;
    end
    else begin
        overdrive_level_bottom <= overdrive_level_bottom + 50;
        if(overdrive_level_bottom > 423)
        begin
            overdrive_level_bottom <= 0;
        end
    end
end

assign od_level = overdrive_level;
assign od_level_bottom = overdrive_level_bottom;

reg tone_select = 0;

//F3切换音色(两个基本音色可选)
always @ (posedge f3_detect or negedge rst_n)
begin
    if(!rst_n) begin
        tone_select <= 0;
    end
    else begin
        tone_select <= ~tone_select;
    end
end

assign tone = tone_select;

reg [3:0] note_arr[3:0];  //最多同时支持四个音
reg [1:0] octave_arr[3:0];

initial
begin
    note_arr[0] = 12;
    note_arr[1] = 12;
    note_arr[2] = 12;
    note_arr[3] = 12;
    octave_arr[0] = 0;
    octave_arr[1] = 0;
    octave_arr[2] = 0;
    octave_arr[3] = 0;
end

always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        note_arr[0] = 12;
        note_arr[1] = 12;
        note_arr[2] = 12;
        note_arr[3] = 12;
        octave_arr[0] = 0;
        octave_arr[1] = 0;
        octave_arr[2] = 0;
        octave_arr[3] = 0;
    end
    else if(ena == 1'b1)    //按键按下
    begin
        if((note_arr[3] != note || octave_arr[3] != octave) && (note_arr[2] != note || octave_arr[2] != octave) && (note_arr[1] != note || octave_arr[1] != octave) && (note_arr[0] != note || octave_arr[0] != octave))
        begin
            if(note_arr[3] == 12)
            begin
                note_arr[3] <= note;
                octave_arr[3] <= octave;
            end
            else if(note_arr[2] == 12)
            begin
                note_arr[2] <= note;
                octave_arr[2] <= octave;
            end
            else if(note_arr[1] == 12)
            begin
                note_arr[1] <= note;
                octave_arr[1] <= octave;
            end
            else if(note_arr[0] == 12)
            begin
                note_arr[0] <= note;
                octave_arr[0] <= octave;
            end
        end
    end
    else begin        //按键弹起
        if(note == note_arr[3] && octave == octave_arr[3])
        begin
            note_arr[3] <= 4'd12;
        end
        else if(note == note_arr[2] && octave == octave_arr[2])
        begin
            note_arr[2] <= 4'd12;
        end
        else if(note == note_arr[1] && octave == octave_arr[1])
        begin
            note_arr[1] <= 4'd12;
        end
        else if(note == note_arr[0] && octave == octave_arr[0])
        begin
            note_arr[0] <= 4'd12;
        end
    end
end

assign note_0 = note_arr[0];
assign note_1 = note_arr[1];
assign note_2 = note_arr[2];
assign note_3 = note_arr[3];
assign octave_0 = octave_arr[0] + (octave_select?2'b10:2'b00);
assign octave_1 = octave_arr[1] + (octave_select?2'b10:2'b00);
assign octave_2 = octave_arr[2] + (octave_select?2'b10:2'b00);
assign octave_3 = octave_arr[3] + (octave_select?2'b10:2'b00);

endmodule
