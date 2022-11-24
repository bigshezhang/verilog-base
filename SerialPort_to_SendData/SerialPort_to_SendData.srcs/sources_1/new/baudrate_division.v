`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 00:24:36
// Design Name: 
// Module Name: baudrate_division
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


module baudrate_division(
    input   wire      sys_clk_in,
    input   wire      sys_rst_n,
    input   wire[17:0] bps_rate,
    input   wire      send_enable,
    output  wire      bps_clk
    );

    reg[17:0] bps_DR;  //波特率计时器值
    reg[17:0] div_cnt;

    always @(*) begin
        bps_DR = 100_000_000 / bps_rate;
    end

    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if(!sys_rst_n)begin
            div_cnt <= 18'd0;
        end
        else begin
            if(send_enable)//发送使能信号
                div_cnt <= (div_cnt == bps_DR - 1'b1) ? 18'd0 : div_cnt + 1'b1;
            else 
                div_cnt <= 18'd0;
        end
    end
    assign bps_clk = (div_cnt == 1);
endmodule
