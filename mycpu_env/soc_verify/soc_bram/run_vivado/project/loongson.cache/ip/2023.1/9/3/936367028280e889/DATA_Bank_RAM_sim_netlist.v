// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Apr 23 20:50:15 2025
// Host        : LAPTOP-EH5L1GAH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DATA_Bank_RAM_sim_netlist.v
// Design      : DATA_Bank_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DATA_Bank_RAM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
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
  (* C_HAS_ENA = "0" *) 
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
  (* C_INIT_FILE = "DATA_Bank_RAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
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
