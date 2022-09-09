`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/09 09:20:22
// Design Name: 
// Module Name: time_display
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


module time_display(                        //显示时间
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的值传到此处后才能作为板端的有效输出
    output  wire[7:0]   seg_data_1_pin
    );

    reg [63:0]          bcd_coder = 64'h3f3f083f3f083f3f;           //似乎等待time_to_seg_data函数输出需要一段时间，那就手动置零吧...
    integer             second ,minute , hour;                      //时间
    wire                is_second_need_update;                      //到了一秒钟，秒针的更新指令

    reg [7:0] seg_code [0:9];
    initial begin                       //数组初始化
        seg_code[0] = 8'h3f;
        seg_code[1] = 8'h06;
        seg_code[2] = 8'h5b;
        seg_code[3] = 8'h4f;
        seg_code[4] = 8'h66;
        seg_code[5] = 8'h6d;
        seg_code[6] = 8'h7d;
        seg_code[7] = 8'h07;
        seg_code[8] = 8'h7f;
        seg_code[9] = 8'h6f;
    end

    function [63:0] time_to_seg_data;       //将数字时间组合并转换为数码管信号
        input [7:0] second;                 //一定要指定位宽哟！8位最多可以表示63
        input [7:0] minute;
        input [7:0] hour;
        time_to_seg_data = {seg_code[hour / 10], seg_code[hour % 10], 8'b01000000, seg_code[minute / 10], seg_code[minute % 10], 8'b01000000, seg_code[second / 10], seg_code[second % 10]};
    endfunction

    frequency_division #(
        .Output_Frequency(1)
    )   second_update (
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .clk_out(is_second_need_update)
    );

    always @(posedge is_second_need_update) begin               //更新时间中
        second = second + 1;
        minute = (second == 60)  ? minute + 1 : minute;
        hour   = (minute == 60)  ? hour   + 1 : hour;

        second = (second == 60)  ? 0 : second;
        minute = (minute == 60)  ? 0 : minute;

        bcd_coder <= time_to_seg_data(second ,minute,hour);     //获取当前时间的数码管信号
    end

    multi_segs_controller display_time(                         //给多位数码管输入信号
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bcd_coder(bcd_coder),
        .seg_cs_pin(seg_cs_pin),
        .seg_data_0_pin(seg_data_0_pin),
        .seg_data_1_pin(seg_data_1_pin)
    );
endmodule
