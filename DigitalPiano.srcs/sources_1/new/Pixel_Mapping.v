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
    input [3:0] note_0,
    input [3:0] note_1,
    input [3:0] note_2,
    input [1:0] octave_0,
    input [1:0] octave_1,
    input [1:0] octave_2,
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
localparam PIANO_WIDTH_ONEOCTAVE = 4*WHITE_KEY_TOP_WIDE_WIDTH + 3*WHITE_KEY_TOP_NARROW_WIDTH + 5*BLACK_KEY_WIDTH + GAP_WHITE_KEY_WIDTH;
localparam PIANO_HEIGHT = BLACK_KEY_HEIGHT + WHITE_KEY_BOTTOM_HEIGHT;

//部件boundingbox坐标（起始点左上角）
//钢琴
localparam PIANO_X = 81 + START_H;
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

//钢琴边框坐标
localparam PIANO_MARGIN_HORIZONTAL = 10;
localparam PIANO_MARGIN_VERTICAL = 10;
localparam BORDER_WIDTH = PIANO_WIDTH + 2*PIANO_MARGIN_HORIZONTAL;
localparam BORDER_HEIGHT = PIANO_HEIGHT + 2*PIANO_MARGIN_VERTICAL;
localparam PIANO_BORDER_X = PIANO_X - PIANO_MARGIN_HORIZONTAL;
localparam PIANO_BORDER_Y = PIANO_Y - PIANO_MARGIN_VERTICAL;
localparam BORDER_WEIGHT = 3;

//部件色彩设置
reg [3:0] white_key_color[2:0];
reg [3:0] white_key_shadow_color[2:0];
reg [3:0] black_key_shadow_color[2:0];
reg [3:0] black_key_color[2:0];
reg [3:0] key_pressed_color[2:0];
reg [3:0] gap_color[2:0];
reg [3:0] bg_color[2:0];
reg [3:0] border_color[2:0];

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
    //边框颜色
    border_color[0] = 4'b1111;
    border_color[1] = 4'b1111;
    border_color[2] = 4'b1111;

end

integer i = 0;

//读取缓存信息
always @ (posedge clk)
begin
    if(hcount >= START_H && hcount < START_H + VISIBLE_HORIZONTAL && vcount >= START_V && vcount < START_V +VISIBLE_VERTICAL)
    begin
        is_display <= 1'b1;
        //打印钢琴
        if(hcount >= PIANO_X && hcount <PIANO_X + PIANO_WIDTH && vcount >= PIANO_Y && vcount < PIANO_Y +PIANO_HEIGHT)
        begin
            for(i=0;i<4;i=i+1)  //复制4次
            begin
            //第一个白键C上半部分
            if(hcount >= KEY_C_TOP_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_C_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH+i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_C_TOP_Y && vcount < KEY_C_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if((note_0 == 0 && octave_0 == i) || (note_1 == 0 && octave_1 == i) || (note_2 == 0 && octave_2 == i))
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
            else if(hcount >= KEY_C_BOTTOM_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_C_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_C_BOTTOM_Y && vcount < KEY_C_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 0 && octave_0 == i) || (note_1 == 0 && octave_1 == i) || (note_2 == 0 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[1]:white_key_shadow_color[1];
                    blue <= memWhiteKeyBottom[hcount - KEY_C_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_C_BOTTOM_Y)]? white_key_color[2]:white_key_shadow_color[2];
                end
            end

            //第一个黑键#C
            else if(hcount >= KEY_CS_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_CS_X + BLACK_KEY_WIDTH + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& vcount >= KEY_CS_Y && vcount < KEY_CS_Y + BLACK_KEY_HEIGHT)
            begin
                if((note_0 == 1 && octave_0 == i) || (note_1 == 1 && octave_1 == i) || (note_2 == 1 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_CS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_CS_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_CS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + BLACK_KEY_WIDTH * (vcount - KEY_CS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //CD间隔
            else if(hcount >= GAP_CD_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < GAP_CD_X + GAP_WHITE_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= GAP_CD_Y && vcount < GAP_CD_Y + GAP_WHITE_KEY_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第二个白键D上半部分
            else if(hcount >= KEY_D_TOP_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_D_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_D_TOP_Y && vcount < KEY_D_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if((note_0 == 2 && octave_0 == i) || (note_1 == 2 && octave_1 == i) || (note_2 == 2 && octave_2 == i))
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
            else if(hcount >= KEY_D_BOTTOM_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_D_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_D_BOTTOM_Y && vcount < KEY_D_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 2 && octave_0 == i) || (note_1 == 2 && octave_1 == i) || (note_2 == 2 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_D_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_D_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#D
            else if(hcount >= KEY_DS_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_DS_X + BLACK_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_DS_Y && vcount < KEY_DS_Y + BLACK_KEY_HEIGHT)
            begin
                if((note_0 == 3 && octave_0 == i) || (note_1 == 3 && octave_1 == i) || (note_2 == 3 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_DS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_DS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_DS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_DS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //DE间隔
            else if(hcount >= GAP_DE_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < GAP_DE_X + GAP_WHITE_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= GAP_DE_Y && vcount < GAP_DE_Y + GAP_WHITE_KEY_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

             //第一个白键E上半部分
            else if(hcount >= KEY_E_TOP_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_E_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_E_TOP_Y && vcount < KEY_E_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if((note_0 == 4 && octave_0 == i) || (note_1 == 4 && octave_1 == i) || (note_2 == 4 && octave_2 == i))
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
            else if(hcount >= KEY_E_BOTTOM_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_E_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_E_BOTTOM_Y && vcount < KEY_E_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 4 && octave_0 == i) || (note_1 == 4 && octave_1 == i) || (note_2 == 4 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_E_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_E_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //EF间隔
            else if(hcount >= GAP_EF_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < GAP_EF_X + GAP_WHITE_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= GAP_EF_Y && vcount < GAP_EF_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键F上半部分
            else if(hcount >= KEY_F_TOP_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_F_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_F_TOP_Y && vcount < KEY_F_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if((note_0 == 5 && octave_0 == i) || (note_1 == 5 && octave_1 == i) || (note_2 == 5 && octave_2 == i)) 
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
            else if(hcount >= KEY_F_BOTTOM_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_F_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_F_BOTTOM_Y && vcount < KEY_F_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 5 && octave_0 == i) || (note_1 == 5 && octave_1 == i) || (note_2 == 5 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[1]:white_key_shadow_color[1];
                    blue <= memWhiteKeyBottom[hcount - KEY_F_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_F_BOTTOM_Y)]? white_key_color[2]:white_key_shadow_color[2];
                end
            end

            //第一个黑键#F
            else if(hcount >= KEY_FS_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_FS_X + BLACK_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_FS_Y && vcount < KEY_FS_Y + BLACK_KEY_HEIGHT)
            begin
                if((note_0 == 6 && octave_0 == i) || (note_1 == 6 && octave_1 == i) || (note_2 == 6 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_FS_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_FS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_FS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_FS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //FG间隔
            else if(hcount >= GAP_FG_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < GAP_FG_X + GAP_WHITE_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= GAP_FG_Y && vcount < GAP_FG_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键G上半部分
            else if(hcount >= KEY_G_TOP_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_G_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_G_TOP_Y && vcount < KEY_G_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if((note_0 == 7 && octave_0 == i) || (note_1 == 7 && octave_1 == i) || (note_2 == 7 && octave_2 == i))
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
            else if(hcount >= KEY_G_BOTTOM_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_G_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_G_BOTTOM_Y && vcount < KEY_G_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 7 && octave_0 == i) || (note_1 == 7 && octave_1 == i) || (note_2 == 7 && octave_2 == i))
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X- i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) + WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_G_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_G_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#G
            else if(hcount >= KEY_GS_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_GS_X + BLACK_KEY_WIDTH + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& vcount >= KEY_GS_Y && vcount < KEY_GS_Y + BLACK_KEY_HEIGHT)
            begin
                if((note_0 == 8 && octave_0 == i) || (note_1 == 8 && octave_1 == i) || (note_2 == 8 && octave_2 == i)) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_GS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_GS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_GS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_GS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //GA间隔
            else if(hcount >= GAP_GA_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < GAP_GA_X + GAP_WHITE_KEY_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= GAP_GA_Y && vcount < GAP_GA_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键A上半部分
            else if(hcount >= KEY_A_TOP_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_A_TOP_X + WHITE_KEY_TOP_NARROW_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_A_TOP_Y && vcount < KEY_A_TOP_Y + WHITE_KEY_TOP_NARROW_HEIGHT)
            begin
                if((note_0 == 9 && octave_0 == i) || (note_1 == 9 && octave_1 == i) || (note_2 == 9 && octave_2 == i)) 
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
            else if(hcount >= KEY_A_BOTTOM_X+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_A_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH+ i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE) && vcount >= KEY_A_BOTTOM_Y && vcount < KEY_A_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 9 && octave_0 == i) || (note_1 == 9 && octave_1 == i) || (note_2 == 9 && octave_2 == i)) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_A_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_A_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //第一个黑键#A
            else if(hcount >= KEY_AS_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_AS_X + BLACK_KEY_WIDTH + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& vcount >= KEY_AS_Y && vcount < KEY_AS_Y + BLACK_KEY_HEIGHT)
            begin
                if((note_0 == 10 && octave_0 == i) || (note_1 == 10 && octave_1 == i) || (note_2 == 10 && octave_2 == i)) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memBlackKey[hcount - KEY_AS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[0]:black_key_color[0];
                    green <= memBlackKey[hcount - KEY_AS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[1]:black_key_color[1];
                    blue <= memBlackKey[hcount - KEY_AS_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ BLACK_KEY_WIDTH * (vcount - KEY_AS_Y)] ? black_key_shadow_color[2]:black_key_color[2];
                end
            end

            //AB间隔
            else if(hcount >= GAP_AB_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < GAP_AB_X + GAP_WHITE_KEY_WIDTH + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& vcount >= GAP_AB_Y && vcount < GAP_AB_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= gap_color[0];
                green <= gap_color[1];
                blue <= gap_color[2];        
            end

            //第一个白键B上半部分
            else if(hcount >= KEY_B_TOP_X + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_B_TOP_X + WHITE_KEY_TOP_WIDE_WIDTH + i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)&& vcount >= KEY_B_TOP_Y && vcount < KEY_B_TOP_Y + WHITE_KEY_TOP_WIDE_HEIGHT)
            begin
                if((note_0 == 11 && octave_0 == i) || (note_1 == 11 && octave_1 == i) || (note_2 == 11 && octave_2 == i)) 
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
            else if(hcount >= KEY_B_BOTTOM_X + i*(GAP_OCTAVE_WIDTH+PIANO_WIDTH_ONEOCTAVE)&& hcount < KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH + i*(GAP_OCTAVE_WIDTH+PIANO_WIDTH_ONEOCTAVE)&& vcount >= KEY_B_BOTTOM_Y && vcount < KEY_B_BOTTOM_Y + WHITE_KEY_BOTTOM_HEIGHT)
            begin
                if((note_0 == 11 && octave_0 == i) || (note_1 == 11 && octave_1 == i) || (note_2 == 11 && octave_2 == i)) 
                begin
                    red <= key_pressed_color[0];
                    green <= key_pressed_color[1];
                    blue <= key_pressed_color[2];
                end
                else begin
                    red <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    green <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                    blue <= memWhiteKeyBottom[hcount - KEY_B_BOTTOM_X - i*(GAP_OCTAVE_WIDTH + PIANO_WIDTH_ONEOCTAVE)+ WHITE_KEY_BOTTOM_WIDTH * (vcount - KEY_B_BOTTOM_Y)]? white_key_color[0]:white_key_shadow_color[0];
                end
            end

            //八度间隔
            else if(hcount >= KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH + i*(GAP_OCTAVE_WIDTH+PIANO_WIDTH_ONEOCTAVE) && hcount < KEY_B_BOTTOM_X + WHITE_KEY_BOTTOM_WIDTH +GAP_OCTAVE_WIDTH+ i*(GAP_OCTAVE_WIDTH+PIANO_WIDTH_ONEOCTAVE)&& vcount >= PIANO_Y && vcount < KEY_B_BOTTOM_Y + GAP_OCTAVE_HEIGHT)
            begin
                red <= bg_color[0];
                green <= bg_color[1];
                blue <= bg_color[2];
            end
            end  //for
        end
        //打印钢琴边框
        else if(hcount >= PIANO_BORDER_X && hcount < PIANO_BORDER_X + BORDER_WIDTH && vcount >= PIANO_BORDER_Y && vcount < PIANO_BORDER_Y +BORDER_WEIGHT)
        begin 
            red <= border_color[0];
            green <= border_color[1];
            blue <= border_color[2];
        end
        else if(hcount >= PIANO_BORDER_X && hcount < PIANO_BORDER_X + BORDER_WEIGHT && vcount >= PIANO_BORDER_Y && vcount < PIANO_BORDER_Y +BORDER_HEIGHT)
        begin
            red <= border_color[0];
            green <= border_color[1];
            blue <= border_color[2];
        end
        else if(hcount >= PIANO_BORDER_X && hcount < PIANO_BORDER_X + BORDER_WIDTH && vcount >= PIANO_BORDER_Y +BORDER_HEIGHT - BORDER_WEIGHT && vcount < PIANO_BORDER_Y +BORDER_HEIGHT)
        begin
            red <= border_color[0];
            green <= border_color[1];
            blue <= border_color[2];
        end
        else if(hcount >= PIANO_BORDER_X + BORDER_WIDTH - BORDER_WEIGHT && hcount < PIANO_BORDER_X + BORDER_WIDTH && vcount >= PIANO_BORDER_Y && vcount < PIANO_BORDER_Y +BORDER_HEIGHT)
        begin
            red <= border_color[0];
            green <= border_color[1];
            blue <= border_color[2];
        end
        else begin
            red <= bg_color[0];
            green <= bg_color[1];
            blue <= bg_color[2];
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
