`include "macro.vh"
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
    output wire [ 6:0] ID_rf,//{csr_re[6],rf_we[5],rf_waddr[4:0]}
    output wire [82:0] ID_alu,//{alu_op[82:64],alu_src2[63:32],alu_src1[31:0]}
    output wire [ 7:0] ID_inst,//{inst_st_h[7],inst_st_b[6],inst_st_w[5],inst_ld_hu[4],inst_ld_bu[3],inst_ld_h[2],inst_ld_b[1],inst_ld_w[0]}
    output wire [80:0] ID_except,//{id_csr_num[80:67], id_csr_wmask[66:35], id_csr_wvalue[34:3], inst_syscall[2], inst_ertn[1], id_csr_we[0]}

    //confict detection interface
    input  wire [37:0] WB_rf, //{wb_rf_we[37], wb_rf_waddr[36:32], wb_rf_wdata[31:0]}
    input  wire [38:0] MEM_rf,//{mem_csr_re[38],mem_rf_we[37],mem_rf_waddr[36:32], mem_rf_wdata[31:0]}
    input  wire [39:0] EXE_rf, //{exe_csr_re[39],exe_res_from_mem[38],exe_rf_we[37], exe_rf_waddr[36:32], exe_rf_wdata[31:0]}

    //exception interface
    input  wire        wb_ex
    );
    wire        ID_stall;
    reg  [31:0] inst;
    wire        ID_ready_go;
    reg         ID_valid;
    wire [18:0] alu_op;
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

    //用户态指令
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
    wire        inst_sltui;
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
    wire        inst_mul_w;
    wire        inst_mulh_w;
    wire        inst_mulh_wu;
    wire        inst_div_w;
    wire        inst_mod_w;
    wire        inst_div_wu;
    wire        inst_mod_wu;
    //特权态指令
    wire        inst_csrrd;
    wire        inst_csrwr;
    wire        inst_csrxchg;
    wire        inst_ertn;
    wire        inst_syscall;

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

    wire [31:0] alu_src1   ;
    wire [31:0] alu_src2   ;
    
    wire        conflict_r1_wb;
    wire        conflict_r2_wb;
    wire        conflict_r1_mem;
    wire        conflict_r2_mem;
    wire        conflict_r1_exe;
    wire        conflict_r2_exe;
    wire        need_r1;
    wire        need_r2;

    wire        wb_rf_we    ;
    wire [ 4:0] wb_rf_waddr ;
    wire [31:0] wb_rf_wdata ;
    wire        mem_csr_re  ;
    wire        mem_rf_we   ;
    wire [ 4:0] mem_rf_waddr;
    wire [31:0] mem_rf_wdata;
    wire        exe_csr_re  ;  
    wire        exe_rf_we   ;
    wire [ 4:0] exe_rf_waddr;
    wire [31:0] exe_rf_wdata;
    wire        exe_res_from_mem;

    wire        id_csr_re;
    wire [13:0] id_csr_num;
    wire        id_csr_we;
    wire [31:0] id_csr_wvalue;
    wire [31:0] id_csr_wmask;

    /*---------------IF_ID buffer-----------------*/
    always @(posedge clk) begin
        if (IF_ID_valid & ID_allowin) begin
            ID_pc <= IF_pc;
            inst <= IF_inst;
        end
    end
    /*---------------state control-----------------*/

    assign ID_ready_go = ~ID_stall;
    assign ID_stall = (exe_res_from_mem|exe_csr_re) & (conflict_r1_exe & need_r1|conflict_r2_exe & need_r2)
                      | mem_csr_re &  (conflict_r1_mem & need_r1|conflict_r2_mem & need_r2) ;

    assign ID_allowin = ~ID_valid | ID_ready_go & EXE_allowin;
    assign ID_EXE_valid = ID_valid & ID_ready_go;

    always @(posedge clk) begin
        if (reset) begin
            ID_valid <= 1'b0;
        end
        else if (wb_ex)begin
            ID_valid <= 1'b0;
        end
        else if (br_taken) begin
            ID_valid <= 1'b0;
        end
        else if (ID_allowin) begin
            ID_valid <= IF_ID_valid;
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
    assign inst_mul_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h18];
    assign inst_mulh_w = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h19];
    assign inst_mulh_wu= op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h1] & op_19_15_d[5'h1a];
    assign inst_div_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h00];
    assign inst_mod_w  = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h01];
    assign inst_div_wu = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h02];
    assign inst_mod_wu = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h03];
    assign inst_csrrd   = op_31_26_d[6'h01] & (op_25_22[3:2] == 2'b0) & (rj == 5'h00);
    assign inst_csrwr   = op_31_26_d[6'h01] & (op_25_22[3:2] == 2'b0) & (rj == 5'h01);
    assign inst_csrxchg = op_31_26_d[6'h01] & (op_25_22[3:2] == 2'b0) & ~inst_csrrd & ~inst_csrwr;
    assign inst_syscall = op_31_26_d[6'h00] & op_25_22_d[4'h0] & op_21_20_d[2'h2] & op_19_15_d[5'h16];
    assign inst_ertn    = op_31_26_d[6'h01] & op_25_22_d[4'h9] & op_21_20_d[2'h0] & op_19_15_d[5'h10] & (rk == 5'h0e) & (~|rj) & (~|rd);

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
    assign alu_op[12] = inst_mul_w;
    assign alu_op[13] = inst_mulh_w;
    assign alu_op[14] = inst_mulh_wu;
    assign alu_op[15] = inst_div_w;
    assign alu_op[16] = inst_div_wu;
    assign alu_op[17] = inst_mod_w;
    assign alu_op[18] = inst_mod_wu;

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
                           | inst_bltu | inst_bgeu | inst_st_b | inst_st_h 
                           | inst_csrwr | inst_csrxchg;
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
                           & ~inst_st_b & ~inst_st_h & ~inst_syscall & ~inst_ertn;
    assign mem_we        = inst_st_w | inst_st_b | inst_st_h;
    assign dest          = dst_is_r1 ? 5'd1 : rd;

    /*--------------signal of mem/rf/alu-----------------*/
    assign alu_src1 = src1_is_pc  ? ID_pc[31:0] : rj_value;
    assign alu_src2 = src2_is_imm ? imm : rkd_value;
    //alu_op

    assign rf_we    = gr_we & ID_valid;
    assign rf_waddr = dest;

    //mem_we
    //rkd_value
    //res_from_mem

    /*--------------register file control----------------*/

    assign rf_raddr1 = rj;
    assign rf_raddr2 = src_reg_is_rd ? rd :rk;

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
    

    /*-------------------conflict detection-----------------*/

    assign {wb_rf_we,wb_rf_waddr,wb_rf_wdata} = WB_rf;
    assign {mem_csr_re,mem_rf_we, mem_rf_waddr, mem_rf_wdata} = MEM_rf;
    assign {exe_csr_re,exe_res_from_mem, exe_rf_we, exe_rf_waddr, exe_rf_wdata} = EXE_rf;

    assign conflict_r1_wb = (|rf_raddr1) & (rf_raddr1 == wb_rf_waddr) & wb_rf_we;
    assign conflict_r2_wb = (|rf_raddr2) & (rf_raddr2 == wb_rf_waddr) & wb_rf_we;
    assign conflict_r1_mem = (|rf_raddr1) & (rf_raddr1 == mem_rf_waddr) & mem_rf_we;
    assign conflict_r2_mem = (|rf_raddr2) & (rf_raddr2 == mem_rf_waddr) & mem_rf_we;
    assign conflict_r1_exe = (|rf_raddr1) & (rf_raddr1 == exe_rf_waddr) & exe_rf_we;
    assign conflict_r2_exe = (|rf_raddr2) & (rf_raddr2 == exe_rf_waddr) & exe_rf_we;
    assign need_r1         = ~src1_is_pc & (|alu_op);
    assign need_r2         = ~src2_is_imm & (|alu_op);
    // 数据冲突时处理有优先级
    assign rj_value  =  conflict_r1_exe ? exe_rf_wdata:
                        conflict_r1_mem ? mem_rf_wdata:
                        conflict_r1_wb  ? wb_rf_wdata : rf_rdata1; 
    assign rkd_value =  conflict_r2_exe ? exe_rf_wdata:
                        conflict_r2_mem ? mem_rf_wdata:
                        conflict_r2_wb  ? wb_rf_wdata : rf_rdata2;
                        
    /*----------------------csr control------------------*/

    assign id_csr_re = inst_csrrd | inst_csrwr | inst_csrxchg;
    assign id_csr_we = inst_csrwr | inst_csrxchg;
    assign id_csr_num = inst[23:10];
    assign id_csr_wvalue = rkd_value;
    assign id_csr_wmask = {32{inst_csrxchg}} & rj_value | {32{inst_csrwr}};


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
                        inst_bge || inst_bltu || inst_bgeu) ? (ID_pc + br_offs) :
                                                       /*inst_jirl*/ (rj_value + jirl_offs);

    /*--------------------ID_EXE buffer-----------------*/
    assign ID_rf = {rf_we,rf_waddr};
    assign ID_mem = {mem_we,res_from_mem,rkd_value};
    assign ID_alu = {alu_op,alu_src2,alu_src1};
    assign ID_inst = {inst_st_h,inst_st_b,inst_st_w,inst_ld_hu,inst_ld_bu,inst_ld_h,inst_ld_b,inst_ld_w};
    assign ID_except = {id_csr_num, id_csr_wmask, id_csr_wvalue, inst_syscall, inst_ertn, id_csr_we};

endmodule