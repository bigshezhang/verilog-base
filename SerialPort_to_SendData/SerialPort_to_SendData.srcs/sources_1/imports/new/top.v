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
    input   wire[7:0]   sw_pin,
    // input   wire        display_mode,
    output  wire[7:0]   led_pin,            //�??单调试用�??
    output  wire[7:0]   seg_cs_pin,
    output  wire[7:0]   seg_data_0_pin,     //总出口，在子模块的�?�传到此处后才能作为板端的有效输�??
    output  wire[7:0]   seg_data_1_pin,
    output  wire        PC_Uart_txd
    );

    wire[7:0]    current_time [0:2];
    wire [63:0]   bcd_coder [0:1] ;          //不要赋初值，否则整个时钟就卡�?�?
    reg  [63:0]         bcd_to_display;
    // wire                display_mode; //0为时间，1为学学号
    reg                 display_mode_cnt;

    reg [19:0]          delay_cnt [0:4];        //按钮延时判断的参�?
    reg                 is_in_delay_btn [0:4];  //在延时中喵？
    reg                 is_btn_checked  [0:4];  //确认是否触发
    reg                 start_btn_function [0:4];

    reg [7:0]           led_pin_cnt;

    reg                 is_single_uart_sending;
    reg                 is_uart_need_fresh;
    wire                is_single_uart_sending_finished;
    reg                 is_all_uart_sending;
    reg                 is_all_uart_sending_finished;

    reg[3:0]                 remained_bit_to_send;


    reg [7:0]           data_send_to_uart;

    reg [7:0]           id_str [0:9];
    initial begin
        id_str[0] = 2'h03;
        id_str[1] = 2'h00;
        id_str[2] = 2'h02;
        id_str[3] = 2'h01;
        id_str[4] = 2'h02;
        id_str[5] = 2'h00;
        id_str[6] = 2'h02;
        id_str[7] = 2'h03;
        id_str[8] = 8'h06;
        id_str[9] = 8'h05;
    end

    uart uart_tx(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bps_rate(115200),
        .send_data(is_single_uart_sending),
        .fresh_data(1'b1),
        .data(data_send_to_uart),
        .data_tx(PC_Uart_txd),
        .Tx_Done(is_single_uart_sending_finished)
    );

    // always @(posedge is_single_uart_sending_finished) begin
    //     if(display_mode) begin
    //         remained_bit_to_send <= remained_bit_to_send - 1'b1;
    //     end
    // end 

    always @(posedge sys_clk_in) begin
        display_mode_cnt <= sw_pin[0];

        if(is_all_uart_sending)begin
            if(is_single_uart_sending_finished) begin
                is_single_uart_sending <= 1'b0;
                if(display_mode == 1'b0) begin
                    remained_bit_to_send = (remained_bit_to_send == 4'b0000) ? 4'b0000 : remained_bit_to_send - 1'b1;
                    data_send_to_uart <= (remained_bit_to_send == 4'b0000) ? data_send_to_uart : id_str[10 - remained_bit_to_send] + 48;
                    is_single_uart_sending <= (remained_bit_to_send == 4'b0000) ? 1'b0 : 1'b1;
                    is_all_uart_sending <= (remained_bit_to_send == 4'b0000) ? 1'b0 : 1'b1;
                end else begin
                    remained_bit_to_send = (remained_bit_to_send == 4'b0000) ? 4'b0000 : remained_bit_to_send - 1'b1;
                    case (remained_bit_to_send)
                        7: data_send_to_uart = current_time[0] % 10 + 48;
                        6: data_send_to_uart = 58;
                        5: data_send_to_uart = current_time[1] / 10 + 48 ;
                        4: data_send_to_uart = current_time[1] % 10 + 48;
                        3: data_send_to_uart = 58;
                        2: data_send_to_uart = current_time[2] / 10 + 48;
                        1: data_send_to_uart = current_time[2] % 10 + 48;
                        default: data_send_to_uart = 58;
                    endcase
                    is_single_uart_sending <= (remained_bit_to_send == 4'b0000) ? 1'b0 : 1'b1;
                    is_all_uart_sending <= (remained_bit_to_send == 4'b0000) ? 1'b0 : 1'b1;
                end
            end
        end


        if (btn_pin[4]) begin               //btn2为开始调整数�?
            is_in_delay_btn[4] <= 1'b1;
            if(is_in_delay_btn[4]) begin
                if(delay_cnt[4] < 20'hfffff) begin
                    delay_cnt[4] <= delay_cnt[4] + 1;
                end else begin
                if(btn_pin[4])
                    is_btn_checked[4] <=1'b1;
                    delay_cnt[4] <= 20'h00000;
                    is_in_delay_btn[4] <= 1'b0;
                end
            end
        end else begin
            if(is_btn_checked[4]) begin
                is_in_delay_btn[4] <= 1'b1;
                if(is_in_delay_btn[4]) begin
                    if(delay_cnt[4] < 20'hfffff) begin
                        delay_cnt[4] <= delay_cnt[4] + 1;
                    end else begin
                    if(!btn_pin[4])
                        is_btn_checked[4] <= 1'b0;
                        start_btn_function[4] <=1'b1;
                        delay_cnt[4] <= 20'h00000;
                        is_in_delay_btn[4] <= 1'b0;
                    end
                end
            end
        end

        if(start_btn_function[4]) begin
            // led_pin_cnt[0] <= !led_pin_cnt[0];
            start_btn_function[4] <= 1'b0;
            is_btn_checked[4] <= 1'b0;

            remained_bit_to_send = display_mode ? 8 : 10;
            data_send_to_uart = display_mode ? current_time[0] / 10 + 48: id_str[0] + 48;
            is_all_uart_sending = 1'b1;
            is_single_uart_sending = 1'b1;

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
        .btn_pin(btn_pin),
        .led_pin(led_pin),
        .bcd_coder(bcd_coder[0]),
        .hour(current_time[0]),
        .minute(current_time[1]),
        .second(current_time[2])
    );

    id_display ider(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
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
