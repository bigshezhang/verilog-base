`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/19 11:17:27
// Design Name: 
// Module Name: button_check
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


module button_check(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    input   wire        btn_pin,
    output  reg         start_btn_function
    );

    reg [19:0]          delay_cnt;        //按钮延时判断的参�?
    reg                 is_in_delay;  //在延时中喵？
    reg                 is_btn_checked;  //确认是否触发

    always @(posedge sys_clk_in) begin     //暂停的按键消�??
        if (btn_pin) begin               //btn2为开始调整数�?
            is_in_delay <= 1'b1;
            if(is_in_delay) begin
                if(delay_cnt < 20'hfffff) begin
                    delay_cnt <= delay_cnt + 1;
                end else begin
                if(btn_pin)
                    is_btn_checked <=1'b1;
                    delay_cnt <= 20'h00000;
                    is_in_delay <= 1'b0;
                end
            end
        end else begin
            if(is_btn_checked) begin
                is_in_delay <= 1'b1;
                if(is_in_delay) begin
                    if(delay_cnt < 20'hfffff) begin
                        delay_cnt <= delay_cnt + 1;
                    end else begin
                    if(!btn_pin)
                        is_btn_checked <= 1'b0;
                        start_btn_function <=1'b1;
                        delay_cnt <= 20'h00000;
                        is_in_delay <= 1'b0;
                        start_btn_function <= 1'b0;
                    end
                end
            end
        end
    end

endmodule
