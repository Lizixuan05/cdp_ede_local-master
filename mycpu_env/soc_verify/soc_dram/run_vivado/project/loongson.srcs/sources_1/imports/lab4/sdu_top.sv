`timescale 1ns / 1ps

module sdu_top(
    input clk,
    input rstn,
    input [15:0]    din,    //sw15-0
    input wr_en,
    input rd_en,
    output [15:0]   dout,   //led15-0
    output full,
    output empty,
    input rxd,
    output txd
    );

    wire [31:0] sdu_addr;
    wire [15:0] sdu_data;
    wire [31:0] sdu_din;
    wire sdu_we;
    wire clk_ld;

    FIFO FIFO_inst (
    .clk(clk),
    .rstn(rstn),
    .din(din),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .dout(dout),
    .full(full),
    .empty(empty),
    .sdu_addr(sdu_addr[3:0]),
    .sdu_data(sdu_data)
  );
        
    sdu_dm sdu_dm_inst(
        .clk(clk),
        .rstn(rstn),
        .rxd(rxd),
        .txd(txd),
        .addr(sdu_addr),//32位，我们只使用其中后4位
        .dout({{16{1'b0}},sdu_data}),//用于sdu查看寄存器内容
        .din(sdu_din),  //用于将数据加载到存储器，本次不使用这个信号
        .we(sdu_we),    //用于将数据加载到存储器，本次不使用这个信号
        .clk_ld(clk_ld) //本次不使用这个信号
    );
    
endmodule
