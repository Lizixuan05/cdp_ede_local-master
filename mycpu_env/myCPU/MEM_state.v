`include "macro.vh"
module MEM_state (
    input  wire        clk,
    input  wire        reset,

    //EXE_MEM interface
    /*state control*/
    input  wire        EXE_MEM_valid,
    output wire        MEM_allowin,
    /*buffer*/
    input  wire [31:0] EXE_pc,
    input  wire [39:0] EXE_rf,//{csr_re,res_from_mem[38],rf_we[37],rf_waddr[36:32],alu_result[31:0]}
    input  wire [ 6:0] EXE_load,//{EXE_alu_result[6:5],inst_ld_hu[4],inst_ld_bu[3],inst_ld_h[2],inst_ld_b[1],inst_ld_w[0]}
    input  wire [80:0] EXE_except,//{id_csr_num[80:67], id_csr_wmask[66:35], id_csr_wvalue[34:3], inst_syscall[2], inst_ertn[1], id_csr_we[0]}

    //MEM_WB interface
    /*state control*/
    output wire        MEM_WB_valid,
    input  wire        WB_allowin,
    /*buffer*/
    output reg  [31:0] MEM_pc,
    output wire [38:0] MEM_rf,//{csr_re,rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}
    output wire [80:0] MEM_except,//{id_csr_num[80:67], id_csr_wmask[66:35], id_csr_wvalue[34:3], inst_syscall[2], inst_ertn[1], id_csr_we[0]}

    // data sram interface
    input  wire [31:0] data_sram_rdata,

    //exception interface
    output wire        mem_ex,
    input  wire        wb_ex

);
    wire MEM_ready_go;
    reg  MEM_valid;
    reg mem_res_from_mem;
    reg mem_rf_we;
    reg [4:0] mem_rf_waddr;
    reg [31:0] mem_alu_result;
    wire [31:0] mem_result;
    wire [31:0] mem_rf_wdata;
    reg [80:0] mem_except;
    reg mem_csr_re;
    //inst
    reg inst_ld_w;
    reg inst_ld_b;
    reg inst_ld_h;
    reg inst_ld_bu;
    reg inst_ld_hu;
    reg [1:0] load_addr;


    /*------------------EXE_MEM buffer----------------------*/

    always @(posedge clk) begin
        if (MEM_allowin & EXE_MEM_valid) begin
            MEM_pc <= EXE_pc;
            {mem_csr_re,mem_res_from_mem,mem_rf_we,mem_rf_waddr,mem_alu_result} <= EXE_rf;
            {load_addr,inst_ld_hu,inst_ld_bu,inst_ld_h,inst_ld_b,inst_ld_w} <= EXE_load;
            mem_except <= EXE_except;
        end
    end

    /*------------------state control------------------------*/
    assign MEM_ready_go = 1'b1;
    assign MEM_allowin = ~MEM_valid | MEM_ready_go & WB_allowin;
    assign MEM_WB_valid = MEM_valid & MEM_ready_go;
    always @(posedge clk) begin
        if (reset) begin
            MEM_valid <= 1'b0;
        end
        else if(wb_ex) begin
            MEM_valid <= 1'b0;
        end
        else if(MEM_allowin) begin
            MEM_valid <= EXE_MEM_valid;
        end
    end

    /*------------------byte load control------------------*/
    assign mem_result = inst_ld_b & load_addr == 2'b00 ? {{24{data_sram_rdata[7]}},data_sram_rdata[7:0]}:
                      inst_ld_b & load_addr == 2'b01 ? {{24{data_sram_rdata[15]}},data_sram_rdata[15:8]}:
                      inst_ld_b & load_addr == 2'b10 ? {{24{data_sram_rdata[23]}},data_sram_rdata[23:16]}:
                      inst_ld_b & load_addr == 2'b11 ? {{24{data_sram_rdata[31]}},data_sram_rdata[31:24]}:
                      inst_ld_h & load_addr == 2'b00 ? {{16{data_sram_rdata[15]}},data_sram_rdata[15:0]}:
                      inst_ld_h & load_addr == 2'b10 ? {{16{data_sram_rdata[31]}},data_sram_rdata[31:16]}:
                      inst_ld_bu& load_addr == 2'b00 ? {24'b0,data_sram_rdata[7:0]}:
                      inst_ld_bu& load_addr == 2'b01 ? {24'b0,data_sram_rdata[15:8]}:
                      inst_ld_bu& load_addr == 2'b10 ? {24'b0,data_sram_rdata[23:16]}:
                      inst_ld_bu& load_addr == 2'b11 ? {24'b0,data_sram_rdata[31:24]}:
                      inst_ld_hu& load_addr == 2'b00 ? {16'b0,data_sram_rdata[15:0]}:
                      inst_ld_hu& load_addr == 2'b10 ? {16'b0,data_sram_rdata[31:16]}:
                      data_sram_rdata;


    /*--------------MEM_WB buffer--------------------------*/
    assign mem_rf_wdata = mem_res_from_mem?mem_result:mem_alu_result;
    assign MEM_rf = {mem_csr_re&MEM_valid,mem_rf_we&MEM_valid,mem_rf_waddr,mem_rf_wdata};
    assign MEM_except = mem_except;

    /*------------exception control ----------------------*/
    assign mem_ex = mem_except[2];

endmodule