`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 11:13:15 AM
// Design Name: 
// Module Name: PS2
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


module PS2(
    input clk,        //输入时钟
    input rst,        //异步复位信号，上升沿有效

    //数据输入口
    input clock_USB_in, //从USB口输入的时钟
    input data_USB_in,  //从USB口输入的串行信号
    output reg [7:0] parallel_data_in,  //8位串行输入转为并行输入
    output reg parallel_data_valid,     //表明数据是否准备完毕
    output reg data_in_error,           //表明奇偶校验位与8位数据中的奇偶数是否匹配

    //模块状态口
    output reg busy     //PS2模块是否忙碌
    );

//定义状态
parameter [3:0] IDLE = 4'd0;      //闲置
parameter [3:0] WAIT_IO = 4'd1;   //等待输入
parameter [3:0] DATA_IN = 4'd2;   //接受输入

reg [3:0] state;                //当前状态
reg [3:0] next_state;           //下一状态

reg [10:0] data_in_buf;         //并行数据输入缓冲区
reg [3:0] data_count;

//探测USB输入时钟下降沿
reg [1:0] clock_negedge_detecter = 2'bz;
wire is_clock_USB_in_negedge;
//用clk时钟驱动
always @ (posedge clk)
begin
    //上一次信号前移，拼上最新信号
    clock_negedge_detecter = {clock_negedge_detecter[0],clock_USB_in};
end
//2'b10说明从高电平下降到低电平，处于下降沿
assign is_clock_USB_in_negedge = (clock_negedge_detecter == 2'b10) ? 1'b1 : 1'b0;


//状态机
//时钟上升沿更新状态
always @ (posedge clk or posedge rst)
begin
    if(rst)
    begin
        state <= IDLE;    
    end
    else begin
        state <= next_state;
    end
end

//检测状态
always @ (posedge clk)
begin
    case(state)
    IDLE: begin
        next_state <= WAIT_IO;
        data_in_error <= 1'b0;   //错误码更新
        data_count <= 4'd0;      //数据更新
        busy <= 1'b0;            //状态码更新
        parallel_data_valid <= 1'b0;  //输入信号状态更新
        data_in_buf <= 11'b0;       //输入信号缓冲区清空
        parallel_data_in = 8'b0;    //并行信号清空
    end

    WAIT_IO: begin             //如果检测到USB输入时钟下降沿，切换状态置准备读入数据
        if(is_clock_USB_in_negedge) begin
            next_state <= DATA_IN;
            busy <= 1'b1;
            data_count <= 4'd0;
        end
    end

    DATA_IN: begin
        if(is_clock_USB_in_negedge && (data_count < 4'd10)) begin  //每个下降沿读取一次数据
            data_in_buf <= {data_in_buf[9:0],data_USB_in}; //信号读入，串行变并行
            data_count <= data_count + 4'd1;
        end
        else if(data_count == 4'd10) begin   //读取了10位，分别是前8位数据，第9位奇偶校验，第10位结束
            next_state <= IDLE;  
            data_count <= 4'd0;
            busy <= 1'b0;
            parallel_data_valid = 1'b1;
            //将输入从[LSB:MSB]反转到[MSB:LSB]并输出
            parallel_data_in <= {data_in_buf[2],data_in_buf[3],data_in_buf[4],data_in_buf[5],data_in_buf[6],data_in_buf[7],data_in_buf[8],data_in_buf[9]};
            //奇偶校验
            if(data_in_buf[1] == ^(data_in_buf[9:2]))
            begin
                data_in_error <= 1'b1;
            end
        end
    end
    endcase
end


endmodule
