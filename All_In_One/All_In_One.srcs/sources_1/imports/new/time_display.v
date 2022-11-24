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


module time_recorder(
    input   wire        sys_clk_in,
    input   wire        sys_rst_n,
    input   wire        display_mode,
    input   wire[4:0]   btn_pin,            //按键输入接口  
    output  wire[7:0]   led_pin,            //�?单调试用�?
    output  reg[63:0]   bcd_coder
    );
    wire                is_running;
    // reg [63:0]          bcd_coder_cnt = 64'h3f3f803f3f803f3f;
    integer             second ,minute , hour;
    wire                is_second_need_update;

    reg [12:0]          delay_cnt_btn_2;        //按钮延时判断的参�?
    reg                 is_in_delay_btn_2;    
    reg [12:0]          delay_cnt_btn_3;
    reg                 is_in_delay_btn_3;
    
    reg                 is_recorder_running_cnt;

    reg [7:0]           led_pin_cnt;
    reg [7:0] seg_code [0:9];
    initial begin                       //数组初始�?
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

    function [63:0] time_to_seg_data;
        input [7:0] second;
        input [7:0] minute;
        input [7:0] hour;
        time_to_seg_data = {seg_code[hour / 10], seg_code[hour % 10], 8'b01000000, seg_code[minute / 10], seg_code[minute % 10], 8'b01000000, seg_code[second / 10], seg_code[second % 10]};
    endfunction

    frequency_division #(
        .Output_Frequency(1)
    )   second_update (
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .is_running(is_running),
        .clk_out(is_second_need_update)
    );

    always @(posedge sys_clk_in) begin     //暂停的按键消�?
        if (btn_pin[2]) begin              //是高电平判断按钮按下哟~！排bug排了30分钟，所以一定要看硬件手册qWq
            is_in_delay_btn_2 <= 1'b1;       //btn2为暂停按�?
        end

        if(is_in_delay_btn_2) begin
            if(delay_cnt_btn_2 < 20'h000ff) begin
                delay_cnt_btn_2 <= delay_cnt_btn_2 + 1;
            end else begin
                is_recorder_running_cnt <= btn_pin[2] ? ~is_recorder_running_cnt : is_recorder_running_cnt;
                led_pin_cnt[0] <= btn_pin[2] ? ~led_pin_cnt[0] : led_pin_cnt[0];
                is_in_delay_btn_2 <= 1'b0;
                delay_cnt_btn_2 <= 20'h00000;
            end
        end

        if (btn_pin[3]) begin               //btn3为复位按�?
            is_in_delay_btn_3 <= 1'b1;
            led_pin_cnt[1] <= 1'b1;
        end else led_pin_cnt[1] <= 1'b0;

        if(is_in_delay_btn_3) begin
            if(delay_cnt_btn_3 < 20'h000ff) begin
                delay_cnt_btn_3 <= delay_cnt_btn_3 + 1;
            end else begin
                is_recorder_running_cnt <= btn_pin[3] ? 1'b0 : is_recorder_running_cnt;
                second <= 0;                //复位要使时间归零，为了防止multiple driver nets把时间计算转到了这里
                minute <= 0;
                hour   <= 0;
                is_in_delay_btn_3 <= 1'b0;
                delay_cnt_btn_3 <= 20'h00000;
                led_pin_cnt[0] <= 1'b0;
                bcd_coder <= time_to_seg_data(second ,minute,hour);
            end
        end

        if (is_second_need_update) begin
            second = second + 1;
            minute = (second == 60)  ? minute + 1 : minute;
            hour   = (minute == 60)  ? hour   + 1 : hour;
            second = (second == 60)  ? 0 : second;
            minute = (minute == 60)  ? 0 : minute;
            bcd_coder <= time_to_seg_data(second ,minute,hour);
        end
    end

    assign  is_running = is_recorder_running_cnt;
    assign  led_pin = led_pin_cnt;
endmodule
