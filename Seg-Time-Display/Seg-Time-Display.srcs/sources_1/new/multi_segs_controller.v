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
    reg [7:0]   bcd_temp;                           //给一位显示驱动输入的临时一位bcd信号
    wire        is_segs_need_refresh;               //分频更新一次，位码左移一位
    integer     bcd_array_pos = 64;                 //从bcd_coder中轮取8bit的range指示位

    frequency_division #(                   //调用分频器,分频器的每次更新赋值给is_segs_need_refresh
        .Output_Frequency       (shining_frequency)
    )   segs_division(
        .sys_clk_in             (sys_clk_in),
        .sys_rst_n              (sys_rst_n),
        .clk_out                (is_segs_need_refresh)      //数码管的移位标志信号
    );

    seg_single_display display_number  (
        .input_seg_data         (bcd_temp),                 //注入一位bcd信号
        .seg_cs_pin             (seg_cs_pin),
        .seg_data_0_pin         (seg_data_0_pin),
        .seg_data_1_pin         (seg_data_1_pin)
    );

    always @(posedge is_segs_need_refresh) begin            //需要让位选信号移位时
        bcd_temp            <= bcd_coder[(bcd_array_pos-1)-:8];         //从bcd_coder高位开始取,每次取8个放到bcd_temp中供输出
        bcd_array_pos       <= (bcd_array_pos == 8) ? 64 : bcd_array_pos - 8;       //轮取的8bit数据最高位从64取到8
        seg_cs_pin_temp     <= (seg_cs_pin_temp == 8'b10000000) ? 8'b00000001 : seg_cs_pin_temp << 1;       //少用if else,使电路结构简单
    end

    assign seg_cs_pin = seg_cs_pin_temp;

endmodule