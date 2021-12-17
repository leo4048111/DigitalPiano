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
    input ena,
    input [3:0] note,
    input [1:0] octave,
    output AUD_PWM, //PWM输出
    output AUD_SD   //三态门使能信号，常为1
    );

//频率和相位累加器
reg [10:0] sine_freq = 0;
reg [17:0] sine_count = 0;
//DDS查表地址和输出振幅
reg [9:0] lut_addr;
wire [9:0] lut_out;
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

//DDS查找ROM表
dist_mem_gen_0 dmg0(
    .a(lut_addr), 
    .spo(lut_out)
    );

//PWM驱动
PWMDriver driver_inst(
    .clk_100(clk_100),
    .pwm_level(lut_out),
    .pwm_out(pwm_int)
    );

assign AUD_PWM = (pwm_int == 1'b0) ? 1'b0 : 
                    1'b1;

always @ (note or octave)
begin
    case (note)
        4'd0 : begin
            sine_freq <= C;
        end
        4'd1 : begin
            sine_freq <= CS;
        end
        4'd2 : begin
            sine_freq <= D;
        end
        4'd3 : begin
            sine_freq <= DS;
        end
        4'd4 : begin
            sine_freq <= E;
        end
        4'd5 : begin
            sine_freq <= F;
        end
        4'd6 : begin
            sine_freq <= FS;
        end
        4'd7 : begin
            sine_freq <= G;
        end
        4'd8 : begin
            sine_freq <= GS;
        end
        4'd9 : begin
            sine_freq <= A;
        end
        4'd10 : begin
            sine_freq <= AS;
        end
        4'd11 : begin
            sine_freq <= B;
        end

        default : begin
            sine_freq <= 0;
        end
    endcase
end

wire [10:0] compare;
assign compare = (sine_freq>>octave);

always @ (posedge clk_100)
begin
    if(sine_count == compare)
    begin
        lut_addr <= lut_addr + 1;
        sine_count <= 18'b0;   
    end
    else begin
        sine_count <= sine_count + 1'b1;
    end
end

endmodule
