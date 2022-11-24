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
    input   wire[4:0]   btn_pin,            //按键输入接口  
    output  wire[7:0]   led_pin,            //�??单调试用�??
    output  reg[63:0]   bcd_coder
    );
    wire                is_running;
    reg                 is_recorder_running_cnt;    //计时器在运行喵？

    integer             second ,minute , hour;
    wire                is_second_need_update;

    reg [19:0]          delay_cnt [0:4];        //按钮延时判断的参�?
    reg                 is_in_delay_btn [0:4];  //在延时中喵？
    reg                 is_btn_checked  [0:4];  //确认是否触发
    wire                start_btn_function [0:4];

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


    button_check start_buttom(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .btn_pin(btn_pin[1]),
        .start_btn_function(start_btn_function[1])
    );

    always @(posedge start_btn_function[1]) begin
        led_pin_cnt[0] <= !led_pin_cnt[0];
        is_recorder_running_cnt <= !is_recorder_running_cnt;
        bcd_coder <= time_to_seg_data(second ,minute,hour);
    end

    // always @(posedge sys_clk_in) begin     //暂停的按键消�??
    //     if (btn_pin[1]) begin               //btn2为开始调整数�?
    //         is_in_delay_btn[1] <= 1'b1;
    //         if(is_in_delay_btn[1]) begin
    //             if(delay_cnt[1] < 20'hfffff) begin
    //                 delay_cnt[1] <= delay_cnt[1] + 1;
    //             end else begin
    //             if(btn_pin[1])
    //                 is_btn_checked[1] <=1'b1;
    //                 delay_cnt[1] <= 20'h00000;
    //                 is_in_delay_btn[1] <= 1'b0;
    //             end
    //         end
    //     end else begin
    //         if(is_btn_checked[1]) begin
    //             is_in_delay_btn[1] <= 1'b1;
    //             if(is_in_delay_btn[1]) begin
    //                 if(delay_cnt[1] < 20'hfffff) begin
    //                     delay_cnt[1] <= delay_cnt[1] + 1;
    //                 end else begin
    //                 if(!btn_pin[1])
    //                     is_btn_checked[1] <= 1'b0;
    //                     start_btn_function[1] <=1'b1;
    //                     delay_cnt[1] <= 20'h00000;
    //                     is_in_delay_btn[1] <= 1'b0;
    //                 end
    //             end
    //         end
    //     end

    //     if(start_btn_function[1]) begin
    //         led_pin_cnt[0] <= !led_pin_cnt[0];
    //         start_btn_function[1] <= 1'b0;
    //         is_btn_checked[1] <= 1'b0;
    //         is_recorder_running_cnt <= !is_recorder_running_cnt;
    //         bcd_coder <= time_to_seg_data(second ,minute,hour);
    //     end   

    //     if (btn_pin[3]) begin               //btn2为开始调整数�?
    //         is_in_delay_btn[3] <= 1'b1;
    //         if(is_in_delay_btn[3]) begin
    //             if(delay_cnt[3] < 20'hfffff) begin
    //                 delay_cnt[3] <= delay_cnt[3] + 1;
    //             end else begin
    //             if(btn_pin[3])
    //                 is_btn_checked[3] <=1'b1;
    //                 delay_cnt[3] <= 20'h00000;
    //                 is_in_delay_btn[3] <= 1'b0;
    //             end
    //         end
    //     end else begin
    //         if(is_btn_checked[3]) begin
    //             is_in_delay_btn[3] <= 1'b1;
    //             if(is_in_delay_btn[3]) begin
    //                 if(delay_cnt[3] < 20'hfffff) begin
    //                     delay_cnt[3] <= delay_cnt[3] + 1;
    //                 end else begin
    //                 if(!btn_pin[3])
    //                     is_btn_checked[3] <= 1'b0;
    //                     start_btn_function[3] <=1'b1;
    //                     delay_cnt[3] <= 20'h00000;
    //                     is_in_delay_btn[3] <= 1'b0;
    //                 end
    //             end
    //         end
    //     end

    //     if(start_btn_function[3]) begin
    //         led_pin_cnt[5] <= !led_pin_cnt[5];
    //         start_btn_function[3] <= 1'b0;
    //         is_btn_checked[3] <= 1'b0;
    //         is_recorder_running_cnt <= 1'b0;
    //         hour   =  hour + 1; //!!!!!
    //         bcd_coder <= time_to_seg_data(second ,minute,hour);
    //     end   

    //     if (btn_pin[2]) begin               //btn2为开始调整数�?
    //         is_in_delay_btn[2] <= 1'b1;
    //         if(is_in_delay_btn[2]) begin
    //             if(delay_cnt[2] < 20'hfffff) begin
    //                 delay_cnt[2] <= delay_cnt[2] + 1;
    //             end else begin
    //             if(btn_pin[2])
    //                 is_btn_checked[2] <=1'b1;
    //                 delay_cnt[2] <= 20'h00000;
    //                 is_in_delay_btn[2] <= 1'b0;
    //             end
    //         end
    //     end else begin
    //         if(is_btn_checked[2]) begin
    //             is_in_delay_btn[2] <= 1'b1;
    //             if(is_in_delay_btn[2]) begin
    //                 if(delay_cnt[2] < 20'hfffff) begin
    //                     delay_cnt[2] <= delay_cnt[2] + 1;
    //                 end else begin
    //                 if(!btn_pin[2])
    //                     is_btn_checked[2] <= 1'b0;
    //                     start_btn_function[2] <=1'b1;
    //                     delay_cnt[2] <= 20'h00000;
    //                     is_in_delay_btn[2] <= 1'b0;
    //                 end
    //             end
    //         end
    //     end

    //     if(start_btn_function[2]) begin
    //         led_pin_cnt[6] <= !led_pin_cnt[6];
    //         start_btn_function[2] <= 1'b0;
    //         is_btn_checked[2] <= 1'b0;
    //         is_recorder_running_cnt <= 1'b0;
    //         minute    =  minute + 1;
    //         bcd_coder <= time_to_seg_data(second ,minute,hour);
    //     end   


    //    if (btn_pin[0]) begin               //btn2为开始调整数�?
    //         is_in_delay_btn[0] <= 1'b1;
    //         if(is_in_delay_btn[0]) begin
    //             if(delay_cnt[0] < 20'hfffff) begin
    //                 delay_cnt[0] <= delay_cnt[0] + 1;
    //             end else begin
    //             if(btn_pin[0])
    //                 is_btn_checked[0] <=1'b1;
    //                 delay_cnt[0] <= 20'h00000;
    //                 is_in_delay_btn[0] <= 1'b0;
    //             end
    //         end
    //     end else begin
    //         if(is_btn_checked[0]) begin
    //             is_in_delay_btn[0] <= 1'b1;
    //             if(is_in_delay_btn[0]) begin
    //                 if(delay_cnt[0] < 20'hfffff) begin
    //                     delay_cnt[0] <= delay_cnt[0] + 1;
    //                 end else begin
    //                 if(!btn_pin[0])
    //                     is_btn_checked[0] <= 1'b0;
    //                     start_btn_function[0] <=1'b1;
    //                     delay_cnt[0] <= 20'h00000;
    //                     is_in_delay_btn[0] <= 1'b0;
    //                 end
    //             end
    //         end
    //     end

    //     if(start_btn_function[0]) begin
    //         led_pin_cnt[7] <= !led_pin_cnt[7];
    //         start_btn_function[0] <= 1'b0;
    //         is_btn_checked[0] <= 1'b0;
    //         is_recorder_running_cnt <= 1'b0;
    //         second    =  second + 1;
    //         bcd_coder <= time_to_seg_data(second ,minute,hour);
    //     end   
    //     if (is_second_need_update) begin
    //         second = second + 1;
    //         minute = (second == 60)  ? minute + 1 : minute;
    //         hour   = (minute == 60)  ? hour   + 1 : hour;
    //         second = (second == 60)  ? 0 : second;
    //         minute = (minute == 60)  ? 0 : minute;
    //         bcd_coder <= time_to_seg_data(second ,minute,hour);
    //     end
    // end

    assign  is_running = is_recorder_running_cnt;
    assign  led_pin = led_pin_cnt;
endmodule
