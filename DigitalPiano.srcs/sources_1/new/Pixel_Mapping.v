`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2021 01:14:29 PM
// Design Name: 
// Module Name: Pixel_Mapping
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


module Pixel_Mapping(
    input clk,
    input [10:0] hcount,
    input [10:0] vcount,
    //高亮控制数据
    input [3:0] note,
    input [1:0] octave,
    //输出单像素色彩信息
    output [3:0] R_OUT,
    output [3:0] G_OUT,
    output [3:0] B_OUT
    );

//640*480参数
localparam VISIBLE_HORIZONTAL = 640;
localparam FRONT_H = 16;
localparam SYNC_H = 96;
localparam BACK_H = 48; 
localparam TOTAL_H = VISIBLE_HORIZONTAL+FRONT_H+SYNC_H+BACK_H;
localparam START_H = SYNC_H + BACK_H;
//1024*768参数
/*localparam VISIBLE_HORIZONTAL = 1024;
localparam FRONT_H = 24;
localparam SYNC_H = 136;
localparam BACK_H = 160; */
//640*480参数
localparam VISIBLE_VERTICAL = 480;
localparam FRONT_V = 10;
localparam SYNC_V = 2;
localparam BACK_V = 33;
localparam TOTAL_V = VISIBLE_VERTICAL+FRONT_V+SYNC_V+BACK_V;
localparam START_V = SYNC_V + BACK_V;

//1024*768参数
/*localparam VISIBLE_VERTICAL = 768;
localparam FRONT_V = 3;
localparam SYNC_V = 6;
localparam BACK_V = 29;*/

/*(*dont_touch = "true"*) reg [3:0] red = 4'b0;
(*dont_touch = "true"*) reg [3:0] blue = 4'b0;
(*dont_touch = "true"*) reg [3:0] green = 4'b0;*/

//缓存钢琴部件点阵图
reg memBlackKey[0:408];  //黑键
reg memWhiteKeyBottom[0:300];  //白键底

//读入缓存数据
initial
begin
    $readmemb("BlackKey.txt", memBlackKey);
    $readmemb("WhiteKeyBottom.txt", memWhiteKeyBottom);
end

//表示像素点是否在可视区域
reg is_display;

//钢琴部件大小
//黑键
localparam BLACK_KEY_WIDTH = 12;
localparam BLACK_KEY_HEIGHT = 34;
//白键上窄部分
localparam WHITE_KEY_TOP_NARROW_WIDTH = 5;
localparam WHITE_KEY_TOP_NARROW_HEIGHT = 34;
//白键上宽部分
localparam WHITE_KEY_TOP_WIDE_WIDTH = 10;
localparam WHITE_KEY_TOP_WIDE_HEIGHT = 34;
//白键底部分
localparam WHITE_KEY_BOTTOM_WIDTH = 15;
localparam WHITE_KEY_BOTTOM_HEIGHT = 20;
//一个八度内白键间距
localparam GAP_WHITE_KEY_WIDTH = 2;
localparam GAP_WHITE_KEY_HEIGHT = 20;
//八度间距
localparam GAP_OCTAVE_WIDTH = 3;
localparam GAP_OCTAVE_HEIGHT = BLACK_KEY_HEIGHT + WHITE_KEY_BOTTOM_HEIGHT;
//整体大小(4个八度)
localparam PIANO_WIDTH = 4*(4*WHITE_KEY_TOP_WIDE_WIDTH + 3*WHITE_KEY_TOP_NARROW_WIDTH + 5*BLACK_KEY_WIDTH + GAP_WHITE_KEY_WIDTH) + 3*GAP_OCTAVE_WIDTH;
localparam PIANO_HEIGHT = BLACK_KEY_HEIGHT + WHITE_KEY_BOTTOM_HEIGHT;

//部件boundingbox坐标（起始点左上角）
//钢琴
localparam PIANO_X = 70 + START_H;
localparam PIANO_Y = 200 + START_V;
//钢琴下半部分顶部y坐标
localparam PIANO_BOTTOM_Y = PIANO_Y + WHITE_KEY_TOP_WIDE_HEIGHT;
//第一个白键C上半部分
localparam KEY_C_TOP_X = PIANO_X;
localparam KEY_C_TOP_Y = PIANO_Y;
//第一个白键C下半部分
localparam KEY_C_BOTTOM_X = PIANO_X;
localparam KEY_C_BOTTOM_Y = PIANO_BOTTOM_Y;
//第一个黑键#C
localparam KEY_CS_X = KEY_C_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH;
localparam KEY_CS_Y = PIANO_Y;
//CD键间隔
localparam GAP_CD_X = KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH;
localparam GAP_CD_Y = PIANO_BOTTOM_Y;
//第一个白键D上半部分
localparam KEY_D_TOP_X = KEY_CS_X + BLACK_KEY_WIDTH;
localparam KEY_D_TOP_Y = PIANO_Y;
//第一个白键D下半部分
localparam KEY_D_BOTTOM_X = GAP_CD_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_D_BOTTOM_Y = PIANO_BOTTOM_Y;
//第一个黑键#D
localparam KEY_DS_X = KEY_D_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH;
localparam KEY_DS_Y = PIANO_Y;
//DE键间隔
localparam GAP_DE_X = KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH;
localparam GAP_DE_Y = PIANO_BOTTOM_Y;
//第一个白键E上半部分
localparam KEY_E_TOP_X = KEY_DS_X + BLACK_KEY_WIDTH;
localparam KEY_E_TOP_Y = PIANO_Y;
//第一个白键E下半部分
localparam KEY_E_BOTTOM_X = GAP_DE_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_E_BOTTOM_Y = PIANO_BOTTOM_Y;
//EF键间隔
localparam GAP_EF_X = KEY_E_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH;
localparam GAP_EF_Y = PIANO_Y;
//第一个白键F上半部分
localparam KEY_F_TOP_X = GAP_EF_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_F_TOP_Y = PIANO_Y;
//第一个白键F下半部分
localparam KEY_F_BOTTOM_X = GAP_EF_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_F_BOTTOM_Y = PIANO_BOTTOM_Y;
//第一个黑键#F
localparam KEY_FS_X = KEY_F_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH;
localparam KEY_FS_Y = PIANO_Y;
//FG键间隔
localparam GAP_FG_X = KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH;
localparam GAP_FG_Y = PIANO_BOTTOM_Y;
//第一个G键上半部分
localparam KEY_G_TOP_X = KEY_FS_X + BLACK_KEY_WIDTH;
localparam KEY_G_TOP_Y = PIANO_Y;
//第一个G键下半部分
localparam KEY_G_BOTTOM_X = GAP_FG_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_G_BOTTOM_Y = PIANO_BOTTOM_Y;
//第一个黑键#G
localparam KEY_GS_X = KEY_G_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH;
localparam KEY_GS_Y = PIANO_Y;
//GA间隔
localparam GAP_GA_X = KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH;
localparam GAP_GA_Y = PIANO_BOTTOM_Y;
//第一个白键A上半部分
localparam KEY_A_TOP_X = KEY_GS_X + BLACK_KEY_WIDTH;
localparam KEY_A_TOP_Y = PIANO_Y;
//第一个白键A下半部分
localparam KEY_A_BOTTOM_X = GAP_GA_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_A_BOTTOM_Y = PIANO_BOTTOM_Y;
//第一个黑键#A
localparam KEY_AS_X = KEY_A_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH;
localparam KEY_AS_Y = PIANO_Y;
//AB间隔
localparam GAP_AB_X = KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH;
localparam GAP_AB_Y = PIANO_BOTTOM_Y;
//第一个白键B上半部分
localparam KEY_B_TOP_X = KEY_AS_X + BLACK_KEY_WIDTH;
localparam KEY_B_TOP_Y = PIANO_Y;
//第一个白键B下半部分
localparam KEY_B_BOTTOM_X = GAP_AB_X + GAP_WHITE_KEY_WIDTH;
localparam KEY_B_BOTTOM_Y = PIANO_BOTTOM_Y;

//部件色彩设置
reg [3:0] white_key_color[2:0];
reg [3:0] white_key_shadow_color[2:0];
reg [3:0] black_key_shadow_color[2:0];
reg [3:0] black_key_color[2:0];
reg [3:0] key_pressed_color[2:0];
reg [3:0] gap_color[2:0];
reg [3:0] bg_color[2:0];

//色彩暂存
reg [3:0] red;
reg [3:0] green;
reg [3:0] blue;

initial
begin
    //颜色寄存器
    red = 4'b0000;
    green = 4'b0000;
    blue = 4'b0000;
    //白键颜色
    white_key_color[0] = 4'b1111;
    white_key_color[1] = 4'b1111;
    white_key_color[2] = 4'b1111;
    //白键阴影颜色
    white_key_shadow_color[0] = 4'b1011;
    white_key_shadow_color[1] = 4'b1011;
    white_key_shadow_color[2] = 4'b1011;
    //黑键阴影颜色
    black_key_shadow_color[0] = 4'b1010;
    black_key_shadow_color[1] = 4'b1010;
    black_key_shadow_color[2] = 4'b1010;
    //黑键颜色
    black_key_color[0] = 4'b0000;
    black_key_color[1] = 4'b0000;
    black_key_color[2] = 4'b0000;
    //按键被按下的颜色
    key_pressed_color[0] = 4'b0000;
    key_pressed_color[1] = 4'b1101;
    key_pressed_color[2] = 4'b0011;
    //间隔颜色
    gap_color[0] = 4'b0000;
    gap_color[1] = 4'b0000;
    gap_color[2] = 4'b0000;
    //背景颜色
    bg_color[0] = 4'b0001;
    bg_color[1] = 4'b0001;
    bg_color[2] = 4'b0001;
end

//读取缓存信息
always @ (posedge clk)
begin
    if(hcount >= START_H && hcount < START_H + VISIBLE_HORIZONTAL && vcount >= START_V && vcount < START_V +VISIBLE_VERTICAL)
    begin
        is_display <= 1'b1;
        //打印钢琴
        if(hcount >= PIANO_X && hcount <PIANO_X + PIANO_WIDTH && vcount >= PIANO_Y && vcount < PIANO_Y +PIANO_HEIGHT)
        begin
            //第一个白键C上半部分
            if(hcount >= KEY_C_TOP_X && hcount < KEY_C_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH && vcount >= KEY_C_TOP_Y && vcount < KEY_C_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if(note == 0 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键C下半部分
            else if(hcount >= KEY_C_BOTTOM_X && hcount < KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_C_BOTTOM_Y && vcount < KEY_C_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 0 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[1]:white_key_shadow_color[1];
                    blue <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[2]:white_key_shadow_color[2];
                end
            end

            //第一个黑键#C
            else if(hcount >= KEY_CS_X && hcount < KEY_CS_X + BLACK_KEY_WIDTH && vcount >= KEY_CS_Y && vcount < KEY_CS_Y + BLACK_KEY_HEIGHT)
            begin
                if(note == 1 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_CS_X + BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_CS_X + BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_CS_X + BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //CD间隔
            else if(hcount >= GAP_CD_X && hcount < GAP_CD_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_CD_Y && vcount < GAP_CD_Y + GAP_WHITE_KEY_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第二个白键D上半部分
            else if(hcount >= KEY_D_TOP_X && hcount < KEY_D_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH && vcount >= KEY_D_TOP_Y && vcount < KEY_D_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if(note == 2 && octave ==0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键D下半部分
            else if(hcount >= KEY_D_BOTTOM_X && hcount < KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_D_BOTTOM_Y && vcount < KEY_D_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 2 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#D
            else if(hcount >= KEY_DS_X && hcount < KEY_DS_X + BLACK_KEY_WIDTH && vcount >= KEY_DS_Y && vcount < KEY_DS_Y + BLACK_KEY_HEIGHT)
            begin
                if(note == 3 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_DS_X + BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_DS_X + BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_DS_X + BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //DE间隔
            else if(hcount >= GAP_DE_X && hcount < GAP_DE_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_DE_Y && vcount < GAP_DE_Y + GAP_WHITE_KEY_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

             //第一个白键E上半部分
            else if(hcount >= KEY_E_TOP_X && hcount < KEY_E_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH && vcount >= KEY_E_TOP_Y && vcount < KEY_E_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if(note ==4 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键E下半部分
            else if(hcount >= KEY_E_BOTTOM_X && hcount < KEY_E_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_E_BOTTOM_Y && vcount < KEY_E_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 4 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //EF间隔
            else if(hcount >= GAP_EF_X && hcount < GAP_EF_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_EF_Y && vcount < GAP_EF_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键F上半部分
            else if(hcount >= KEY_F_TOP_X && hcount < KEY_F_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH && vcount >= KEY_F_TOP_Y && vcount < KEY_F_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if(note == 5 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2]; 
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键F下半部分
            else if(hcount >= KEY_F_BOTTOM_X && hcount < KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_F_BOTTOM_Y && vcount < KEY_F_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 5 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[1]:white_key_shadow_color[1];
                    blue <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[2]:white_key_shadow_color[2];
                end
            end

            //第一个黑键#F
            else if(hcount >= KEY_FS_X && hcount < KEY_FS_X + BLACK_KEY_WIDTH && vcount >= KEY_FS_Y && vcount < KEY_FS_Y + BLACK_KEY_HEIGHT)
            begin
                if(note == 6 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_FS_X + BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_FS_X + BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_FS_X + BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //FG间隔
            else if(hcount >= GAP_FG_X && hcount < GAP_FG_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_FG_Y && vcount < GAP_FG_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键G上半部分
            else if(hcount >= KEY_G_TOP_X && hcount < KEY_G_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH && vcount >= KEY_G_TOP_Y && vcount < KEY_G_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if(note == 7 && octave == 0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键G下半部分
            else if(hcount >= KEY_G_BOTTOM_X && hcount < KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_G_BOTTOM_Y && vcount < KEY_G_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 7 && octave ==0)
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#G
            else if(hcount >= KEY_GS_X && hcount < KEY_GS_X + BLACK_KEY_WIDTH && vcount >= KEY_GS_Y && vcount < KEY_GS_Y + BLACK_KEY_HEIGHT)
            begin
                if(note == 8 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_GS_X + BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_GS_X + BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_GS_X + BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //GA间隔
            else if(hcount >= GAP_GA_X && hcount < GAP_GA_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_GA_Y && vcount < GAP_GA_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键A上半部分
            else if(hcount >= KEY_A_TOP_X && hcount < KEY_A_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH && vcount >= KEY_A_TOP_Y && vcount < KEY_A_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if(note == 9 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键A下半部分
            else if(hcount >= KEY_A_BOTTOM_X && hcount < KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_A_BOTTOM_Y && vcount < KEY_A_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 9 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#A
            else if(hcount >= KEY_AS_X && hcount < KEY_AS_X + BLACK_KEY_WIDTH && vcount >= KEY_AS_Y && vcount < KEY_AS_Y + BLACK_KEY_HEIGHT)
            begin
                if(note == 10 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_AS_X + BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_AS_X + BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_AS_X + BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //AB间隔
            else if(hcount >= GAP_AB_X && hcount < GAP_AB_X + GAP_WHITE_KEY_WIDTH && vcount >= GAP_AB_Y && vcount < GAP_AB_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键B上半部分
            else if(hcount >= KEY_B_TOP_X && hcount < KEY_B_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH && vcount >= KEY_B_TOP_Y && vcount < KEY_B_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if(note == 11 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= white_key_color[0];
                    green <= white_key_color[1];
                    blue <= white_key_color[2];
                end
            end

            //第一个白键B下半部分
            else if(hcount >= KEY_B_BOTTOM_X && hcount < KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH && vcount >= KEY_B_BOTTOM_Y && vcount < KEY_B_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if(note == 11 && octave == 0) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            else begin
                red <= bg_color[0];
                green <= bg_color[1];
                blue <= bg_color[2];
            end
        end
    end     //显示区域结束
    else begin
        is_display <= 1'b0;   //非显示区域
    end
end   

assign R_OUT = is_display?red:4'b0000;
assign G_OUT = is_display?green:4'b0000;
assign B_OUT = is_display?blue:4'b0000;

endmodule
