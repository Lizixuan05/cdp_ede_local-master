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
wire [ 5:0] ID_rf;
wire [82:0] ID_alu;
wire [37:0] WB_rf;
wire [ 7:0] ID_inst;
wire [ 6:0] EXE_load;

wire        MEM_allowin;
wire        EXE_MEM_valid;
wire [31:0] EXE_pc;
wire [31:0] EXE_alu_result;
wire [38:0] EXE_rf;
wire [33:0] EXE_mem;

wire        MEM_WB_valid;
wire        WB_allowin;
wire [31:0] MEM_pc;
wire [37:0] MEM_rf;

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
    .br_target(br_target)
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
    .WB_rf(WB_rf),
    .MEM_rf(MEM_rf),
    .EXE_rf(EXE_rf)
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
    .MEM_allowin(MEM_allowin),
    .EXE_MEM_valid(EXE_MEM_valid),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .data_sram_en(data_sram_en),
    .data_sram_we(data_sram_we),
    .data_sram_addr(data_sram_addr),
    .data_sram_wdata(data_sram_wdata)
  );
  MEM_state  MEM_state_inst (
    .clk(clk),
    .reset(reset),
    .EXE_MEM_valid(EXE_MEM_valid),
    .MEM_allowin(MEM_allowin),
    .EXE_pc(EXE_pc),
    .EXE_rf(EXE_rf),
    .EXE_load(EXE_load),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allowin(WB_allowin),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .data_sram_rdata(data_sram_rdata)
  );

  WB_state  WB_state_inst (
    .clk(clk),
    .reset(reset),
    .MEM_WB_valid(MEM_WB_valid),
    .WB_allowin(WB_allowin),
    .MEM_pc(MEM_pc),
    .MEM_rf(MEM_rf),
    .WB_rf(WB_rf),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_we(debug_wb_rf_we),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
  );
endmodule
