module WB_state (
    input wire         clk,
    input wire         reset,

    //MEM_WB interface
    /*state control*/
    input  wire        MEM_WB_valid,
    output wire        WB_allowin,
    /*buffer*/
    input  wire [31:0] MEM_pc,
    input  wire [37:0] MEM_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    //WB_ID interface
    output wire [37:0] WB_rf,//{rf_we[37],rf_waddr[36:32],rf_wdata[31:0]}

    // trace debug interface
    output wire [31:0] debug_wb_pc,
    output wire [ 3:0] debug_wb_rf_we,
    output wire [ 4:0] debug_wb_rf_wnum,
    output wire [31:0] debug_wb_rf_wdata
);
    wire WB_ready_go;
    reg  WB_valid;
    reg [31:0] WB_pc;
    reg [37:0] wb_rf_buffer;

    /*-----------------------MEM_WB buffer--------------*/
    always @(posedge clk) begin
        if (MEM_WB_valid & WB_allowin) begin
            WB_pc <= MEM_pc;
            wb_rf_buffer <= MEM_rf;
        end
    end

    /*-----------------------state control----------------*/
    assign WB_ready_go = 1'b1;
    assign WB_allowin = ~WB_valid | WB_ready_go;
    always @(posedge clk) begin
        if (reset) begin
            WB_valid <= 1'b0;
        end
        else if (WB_allowin)begin
            WB_valid <= MEM_WB_valid ;
        end
    end

    /*---------------------WB_ID interface-----------------*/
    assign WB_rf = wb_rf_buffer;

    /*-------------------debug info generate--------------------*/
    assign debug_wb_pc       = WB_pc;
    assign debug_wb_rf_we   = {4{wb_rf_buffer[37] & WB_valid}};
    assign debug_wb_rf_wnum  = wb_rf_buffer[36:32];
    assign debug_wb_rf_wdata = wb_rf_buffer[31:0];

endmodule