`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/25 00:35:08
// Design Name: 
// Module Name: uart
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


module uart(
    input   wire      sys_clk_in,
    input   wire      sys_rst_n,
    input   wire[17:0] bps_rate,
    input   wire      send_data,    //发送使能
    input   wire      fresh_data,   //刷新外来数据的标志位
    input   wire[7:0]  data,
    output  wire      data_tx,
    output  wire      Tx_Done
    );

    reg [7:0]   data_cnt; //缓存数据
    reg [3:0]   bps_cnt;  //记录发送的位置
    reg data_tx_reg;
    reg Tx_Done_Reg;
    wire        bps_clk;  //用于接收baud时钟
    reg        send_enable;    //发送使能信号

    baudrate_division baudCacluator(
        .sys_clk_in(sys_clk_in),
        .sys_rst_n(sys_rst_n),
        .bps_rate(bps_rate),
        .send_enable(send_enable),
        .bps_clk(bps_clk)
    );

    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if (!sys_rst_n) 
            data_cnt <= 8'd0;
        else 
            data_cnt <= fresh_data ? data : data_cnt;
    end

    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if(!sys_rst_n)begin
            bps_cnt <= 4'd0;
        end
        else begin
            if (send_enable) begin
                if (bps_clk) begin
                    bps_cnt <= (bps_cnt == 4'd11) ? 4'd0 : bps_cnt + 1'b1;
                end 
            end
            else begin
                bps_cnt <= 4'd0;
            end
        end
    end


//-----------------------发送块------------------
    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            data_tx_reg <= 1'b0;
        end
        else begin
            case (bps_cnt)
                //4'd0:Tx_Done_Reg <= 1'b0;//拉低发送完成信号，合并到下一个always block里面了
                4'd1:data_tx_reg <= 1'b0;//接收到发送使能信号“1”后，进行发送使能，发送标志位为0
                4'd2:data_tx_reg <= data_cnt[0];
                4'd3:data_tx_reg <= data_cnt[1];
                4'd4:data_tx_reg <= data_cnt[2];
                4'd5:data_tx_reg <= data_cnt[3];
                4'd6:data_tx_reg <= data_cnt[4];
                4'd7:data_tx_reg <= data_cnt[5];
                4'd8:data_tx_reg <= data_cnt[6];
                4'd9:data_tx_reg <= data_cnt[7];
                4'd10:data_tx_reg <= 1'b1;
                4'd11:begin 
                    data_tx_reg <= 1'b1;
                    //Tx_Done_Reg <= 1'b1; 已经移动到下一个always_block里面
                end//send over
                default :data_tx_reg <= 1'b1;
            endcase
        end
    end

    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            send_enable <= 1'b0;
        end
        else begin
            if (send_data == 1'b1) begin //为1 是为了节约时间
                send_enable <= 1'b1;
            end
            else begin
                if (Tx_Done) begin
                    send_enable <= 1'b0;
                end
            end
        end
    end

    always @(posedge sys_clk_in or negedge sys_rst_n) begin
        if (!sys_rst_n) begin
            Tx_Done_Reg <= 1'b0;
        end
        else begin
            if ((bps_clk == 1'b1) && (bps_cnt == 4'd10)) begin //让done可以提前拉高，之后拉低。不会影响后续数据的进入，done一旦拉高超过1个周期，后续数据可能会发生错误，因此如此修改
                Tx_Done_Reg <= 1'b1;
            end
            else begin
                Tx_Done_Reg <= 1'b0;
            end
        end
    end
    assign data_tx = data_tx_reg;
    assign Tx_Done = Tx_Done_Reg;
endmodule
