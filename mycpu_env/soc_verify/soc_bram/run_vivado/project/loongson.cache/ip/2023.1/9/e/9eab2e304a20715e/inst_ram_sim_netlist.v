// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Apr 16 12:33:31 2025
// Host        : LAPTOP-EH5L1GAH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_ram_sim_netlist.v
// Design      : inst_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_ram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.361527 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19472)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
