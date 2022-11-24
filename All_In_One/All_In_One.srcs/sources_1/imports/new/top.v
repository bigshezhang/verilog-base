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

    wire [63:0]   bcd_coder [0:1] ;          //不要赋初值，否则整个时钟就卡�?�?
    reg  [63:0]         bcd_to_display;
    wire                display_mode; //0为时间，1为学学号
    reg                 display_mode_cnt;
    reg [12:0]          delay_cnt_btn_0;        //按钮延时判断的参�?
    reg                 is_in_delay_btn_0;  
    reg [7:0]           led_pin_cnt;

    always @(posedge sys_clk_in) begin
        if (btn_pin[0]) begin              //是高电平判断按钮按下哟~！排bug排了30分钟，所以一定要看硬件手册qWq
            is_in_delay_btn_0 <= 1'b1;       //btn2为暂停按�?
        end

        if(is_in_delay_btn_0) begin
            if(delay_cnt_btn_0 < 20'h000ff) begin
                delay_cnt_btn_0 <= delay_cnt_btn_0 + 1;
            end else begin
                display_mode_cnt <= btn_pin[0] ? ~display_mode_cnt : display_mode_cnt;
                led_pin_cnt[2] <= btn_pin[0] ? ~led_pin_cnt[2] : led_pin_cnt[2];
                is_in_delay_btn_0 <= 1'b0;
                delay_cnt_btn_0 <= 20'h00000;
            end
        end

        if(display_mode == 1'b0) begin
            bcd_to_display <= bcd_coder[1];
        end else begin
            bcd_to_display <= bcd_coder[0];
        end
    end

    time_recorder timer(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .display_mode(display_mode),
        .btn_pin(btn_pin),
        .led_pin(led_pin),
        .bcd_coder(bcd_coder[0])
    );

    id_display ider(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .display_mode(display_mode),
        .bcd_coder(bcd_coder[1])
    );

    multi_segs_controller display_time(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bcd_coder(bcd_to_display),
        .seg_cs_pin(seg_cs_pin),
        .seg_data_0_pin(seg_data_0_pin),
        .seg_data_1_pin(seg_data_1_pin)
    );

    assign display_mode = display_mode_cnt;
    assign led_pin = led_pin_cnt;
    
endmodule
