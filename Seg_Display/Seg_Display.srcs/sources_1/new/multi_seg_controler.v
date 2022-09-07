`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/07 21:21:35
// Design Name: 
// Module Name: multi_seg_controler
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


module multi_seg_controler #(
    parameter multi_numbers_to_display = 11451400,
    parameter shining_frequency = 1000
)
(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的值传到此处后才能作为板端的有效输出
    output  wire[7:0]   seg_data_1_pin
);
    reg [7:0]   seg_cs_pin_temp = 8'b00000001;      //注意附初始值，否则全0左移无输出
    reg [3:0]   numbers_temp    [0:7];
    reg [3:0]   to_display_seg;             //其实reg可以直接看作integer,不过要注意位宽要满足需求的最大值
    wire        is_seg_changed;             //分频更新一次，位码左移一位

    initial begin
        numbers_temp[7] <= multi_numbers_to_display % 10;   //尽量少用for循环
        numbers_temp[6] <= multi_numbers_to_display / 10 % 10;
        numbers_temp[5] <= multi_numbers_to_display / 100 % 10;
        numbers_temp[4] <= multi_numbers_to_display / 1000 % 10;
        numbers_temp[3] <= multi_numbers_to_display / 10000 % 10;
        numbers_temp[2] <= multi_numbers_to_display / 100000 % 10;
        numbers_temp[1] <= multi_numbers_to_display / 1000000 % 10;
        numbers_temp[0] <= multi_numbers_to_display / 10000000 % 10;
    end

    frequency_division #(                   //调用分频器,分频器的每次更新赋值给is_seg_changed
        .Output_Frequency       (shining_frequency)
    )   segs_division(
        .sys_clk_in             (sys_clk_in),
        .sys_rst_n              (sys_rst_n),
        .clk_out                (is_seg_changed)
    );

    seg_single_display display_number  (
        .number_to_display      (numbers_temp[to_display_seg]),
        .seg_cs_pin             (seg_cs_pin),
        .seg_data_0_pin         (seg_data_0_pin),
        .seg_data_1_pin         (seg_data_1_pin)
    );

    always @(posedge is_seg_changed) begin
        seg_cs_pin_temp     <= (seg_cs_pin_temp == 8'b10000000) ? 8'b00000001 : seg_cs_pin_temp << 1;       //少用if else,使电路结构简单
        to_display_seg      <= (to_display_seg == 8) ? 1 : to_display_seg + 1;
    end

    assign seg_cs_pin = seg_cs_pin_temp;

endmodule
