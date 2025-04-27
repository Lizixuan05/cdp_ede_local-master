// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Apr 23 20:51:23 2025
// Host        : LAPTOP-EH5L1GAH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TAG_RAM_sim_netlist.v
// Design      : TAG_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TAG_RAM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [20:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [20:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [20:0]dina;
  wire [20:0]douta;
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
  wire [20:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [20:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.926807 mW" *) 
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
  (* C_INIT_FILE = "TAG_RAM.mem" *) 
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
  (* C_READ_WIDTH_A = "21" *) 
  (* C_READ_WIDTH_B = "21" *) 
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
  (* C_WRITE_WIDTH_A = "21" *) 
  (* C_WRITE_WIDTH_B = "21" *) 
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
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[20:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[20:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
OaMF8rkgKnBelwbo+c6SElSu0V/0l13+Sw==
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
