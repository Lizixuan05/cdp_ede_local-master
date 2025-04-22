`include "macro.vh"
module mycpu_top(
    input  wire        clk,
    input  wire        resetn,
    // inst sram interface
    output wire        inst_sram_en,
    output wire [ 3:0] inst_sram_we,
    output wire [31:0] inst_sram_addr,
    output wire [31:0] inst_sram_wdata,
    input  wire [31:0] inst_sram_rdata,
    // data sram interface
    output wire        data_sram_en,
    output wire [ 3:0] data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata,
    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);
// Signal declarations
wire        ID_allowin;
wire        IF_ID_valid;
wire [31:0] IF_inst;
wire [31:0] IF_pc;
wire        br_taken;
wire [31:0] br_target;

wire        EXE_allowin;
wire        ID_EXE_valid;
wire [31:0] ID_pc;
wire [33:0] ID_mem;
wire [ 6:0] ID_rf;
wire [82:0] ID_alu;
wire [37:0] WB_rf;
wire [ 7:0] ID_inst;
wire [ 6:0] EXE_load;

wire        MEM_allowin;
wire        EXE_MEM_valid;
wire [31:0] EXE_pc;
wire [31:0] EXE_alu_result;
wire [39:0] EXE_rf;
wire [33:0] EXE_mem;

wire        MEM_WB_valid;
wire        WB_allowin;
wire [31:0] MEM_pc;
wire [38:0] MEM_rf;
wire [80:0] ID_except;
wire [80:0] EXE_except;
wire [80:0] MEM_except;


wire wb_ex;
wire ertn_flush;
wire mem_ex;
wire [31:0] ex_entry;
wire [31:0] ertn_entry;

wire        csr_re;
wire [13:0] csr_num;
wire [31:0] csr_rvalue;
wire        csr_we;
wire [31:0] csr_wmask;
wire [31:0] csr_wvalue;
wire [31:0] ex_entry;
wire [31:0] ertn_entry;
wire        has_int;
wire        ertn_flush;
wire        ms_ex;
wire        wb_ex;
wire [ 5:0] wb_ecode;
wire [ 8:0] wb_esubcode;


reg         reset;
always @(posedge clk) reset <= ~resetn;

IF_state  IF_state_inst (
    .clk(clk),
    .reset(reset),
    .inst_sram_en(inst_sram_en),
    .inst_sram_we(inst_sram_we),
    .inst_sram_addr(inst_sram_addr),
    .inst_sram_wdata(inst_sram_wdata),
    .inst_sram_rdata(inst_sram_rdata),
    .ID_allowin(ID_allowin),
    .IF_ID_valid(IF_ID_valid),
    .IF_inst(IF_inst),
    .IF_pc(IF_pc),
    .br_taken(br_taken),
    .br_target(br_target),
    .wb_ex(wb_ex),
    .ertn_flush(ertn_flush),
    .ex_entry(ex_entry),
    .ertn_entry(ertn_entry)
  );

  ID_state  ID_state_inst (
    .clk(clk),
    .reset(reset),
    .ID_allowin(ID_allowin),
    .IF_ID_valid(IF_ID_valid),
    .IF_inst(IF_inst),
    .IF_pc(IF_pc),
    .br_taken(br_taken),
    .br_target(br_target),
    .EXE_allowin(EXE_allowin),
    .ID_EXE_valid(ID_EXE_valid),
    .ID_pc(ID_pc),
    .ID_mem(ID_mem),
    .ID_rf(ID_rf),
    .ID_alu(ID_alu),
    .ID_inst(ID_inst),
    .ID_except(ID_except),
    .WB_rf(WB_rf),
    .MEM_rf(MEM_rf),
    .EXE_rf(EXE_rf),
    .wb_ex(wb_ex)
  );
  EXE_state  EXE_state_inst (
    .clk(clk),
    .reset(reset),
    .EXE_allowin(EXE_allowin),
    .ID_EXE_valid(ID_EXE_valid),
    .ID_pc(ID_pc),
    .ID_mem(ID_mem),
    .ID_rf(ID_rf),
    .ID_alu(ID_alu),
    .ID_inst(ID_inst),
    .ID_except(ID_except),
    .MEM_allowin(MEM_allowin),
    .EXE_MEM_valid(EXE_MEM_valid),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .EXE_except(EXE_except),
    .data_sram_en(data_sram_en),
    .data_sram_we(data_sram_we),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata),
    .wb_ex(wb_ex),
    .mem_ex(mem_ex)
  );
  MEM_state  MEM_state_inst (
    .clk(clk),
    .reset(reset),
    .EXE_MEM_valid(EXE_MEM_valid),
    .MEM_allowin(MEM_allowin),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .EXE_except(EXE_except),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allowin(WB_allowin),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .MEM_except(MEM_except),
    .data_sram_rdata(data_sram_rdata),
    .mem_ex(mem_ex),
    .wb_ex(wb_ex)
  );

  WB_state  WB_state_inst (
    .clk(clk),
    .reset(reset),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allowin(WB_allowin),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .MEM_except(MEM_except),
    .WB_rf(WB_rf),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_we(debug_wb_rf_we),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .debug_wb_rf_wdata(debug_wb_rf_wdata),
    .csr_re(csr_re),
    .csr_num(csr_num),
    .csr_rvalue(csr_rvalue),
    .csr_we(csr_we),
    .csr_wmask(csr_wmask),
    .csr_wvalue(csr_wvalue),
    .ertn_flush(ertn_flush),
    .wb_ex(wb_ex),
    .wb_pc(wb_pc),
    .wb_ecode(wb_ecode),
    .wb_esubcode(wb_esubcode)
  );
  csr  csr_inst (
    .clk(clk),
    .reset(reset),
    .csr_re(csr_re),
    .csr_num(csr_num),
    .csr_rvalue(csr_rvalue),
    .csr_we(csr_we),
    .csr_wmask(csr_wmask),
    .csr_wvalue(csr_wvalue),
    .ex_entry(ex_entry),
    .ertn_entry(ertn_entry),
    .has_int(has_int),
    .ertn_flush(ertn_flush),
    .wb_ex(wb_ex),
    .wb_ecode(wb_ecode),
    .wb_esubcode(wb_esubcode),
    .wb_pc(wb_pc)
  );
endmodule
