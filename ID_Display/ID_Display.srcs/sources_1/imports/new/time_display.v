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


module id_display(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的值传到此处后才能作为板端的有效输出
    output  wire[7:0]   seg_data_1_pin
    );
    reg [159:0]         id_coder  = 160'h4f3f5b065b3f5b4f7d6d4f3f5b065b3f5b4f7d6d; //两倍，方便
    reg [63:0]          bcd_coder = 64'h4f3f5b065b3f;
    wire                is_nums_need_move;
    integer             head_step;

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

    frequency_division #(
        .Output_Frequency(1)
    )   second_update (
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .clk_out(is_nums_need_move)
    );

    always @(posedge is_nums_need_move) begin
        head_step <= (head_step < 11) ? head_step + 1 : 0;
        bcd_coder <= id_coder[(159 - head_step * 8)-: 64];
    end

    multi_segs_controller display_time(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bcd_coder(bcd_coder),
        .seg_cs_pin(seg_cs_pin),
        .seg_data_0_pin(seg_data_0_pin),
        .seg_data_1_pin(seg_data_1_pin)
    );
endmodule
