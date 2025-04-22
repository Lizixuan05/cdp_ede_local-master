`include "macro.vh"
module IF_state(
    input  wire        clk,
    input  wire        reset,

    //inst sram interface
    output wire        inst_sram_en,
    output wire [ 3:0] inst_sram_we,
    output wire [31:0] inst_sram_addr,
    output wire [31:0] inst_sram_wdata,
    input  wire [31:0] inst_sram_rdata,
    
    //IF_ID interface
    /*state control*/
    input  wire        ID_allowin,
    output wire        IF_ID_valid,
    /*buffer*/
    output wire [31:0] IF_inst,
    output reg  [31:0] IF_pc,//reg类型，保存前一条指令的pc

    //ID_IF interface
    input  wire        br_taken,
    input  wire [31:0] br_target,

    //Exception interface
    input  wire        wb_ex,
    input  wire        ertn_flush,
    input  wire [31:0] ex_entry,
    input  wire [31:0] ertn_entry
    );

    wire        IF_ready_go;
    wire        IF_allowin;
    reg         IF_valid;
    wire [31:0] seq_pc;
    wire [31:0] nextpc;

    /*---------------state control-----------------*/

    assign IF_ready_go = 1'b1;
    assign IF_allowin = ~IF_valid | IF_ready_go & ID_allowin | wb_ex | ertn_flush;
    assign IF_ID_valid = IF_valid & IF_ready_go;
    always @(posedge clk) begin
        if (reset) begin
            IF_valid <= 1'b0;
        end
        else if (IF_allowin) begin
            IF_valid <= ~reset;
        end
        else if (br_taken) begin
            IF_valid <= 1'b0;
        end
    end

    /*---------------inst sram -----------------*/

    assign inst_sram_en   = IF_allowin & ~reset;
    assign inst_sram_we   = 4'b0;
    assign inst_sram_addr = nextpc;
    assign inst_sram_wdata = 32'b0;

    /*---------------pc control-----------------*/
    assign seq_pc       = IF_pc + 3'h4;
    assign nextpc       = wb_ex ? ex_entry :
                          ertn_flush ? ertn_entry :
                          br_taken ? br_target : seq_pc;

    /*---------------IF_ID buffer-----------------*/

    assign IF_inst = inst_sram_rdata;

    always @(posedge clk) begin
        if (reset) begin
            IF_pc <= 32'h1bfffffc;     //trick: to make nextpc be 0x1c000000 during reset 
        end
        else if(IF_allowin)begin
            IF_pc <= nextpc;//保存前一条指令的pc，传递到ID阶段
        end
    end

endmodule
