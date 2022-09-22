`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/09 08:50:58
// Design Name: 
// Module Name: multi_segs_controller
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


module multi_segs_controller #(
    parameter shining_frequency = 100_0
)
(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    input   wire[63:0]  bcd_coder,
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的值传到此处后才能作为板端的有效输出
    output  wire[7:0]   seg_data_1_pin
);
    reg [7:0]   seg_cs_pin_temp = 8'b10000000;      //注意附初始值，第一次展示时会移位，故设置为1000_0000
    reg [7:0]   bcd_temp;
    wire        is_segs_need_refresh;             //分频更新一次，位码左移一位
    integer     bcd_array_pos = 64;

    frequency_division #(                   //调用分频器,分频器的每次更新赋值给is_segs_need_refresh
        .Output_Frequency       (shining_frequency)
    )   segs_division(
        .sys_clk_in             (sys_clk_in),
        .sys_rst_n              (sys_rst_n),
        .clk_out                (is_segs_need_refresh)
    );

    always @(posedge is_segs_need_refresh) begin        //需要让位选移位时
        bcd_temp            <= bcd_coder[(bcd_array_pos-1)-:8];         //从bcd_coder高位开始取
        bcd_array_pos       <= (bcd_array_pos == 8) ? 64 : bcd_array_pos - 8;
        seg_cs_pin_temp     <= (seg_cs_pin_temp == 8'b10000000) ? 8'b00000001 : seg_cs_pin_temp << 1;       //少用if else,使电路结构简单
    end

    assign seg_cs_pin = seg_cs_pin_temp;
    assign seg_data_0_pin = (seg_cs_pin <= 8'b00001000) ? bcd_temp : 8'b00000000;        //位码大于4则置零
    assign seg_data_1_pin = (seg_cs_pin >= 8'b00010000) ? bcd_temp : 8'b00000000;       //位码小于5则置零
endmodule