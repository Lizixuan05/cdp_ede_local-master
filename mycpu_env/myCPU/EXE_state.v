module EXE_state (
    input  wire        clk,
    input  wire        reset,

    //ID_EXE interface
    /*state control*/
    output wire        EXE_allowin,
    input  wire        ID_EXE_valid,
    /*buffer*/
    input  wire [31:0] ID_pc,
    input  wire [33:0] ID_mem,
    input  wire [ 5:0] ID_rf,
    input  wire [75:0] ID_alu,//{alu_op[75:64],alu_src2[63:32],alu_src1[0:31]}

    //EXE_MEM interface
    /*state control*/
    input  wire        MEM_allowin,
    output wire        EXE_MEM_valid,
    /*buffer*/
    output reg  [31:0] EXE_pc,//reg类型为级间缓存
    output wire [31:0] EXE_alu_result,
    output reg  [ 5:0] EXE_rf,//{rf_we[5],rf_waddr[4:0]}
    output reg  [33:0] EXE_mem//{mem_we[33],res_from_mem[32],rkd_value[31:0]}
);
    wire EXE_ready_go;
    reg  EXE_valid;
    reg [11:0] EXE_alu_op;
    reg [31:0] EXE_alu_src1;
    reg [31:0] EXE_alu_src2;

    /*---------------ID_EXE buffer--------------------*/
    always @(posedge clk) begin
        if (ID_EXE_valid & EXE_allowin) begin
            EXE_pc <= ID_pc;

            {EXE_alu_op,EXE_alu_src2,EXE_alu_src1} <= ID_alu;
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
        else begin
            EXE_valid <= ID_EXE_valid & EXE_allowin;
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
    always @(posedge clk) begin
        if (ID_EXE_valid & EXE_allowin) begin
            EXE_mem <= ID_mem;
            EXE_rf <= ID_rf;
        end
    end
endmodule