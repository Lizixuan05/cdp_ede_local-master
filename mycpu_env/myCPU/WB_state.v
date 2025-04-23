`include "macro.vh"
module WB_state (
    input wire         clk,
    input wire         reset,

    //MEM_WB interface
    /*state control*/
    input  wire        MEM_WB_valid,
    output wire        WB_allowin,
    /*buffer*/
    input  wire [31:0] MEM_pc,
    input  wire [38:0] MEM_rf,//{csr_re,rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}
    input  wire [80:0] MEM_except,//{id_csr_num[80:67], id_csr_wmask[66:35], id_csr_wvalue[34:3], inst_syscall[2], inst_ertn[1], id_csr_we[0]}

    //WB_ID interface
    output wire [37:0] WB_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata,

    // wb and csr interface
    output reg         csr_re,
    output      [13:0] csr_num,
    input       [31:0] csr_rvalue,
    output             csr_we,
    output      [31:0] csr_wmask,
    output      [31:0] csr_wvalue,
    output             ertn_flush,
    output             wb_ex,
    output reg  [31:0] wb_pc,
    output      [ 5:0] wb_ecode,
    output      [ 8:0] wb_esubcode
);
    wire WB_ready_go;
    reg  WB_valid;
    reg [37:0] wb_rf_buffer;
    wire [31:0] wb_rf_wdata;
    reg [80:0] wb_except;

    /*-----------------------MEM_WB buffer--------------*/
    always @(posedge clk) begin
        if (MEM_WB_valid & WB_allowin) begin
            wb_pc <= MEM_pc;
            {csr_re,wb_rf_buffer} <= MEM_rf;
            wb_except <= MEM_except;
        end
    end

    /*-----------------------state control----------------*/
    assign WB_ready_go = 1'b1;
    assign WB_allowin = ~WB_valid | WB_ready_go;
    always @(posedge clk) begin
        if (reset) begin
            WB_valid <= 1'b0;
        end
        else if(wb_ex|ertn_flush) begin
            WB_valid <= 1'b0;
        end
        else if (WB_allowin)begin
            WB_valid <= MEM_WB_valid ;
        end
    end
    /*-----------------------------wb and csr state interface------------------*/
    assign {csr_num, csr_wmask, csr_wvalue, wb_ex, ertn_flush, csr_we} = wb_except & {81{WB_valid}};
    assign wb_ecode = {6{wb_ex}} & 6'hb;
    assign wb_esubcode = 9'b0;
    /*---------------------WB_ID interface-----------------*/

    assign wb_rf_wdata = csr_re ? csr_rvalue : wb_rf_buffer[31:0];
    assign WB_rf = {wb_rf_buffer[37] & WB_valid, wb_rf_buffer[36:32], wb_rf_wdata};

    /*-------------------debug info generate--------------------*/
    assign debug_wb_pc       = wb_pc;
    assign debug_wb_rf_we   = {4{wb_rf_buffer[37] & WB_valid}};
    assign debug_wb_rf_wnum  = wb_rf_buffer[36:32];
    assign debug_wb_rf_wdata = wb_rf_wdata; 

endmodule