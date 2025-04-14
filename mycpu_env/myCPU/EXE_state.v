module EXE_state (
    input  wire        clk,
    input  wire        reset,

    //ID_EXE interface
    /*state control*/
    output wire        EXE_allowin,
    input  wire        ID_EXE_valid,
    /*buffer*/
    input  wire [31:0] ID_pc,
    input  wire [33:0] ID_mem,//{mem_we[33],res_from_mem[32],rkd_value[31:0]}
    input  wire [ 5:0] ID_rf,
    input  wire [75:0] ID_alu,//{alu_op[75:64],alu_src2[63:32],alu_src1[0:31]}

    //EXE_MEM interface
    /*state control*/
    input  wire        MEM_allowin,
    output wire        EXE_MEM_valid,
    /*buffer*/
    output reg  [31:0] EXE_pc,//reg类型为级间缓存
    output wire [38:0] EXE_rf,//{res_from_mem[38],rf_we[37],rf_waddr[36:32],alu_result[31:0]}

    // data sram interface
    output wire        data_sram_en,
    output wire [ 3:0] data_sram_we,
    output wire [31:0] data_sram_addr,
    output wire [31:0] data_sram_wdata

);
    wire EXE_ready_go;
    reg  EXE_valid;
    reg [11:0] EXE_alu_op;
    reg [31:0] EXE_alu_src1;
    reg [31:0] EXE_alu_src2;
    reg exe_mem_we;
    reg exe_res_from_mem;
    reg [31:0] exe_rkd_value;
    wire [31:0] EXE_alu_result;
    reg exe_rf_we;
    reg [4:0] exe_rf_waddr;

    /*---------------ID_EXE buffer--------------------*/
    always @(posedge clk) begin
        if (ID_EXE_valid & EXE_allowin) begin
            EXE_pc <= ID_pc;
            {EXE_alu_op,EXE_alu_src2,EXE_alu_src1} <= ID_alu;
            {exe_mem_we,exe_res_from_mem,exe_rkd_value} <= ID_mem;
            {exe_rf_we,exe_rf_waddr} <= ID_rf;
        end
    end

    /*-----------------state control------------------*/
    assign EXE_ready_go = 1'b1;
    assign EXE_allowin = ~EXE_valid | EXE_ready_go & MEM_allowin;
    assign EXE_MEM_valid = EXE_valid & EXE_ready_go;
    always @(posedge clk) begin
        if (reset) begin
            EXE_valid <= 1'b0;
        end
        else if (EXE_allowin) begin
            EXE_valid <= ID_EXE_valid ;
        end
    end

    /*--------------------alu control-----------------*/

    alu u_alu(
    .alu_op     (EXE_alu_op    ),
    .alu_src1   (EXE_alu_src1  ),
    .alu_src2   (EXE_alu_src2  ),
    .alu_result (EXE_alu_result)
    );

    /*-------------------EXE_MEM buffer---------------*/
    assign EXE_rf = {exe_res_from_mem&EXE_valid,exe_rf_we&EXE_valid,exe_rf_waddr,EXE_alu_result};

    /*---------------data sram control---------------------*/
    assign data_sram_en = (exe_mem_we | exe_res_from_mem) & EXE_valid;
    assign data_sram_we = {4{exe_mem_we & EXE_valid}};
    assign data_sram_addr = EXE_alu_result;
    assign data_sram_wdata = exe_rkd_value;

endmodule