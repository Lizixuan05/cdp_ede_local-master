// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Apr 23 20:50:17 2025
// Host        : LAPTOP-EH5L1GAH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_bram/run_vivado/project/loongson.gen/sources_1/ip/DATA_Bank_RAM/DATA_Bank_RAM_sim_netlist.v
// Design      : DATA_Bank_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DATA_Bank_RAM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module DATA_Bank_RAM
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
  DATA_Bank_RAM_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19456)
`pragma protect data_block
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
KBnIGskOdtcIxfC9bCRxoz00Jg==
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
