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
    input clk_100, 
    //控制信号
    input [1:0] state,
    input rst_n,

    //失真度控制
    input [9:0] od_level,
    input [9:0] od_level_bottom,

    //音色选择
    input tone,
    
    //音符控制数据
    input [3:0] note_0,
    input [3:0] note_1,
    input [3:0] note_2,
    input [3:0] note_3,
    input [1:0] octave_0,
    input [1:0] octave_1,
    input [1:0] octave_2,
    input [1:0] octave_3,
    output [11:0] PWM_LEVEL_OUT,  //当前信号位移
    output AUD_PWM, //PWM输出
    output AUD_SD   //三态门使能信号，常为1
    );

//频率和相位累加器
reg [10:0] sine_freq_0 = 0;
reg [10:0] sine_freq_1 = 0;
reg [10:0] sine_freq_2 = 0;
reg [10:0] sine_freq_3 = 0;

reg [17:0] sine_count_0 = 0;
reg [17:0] sine_count_1 = 0;
reg [17:0] sine_count_2 = 0;
reg [17:0] sine_count_3 = 0;

//DDS查表地址和输出振幅
reg [9:0] lut_addr_0;
reg [9:0] lut_addr_1;
reg [9:0] lut_addr_2;
reg [9:0] lut_addr_3;

wire [9:0] lut_out_0_sine;
wire [9:0] lut_out_1_sine;
wire [9:0] lut_out_2_sine;
wire [9:0] lut_out_3_sine;
wire [9:0] lut_out_0_sawtooth;
wire [9:0] lut_out_1_sawtooth;
wire [9:0] lut_out_2_sawtooth;
wire [9:0] lut_out_3_sawtooth;

//PWM输出
wire pwm_int;

parameter C = 746;
parameter CS = 706;
parameter D = 664;
parameter DS = 628;
parameter E = 592;
parameter F = 560;
parameter FS = 528;
parameter G = 498;
parameter GS = 470;
parameter A = 444;
parameter AS = 418;
parameter B = 394;

//音频使能控制
assign AUD_SD = 1'b1;

//DDS查找ROM表（正弦波）
dist_mem_gen_0 dmg0_sine(
    .a(lut_addr_0), 
    .spo(lut_out_0_sine)
    );

dist_mem_gen_0 dmg1_sine(
    .a(lut_addr_1), 
    .spo(lut_out_1_sine)
    );

dist_mem_gen_0 dmg2_sine(
    .a(lut_addr_2), 
    .spo(lut_out_2_sine)
    );

dist_mem_gen_0 dmg3_sine(
    .a(lut_addr_3), 
    .spo(lut_out_3_sine)
    );

//DDS查找ROM表（锯齿波）
dist_mem_gen_5 dmg0_sawtooth(
    .a(lut_addr_0), 
    .spo(lut_out_0_sawtooth)
    );

dist_mem_gen_5 dmg1_sawtooth(
    .a(lut_addr_1), 
    .spo(lut_out_1_sawtooth)
    );

dist_mem_gen_5 dmg2_sawtooth(
    .a(lut_addr_2), 
    .spo(lut_out_2_sawtooth)
    );

dist_mem_gen_5 dmg3_sawtooth(
    .a(lut_addr_3), 
    .spo(lut_out_3_sawtooth)
    );

wire [11:0] pwm_level_sine;
wire [11:0] pwm_level_sawtooth;
wire [11:0] pwm_level;

// assign pwm_level =  ((note_0 == 12)? 0:((lut_out_0_sine > od_level)? od_level : lut_out_0_sine)) + 
//                     ((note_1 == 12)? 0:((lut_out_1_sine > od_level)? od_level : lut_out_1_sine)) + 
//                     ((note_2 == 12)? 0:((lut_out_2_sine > od_level)? od_level : lut_out_2_sine)) + 
//                     ((note_3 == 12)? 0:((lut_out_3_sine > od_level)? od_level : lut_out_3_sine));

reg [9:0] od_level_top;
reg [9:0] od_level_bot;

always @ (posedge clk_100)
begin
    od_level_top <= od_level;
    od_level_bot <= od_level_bottom;
end

assign pwm_level_sine =  ((note_0 == 12) ? 0 : ((lut_out_0_sine > od_level_top) ? od_level : ((lut_out_0_sine < od_level_bot) ? od_level_bot : lut_out_0_sine))) + 
                    ((note_1 == 12) ? 0 : ((lut_out_1_sine > od_level_top) ? od_level : ((lut_out_1_sine < od_level_bot) ? od_level_bot : lut_out_1_sine))) + 
                    ((note_2 == 12) ? 0 : ((lut_out_2_sine > od_level_top) ? od_level : ((lut_out_2_sine < od_level_bot) ? od_level_bot : lut_out_2_sine))) + 
                    ((note_3 == 12) ? 0 : ((lut_out_3_sine > od_level_top) ? od_level : ((lut_out_3_sine < od_level_bot) ? od_level_bot : lut_out_3_sine)));

assign pwm_level_sawtooth =  ((note_0 == 12) ? 0 : ((lut_out_0_sawtooth > od_level_top) ? od_level : ((lut_out_0_sawtooth < od_level_bot) ? od_level_bot : lut_out_0_sawtooth))) + 
                    ((note_1 == 12) ? 0 : ((lut_out_1_sawtooth > od_level_top) ? od_level : ((lut_out_1_sawtooth < od_level_bot) ? od_level_bot : lut_out_1_sawtooth))) + 
                    ((note_2 == 12) ? 0 : ((lut_out_2_sawtooth > od_level_top) ? od_level : ((lut_out_2_sawtooth < od_level_bot) ? od_level_bot : lut_out_2_sawtooth))) + 
                    ((note_3 == 12) ? 0 : ((lut_out_3_sawtooth > od_level_top) ? od_level : ((lut_out_3_sawtooth < od_level_bot) ? od_level_bot : lut_out_3_sawtooth)));

assign pwm_level = (tone == 0) ? pwm_level_sine : pwm_level_sawtooth;

assign PWM_LEVEL_OUT = pwm_level;

//PWM驱动
PWMDriver driver_inst(
    .clk_100(clk_100),
    .pwm_level(pwm_level),
    .pwm_out(pwm_int)
    );

assign AUD_PWM = (pwm_int == 1'b0) ? 1'b0 : 
                    1'b1;

//频率控制
always @ (note_0 or octave_0)
begin
    case (note_0)
        4'd0 : begin
            sine_freq_0 <= C;
        end
        4'd1 : begin
            sine_freq_0 <= CS;
        end
        4'd2 : begin
            sine_freq_0 <= D;
        end
        4'd3 : begin
            sine_freq_0 <= DS;
        end
        4'd4 : begin
            sine_freq_0 <= E;
        end
        4'd5 : begin
            sine_freq_0 <= F;
        end
        4'd6 : begin
            sine_freq_0 <= FS;
        end
        4'd7 : begin
            sine_freq_0 <= G;
        end
        4'd8 : begin
            sine_freq_0 <= GS;
        end
        4'd9 : begin
            sine_freq_0 <= A;
        end
        4'd10 : begin
            sine_freq_0 <= AS;
        end
        4'd11 : begin
            sine_freq_0 <= B;
        end

        default : begin
            sine_freq_0 <= 0;
        end
    endcase
end

always @ (note_1 or octave_1)
begin
    case (note_1)
        4'd0 : begin
            sine_freq_1 <= C;
        end
        4'd1 : begin
            sine_freq_1 <= CS;
        end
        4'd2 : begin
            sine_freq_1 <= D;
        end
        4'd3 : begin
            sine_freq_1 <= DS;
        end
        4'd4 : begin
            sine_freq_1 <= E;
        end
        4'd5 : begin
            sine_freq_1 <= F;
        end
        4'd6 : begin
            sine_freq_1 <= FS;
        end
        4'd7 : begin
            sine_freq_1 <= G;
        end
        4'd8 : begin
            sine_freq_1 <= GS;
        end
        4'd9 : begin
            sine_freq_1 <= A;
        end
        4'd10 : begin
            sine_freq_1 <= AS;
        end
        4'd11 : begin
            sine_freq_1 <= B;
        end

        default : begin
            sine_freq_1 <= 0;
        end
    endcase
end

always @ (note_2 or octave_2)
begin
    case (note_2)
        4'd0 : begin
            sine_freq_2 <= C;
        end
        4'd1 : begin
            sine_freq_2 <= CS;
        end
        4'd2 : begin
            sine_freq_2 <= D;
        end
        4'd3 : begin
            sine_freq_2 <= DS;
        end
        4'd4 : begin
            sine_freq_2 <= E;
        end
        4'd5 : begin
            sine_freq_2 <= F;
        end
        4'd6 : begin
            sine_freq_2 <= FS;
        end
        4'd7 : begin
            sine_freq_2 <= G;
        end
        4'd8 : begin
            sine_freq_2 <= GS;
        end
        4'd9 : begin
            sine_freq_2 <= A;
        end
        4'd10 : begin
            sine_freq_2 <= AS;
        end
        4'd11 : begin
            sine_freq_2 <= B;
        end

        default : begin
            sine_freq_2 <= 0;
        end
    endcase
end

always @ (note_3 or octave_3)
begin
    case (note_3)
        4'd0 : begin
            sine_freq_3 <= C;
        end
        4'd1 : begin
            sine_freq_3 <= CS;
        end
        4'd2 : begin
            sine_freq_3 <= D;
        end
        4'd3 : begin
            sine_freq_3 <= DS;
        end
        4'd4 : begin
            sine_freq_3 <= E;
        end
        4'd5 : begin
            sine_freq_3 <= F;
        end
        4'd6 : begin
            sine_freq_3 <= FS;
        end
        4'd7 : begin
            sine_freq_3 <= G;
        end
        4'd8 : begin
            sine_freq_3 <= GS;
        end
        4'd9 : begin
            sine_freq_3 <= A;
        end
        4'd10 : begin
            sine_freq_3 <= AS;
        end
        4'd11 : begin
            sine_freq_3 <= B;
        end

        default : begin
            sine_freq_3 <= 0;
        end
    endcase
end

wire [10:0] compare_0;
wire [10:0] compare_1;
wire [10:0] compare_2;
wire [10:0] compare_3;

assign compare_0 = (sine_freq_0>>octave_0);
assign compare_1 = (sine_freq_1>>octave_1);
assign compare_2 = (sine_freq_2>>octave_2);
assign compare_3 = (sine_freq_3>>octave_3);


//查表得到振幅
always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        lut_addr_0 <= 0;
    end
    else if(sine_count_0 == compare_0)
    begin
        lut_addr_0 <= lut_addr_0 + 1;
        sine_count_0 <= 18'b0;   
    end
    else begin
        sine_count_0 <= sine_count_0 + 1'b1;
    end
end

always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        lut_addr_1 <= 0;
    end
    else if(sine_count_1 == compare_1)
    begin
        lut_addr_1 <= lut_addr_1 + 1;
        sine_count_1 <= 18'b0;   
    end
    else begin
        sine_count_1 <= sine_count_1 + 1'b1;
    end
end

always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        lut_addr_2 <= 0;
    end
    else if(sine_count_2 == compare_2)
    begin
        lut_addr_2 <= lut_addr_2 + 1;
        sine_count_2 <= 18'b0;   
    end
    else begin
        sine_count_2 <= sine_count_2 + 1'b1;
    end
end

always @ (posedge clk_100 or negedge rst_n)
begin
    if(!rst_n) begin
        lut_addr_3 <= 0;
    end
    else if(sine_count_3 == compare_3)
    begin
        lut_addr_3 <= lut_addr_3 + 1;
        sine_count_3 <= 18'b0;   
    end
    else begin
        sine_count_3 <= sine_count_3 + 1'b1;
    end
end

endmodule
