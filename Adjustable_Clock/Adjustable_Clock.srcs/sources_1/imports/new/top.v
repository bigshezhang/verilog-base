`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 22:48:48
// Design Name: 
// Module Name: top
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


module top(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    input   wire[4:0]   btn_pin,            //按键输入接口  
    output  wire[7:0]   led_pin,            //�??单调试用�??
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的�?�传到此处后才能作为板端的有效输�??
    output  wire[7:0]   seg_data_1_pin
    );

    wire [63:0]         bcd_coder;          //不要赋初值，否则整个时钟就卡�?�?
    reg [7:0]           led_pin_cnt;

    time_recorder timer(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .btn_pin(btn_pin),
        .led_pin(led_pin),
        .bcd_coder(bcd_coder)
    );

    multi_segs_controller display_time(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bcd_coder(bcd_coder),
        .seg_cs_pin(seg_cs_pin),
        .seg_data_0_pin(seg_data_0_pin),
        .seg_data_1_pin(seg_data_1_pin)
    );
    
    assign led_pin = led_pin_cnt;
    
endmodule
