`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 01:27:02
// Design Name: 
// Module Name: uart_test
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


module top_test();

    reg sys_clk_in;
    reg sys_rst_n;
    reg[4:0]   btn_pin;            //按键输入接口  
    reg[7:0]   sw_pin;
    wire[7:0]   led_pin;            //�??单调试用�??
    wire[7:0]   seg_cs_pin;
    wire[7:0]   seg_data_0_pin;     //总出口，在子模块的�?�传到此处后才能作为板端的有效输�??
    wire[7:0]   seg_data_1_pin;
    wire        PC_Uart_txd;
    // reg        display_mode;
    // reg data_tx;
    // reg Tx_Done;

    initial begin
		sys_clk_in = 1'b0;
		sys_rst_n = 1'b0;
        // display_mode = 1'b1;
        #200
		sys_rst_n = 1'b1;

        #10
        btn_pin[4] = 1'b1;

        #10000
        btn_pin[4] = 1'b0;
	end

    always #10 sys_clk_in = ~sys_clk_in;//生成时钟

    top top_test(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .btn_pin(btn_pin),
        .sw_pin(sw_pin),
        // .display_mode(display_mode),
        .led_pin(led_pin),
        .seg_cs_pin(seg_cs_pin),
        .seg_data_0_pin(seg_data_0_pin),
        .seg_data_1_pin(seg_data_1_pin),
        .PC_Uart_txd(PC_Uart_txd)
    );

    // uart uart_test(
        // .sys_clk_in(sys_clk_in),
        // .sys_rst_n(sys_rst_n),
    //     .bps_rate(115200),
    //     .send_data(1'b1),
    //     .fresh_data(1'b1),
    //     .data(8'b00001010),
    //     .data_tx(data_tx),
    //     .Tx_Done(Tx_Done)
    // );
endmodule
