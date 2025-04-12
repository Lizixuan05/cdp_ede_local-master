module ID_state (
    input  wire        clk,
    input  wire        reset,

    //IF_ID interface
    /*state control*/
    output wire        ID_allowin,
    input  wire        IF_ID_valid,
    /*buffer*/
    input  wire [31:0] IF_inst,
    input  wire [31:0] IF_pc,

    //ID_IF interface
    output wire        br_taken,
    output wire [31:0] br_target,

    //ID_EX interface
    /*state control*/
    input  wire        EXE_allowin,
    output wire        ID_EXE_valid,
    /*buffer*/
    output reg  [31:0] ID_pc,//reg类型
    output wire [33:0] ID_mem,//{mem_we[33],res_from_mem[32],rkd_value[31:0]}
    output wire [ 5:0] ID_rf,//{rf_we[5],rf_waddr[4:0]}
    output wire [75:0] ID_alu,//{alu_op[75:64],alu_src2[63:32],alu_src1[0:31]}

    //WB_ID interface
    input  wire [37:0] WB_rf //{wb_rf_we[37], wb_rf_waddr[36:32], wb_rf_wdata[31:0]}
);
    reg  [31:0] ID_inst,
    wire        wb_rf_we;
    wire [ 4:0] wb_rf_waddr;
    wire [31:0] wb_rf_wdata;
    wire        ID_ready_go;
    reg         ID_valid;
    wire [11:0] alu_op;
    wire        src1_is_pc;
    wire        src2_is_imm;
    wire        res_from_mem;
    wire        dst_is_r1;
    wire        gr_we;
    wire        mem_we;
    wire        src_reg_is_rd;
    wire        rj_eq_rd;
    wire        rj_ls_rd;
    wire        rj_lu_rd;
    wire [4: 0] dest;
    wire [31:0] rj_value;
    wire [31:0] rkd_value;
    wire [31:0] imm;
    wire [31:0] br_offs;
    wire [31:0] jirl_offs;

    wire [ 5:0] op_31_26;
    wire [ 3:0] op_25_22;
    wire [ 1:0] op_21_20;
    wire [ 4:0] op_19_15;
    wire [ 4:0] rd;
    wire [ 4:0] rj;
    wire [ 4:0] rk;
    wire [11:0] i12;
    wire [19:0] i20;
    wire [15:0] i16;
    wire [25:0] i26;

    wire [63:0] op_31_26_d;
    wire [15:0] op_25_22_d;
    wire [ 3:0] op_21_20_d;
    wire [31:0] op_19_15_d;

    wire        inst_add_w;
    wire        inst_sub_w;
    wire        inst_slt;
    wire        inst_sltu;
    wire        inst_nor;
    wire        inst_and;
    wire        inst_or;
    wire        inst_xor;
    wire        inst_slli_w;
    wire        inst_srli_w;
    wire        inst_srai_w;
    wire        inst_addi_w;
    wire        inst_ld_w;
    wire        inst_st_w;
    wire        inst_jirl;
    wire        inst_b;
    wire        inst_bl;
    wire        inst_beq;
    wire        inst_bne;
    wire        inst_lu12i_w;
    wire        inst_slti;
    wire        inst_sltiu;
    wire        inst_andi;
    wire        inst_ori;
    wire        inst_xori;
    wire        inst_sll_w;
    wire        inst_srl_w;
    wire        inst_sra_w;
    wire        inst_pcaddu12i;
    wire        inst_blt;
    wire        inst_bltu;
    wire        inst_bge;
    wire        inst_bgeu;
    wire        inst_ld_b;
    wire        inst_ld_h;
    wire        inst_ld_bu;
    wire        inst_ld_hu;
    wire        inst_st_b;
    wire        inst_st_h;

    wire        need_ui12;
    wire        need_ui5;
    wire        need_si12;
    wire        need_si16;
    wire        need_si20;
    wire        need_si26;
    wire        src2_is_4;

    wire [ 4:0] rf_raddr1;
    wire [31:0] rf_rdata1;
    wire [ 4:0] rf_raddr2;
    wire [31:0] rf_rdata2;
    wire        rf_we   ;
    wire [ 4:0] rf_waddr;
    wire [31:0] rf_wdata;

    wire [31:0] alu_src1   ;
    wire [31:0] alu_src2   ;        
    /*---------------IF_ID buffer-----------------*/
    always @(posedge clk) begin
        if (IF_ID_valid & ID_allowin) begin
            ID_pc <= IF_pc;
            ID_inst <= IF_inst;
        end
    end
    /*---------------state control-----------------*/

    assign ID_ready_go = 1'b1;
    assign ID_allowin = ~ID_valid | ID_ready_go & EXE_allowin;
    assign ID_EXE_valid = ID_valid & ID_ready_go;

    always @(posedge clk) begin
        if (reset) begin
            ID_valid <= 1'b0;
        end
        else begin
            ID_valid <= ID_allowin & IF_ID_valid & ~br_taken;
        end
    end

    /*---------------decode instruction-----------------*/

    assign op_31_26  = inst[31:26];
    assign op_25_22  = inst[25:22];
    assign op_21_20  = inst[21:20];
    assign op_19_15  = inst[19:15];

    assign rd   = inst[ 4: 0];
    assign rj   = inst[ 9: 5];
    assign rk   = inst[14:10];

    assign i12  = inst[21:10];
    assign i20  = inst[24: 5];
    assign i16  = inst[25:10];
    assign i26  = {inst[ 9: 0], inst[25:10]};

    decoder_6_64 u_dec0(.in(op_31_26 ), .out(op_31_26_d ));
    decoder_4_16 u_dec1(.in(op_25_22 ), .out(op_25_22_d ));
    decoder_2_4  u_dec2(.in(op_21_20 ), .out(op_21_20_d ));
    decoder_5_32 u_dec3(.in(op_19_15 ), .out(op_19_15_d ));

    assign inst_add_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h00];
    assign inst_sub_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h02];
    assign inst_slt    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h04];
    assign inst_sltu   = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h05];
    assign inst_nor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h08];
    assign inst_and    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h09];
    assign inst_or     = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0a];
    assign inst_xor    = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0b];
    assign inst_slli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h01];
    assign inst_srli_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h09];
    assign inst_srai_w = op_31_26_d[6'h00] & op_25_22_d[4'h1] & op_21_20_d[2'h0] & op_19_15_d[5'h11];
    assign inst_addi_w = op_31_26_d[6'h00] & op_25_22_d[4'ha];
    assign inst_ld_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h2];
    assign inst_st_w   = op_31_26_d[6'h0a] & op_25_22_d[4'h6];
    assign inst_jirl   = op_31_26_d[6'h13];
    assign inst_b      = op_31_26_d[6'h14];
    assign inst_bl     = op_31_26_d[6'h15];
    assign inst_beq    = op_31_26_d[6'h16];
    assign inst_bne    = op_31_26_d[6'h17];
    assign inst_lu12i_w= op_31_26_d[6'h05] & ~inst[25];
    assign inst_slti   = op_31_26_d[6'h00] & op_25_22_d[4'h8];
    assign inst_sltui  = op_31_26_d[6'h00] & op_25_22_d[4'h9];
    assign inst_andi   = op_31_26_d[6'h00] & op_25_22_d[4'hd];
    assign inst_ori    = op_31_26_d[6'h00] & op_25_22_d[4'he];
    assign inst_xori   = op_31_26_d[6'h00] & op_25_22_d[4'hf];
    assign inst_sll_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0e];
    assign inst_srl_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h0f];
    assign inst_sra_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h10];
    assign inst_pcaddu12i = op_31_26_d[6'h07] & ~inst[25];
    assign inst_blt    = op_31_26_d[6'h18];
    assign inst_bge    = op_31_26_d[6'h19];
    assign inst_bltu   = op_31_26_d[6'h1a];
    assign inst_bgeu   = op_31_26_d[6'h1b];
    assign inst_ld_b   = op_31_26_d[6'h0a] & op_25_22_d[4'h0];
    assign inst_ld_h   = op_31_26_d[6'h0a] & op_25_22_d[4'h1];
    assign inst_ld_bu  = op_31_26_d[6'h0a] & op_25_22_d[4'h8];
    assign inst_ld_hu  = op_31_26_d[6'h0a] & op_25_22_d[4'h9];
    assign inst_st_b   = op_31_26_d[6'h0a] & op_25_22_d[4'h4];
    assign inst_st_h   = op_31_26_d[6'h0a] & op_25_22_d[4'h5];

    /*--------------signal from inst--------------*/

    assign alu_op[ 0] = inst_add_w | inst_addi_w | inst_ld_w | inst_st_w
                        | inst_jirl | inst_bl | inst_pcaddu12i |inst_ld_b 
                        | inst_ld_h | inst_ld_bu | inst_ld_hu
                        | inst_st_b | inst_st_h;
    assign alu_op[ 1] = inst_sub_w;
    assign alu_op[ 2] = inst_slt | inst_slti;
    assign alu_op[ 3] = inst_sltu | inst_sltui;
    assign alu_op[ 4] = inst_and | inst_andi;
    assign alu_op[ 5] = inst_nor;
    assign alu_op[ 6] = inst_or | inst_ori;
    assign alu_op[ 7] = inst_xor | inst_xori;
    assign alu_op[ 8] = inst_slli_w|inst_sll_w;
    assign alu_op[ 9] = inst_srli_w|inst_srl_w;
    assign alu_op[10] = inst_srai_w|inst_sra_w;
    assign alu_op[11] = inst_lu12i_w;

    assign need_ui5   =  inst_slli_w | inst_srli_w | inst_srai_w;
    assign need_ui12  =  inst_andi   | inst_ori    | inst_xori; 
    assign need_si12  =  inst_addi_w | inst_ld_w   | inst_st_w | inst_slti 
                        | inst_sltui | inst_ld_b   | inst_ld_h | inst_ld_bu 
                        | inst_ld_hu | inst_st_b   | inst_st_h;
    assign need_si16  =  inst_jirl | inst_beq | inst_bne | inst_blt | inst_bge 
                        | inst_bltu | inst_bgeu;
    assign need_si20  =  inst_lu12i_w | inst_pcaddu12i;
    assign need_si26  =  inst_b | inst_bl;
    assign src2_is_4  =  inst_jirl | inst_bl;

    assign imm = src2_is_4 ? 32'h4                      :
                 need_si20 ? {i20[19:0], 12'b0}         :
                 need_ui12 ? {20'b0, i12[11:0]}         :
    /*need_ui5 || need_si12*/{{20{i12[11]}}, i12[11:0]} ;

    assign br_offs = need_si26 ? {{ 4{i26[25]}}, i26[25:0], 2'b0} :
                                 {{14{i16[15]}}, i16[15:0], 2'b0} ;
    assign jirl_offs = {{14{i16[15]}}, i16[15:0], 2'b0};

    assign src_reg_is_rd = inst_beq | inst_bne | inst_st_w | inst_blt | inst_bge 
                           | inst_bltu | inst_bgeu | inst_st_b | inst_st_h ;
    assign src1_is_pc    = inst_jirl | inst_bl |inst_pcaddu12i;
    assign src2_is_imm   = inst_slli_w |
                           inst_srli_w |
                           inst_srai_w |
                           inst_addi_w |
                           inst_ld_w   |
                           inst_st_w   |
                           inst_lu12i_w|
                           inst_jirl   |
                           inst_bl     |
                           inst_slti   |
                           inst_sltui  |
                           inst_andi   |
                           inst_ori    |
                           inst_xori   |
                           inst_pcaddu12i|
                           inst_ld_b   |
                           inst_ld_h   |
                           inst_ld_bu  |
                           inst_ld_hu  |
                           inst_st_b   |
                           inst_st_h   ;
    
    assign res_from_mem  = inst_ld_w | inst_ld_b | inst_ld_h | inst_ld_bu 
                           | inst_ld_hu | inst_st_b | inst_st_h;
    assign dst_is_r1     = inst_bl;
    assign gr_we         = ~inst_st_w & ~inst_beq & ~inst_bne & ~inst_b 
                           & ~inst_blt & ~inst_bge & ~inst_bltu & ~inst_bgeu 
                           & ~inst_st_b & ~inst_st_h;
    assign mem_we        = inst_st_w | inst_st_b | inst_st_h;
    assign dest          = dst_is_r1 ? 5'd1 : rd;

    /*--------------signal of mem/rf/alu-----------------*/
    assign alu_src1 = src1_is_pc  ? pc[31:0] : rj_value;
    assign alu_src2 = src2_is_imm ? imm : rkd_value;
    //alu_op

    assign rf_we    = gr_we && ID_valid;
    assign rf_waddr = dest;

    //mem_we
    //rkd_value
    //res_from_mem

    /*--------------register file control----------------*/

    //read
    assign rf_raddr1 = rj;
    assign rf_raddr2 = src_reg_is_rd ? rd :rk;
    //write
    assign {wb_rf_we,wb_rf_waddr,wb_rf_wdata} = WB_rf;

    regfile u_regfile(
        .clk    (clk      ),
        .raddr1 (rf_raddr1),
        .rdata1 (rf_rdata1),
        .raddr2 (rf_raddr2),
        .rdata2 (rf_rdata2),
        .we     (wb_rf_we ),
        .waddr  (wb_rf_waddr),
        .wdata  (wb_rf_wdata)
        );
    
    assign rj_value  = rf_rdata1;
    assign rkd_value = rf_rd;

    /*--------------------brunch control-----------------*/
    assign rj_eq_rd = (rj_value == rkd_value);
    assign rj_ls_rd = ($signed(rj_value) < $signed(rkd_value));
    assign rj_lu_rd = (rj_value <  rkd_value);
    assign br_taken = (   inst_beq  &&  rj_eq_rd
                       || inst_bne  && !rj_eq_rd
                       || inst_blt  &&  rj_ls_rd
                       || inst_bge  && !rj_ls_rd
                       || inst_bltu &&  rj_lu_rd
                       || inst_bgeu && !rj_lu_rd
                       || inst_jirl
                       || inst_bl
                       || inst_b
                      ) && ID_valid;

    assign br_target = (inst_beq || inst_bne || inst_bl || inst_b || inst_blt || 
                        inst_bge || inst_bltu || inst_bgeu) ? (pc + br_offs) :
                                                       /*inst_jirl*/ (rj_value + jirl_offs);

    /*--------------------ID_EXE buffer-----------------*/
    assign ID_rf = {rf_we,rf_waddr};
    assign ID_mem = {mem_we,res_from_mem,rkd_value};
    assign ID_alu = {alu_op,alu_src2,alu_src1};

endmodule