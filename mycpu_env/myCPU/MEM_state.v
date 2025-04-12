module MEM_state (
    input  wire        clk,
    input  wire        reset,

    //EXE_MEM interface
    /*state control*/
    input  wire        EXE_MEM_valid,
    output wire        MEM_allowin,
    /*buffer*/
    input  wire [31:0] EXE_pc,
    input  wire [31:0] EXE_alu_result,
    input  wire [ 5:0] EXE_rf,//{rf_we[5],rf_waddr[4:0]}
    input  wire [33:0] EXE_mem,//{mem_we[33],res_from_mem[32],rkd_value[31:0]}

    //MEM_WB interface
    /*state control*/
    output wire        MEM_WB_valid,
    input  wire        WB_allowin,
    /*buffer*/
    output reg  [31:0] MEM_pc,
    output wire [37:0] MEM_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    // data sram interface
    output wire        data_sram_en,
    output wire [ 3:0] data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata,
    input  wire [31:0] data_sram_rdata
);
    wire MEM_ready_go;
    reg  MEM_valid;
    reg [31:0] mem_alu_result;
    reg [5:0] mem_rf;
    wire [31:0] mem_rf_wdata;
    reg [31:0] mem_rkd_value;
    reg mem_res_from_mem;
    reg mem_mem_we;
    wire [31:0] mem_result;

    /*------------------EXE_MEM buffer----------------------*/

    always @(posedge clk) begin
        if (MEM_allowin & EXE_MEM_valid) begin
            MEM_pc <= EXE_pc;
            mem_alu_result <= EXE_alu_result;
            mem_rf <= EXE_rf;
            {mem_mem_we,mem_res_from_mem,mem_rkd_value} <= EXE_mem;
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
        else begin
            MEM_valid <= MEM_allowin & EXE_MEM_valid;
        end
    end

    /*---------------data sram control---------------------*/
    //注意时序问题
    assign data_sram_en = EXE_mem[33] | EXE_mem[32];
    assign data_sram_we = {4{EXE_mem[33]}};
    assign data_sram_addr = EXE_alu_result;
    assign data_sram_wdata = EXE_mem[31:0];

    /*--------------MEM_WB buffer--------------------------*/
    assign mem_result = data_sram_rdata;
    assign mem_rf_wdata = mem_res_from_mem?mem_result:mem_alu_result;
    assign MEM_rf = {mem_rf[5:0],mem_rf_wdata};


endmodule