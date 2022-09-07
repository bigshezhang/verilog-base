`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/07 09:53:59
// Design Name: 
// Module Name: seg_single_display
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


module seg_single_display 
(
    input  wire [7:0]    number_to_display,
    input  wire [7:0]    seg_cs_pin,
    output wire [7:0]    seg_data_0_pin,
    output wire [7:0]    seg_data_1_pin
    );

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

    assign seg_data_0_pin = (seg_cs_pin <= 8'b00001000) ? seg_code[number_to_display] : 8'b00000000;        //位码大于4则置零
    assign seg_data_1_pin = (seg_cs_pin >= 8'b00010000) ? seg_code[number_to_display] : 8'b00000000;       //位码小于5则置零
endmodule
