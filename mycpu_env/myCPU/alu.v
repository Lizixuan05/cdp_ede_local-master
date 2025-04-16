module alu(
  input  wire        clk,
  input  wire        rst,
  input  wire [18:0] alu_op,
  input  wire [31:0] alu_src1,
  input  wire [31:0] alu_src2,
  output wire [31:0] alu_result,

  input  wire        es_valid,
  input  wire        es_ready_go,
  input  wire        ms_allowin,

  output wire        alu_complete
);

wire op_add;   //add operation
wire op_sub;   //sub operation
wire op_slt;   //signed compared and set less than
wire op_sltu;  //unsigned compared and set less than
wire op_and;   //bitwise and
wire op_nor;   //bitwise nor
wire op_or;    //bitwise or
wire op_xor;   //bitwise xor
wire op_sll;   //logic left shift
wire op_srl;   //logic right shift
wire op_sra;   //arithmetic right shift
wire op_lui;   //Load Upper Immediate
wire op_mul;   //multiply
wire op_mulh;  //multiply high
wire op_mulhu; //multiply high unsigned
wire op_div;   //divide
wire op_divu;  //divide unsigned
wire op_mod;   //modulus
wire op_modu; //modulus unsigned

// control code decomposition
assign op_add  = alu_op[ 0];
assign op_sub  = alu_op[ 1];
assign op_slt  = alu_op[ 2];
assign op_sltu = alu_op[ 3];
assign op_and  = alu_op[ 4];
assign op_nor  = alu_op[ 5];
assign op_or   = alu_op[ 6];
assign op_xor  = alu_op[ 7];
assign op_sll  = alu_op[ 8];
assign op_srl  = alu_op[ 9];
assign op_sra  = alu_op[10];
assign op_lui  = alu_op[11];
assign op_mul  = alu_op[12];
assign op_mulh = alu_op[13];
assign op_mulhu= alu_op[14];
assign op_div  = alu_op[15];
assign op_divu = alu_op[16];
assign op_mod  = alu_op[17];
assign op_modu = alu_op[18];

wire [31:0] add_sub_result;
wire [31:0] slt_result;
wire [31:0] sltu_result;
wire [31:0] and_result;
wire [31:0] nor_result;
wire [31:0] or_result;
wire [31:0] xor_result;
wire [31:0] lui_result;
wire [31:0] sll_result;
wire [63:0] sr64_result;
wire [31:0] sr_result;
wire [31:0] mul_result;
wire [31:0] mulh_result;
wire [31:0] mulhu_result;
wire [31:0] div_result;
wire [31:0] divu_result;
wire [31:0] mod_result;
wire [31:0] modu_result;


// 32-bit adder
wire [31:0] adder_a;
wire [31:0] adder_b;
wire        adder_cin;
wire [31:0] adder_result;
wire        adder_cout;

assign adder_a   = alu_src1;
assign adder_b   = (op_sub | op_slt | op_sltu) ? ~alu_src2 : alu_src2;  //src1 - src2 rj-rk
assign adder_cin = (op_sub | op_slt | op_sltu) ? 1'b1      : 1'b0;
assign {adder_cout, adder_result} = adder_a + adder_b + adder_cin;

// ADD, SUB result
assign add_sub_result = adder_result;

// SLT result
assign slt_result[31:1] = 31'b0;   //rj < rk 1
assign slt_result[0]    = (alu_src1[31] & ~alu_src2[31])
                        | ((alu_src1[31] ~^ alu_src2[31]) & adder_result[31]);

// SLTU result
assign sltu_result[31:1] = 31'b0;
assign sltu_result[0]    = ~adder_cout;

// bitwise operation
assign and_result = alu_src1 & alu_src2;
assign or_result  = alu_src1 | alu_src2;
assign nor_result = ~or_result;
assign xor_result = alu_src1 ^ alu_src2;
assign lui_result = alu_src2;

// SLL result
assign sll_result = alu_src1 << alu_src2[4:0];   //rj << i5

// SRL, SRA result
assign sr64_result = {{32{op_sra & alu_src1[31]}}, alu_src1[31:0]} >> alu_src2[4:0]; //rj >> i5

assign sr_result   = sr64_result[31:0];

// MUL
wire [32:0] mul_src1,mul_src2;
wire [65:0] signed_prod;

assign mul_src1 = {op_mulh & alu_src1[31],alu_src1};
assign mul_src2 = {op_mulh & alu_src2[31],alu_src2};
assign signed_prod = $signed(mul_src1) * $signed(mul_src2);
assign mul_result = signed_prod[31:0];
assign mulh_result = signed_prod[63:32];
assign mulhu_result = signed_prod[63:32];

// DIV, MOD
// reg  divs_ready;
// reg  divs_divisor_tvalid;
// wire divs_divisor_tready;
// reg  divs_dividend_tvalid;
// wire divs_dividend_tready;
// wire divs_dout_tvalid;
// wire [63:0] divs_dout_tdata;

// always @(posedge clk) begin
//   if (rst) begin
//     divs_ready <= 1'b1;
//     divs_divisor_tvalid <= 1'b0;
//     divs_dividend_tvalid <= 1'b0;
//   end
//   else if ((op_div | op_mod) & divs_ready) begin
//     divs_divisor_tvalid <= 1'b1;
//     divs_dividend_tvalid <= 1'b1;
//   end
//   else if (divs_divisor_tready & divs_divisor_tvalid & divs_dividend_tready & divs_dividend_tvalid) begin
//     divs_divisor_tvalid <= 1'b0;
//     divs_dividend_tvalid <= 1'b0;
//     divs_ready <= 1'b0;
//   end
//   else if (divs_dout_tvalid) begin
//     divs_ready <= 1'b1;
//   end
//   else begin
//     divs_divisor_tvalid <= divs_divisor_tvalid;
//     divs_dividend_tvalid <= divs_dividend_tvalid;
//     divs_ready <= divs_ready;
//   end
// end

// my_div_s  my_div_s_inst (
//     .aclk(clk),
//     .s_axis_divisor_tvalid(divs_divisor_tvalid),
//     .s_axis_divisor_tready(divs_divisor_tready),
//     .s_axis_divisor_tdata(alu_src2),
//     .s_axis_dividend_tvalid(divs_dividend_tvalid),
//     .s_axis_dividend_tready(divs_dividend_tready),
//     .s_axis_dividend_tdata(alu_src1),
//     .m_axis_dout_tvalid(divs_dout_tvalid),
//     .m_axis_dout_tdata(divs_dout_tdata)
//   );

// // DIVU, MODU
// reg  divu_ready;
// reg  divu_divisor_tvalid;
// wire divu_divisor_tready;
// reg  divu_dividend_tvalid;
// wire divu_dividend_tready;
// wire divu_dout_tvalid;
// wire [63:0] divu_dout_tdata;



// always @(posedge clk) begin
//   if (rst) begin
//     divu_ready <= 1'b1;
//     divu_divisor_tvalid <= 1'b0;
//     divu_dividend_tvalid <= 1'b0;
//   end
//   else if ((op_divu | op_modu) & divu_ready) begin
//     divu_divisor_tvalid <= 1'b1;
//     divu_dividend_tvalid <= 1'b1;
//   end
//   else if (divu_divisor_tready & divu_divisor_tvalid & divu_dividend_tready & divu_dividend_tvalid) begin
//     divu_divisor_tvalid <= 1'b0;
//     divu_dividend_tvalid <= 1'b0;
//     divu_ready <= 1'b0;
//   end
//   else if (divu_dout_tvalid) begin
//     divu_ready <= 1'b1;
//   end
//   else begin
//     divu_divisor_tvalid <= divu_divisor_tvalid;
//     divu_dividend_tvalid <= divu_dividend_tvalid;
//     divu_ready <= divu_ready;
//   end
// end

// my_div_u  my_div_u_inst (
//     .aclk(clk),
//     .s_axis_divisor_tvalid(divu_divisor_tvalid),
//     .s_axis_divisor_tready(divu_divisor_tready),
//     .s_axis_divisor_tdata(alu_src2),
//     .s_axis_dividend_tvalid(divu_dividend_tvalid),
//     .s_axis_dividend_tready(divu_dividend_tready),
//     .s_axis_dividend_tdata(alu_src1),
//     .m_axis_dout_tvalid(divu_dout_tvalid),
//     .m_axis_dout_tdata(divu_dout_tdata)
//   );


// Div & Divu
  wire [31:0] divider_dividend;
  wire [31:0] divider_divisor;
  wire [63:0] unsigned_divider_res;
  wire [63:0] signed_divider_res;
  
  assign divider_dividend = alu_src1;
  assign divider_divisor  = alu_src2;
  
  wire unsigned_dividend_tready;
  wire unsigned_dividend_tvalid;
  wire unsigned_divisor_tready;
  wire unsigned_divisor_tvalid;
  wire unsigned_dout_tvalid;
  
  wire signed_dividend_tready;
  wire signed_dividend_tvalid;
  wire signed_divisor_tready;
  wire signed_divisor_tvalid;
  wire signed_dout_tvalid;
  
my_div_u u_unsigned_divider (
      .aclk                   (clk),
      .s_axis_dividend_tdata  (divider_dividend),
      .s_axis_dividend_tready (unsigned_dividend_tready),
      .s_axis_dividend_tvalid (unsigned_dividend_tvalid),
      .s_axis_divisor_tdata   (divider_divisor),
      .s_axis_divisor_tready  (unsigned_divisor_tready),
      .s_axis_divisor_tvalid  (unsigned_divisor_tvalid),
      .m_axis_dout_tdata      (unsigned_divider_res),
      .m_axis_dout_tvalid     (unsigned_dout_tvalid)
  );
  
my_div_s u_signed_divider (
      .aclk                   (clk),
      .s_axis_dividend_tdata  (divider_dividend),
      .s_axis_dividend_tready (signed_dividend_tready),
      .s_axis_dividend_tvalid (signed_dividend_tvalid),
      .s_axis_divisor_tdata   (divider_divisor),
      .s_axis_divisor_tready  (signed_divisor_tready),
      .s_axis_divisor_tvalid  (signed_divisor_tvalid),
      .m_axis_dout_tdata      (signed_divider_res),
      .m_axis_dout_tvalid     (signed_dout_tvalid)
  );
  
  // Divider status control
  reg  unsigned_dividend_sent;
  reg  unsigned_divisor_sent;
  reg  unsigned_divider_done;
  
  assign unsigned_dividend_tvalid = es_valid && (op_divu | op_modu) && !unsigned_dividend_sent;
  assign unsigned_divisor_tvalid = es_valid && (op_divu | op_modu) && !unsigned_divisor_sent;
  
  always @ (posedge clk) begin
      if (rst) begin
          unsigned_dividend_sent <= 1'b0;
      end else if (unsigned_dividend_tready && unsigned_dividend_tvalid) begin
          unsigned_dividend_sent <= 1'b1;
      end else if (es_ready_go && ms_allowin) begin
          unsigned_dividend_sent <= 1'b0;
      end
      
      if (rst) begin
          unsigned_divisor_sent <= 1'b0;
      end else if (unsigned_divisor_tready && unsigned_divisor_tvalid) begin
          unsigned_divisor_sent <= 1'b1;
      end else if (es_ready_go && ms_allowin) begin
          unsigned_divisor_sent <= 1'b0;
      end
  
      if (rst) begin
          unsigned_divider_done <= 1'b0;
      end else if (es_ready_go && !ms_allowin) begin
          unsigned_divider_done <= 1'b1;
      end else if (ms_allowin) begin
          unsigned_divider_done <= 1'b0;
      end
  end
  
  reg  signed_dividend_sent;
  reg  signed_divisor_sent;
  reg  signed_divider_done;
  
  assign signed_dividend_tvalid = es_valid && (op_div | op_mod) && !signed_dividend_sent;
  assign signed_divisor_tvalid = es_valid && (op_div | op_mod) && !signed_divisor_sent;
  
  always @ (posedge clk) begin
      if (rst) begin
          signed_dividend_sent <= 1'b0;
      end else if (signed_dividend_tready && signed_dividend_tvalid) begin
          signed_dividend_sent <= 1'b1;
      end else if (es_ready_go && ms_allowin) begin
          signed_dividend_sent <= 1'b0;
      end
      
      if (rst) begin
          signed_divisor_sent <= 1'b0;
      end else if (signed_divisor_tready && signed_divisor_tvalid) begin
          signed_divisor_sent <= 1'b1;
      end else if (es_ready_go && ms_allowin) begin
          signed_divisor_sent <= 1'b0;
      end
  
      if (rst) begin
          signed_divider_done <= 1'b0;
      end else if (es_ready_go && !ms_allowin) begin
          signed_divider_done <= 1'b1;
      end else if (ms_allowin) begin
          signed_divider_done <= 1'b0;
      end
  end


// final result mux
assign alu_result = ({32{op_add|op_sub}} & add_sub_result)
                  | ({32{op_slt       }} & slt_result)
                  | ({32{op_sltu      }} & sltu_result)
                  | ({32{op_and       }} & and_result)
                  | ({32{op_nor       }} & nor_result)
                  | ({32{op_or        }} & or_result)
                  | ({32{op_xor       }} & xor_result)
                  | ({32{op_lui       }} & lui_result)
                  | ({32{op_sll       }} & sll_result)
                  | ({32{op_srl|op_sra}} & sr_result)
                  | ({32{op_mul       }} & mul_result)
                  | ({32{op_mulh      }} & mulh_result)
                  | ({32{op_mulhu     }} & mulhu_result)
                  | ({32{op_div       }} & signed_divider_res[63:32])
                  | ({32{op_divu      }} & unsigned_divider_res[63:32])
                  | ({32{op_mod       }} & signed_divider_res[31:0])
                  | ({32{op_modu      }} & unsigned_divider_res[31:0]);

assign alu_complete = op_div | op_divu | op_mod | op_modu ? 
                      signed_dout_tvalid | unsigned_dout_tvalid : 1'b1 ;

endmodule
