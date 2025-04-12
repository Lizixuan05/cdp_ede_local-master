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
    output wire        data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata,
    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);

reg         reset;
always @(posedge clk) reset <= ~resetn;

wire        load_op;//?

wire [31:0] alu_result ;

wire [31:0] mem_result;
wire [31:0] final_result;



alu u_alu(
    .alu_op     (alu_op    ),
    .alu_src1   (alu_src1  ),
    .alu_src2   (alu_src2  ),
    .alu_result (alu_result)
    );

assign data_sram_we    = mem_we && valid;
assign data_sram_addr  = alu_result;
assign data_sram_wdata = inst_st_w?rkd_value:
                         inst_st_b?{data_sram_rdata[31:8], rkd_value[ 7:0]}:
                         inst_st_h?{data_sram_rdata[31:16], rkd_value[15:0]}:
                         32'b0;

assign mem_result   =  inst_ld_w ? data_sram_rdata :
                       inst_ld_b ? {{24{data_sram_rdata[ 7]}}, data_sram_rdata[ 7:0]} :
                       inst_ld_h ? {{16{data_sram_rdata[15]}}, data_sram_rdata[15:0]} :
                       inst_ld_bu? {24'b0, data_sram_rdata[ 7:0]} :
                       inst_ld_hu? {16'b0, data_sram_rdata[15:0]} : 32'b0;

assign final_result = res_from_mem ? mem_result : alu_result;



// debug info generate
assign debug_wb_pc       = pc;
assign debug_wb_rf_we   = {4{rf_we}};
assign debug_wb_rf_wnum  = dest;
assign debug_wb_rf_wdata = final_result;

endmodule
