module MEM_state (
    input  wire        clk,
    input  wire        reset,

    //EXE_MEM interface
    /*state control*/
    input  wire        EXE_MEM_valid,
    output wire        MEM_allowin,
    /*buffer*/
    input  wire [31:0] EXE_pc,
    input  wire [38:0] EXE_rf,//{res_from_mem[38],rf_we[37],rf_waddr[36:32],alu_result[31:0]}

    //MEM_WB interface
    /*state control*/
    output wire        MEM_WB_valid,
    input  wire        WB_allowin,
    /*buffer*/
    output reg  [31:0] MEM_pc,
    output wire [37:0] MEM_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    // data sram interface
    input  wire [31:0] data_sram_rdata

);
    wire MEM_ready_go;
    reg  MEM_valid;
    reg mem_res_from_mem;
    reg mem_rf_we;
    reg [4:0] mem_rf_waddr;
    reg [31:0] mem_alu_result;
    wire [31:0] mem_result;
    wire [31:0] mem_rf_wdata;

    /*------------------EXE_MEM buffer----------------------*/

    always @(posedge clk) begin
        if (MEM_allowin & EXE_MEM_valid) begin
            MEM_pc <= EXE_pc;
            {mem_res_from_mem,mem_rf_we,mem_rf_waddr,mem_alu_result} <= EXE_rf;
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
        else if(MEM_allowin) begin
            MEM_valid <= EXE_MEM_valid;
        end
    end

    /*--------------MEM_WB buffer--------------------------*/
    assign mem_result = data_sram_rdata;
    assign mem_rf_wdata = mem_res_from_mem?mem_result:mem_alu_result;
    assign MEM_rf = {mem_rf_we&MEM_valid,mem_rf_waddr,mem_rf_wdata};
endmodule