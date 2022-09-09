`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/09 08:48:34
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
    input  wire [7:0]    input_seg_data,        //输入的信号
    input  wire [7:0]    seg_cs_pin,
    output wire [7:0]    seg_data_0_pin,
    output wire [7:0]    seg_data_1_pin
    );

    assign seg_data_0_pin = (seg_cs_pin <= 8'b00001000) ? input_seg_data : 8'b00000000;        //位码大于4则置零
    assign seg_data_1_pin = (seg_cs_pin >= 8'b00010000) ? input_seg_data : 8'b00000000;       //位码小于5则置零
endmodule
