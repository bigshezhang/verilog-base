`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/07 21:30:54
// Design Name: 
// Module Name: frequency_division
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


module frequency_division #(
    parameter Original_Frequency = 100_000_000,
    parameter Output_Frequency = 100
)
(
    input   wire      sys_clk_in,
    input   wire      sys_rst_n,
    output  reg       clk_out
);
    reg [31:0] cnt;
    localparam Division_Num = Original_Frequency / Output_Frequency;
    always @(posedge sys_clk_in) begin
        cnt     <=  (cnt < Division_Num) ? cnt + 1'b1 : 1'b0;
        clk_out <=  (cnt < Division_Num) ? 1'b0 : 1'b1;
    end 

endmodule
