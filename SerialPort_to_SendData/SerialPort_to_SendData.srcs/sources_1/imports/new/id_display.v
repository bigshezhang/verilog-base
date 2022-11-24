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
    output  reg[63:0]   bcd_coder
    );
    reg [159:0]         id_coder  = 160'h4f3f5b065b3f5b4f7d6d4f3f5b065b3f5b4f7d6d; //两�?�，方便
    wire                is_nums_need_move;
    integer             head_step;

    frequency_division #(
        .Output_Frequency(1)
    )   second_update (
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .is_running(1'b1),
        .clk_out(is_nums_need_move)
    );

    always @(posedge sys_clk_in) begin
        if(is_nums_need_move) begin
            head_step <= (head_step < 11) ? head_step + 1 : 0;
            bcd_coder <= id_coder[(159 - head_step * 8)-: 64];
        end
    end
endmodule
