// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Apr 23 20:51:24 2025
// Host        : LAPTOP-EH5L1GAH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/nscscc/cdp_ede_local-master/mycpu_env/soc_verify/soc_bram/run_vivado/project/loongson.gen/sources_1/ip/TAG_RAM/TAG_RAM_sim_netlist.v
// Design      : TAG_RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TAG_RAM,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module TAG_RAM
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
  TAG_RAM_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19952)
`pragma protect data_block
MVHPonhnPrGsva0ZRVOb7tkyzLAclwmN8rqAscrhoqbN73hh+OTuxfeW5Ryf+DtYQqF6Qw9kIWy3
frKBVpIq0wGW8B+2e7c+OK8baWruCATzrZOcQnjvkXSgnxxTwlav2ioQAK2cHQMf0kxQQOKhaJ+r
IKTZ8eTby9O7Im7NcRdk8mb5NNjJA6uHuglpv3tGFX8Vjxrg8TqyLMjFAbTeU0Ow5td4pMxNmcEO
7lDHRyq5JNdTCYHFD3h0q07CIDzpS7jL71FzgPcElXveST46OufKl29YdKHcWRvgAU+E0VpcwZ7f
yYb2Jol7xl0ObXDg40lQptZ8pbzuOb6V/XTSAYuxWr1ztMSeeQ8Nlj7vhVEz3R9nIDLTbQ+X4kOU
QgQIAKC1BCZIpfxTJy/wXAC8aaRcGJIOLHIpdkFjZUAeBxVG0gAfOM1PkmpAUvEFJ3bXqMV6x2zr
pJLQVkJfSN2EzFQ8YqIpvVeGzqDvgw7FBsoxMxtFpcQajD3g9WZ6eV7i4LzWYV8MzZrktAU749Us
E8hVxWs2NAqoo2fiR1CxNFsoKI7SCYalF9Tlgr2EJ1Z6MF8FxfCJ77ilHw8VclCYyqxAQFq8aXMB
bTPJp0R6g5E80P1Q3r0mQfmfX8V4QvLwlk9P2nQ+I0+vf905pRsJqDSHySQDHUYAhwzS7Kwm78lg
eb5drcsr/UvXCvOwy40pL6dVQU8jSCS5zxIEwvUl3NJSJq75stcn+0BPvceEiIz7h8zOPc4vXmcb
Lvl4Qv+gP3ABHJMkG5Bnw/afFuz/qywS5uvLlFnC1w69ijQxijXIJ/hmYbP60u5ahixx6BOM6qaw
pW0AqdjvZ1M970JWI8oIDFQCmv4F8U35jj/tDUIym9D1TlQA6AC+jiz+lz0eQsjfTKgFD2UaTvCt
0kImgae+D9p22GKpmXZYnVhMMAcok5wOzN4e9PucsNbdSItp2VuqjEgfWLSYNxkcwfiN0Tik3pTl
uL+2pJnNB/6Lcn8HK/oEoW5hYS7Z8axJ56C0tXy3LEwR3zO2PyvRp4U3+G29EXjRTCTuCVTahxT4
s2+Vfbf0oCygiv8k3i2T6tzCfle84uOJsxTot8AeB37s5Cctq9H5mwSuglFGhvjHrwJA4ALizYws
hM3wqYvj3sFi81E8inlgPj2ykbxreRT5g8xtEr7aUEUr23hmt2kqVEPXeCH4ZngIUVBMCRyyFvOg
Xy4ay7OLGqiZoLcWM3DiNcxph4jVAwvbeR4BsFhjCxgfYxBqaGCDJogX9sA9s/uCTJ3XQf5b7RMz
/t9gjZZB8/3afMeWyln4YPzOss5gG+lE7YmescTZIF2u+9rL/hmKSKr622AxtjzpXGcUAt+x2ccd
rUfVVOgc3dBt+XBKgVsIcStyVfXdnBXnBWIyBzcStOmps0u4IB4k7ZudrrMgDsRslSsIX1qS9WdO
qCyku62mrp9Jv0ZPlJ3PQTBp+tY+0ZKnrfMai/9TSILT/3pGCGTe723vkXgdHCZvtbwChoOusKXN
y3Y39RzlJJErG9S44PJBJ+WYVIfpcucjdeK7/GdOPTfIjyc3l+H47xyR2WRWc1nVHX6XVnPF6XST
maicELfKDE78DTqwSXEFwK6DwyHaQaIX5p7ij4ULNs8YbWUtGSkTpc5AQ1IsX+iP2jWjaeytfMwN
yJWDbw0n11eH16uIywvHolWMWBKd2gHqbhD3vPa2dnBY1OUUgN6PozKAnVnPo3ObD/99zZvYLPB9
wLa8KHWuwmAcSags3Z4uPyNd7Qpy9d52FH+QrO8GD83Xb95pw2V+l8GDnpRaHbXbx3hcwKCEM6hb
BY+JPcBV/RNAK4nEliZbFvDqcVzNhzKACi6wUY4pn01IbbKxJhr8kry5VU9pRIXcWHbiFv9RBD5Y
XThSpGQcQqKhSRLr3cUIxhWucFzKbln54a2b8G66kmWI/7WR4d1iH99LGatz9RUXNmzCW7rlAAq7
b+G6GZCFMivW+ZbjmOZhg+wThQ5g8f0WNq622gtL6Fq+g8n7lvoa4HBAyptMUnBuGYnumGjboSv8
xjwULuBgOWJ3MR2+6vzatJxtlSGTp1cREWK02QRiecndEguOGnBBR6/AsNcqqrr3mjINQ9EfPjPS
byYF05yHk91Bd+Dv9iwDqJTbHbOlP68+LtWXlFHBLCJnD6eXyDTqDMHV7YyMc/amON7SsTtyCxoO
niQIG+xeAwZUdayguocR8L+H4aXWVsS3LD6Fh++UPHueoBLsmhS7EIqPyHfZeCx4mTgdmV2iJ/US
SiHukx7D2KrOfB23SV+DNxCaJWT1uPPQlFPulkvw35O0L1W++7NYIpn9v19z1uj1+RGvqGXKLEPC
2B9l97o0p0XKq/c+bvzTXBOjFvc6RsZv3kwYL4pNklmMUf4a+HDwR+ZA3nDKuYnPWSxwY6HtIwHj
oKhNXo+cRnttzfCX/s2IE9HYCFnRwT6867JdNPMWZ2/Nf3VMfmPzFwXyfEMq3gMbyJTOqdE6MU90
jByYOK0I5BkwQakcfHnnn2z6U+VWztGuZuVG3ec+JgvaEwzceWnnekf1TMd+apr+UySwm+mYhjxY
Tra2fy9vY3fMabx90ZZE8FfY/Mp+SBlNstmzXBbQwvXKHt0vFge7ebYjWWpDYKr/EV+QIprjZ4j1
Geoq/4/v3ebqSR5beQq6dgtHOHIkCHfqPTGBGFaJgtqHQg2GYUaCD1MjXX3PKDQkSvNPUvJR90F7
ahRQQ7KHtAFlVN9Iapr+CwKZfl+/B6yxjnp59ARJkJxr8kuZF6mEhRVVewdKOoNm97ZRU7FBAd5J
CTkL4qGCiqfufNwLoGaUNL6H8r/svHWMYsPAAKvaY84PO6Cehvu8Ho7F4QL5s7IUjGnAJxm1Tsg7
ypcney3/8DOMigkvZUSsAAntxIZY3nT6EM9dxHK9suNQJu/ufH5p8q5oWAfvrnV3rgNMrEosTCP8
rchu5Hl7OGQVJzeJheSj0xAdDvIIzmPHkHgNV5b6jpSPxoLcQGD56BzLYQbBvE1rj6dWA0osA41C
DSkCD1lkLi0np6RUsIiMTml0/Tw/UhOMqKDFp9WEGXlS8H0XImvYYmaw3Xlsasi9gQfR0P4iRd58
NL+zcN7WjcBj2nAxFIhO8y5778XYRLGnExMonTFTHDV8mMwAmcov5a102dbXh1Vi/e1BHWOBLAzP
NnA13rqTVSDF9MIV4BGfkFm/7RAJZXBhURmO3ylcxNhBNDjfxBX9fCm2FccUMbEWE4EcLUjQXRWs
jxTGC3cpXP6qvgmYxrcUQquOYCd2AsfIUlvhHsELnL6xe0lYYCRJojd8t6CJkrlp+BYr/ueRRZ2y
trcG9lPgH+4eG5O7FIjzZwpJJolR/Pt+6mpJ9rYxZRbfdez3EoVqYve+0i+/82OgXc9Jm1+F1ybr
eyZ0tb0nm/LtyKNYPpCej+DcXpGiw0GeqTNWtXXb+IBkTkMc/Vd6P2hBxSsm5k3XP9lobvu29VFR
YUzGenXNljkNFiOoTh1GbY7kjS7kGaxPDvlubj+leva5WCaHcn3AwZGzxIva0rDzDVDq8NFQAu3B
Ml/zcC4HgrhB8eo3Q/ZBroxk/rEkolFx8p1TtFLvtIptwXTrFW0sXNfBY5dFEbqPShaWkeRAWHGz
4Gsjyzl5tUsKCZ2X9zPS6VwhHzkIz6Mw5WOXc8v+mp1tjibWZInMyXP8p6STKGAFrIzuUP4VQaiE
ic0tFzi/BjTfOmVPz3HXbi2tT843SLDrJ5goOsnsz0SGjIY3m+9UcaJfFpbrnZFGBiRgIAC3SNob
LGJQ/3Zuqjw5kgBRBsthaYyYxfcu9f64t9VPLJ0hFezoKwjbpxOaypeykRMML7fx6aGFIlNFjLMO
qqoAte+xbuNoRE5KLa6x5ADTJ+aTHbSmbVk0oL2BiNEl/zgJfEqYwH5scqbmkMFoaKmWybMZupaj
FLZpV89vUSHQoPYfGJEF9IkPqJRYTzJodWyELloWfY6Yd8jxkcw+gparCPXC/2jv0ZbRFgP2nItX
00joxdjsr3SC7iz6nr8vAWRHmgI1aii2lpXsRSqvyQZ8/9PwLdXTyHVVCqDl0HTXL6fstwyNY81Q
xQfhTxNHRPZqrkzr5R5lUbLzmMGiTZfbldamlXJc/9iH4IIsmJIaBsDiqgyN3j+cXDtIVtf/EdMt
4claC9T051CkjYWUIGOTeSnINCDjzwwP3vSJONcMZvNaPMNrsMLCzPua1fAWiJ7bcZvL23FizS/3
hnnXqXUo75cH//R8xLhI2uKwjgrO7ums9kvO7o0G2KivIL0/7vmABN2eRz9OoVIplQX4g70bGFVZ
HaWyT+rNcxOT5YPMcNA3YlXhKwmJpOPztnkH3lh6E+F6CIP7pAQsC3RsCcDZo0E5+L1AaAOEfQFm
0OvvqDtfu9IdhFUOPaJ+ZDydrWd3SQv5wo2315jQjFrUHw5ER4p5/caj58hnh1B/dKhL71sEo3Rl
7dJMKV/rUIn4Fd1g7TbhEziKR0YyyaNBQNNK4wEpPng5A8SpjxMwqDEcn9edPmTUkoxKgD9UDD0K
kG2yhFt1OIQTdLrA8KcLXCDVdbaR/l3dGHPu1MijEvUKQPtdsMjDla6zO73XHgiFzdm+IS/dHaAU
WYfKuLgS80Sh49SN7b9a1NF3iHcQfb2sMYdOQ/UIKKJRE08n1wckPWxK0BT27PYSGginJzdW/Sgj
tsUp0FzKOROzxQ/gBn4KSCMiu+fITZapQ4Y2BZdfKtb4xng6luTqx8FvgJcBd+3yVjZR5YTL1Ef4
L65xdI66HgbG4LtlnDOlGYh4zpLMF/sjWOIFptXsFaIUNk/SNV/KHBc7iTGlwJdkgvXZs2fX8/Dt
CwTF1wtvr1l34TNbMCxPqrql9smETwnWkORG5C22tD4m87dn64parTsxT2kmNIitgsYbt1+bkFPO
LAKOv+IQUUx6mOQQX3WnAQpXTh5JNnnn73z9kJ5pCCW4U/92WizWySD/aPBkYL4+uzUAUdTRiynI
mcbO1+kQ0PEz4c2/0AC4MrKtEpkk5ooK3xjpDwru2DyoKrwCu72wbShpAdMfBRSflORl6BQOskuw
NP3DIx+1KiQGXHH1g5u7dW8yfhMdVCdJysK3xTFMz3jblEXdinJcFLpEARhJlcufpEcW5vEQomPe
vG0mwVvGrGGmclnx9OQtLSJbrcgXuSGRWr77ltDTRZrjB/WTYTz4Cef5pmVDldZjy8VuoU4ye4TU
9iaXYyXYIjaQYzszb13AvascmTLCYek7+OjcnU9uPpad1cjaUuDm4nQQLZfa/qKMf4bq9pZkuzms
6Nugen62o/wGmAkjOIE6OKrlAsAWmsgDlyIlfzCSBLX0DU1a8nX5xEEATeh0o5PoZ9qybwmz12Jf
mOpFrhOC/wcpSvFCtrnoHfPdyNpzfdQefx784I6HX4JqpRtB+Z+SeUSs8r2SfXUR74TFR6XXPCWv
5gdhV9C+pqoda/ki3VJdSjQBw+qaecN0K8IbZBr2QQdBrQcxmRD7hTO+knsIM0k4f9gh+UD1sUCW
vsENoI5uq4WAzwnx+bsdWFQTCMKAeOUrpjvII13tMuwWLxcvFUlRiwOajgqXZlDSmqev4DiLxPqB
A2StCMQD6xIiRhQBZRev0nxwoPRWh5heGAm+SBXgTv+hX93rqeSaPJZnLmfQ8HoRPWJDvmXN4m0u
g0+lX31uultg5nEKXzubjjFvyGmqsOstLliVwCXo3rNBO2sanKrAM0ikbLzbhNj7WDcxFD6ZrgdB
ZI4rr9slO4fmTvBrxIaJlniNUefMxP2zAcU/15TfYVqK2JvSGkND7VRryHJjnj/PKq0NQGV8E3Fd
9pdZrY1+14dGaBI6J48Sn78e7nfp0dI/b7RE8bFhLVtXUhQgJRJd9gL5HKeHuwDRTpeqa+PB+y+c
5XIzMEhZtQqjB24GWTBH+ILrS69D55zRIs0oKH6/3XvWXUODnMVjtwKb0srMSMy6IAZ8+p6gR4bu
tUdE6aesiUjqrTk74LEdHjtC3QA7GDWNieAgw2HRfGs9YSWopKSQRZhrAgWWKJtnJjI50bnkZRyj
ogdWPcCeXqB75nWcVwWFe94SJKwW1glv3ld7MMrkSRonacKpDhvw8kQ15RKSBq6sj3Vwj8rDOAOx
h+WzsVlgFy9QT3fkvqyzFXxlAFrPxHCRMfxqox0Km96KPocYwpqZU3wr+51kYWBOATTZzkdIEyGF
eCgaCap02JrzAxjsArVZ6bma6w5medP0P9rN6JKCb3yhrCXitUr1h3/LXtaYFFufY9fpmJF33c2E
jCy0RRyr9R2x8Bi4vEh5/LfKh7WNQvorNW1GAiFsNBOzPbrTnP++Ah7rRm+ihk9vrF/eQEUfufry
XEz1pFwI79tCIrGwNjfS7laCCpKG+HTxb5+ywdy7KGrSEitPeV7SJGQ/ObjnbTFFLzZVksPtkl2+
aFuDfswsDnnr5Oxik9Wht5GyS9BU+30XpYMzEyp0a3+t96lrPYHu1mp7WIDOlCCen2VOqI313q8C
RWaUM7/6PklInbL/v60qzWIW7KXHRNSe1KujVr/+oX9ujugV/FYqR3ZeGkE0xb3u7neA98dRtta8
s2J+JDTeOMjO+bQh1UyOkAEO36f2N5fgmFq/3heV1DdsLLdzbpihHCj7NfdKqDJ93FM/nM+kQ7Oq
70TnsvlJ7HiHSYi6jAAgPgBvZIaHiavfkZVfgnvvhl4Ja4XBXXW7UjVCgbQJ/9RklIfjN05UH6xN
fmZYbpBHSqQuaa5Igt8zGTT3gpLwaxEhmE4zLl9wmyzjXb5p2f0BAU0E5fnEli8iLKwtykEeSlVq
uRf+4B5wKM1UEsYtZ7WqCdow7qM1bUSjxcp6yPZtR+h0xkiSaW2TdAFJWc5Lmynu9nIpc5ExMi1q
brvyun1lJpGXDVZBz/sfexW3119UgsoyQaaUs/2x2gGDwaZNuM3uJi4foSh5WTF5KjGYns9jivaL
lpS0MRQSfpE5XbkiNRobCs2d9nwTngzl3UTWymGpFE11VUxn7nV7/LE5lV70ITwos+usVwtkB4/X
DP7ktilYVubBMpmf/o0xhBstZu+Nozi56/gEVUrqmRLy6regJsYDg7tbtDiSAizMK5GiKJIxh7mI
U3rghxyvLUBpAsYKQIWG0N0L42DcGo1siWoE0OcX7ZVDvMLlaOTpB1MZdGrtMn8Lm7CM19aSPG1J
eHm1FQWF0nJgY3f6b2SbOlMjeQQ51+wGToSOsXz9Mi0rpuoopu9tig1Z6Xpbs1BPA+621eD3yToJ
MTrTmTtnCBxy+k4x248kE2kOnp0H0pLe3T8PfVTt9xM3cx8dKe06iNcBZ0Da4VmcSWKJw48Vfp1s
pPbDm2Ey6x7G6j6jrHuXzFZitxbYNZGyHUg3gPl9jQcRn5fMlGAc322ZdFcFDECVwoBEWU1CVqX9
eU2J2OVCKXAg6mpL45fEyES1UKSa1hpP/MqpHFSdbfbzWBQhbwT8Iw3M45R9TtEkACxjbSotr7Al
eyLIFKJGxc3A+nBAI8O5JZdaslkV1YNsGQPvQU5ZQ6BwsuzFD4UfqTLL2GVKre2yFGH/LYOWhrei
mai/STlTYlCRymiNtjUqo15PqqkI7Jvv3WmzRAlnNOy/nHWvG2LZuNuJmTzs1a9ODm9we/ce6Sjq
3eeN4t+qT8P53lDEh4a4FGoiSQSIMba2sfbqwbVJNGbVpQczoahgN68FwVOnPJBxg2vt+0EMY+UD
8g/U7R7Sx8qix+lt0bURZpxENqfnjofjbj1wMIOWWRVn804fFlCi2sHq2ByP0MVch25ciC29j510
7YmJ1TCAKF8lPZeSYCdQOhYpbD44bTm2W5El2I19F+lcD+6MSkxZ6BNWk4ZlBiuZt4XklfNgwN5g
w+pI3MKfo821F6k2Ix7PHLafqu3sGSXh+bjn2meTC2NS4Y9HRco3lHoX6Xjq3dEv58zO98WuTHTL
acaNnljfIIFWUMqDgubRkqpR15E2TPGqXAK/Ggxep1frNpMBSb9kAVxTm5AIdjzd/CUfe/uzTExL
6WynYqqLNV84h2J7AePZknrvTmh0Zpnex5frbywtf+aDUNwMcwrtOElRRaYaw/c2F7hDDXFcvvWm
bAsOIn1QXRgz8NREr2sUGaUuaqqWAlVfmzXOUCM26QLWUCbMOGKytS38VBFOdgW4bEWHJj1xq0Ev
2WJgbSTdmtgQfsW2ja+DQxSJ5Jt0RRzC5aeZxukndz+DIRpc7NzQsET2IohgkZVZHFFySgs3T/kE
yrLM+yDg4DhZOQwwufKB+2yCK/8pv+7CGPT5YH+zcoHZL34KY1Ien4ED4p6VVfi0re3ZnNBooCOP
ldnZG4+oLdqOgloP+eUyHi/Cs7Bx7i50K2lWXOHhi0VicEuwrgkvgPd88RjDRabdaXWYYb3CbYd5
I6WFU+xGVoXw6KNUIxVB3q3a7OgF3+F3FfKTv/8qA0hJBUy2lAUzDKlAP6BswtBT37+9pBYLDPO9
NyTy5jHYs7Xk2kRUMjofDBJwHDAFq6yZ8aKh1XQdwLe4GIPMjId8aqYcisuFFkB0d0PhYank9Mh2
dYp02fWC1Wy8mCMCYUzFfBvVtQINB4qRQDDVPKDWG+7/G+tlD+9sOSgM8rjtOeuAMMh6oc1DBmUQ
EUnNEtHsejVlOHK2J8/PcsYtQCK1khKcZi6L0M0G/oZqKkUHmjck+/h3hCKjh6QQ724sNZ6473r4
wHfVQaRsB4rkoqjI2odfvwkRO/e9SPxecOK93FpFdg5V4me2XGB9CW1lI9/T1+ifMaJv/TwZp/Ep
XTO7+dA4twkMVahAdIOwf1OBF+XaSoWnMD0Xyf0THIyf8tfAIeIzbG4oDaXdOR7YVAXSW6kvur4/
Z7F9Hab8byrPRnaojcfHUhR8ZIGRioD5J8+LxMqUrvjmDwk4WZ4KeNy39wVeImuxXFINv8Cn/CEX
UPji4gmBT1ocYbB7Kz66jk6FmUAEYS32/WrZxNsNRA6ZkT6iOexJlUL+YyjdQDmJK/k/dUwPBkxh
GMuRjH/3KFKd9SPQ9ykZQP5Zxg9g5fR3mniVjmiZWcUJfz6CLbDi9K73MpaJlN0n68M5n1wCXFPJ
rpAcrF6WwY6oCY/aTVqDa0RbGlZVGfh/czlFD1dAX+/b3ELmtQ9u8YJaoGFR+yTXu6RNNMt/HWyy
cHH+vuu7TAsYZGNKJstXgnUjG/WYHFMIsEviZ+4E1mvtDV5OAnvj9LgzMf1oLsEPtZOpFkQlnDcd
/A8cnn658zj//erOrqrX9SAPSyuoOmcLfaVb3TGmpQJ6DqK34XGOOq6f/2Z0kvpRkr6KFVWY6z2a
ziRTDaksSX7IP9VfSvDm6Dzr5HVur2/j8Fy9TAqghWHWloBh55R1Yc0eHkUMLQW4gY1EgsxaotzM
7lkvG3aYuoDf9gWyT+/XVxk2KjIPDKy6xE+5IA9ZidRPhv80u+OPI12NyVRN+jq0WH2EJTJsc3SH
gMgRzki71TC9L1LJMQidyq4uSUndR+66BuguiLy6geH3PA9zss8QHrzHo8xJqzGL4xLLAG3scfqu
vZlfr02NuW9RGS6IV/RgwfjgBFzF/KvcDvIHSHvkBomGbx8Y8S/M6YJRftvIIgdDm6zKKaLhHgVT
TzH1pOdT5jO6fAUggSyNHo+3M6LF6uK5BWe4Y9c7RUv8DVOqKfbNJgzNAnn6zQp51eifGsCjaIlJ
dRQoeOjYstnOLYJyhlix0+uMIqN2V13HLd+9iNvzmCAvbTARwpiJwkPldfOtpbwBLPJ/jOm05EJc
eCnbEFOq+zv6Nnn3OJh2fupPZE1VaYqUWPYMdLoFLMa1g7tmGKaR6ToJl1bm67XoMBoumOnxADHx
GN0H5m6LcpANKjabm0GUF+e5UOUWTnM6n3z5gHDjgEaQ4otoVc9HijOvpaL6YQluh/7LMxKzMSz9
R+yLP8BS/K/V/zDkTo0Lcfyzcmyb+EUg++OuR77hBtYM2DAXh39NeG6/ka57tctkr5CiIxG4qmtQ
0BoGTDTuBS19D0F3GXI5aFaGDOAM8mwNOuSP60Sd+QriTRnFyc5rPojs6gOwI99JWXQp3jug2icI
g3nmdgSUmDC3CZrKZ0ZkmucKOiaTh6KvlkBTQ8gbyGXZtj4MXWcbN6cOP0MpOBil0orwu5sKO8jc
GiqvNSnuvYpFKuqglIUDaMWl0ju1FxANHqe0iW7Mplo799j0cpclVkRYWsl+6P624tBoMQ/dIOE+
5e5wODfH2EsG8AeRhiN/jS4AsRQW7KWrGxL0me8w/6gL8Jf1rikKvfigvhiJ7fH+SAUAd+FE3++4
YLIE+iWFbaJ0dpFQGPZ+0Pg3EK+Xpr5V7ko5128duNdPZR6+zx0Ih+F6sHH2aqaYiRkdCQjSNLZo
KhwUgHPFyIAqkFlHnHBtHyTCXP36t3YNw02UQSRd8qyC4ZvzTtk8FPixeRtGZdXy5W8Nryb5Mydl
x3I+giosQ/iUbpJEM7ClFdCCxYnnbQa6+ha6gGMphvEm8mM84B6VGJ3dNuO1Mt2+r2WE/5QRCmT5
IkRHPohPU79RcVLDnEWzsodADZvgRl5p9WDlResxl//ZsLJ2UabY3puePOZO7qZW6pEilMulzStO
FuSPWS/MxcmVA4a+yFbFNIWsk66QgKrKHl4v5705O2G7lwIsXSWBfKoPGppqN+3SV+jNAz5v/BAv
ZVq5lrCYz0zDczO1JeFpmrcvDeWzGCm9Z607VAvLHChPrd4t5NsOPL85j+pzrvKghX0EVYYA6x6e
0Ri/g252QuQAhYMt+Jkutq66adSZlN+rZmR9+72r1JRZX8zSCDBqNGodWoG5xwKK04wvC25AkJrJ
mviH8rh4530xCk050xvzbmpLneAIeVjknFM190LsZlsenl2JGPo3hbXF5O7C9KecNyr+E8U47CZZ
lVvxexhSiEYxcvrKQ2f7lXHGpcRvrOtO5AsqqI420CgJ2U0p4AUhqTrhVUoa9Sjqt+ETHudhxMRi
cknHnFZJXWOoVYZ8VeAPP9AAzekpFTefwmYEUg/6/ENFTy/nd03Cn8XpXklkU3W0fgFVoy26Qn5v
Hh4ux433C8wriw8JGZT8ZQClcX9Z0A1N0i3mVDUlNQV8URD+Kffoo6+CZlZr3t2aal8hc26qsEjf
OUC6n6kqQBQzObUU33ahEwhD7MSkBH5GPItGzhocRAONOErCFmsBBQmbcwfGZ5WDjmdhHdCd2gK9
raMsNkupMXMUPrwL1Yt4XwKzaxQ5sBJN/UGSwHJyMC3Vz1TwAL4tNnyJ37IVug6rUGb8/8HgnPhj
ZV5fPBPrnEVYeHV09yCOmYKz/IZp63wKU2QCY1KmUSCYORaE1/y48d7vPWNYaOi8yk1jB4eftW10
HJFZx42H5JBHgGsjuqSEqMM6WrIe+ixjfM+CYAc7xZwp+3e23x6uFswb9P2sCOL7eHqLCv2ODRAv
2u19EA/uCqMweaQswfECSBsdWgSeDLEwvCjYVcVNs0UpczT1R/qx7FkUBZJFBGyRw+kFTXzHX3kw
1fvnHQTQJ61jrgFdc5bvAgwQnebD4Tw6/tZCGEjrJtpAUfJ65DYFYNPEZSIoeIJTHT/UQqP3zZES
GHLt/Pcd7IT3EUQB2RAWQ9YuPk2IPhbZwCvDioFD3DG+IodZYALNGFXvtDVrzuBp3/3FcXyACLRD
Wgl7k1SEIgeiz1jmFPC4YGySBXCY/wzvlu4YAQgadSUFGmCVjMLGNrbqtGBmND72Y4LKhTfA2ZdP
c+kOoK/ilV5KNbB+fHW+rZkSSLhSqlC62Yge3czdJShAJvmIyc2at7DFKtlBbdG0lJFVYER0EJsd
VhnwUs8z45eHF/UnjfgP6ozoNmOOdh7Yk+SfYOzEj9nQ8AABS2wiiDrhUhp6DYJbtJjMKCmvr5Ut
/JlIa/4H3Oq2A72Q8OtOsK4YnvKd38a+Gm27NsA9jeScp12tUKeZ00Oh4RyGHLoMPyn5uDhKM3+Z
3v0erLHjewhTcvKS/phNrvBq7vm6pqmFt27Ko6+54rKHPW0AR5CU8xmp93dpLYBXCES1TEGeP7z8
is+rwficNXm1m4jkZ/FyWpdwaqt9XzwVV0BthFHsNJtLsstJaxG6DV2P/IE42BDuxw2ntY5GyhVn
VcN7428/8gVU/MWaa1kBuB3spKEbHDxnFVmFeBl5igP3x+rTBOtGeX7dQHVUb5LLv2PyOQVd3LfG
Ei0nt3rq/xVW3JqGWaIADEcRfREGE7cMzuWXHmdmNgnmB+EyG/TGpluluTbOv+xVHcmiCIj/iQk8
UiN5uQcN54C+u8yaQFH75nkL5in0gTEzzXRX0kD0HBMxNNK3s01cQot0Vrib0E40nQMVobsn82wk
oLgWhH8/3fJcJJlqUI6YvjbFJg+fI68HPBZokjoVn+UO5lnjiDgjTBbyGPjPXn0PhZ28skgRJe2m
6eNPO0x8pWJTFuTyNYWJ8M3dtjLPu5v4xAgR/IwgmnhcXJtpFZ/vfU6TXA6jGuodoy0cKmVyDvg9
V807psZKciZU1EBE1JBn7c8R79vuGS9q7WDBTuU/RLfTttfXhm2RY9A3imWf5Xjp0cIP4GGxK4tG
AOZPhuVd8bLcgn3iVtYKk4byBjuAd+0526Lzl2SIW0Y3x/5us+y4OR9CUXwR+ArQxbNKK9HJTRW9
qNosMwW/kefnL77zyyNcFceN+cgh6sghj0jqHIkK+sJFhFhhdnjC/c/5KKeABBxCEmHP3LQBZdlX
9nYm+q3AyIKCbU/yO4SzX+U92NzjxCTsHMGAEIiWjqjeIaFp+dN4fBiBkjQrqlaox8sfN8rOKZQr
2yDffUIUhjNfta2cXi21AX4lqpfQtoDNizxyQ2XqpEGcjf4tzHwN2Mt8KEUQ3gqq7tG3TG7M6/iG
Y3HQnl33eya+zSjTxrRdCJ8QCLTbd93pyq0+fCetAX4to5E0lz1gNFFFG/47rm/+vxoMxCvUIq1Z
/qqLb01jPOzS9YQAbe/O00xfT1NkyoWyMS3uhEEKe62l1PLSLkUxV/bnezbEqHuBepDnnzPQiaVW
adoOT9bLLexdEDIQXEJ5sUmAFaJ2hsfPHVYRpeL/EFVfaVklFrcVryL4BG1r/EtK69hginN9M3jz
lPgFC/I5+8HMPV+0vABxcLSMdeNnJmnQ4gnfZhmVjDy0+COsiiBfT6cnwBBUtU8+K4ibWunEjC3t
8UJXbd4N8Swd74707dUNeW5AUdSq5uchsCXh3HPOZqMt2cUdGvHlflCu3ISnfmIqZQIbQpNkEzJW
ToVxP+RbLYbLNnh9aFvOU8sBt2c7E4B037oinM+rs/wvMQ7AEtdPVdEoeeyCotj4UvIDoojntX3V
3aCqlt9fJTrH0ySu0MW5AtLRDEpkzBXiXeYCxBKTUU4sUQhyI1/Z8mrDKNl8WJkeu23TN+vC6OXV
a9N8590+Jgrm+15rHLB9IhIP1A2uNZ8Ba+VjML0yvQnoiPnhYAnQYTwFuADVqXi736kj0DV4C4gi
r++br63AwdDveYH9DmADrRJReoC0hV0oXSmJFM7WewXP5ESavl0H+Qi5UbgBAPpdl7af0W8zg1Qw
siUw1Kux+fNQ+9fqa/B+RL309WtI/UnsmYmpDrxHfigAciwunT5sAu+D7WtKAi9dFQk5nRdDN2uU
46rW58U4ZwYDirxZgbefga7mOqiV0WZaY647bvkhRDo5b10Kfd+I4RJvGV7bqphQ1uYEUteLfX3/
Bf5jnNr1fa5tVAXzhQ1IwpTuW0inodkmlposFuEM4tQE2P7J1M02qlyAUpU/ZbKWSEGpUXwLYjS4
jWSGCI2Lw6H1aQhQzZe45TIG+C/3j+l8cHF1WgPKLmzWBFLp7LxYvaFm5441sdawpkLNwr8qOcMZ
ByG6iUdu57bbeGVV06JvGQmgqnazM8b7rJauGojPc2pJjVE+mTB1qrAU3PWWEe+9W9iT5oWmIMil
8qrgS+hvlXKaNDO6+AZrzXLCjAYh4HIbT5kCdVOmiEOrAkz74xkZkkimHOY7JzaYcn+oroDLyoOM
ygqAGRS7TR9JqL3o7PhbNSKh2LW2aVk3B31Vi60QyvaNl6vDw7mqo8hIzi6L2Eci25P3QPxV6FTb
byC6HHDpTK0btq+zWQu4w2ITXYN4FHUwdircRkkZVLmrgaSwkIkABfJy/7dCVvNKTyifDr/7cm1m
RBNYAA+xgz58b4SzqEor2VI32Hvpuzes1oksHAOdnWVyh1lU2pFchZKhNIFrE56+FYacNMG0oRWU
axvkEpXcTth7W4ic9cPNXiJ1b9LIjwl/Y1E7b9r4rsi8QKN5rjk9f6EUgyNPTH3fuCVopi/53mxo
nCeUj/iAMFFW7nX1CisMoVBUoQ/h7zHD0TbNT9p1yShdNjpxFuDMQJMe9GYUdUMXO/V3u7KoLikP
zfUHgTxfodmyABovxcZInjvttRd/5cQjor6V181YcLq/4Amqeop0tHiQHkeE6gndvlzywizW31Ai
Xqm314rdBuVdy0er0sFwz4mZeo5ARn2YRr4e39iF0v3e823LcrRcZCfD1cqauf5SctXZOBFcJmzR
ittCY/KeYx4FyZ+MkEa4FyARHiOAspPEUmBmUh1/uAcWAKgslwHesR8958LvBKFhTlaWfqlg+TEU
jBE9fBccGkIKPEelgGcekjJkvFmFiiUMC1G8afp2yNJ+RAmklbIfvjBIVOpeaGJpYawYArfXWEr7
KlBxjefbkNEDtdZC7HxZM2ieWZiq6ZQGk9aHbGKYcqG4vbkCaI7PuvuEXcdLf8jpGZkiDgHi+r7L
y1/7BzFcGpo/TfsYvq/lz4XbzZHZl1yahaZBbBm5f9hcI0vxYC7e9GEWRRE+PEWVc5Jm9RLrzVa8
U/uXnwbYietx6FJJB4NWZHtUHYJx0vZwrrUHmE1tECAiD0cc6SsrMLk+/U0OF5KVyNaOMW/Z++F+
T77dRFJeURhwY0fcjF8OPuhTt/mJ/TwhiT6aRqnJqy3DJwU6+19EAkbBhat/e4RU8EU3Z2oYNjqC
AidGuRAJlTd5mNKCyUkA1DaefXsGeO53NAmxiuAUCTepL49Zn3EHzKoywc1f+kFG2Z4msHUrVwzT
ks0fBia9D86+GSoM3O3UwLeeLO8Ut0e5OXv4Y4FEL0wm/Jnk7aG9dUXuaBtqU1yaumlVnqMjvCBh
F2bDformvQU0bfj/vvs1AiCaq7z1SwIKsEgRfGlxDxvXATyiQkv19WLvqXYR0x2H45iQwkTZjd60
C7qFHGiXKFl5IZhEkeuaUzmq6SLmDvSMbbFUEzXTKxa4ZGqEY0kVZaSzCXt0RNSvgCVRgq749ot/
/YDknXJ+OhleO0r7IMfvm3Ezf1WAPG5YNb870gpwXQrtIkXSiyAgzF5Um06niidDMLoNmp0tuC29
B3CB9M1P/+Le4NDyneyWWn5J5XseSdpF9eSWdZSiT2DUqkyOZVJH9x+O2fIMwGznk8uZFBbrDGtK
nZoiLz+j41gCcCZ6ppXamSTOqvWahlkYCiYZTNo1ZB8nX0/5twSQ7Dj9hew9c1+xD0XMmq9Osa4K
IALfwxvwshRHv9J7BFM4YngLaiozd4DJj5h5lDJ17d3jM2FaVJ3Ce1Y6E3KWA9xibvNcinR8ZVZs
zC9JQyVCAk0mVBYWJZoOeEuEuJFb3KgEU7nkK074zpFSwbxCwZ0ghVad/DkKuPtnza9GAXeE0UqL
6xci0yXXJffkLmd8PziixXkcxWr7cffOleEAVkgmrBVpZlkfuOLzazRsEKz7q5zFQ8hNArtN3BZy
58F6YoqWe52WUStXJc25IWgVFwh6Ag2+Rf5/m2jUmtEyMaZkU37N+TtVj8uCMVtdYoDb2QhzoVH2
JNYPf1K7gD76wwY/rw9/c+ar4QQOvJZM0z9gAQaiTL81YLQi1S2HmutWSCm2qfvheF2Rd0pq6m2y
rDqUBUT19BXqhNcwSm2Oo6NK0amMNAV7p2F5FtOr/oo+0Z9WteQYaO2y3D08ZpW/BGVbA9hJbCf0
mOC/lzP3J0wuLWbMriHRgh8jkGsLLrfdvzcFuIgD/umZo+CnteIWq70dRl8aZXA9ibz7LjwKnAFO
HfDx8s2TBNLlk70ZojaQbaVvMv867Edx3DfV/+REeRemC6SO8pfx38ghSz89YnU3B+k+cA1k4pUF
dwkRiUJ+0OsbVMEq39FOfy5CJdN1ZrQZdXrpTuPYm21c+dr7V9tffExOEOUy+0GxbhkkX4W0dAde
PK1/ArwreqLUGTYUeBPkh9MiN0KjihcJsQxOEH7376W0EcW+ipWTqmOt5raltgrL1Zr/pulV3ZMy
sg0gjA11uqpEq1quyidkhNCovhgIWO5YQX1zCKbOtRC5pszFgZS+g+JSS7eXb8tYbzL/AJpHxGDO
C/dkdZhJuK86baEzucROnUXWNsCZdHqdup2WIR6OWr5K2AiMREr3PQwVoapMZ2R+eVXJD26SE1NV
b2kqEZjfBIygeYwcY5fWu6r/fVWFIUMiwUs29NJHFM68Wou9bs4WejD6J8Ov3oDC5av0jkFTU815
9RG5P47FLszzyjIrU/Lco/2FjMGvGNAz+Io9fl2Tg7vNQifm+m6FWKQjVVoc2Cs/L4N8BwJ5EWpV
sj2L/G1qvJ0RMpEWeQh2L5HgvQ1dJI6BiZb9ZLGqPCv4R4nw3A/3s9c1KHspCaX6v+PaHkqe9zlf
ulx6wiPJkvs5jyUVd1eLs1VMNjB9JQ0Otu3th8bhuELUX7qukOWmdqOBvTF2DAF4g2LyBHo8Wjlu
0MFIuWUDXiB2dCi8eNubAZx3ho3MbglUyCq3KeEHXi0TzUHUb3OJmwxjFySuFxBTVBYmnVPxLP9V
JyAjfcyu4fVW6+qsw6UG9XXqDH5tRogBCPvllYoxrEZLcAVqn13wH4q51GI10BLXGsOtoOyYGveU
r80JS1DpXA36lpcdhpRHuuYt/ZV6Q6hZCbQiHRPjJax4chKmYEWBIlUG4y/ay8Gsj9t6t2ZrZmpF
vSQkcH7BaEr7ctyewIffhGNkluLxAXlURSjqygcfFG2jis/6hq9i0hlhl+PgXr95v1Ela5xvCvUb
XIIkbXvENJ88isxsSd7F3wGduH9bZd27rUH8PsmXDh+dzd4SCRUBOWHUxOpKg/NeWJG83LCO971D
flM9/0ioQFDn89sNmY2O0fRRxxyzTKnpJKPEHqQZxThgYqU3eW/ndqAiJHT77Hls7Hp57kvpk/TS
O7TqsS2z3zckJSzcowffaYTFkgb9sjWvFfqzb26HtHi7H8SmXexJ7mztv4hxujuNY3FF34Ol1/HL
qIRJvIphynhgYCkcShi1sD57SS8tEZjeKgD1O30dEdBNOCzHCpe/LbRF7arbRzcS8gr6oOCkEZDX
qHSfIDZLXkY/qD1qmJ/L2kW6Z7SM7yBwzHent0H4XxXEzBRF/doGeGdTXnr4T4TmL9iCkREehzj5
/LpV2NtjqTaFOCXahxQQS+W7M373ybEPs6KNKoV3ymsQkveXXTWn1m8QqFXIelf3Bdx/j5SVZ3xB
SffFpToBNyFtQKznHnmwR3htUAX8hYTv6uuuuE4lCssockVE3US5B446sJSCPO9yPyAx+YR1sPcw
9UxSvzbSUHn2seA7EF7eNpR7WJUCu2Ic9Xyi+T715tAd/xBrC8gDKcRl6rTGMIkq/igZe/xhpqKo
8B260miKVjlvSgtYXDe7X721COuG3nYX4badDlFP0ot/0fXPe1ivUu69WZZ1Ps3CjlpccD9dlHoY
LVZjrT4ymSNgZHT7OAS51lkgI1osKIeCJq4NaRMQvurpA46xYWsbTsnueQXNyxeHaPXoRLZ5FGYq
aQ7IMi7VO5qGm0Y1yhJUwZkwchVimRrExIOlHumQ/are03RGeyBT2ThFlJ3+rzfaE5JWJFBd+Yl8
IAinIfYhLZyptA4wIUfc7oo1vzcudF9Can/Ft8L1IEXoD4cBU+qBRsfoScQW9dRa7Jz2wEpMxXZP
5gI9wuNtd7n3pQO2XEka09zduHjqLmEqD26j7SuqWVNZt98UkbzrPNxcDPHMoMG6tfnMttfABuaO
ivLyfr0z8u6GMO2H8QXuy8MLwva80INRaxFRHJgw8kidEb/fxuitLXRuto+YSLQH7K/GaWrwrwwp
vbnhr9/VWGu3bm3345S2FNRjX/7jjwERTKYP+oJWtcUKz3NOs0RBtKgKXEycwjQE+mpx7mkBaL7j
/zh2j11KU8QI4qaca3sg2VTIG+rdFr+PmIchQ1ROuq/DyUIf+YGf2/R4869f0TH4Qc6Tm9WfNuCc
ScZqRwog/ZrSIbIsb3/C7jNfU4mHys8aYSsaQT+N+ahZF+d6JePvyeqIqCXTKAiprcYCBzZ1etLn
P0QsT+yXMibuMz0jIF15DVfe5F46f/pH8HTToupXUMXXZh3/Z8FDvEXhlRSIcTBHzW4OE5FFSG9t
7vyzxNJ2eREirodVtjGucCrZsTrv9g5aZYsiupqDTvgg8uaZW/UbY0iTB/304VoOp9m43eQ954am
QqAgcNs72Uyu//TqdjOoz3TR2RxQ/6ZifhgKpaE/lDbzH1zObPTccYG7E4LABLkjyoMJ+B8xrrfE
QecRwhWVo+uS3ZlivjMJDHSVG4TQDnTyzQ/VEZPebucnqHTuboC3IrP5Psf0qyGnUEZxVTMpIZwp
WWLHREJt4HN1bJqZoSbdHtS+umkpRZ4cG4OMwRBtczV5nG8qwQ1v3aymwyvaWZI5IWFDTSkwM8xZ
MuvwKUD5d4/m9XLuVui0tierQrl9EX2hLubh8gLfp3Z73bvlIHymtod7z0pm9ZNmpzKz+f9dnwCR
kD52qdXYGLse8zEgKX7um1W5gHmbJk0AmjNJjywxgnVoznNyRq7ZxUGlDUqUkmLemfk+YCGSN57T
fTcg4guo2jZz05fCaMtQLK4WsWz2Jhmbiau6UMA5kcxEUiOYYIL5/Y+4QMo/Xjtobcg/gSmoubvP
I5LRkvV3iBor/9hGfquVmyygGMl9LufIeSgaMTqlgCtSQlnL+/5rclttIEFPH0no00Rrco3Kom5h
VFibC9W0dF2qDKvb59lzCI4O9m8L5ZP5aS6NusVbC0nnKII4oBuChW7nMQcWU9ZTf+ogRFAWoEVI
jeVAXrGJdGd9PX8OxfbE/Lx5nuT9AZ+FhjICgsLnLwjcEZg28JWMwSYzNl2fttm0o3sEZj07Fi71
E1mEWKbODspbZQadM1DSn0aMuWeNteYcb3KtSArDVRwyor3NSr6EJ/nRuoWbzCquDMjWylrMZDu8
rj5+npQwbwx52Femc1r6pBvVOYKnAjbekQrawv84WauVKM4WNkfaxQm9mEEyFL3ZeHT+l4TRavEz
4vecZOoaz/9439t8+sSHxxQm0PA4ZkOGOPKYkpXsEo2ilYjLRYdyUtZsbf+21Q0xxYxkNtiBc8pj
9chJVIw3hcvojtt7hOnVyLGkTMO+m2f1zaSSQj8ingTx/xO86EHB8UPOJwzxC115QqTYmDQjX068
fG0WOAw5yFISAtHO+3hZ6OGLyHU2JWSxQRK4REvr8Kea9os174Z6cAOtnhAxU0re7p61VtplUNnP
4fDq9cvJzU21As+rCADCJcoAhVEm+9UiClbQvMz8x7lFeO3OdkW0dDyyYfMp19+CHer5r2vEff1L
OFhI7AEGwpcU+N99gJh/kldyNVBP8bjktvNwxujru5QLAiRP9CI6En+U7E5KHmafzs0OpcuTUPJB
/AopnrBNwUUA98fPPBv0NS3/CLaq7+IVIkM5ERph4QGraatEUOwmYfk6FwISjCNvKKC1xxdMH2cv
ikTCvlIDK5tK4+2rGYlVwcAvsMNxCTIbzwxNmEjVM5pQW+ALQNmTnvcHGo2OMK/onpAh6Ya/IVIU
f7SpFRPkX0ocxxU4iWHL1cvOboNXYjYIpDlLLK0spGdvG8AuzMCXyASWf5KjfBZpa1Fy85+4/5Vo
caMe8zvcQtbagV+mVKjWIheqWdI1UI/xRZf6myyHHc17U2kZfnp4FiSp93SbfBhxylaStP/RMpvd
n5d/wWqRPd9Um/KoWzBX25DwLdwIxuD7Yh2NgdY1Fy7zNd52dC6F36zDyvlhdFZyGwda85Wu7ujd
xeJpESHoekb9B6EUlCdN/PflICG9paTiFyJ0kuxsgH0/rF49AP64NZKOk/itiRHmkTCdZMDULQ71
r/aZbsx2jmYzxeGJbMr7lwLJL/ap0QtXVV0CHTQmWZqUei2YTc47NgzZOUDouvdVnNvbPGSuYEWq
RTEw4/0NGXrEj01LoHyoURUGAdTUo1S+8laJUGJUhjZPFe5vlnBo+jZ3i47kjoLbkCb24QO0n9sI
EnhuBK5IoUyzm7V6QeaKIg7EGpoesrng8s3iKd/owOLhrjzOE6g08WDwZarztk+EdCML3Ydypz3g
2C0omRCehucUxdl3SlUht79teezlpcDzDMiPUOnDtyidvMrWM2wSqsdkz7QIT2WN4TG0NSW9xTdE
nH+mZn2R8M8g/y/Gt3ITPOJB2BOl/iQgiNfJjZQf4ZUDzHlkid1z2xlBGfxEu1y2eORAYwtv2d2o
OYf1Cl4bxOrL/hM9NML2kcWBp6NOL56BRbEBsrKmF5QhTX2AljJXxytMbyFVXKrLfhNCEEI4IWsu
kl994XrNAbRK3nlp6IiilFU6bIfhQAiaRxckQnNSc6Q4mDo+WK32WQqwnM6anTHsX+DbvZPhcmvX
pbnGNr+urxwydztcwg/4bN0Y6vo4oYVnpJN/ld8TJw19bJLKSaIZG7NZnHaMpmJv2W98P2JZ4JJu
RXnASubzIYgQgodE10WhlsjMikz+mlJ7+Xd2sEr/Y2WuceAKAFvPBb4M1nr6ozN22JcmZAaA6A8/
CDJGAeM2F2DBrtYUgliEiWOp+kMzW1WhXO7X6//m8Z94BpBAXzwBVQRJCVcYIIcaFX0bS2JBYeF0
ud7yB2xwRcGNLe6j3N683bYcfjHLq0dYamkY09DEkNQ0Y7JTwo9tvOPGAw1urOhYI3DRy85wqhUu
ektc2BAkL4G7pIvO8gZOF8/Kw9F7tRmCtlVwEGDNPM83ioVgMVSLYLb7Jht6ZJXFy5wXFI1GBY3Y
5eIssKyE7k+77RRBjRlQVnglzXnqkI12y3GQp420RqCdSK/he4RVEQnAPKZG+Xr/KcuSY8ppxY/v
aN1Iwu3M1bsRd5rphi6wCGliAO9ahcUFPuknB2Euh2m/SzAPuJAjiLQvIMpN5FtM2a+cIKJ0DKgs
HbStg0qvZFNCEWHVwIwuuUnuwP7OehJgLfGdF5QvL9lN35r6ZSa4JWilr1HhONe2L7yRCWLUlyxv
rLTnO2Ry4WqEghvAAg1Fzu84xwpYpyHzf9WSkUwkPMe+8FUAYNfL6YzvLxhnuIXmhyjULRrioySN
FalUm1/ba55QALXqZ0lRYvZVtl0mwAxQhRUqCSLneVDsL5QUwV9xO57Ke0emGgy3STtIKwH3qmTm
4dYvoNFD+rLPGbUO56dCRO8FdenPV8EOs2oll5tycSMvc5KR5xvdYFEhl9AwYpvunuIfPLVKaEp9
6xqu9984Xt8Wrf/uyN0eub90RbnYQD5MI7YxHHJSSaVK+e43bpLJGuqOfimQiUrx1wH7VFICNOH6
I0SM25tWrLWeNblHu9cDtMULeTJlK9Y8b+1m+sP/1nAQvx39nCdxB+pAzOj/bD9/NR3+2e8w9iwp
JQ2Vvz1AKchTsvMLyso6VEZYgD7QCqxRLrur4pFoxh5zwihOmbttGEAVPUe01VAEuGM0lqPDJFjT
SyM1mrw2qkFGHEeqvAPNQbh7CdWqR1HTFWsSgcYCDTPoc/WkC0AWZJQpY1fhblYyoxifnWYFyqzL
XK9W8ESlybGFDlTjOkrO2Furr2p9DqSqnLCGwDPBFOlkTt6bqyQSbHApoTkLTupmBeQwXS3RJv2/
m2js8QAwntwJaLlLr7EF4KFm0XL6VvxhRkU/J5ePQs1tmGf+Oa6qimn2TgDzH10AQOhmYRCURj/V
i9a77F7tvh7wVu/ZjYI68JQ+Il+VXpnyHSNbd2njdyBsSMXuQGuge+xDZwb6YZvrDjh2uJ3EBqPb
RSTV47XoEmLnDpyJnnJF+XkqAR/h5N8t0u4m/PoFZiL/0O1Vgux4i/WeL3CK3xmSV141c4w/k4Wn
ogNpnqH8xwJESENVKPzpgmQ5wAMT1lOfgsjkDE6WaDGhkrCkegKiQq3TvYBReXB/GazUHodEKFNu
Q5742+xCJ5x5agZh8LT3A97r/O/5LQ0rpOCs9ZBJXvVIUWw8KADWW7mwCuysHECF1WMHbNk5cofJ
FW3pPxVJzaa1BtCu64VmdIHSDGrWETiMKVlUQvM8yiYnSYlKkbUzZ/3XpujzVmiEBYmXTyOn/Oba
MieGFMgcNrbXufS5IhX4vIYYBYd+KkbAQY2/y/YPKGULXmmw0eebYPNnTfaDDrHEE1ywWP25MtV4
YdtD3xvFBwsPggZj5BQGEJXVypbXyvor/fkoxvHNQ1CdoeuIiXBYfbDLmufNnAUm+FnSYZ3OiJfN
ZXwGNtZ9K6cBf8TA8w3t8u/aH83+Hhivtmx7pSltUJh831Qa0Hi+eauGSwK/pOTs4KpVYxm2eoh8
lMblUMiQSNkTp+d4P+wXSr4sh90lvjmWZKzouPmH1WMgaSLCDvrUkLyT88qOj3B5xrTpFzbpeWl0
6Er27CFxqkmbGJRUmtPyrEDBMjoiL0qwjpPtn5CAnDeDtHFQ0LFURnG5jt2Xcbe7ErG2+ONuK0xR
3OXIj6Gd0cOrRLRHQOH6rN/lwH/ab2qwEf2Hf0ARFfiGVWusSwpjmWqGqs2rSA2Ql5RNEKhOeeDz
pBr13vcnX+Y1TM19U94a4PXxOsZCJUXO8GcyUpvdc4ghNcCuxW1Pme/b5ZWSmCqhcwo26Dv+OR4P
ueuTEQkm6ctamrsu99u1oc3Z4CIwvbze0ESSQjPo8+r5QNvC2gLHr2cVFy6a7mTFipmi6Fgz7gsO
uyqMox+Xwo6LnGCqI72RApjlkq7e8bvgYoq1VXxnERaIyCidWHRwxw2Kn3ronDjnvqnCb7gnRZyg
lNiHwJl9rDaSOgwNGlTyFVhwQJHrrZJZ1EyJZPpPLsX31KeDOuGvc5p1/wM0CRfe6Sj3aWE9QhC7
1LBMgyWhM7Ra9dzvjgrL7EMZRZjZQjht7VVDr2/RpDP0trn2NMEemnU7jJEAFnIeurr9j7DljPZV
s5b9ahiiFWbswyskjuPqfTcR2z2dkgTh+HgmEZ9APgWWqpjOhM0usLq70ZUcvTruecE86E7e6Xdx
gK+snIJgyTZLS3Ljes/SxEAs1vNJ9kY48lsK61jIQdszjSPMMFepfNk2mcQtWca18jI1Y7AsYouy
GpOUD/8KD1IF4dOI9gCx7ToCy9jTtP755OFO2JRHqSEsIQO9GvoM8yJ/9ky/hJJP5t1nvsl2H+80
hVJB5w6DlsGPET2t749aoUnKIiwrJIAzvbwxdxYth8c2PhzmLPcJ3+QEhtgkN0d6/IshYysfcJzs
Uz4mIuOKvfUAuQI4NGpzj6Ti4UCnzTAI0dzi2FUd8YCLi5jWer/owPbExoqu17ydXVRzj0qJIzBX
kE5n7hBX0tKH/JcP5uJUyiijXqQlIWDaa4BWiI4NIXqlo5Y++gWWdXGD5/Durs8Kt3FJpMKs3UtW
tcnKH1pDyyG8F7P2KiA35PCfr77MsLA9c6yk4d97QJEanqiPmMfE6tPqvXbvHeqMtGXLDTzz7PyU
bUlyZRdeNCdyIp+luTyn64GAMT5lU1OY5KlUYMjepnsl2hG6FkxabSyrpRJDEMFS2fzC3jLNoK3w
7EObVnegaTGXRFTjhKn+KEXDeIjazs+BqRcC1uVLjrH8y4vHr3vI+dYFe4LtVb4ec4tzVwB86ued
ZvXcDIoW2pcT4/z9e5qXfjUGemNv59hkbuo2wIEkWqAc7TIuC+mVP9NiXZVcPO0U/QeKTcv03IoP
hgvYSMIWmPy4zY0Z5G+u1GGNSl6xuS7KKF0oB2dU7gk0vTMVgYWc9wieWM51ZfmTXmRq08c0w08b
HECN+aZjMXOFHAkctnBJBvP8DIRDTuHqCvPvqxUXE2QxrzpuKy6UGFmWwWaIyzuujmz8J1oO+FRv
DGynzNJuXqcmlpSnZJWf7G+5t8odABdq6F8Ej9jcIIhEV7tOgaeg6MUIyoVp+iGMzbcJR8b2q0I8
TpWEdZ4VD1G3yfNS6XH4yX6FtsK8QN3OfQMR2BScODQIjjCUXY5gLQvgG9bHb9sH2GbMWPSDx5SB
Dmzerw/RRQpH+UnTiTL1JDIdw0MAP11d+iKGWTLZCK3rPa1zvxvMnF3uJP11hFTTNlKhvRWU5uYo
XQ12cEi6qwfrtOj8aicrttYRnD7O9rMI1whsTUgvF++eDvwFemW81jfj16QDHza7T9sRQTbD+CH3
PZOizpiM4E/Z0JcfrCGFJ3X/m6beIRyjH4V+N80nMiCD77xGCwNjVtYp3l23xbcZFJw6uLhUPxJw
OGbHWxeV7sjsSSqEZMSFUZQjybmxSzoYm9zZ1zYUlg5T6ITxydnzjRgPPKZmxO1i0nd4ELuEsBON
fNquJVe/KYbL1xr/EO3x+exuU6D92glZiu5CQKuQnAy7ASzeSgSmVnPJimqcMtGR91Lgc99jK6m+
4L7nKjBLRbeN/iAF0f8ohqvgkZgC6E9xeN1WOLvW8WAVwAQHXO1ESRS4plD5zaWWmjYrUo7Ktqsg
PSIM1smYu14OhYnNaBvsu9yjVE3zCLe8zCz1ntwg0IeWhnl2nhGyfwBPIUeioB6EerOOX6e9P8pk
iKA2hG+KzawRlVThAu4c5pPt4J5rvSDHQ6cNuitaP+wRKP1Subd2H5ULVcG6ttn0wOXYUO8gr3Qc
V+jBKdzFpC2akZPBSTHs2dldH7tQ98Enky5nhzxzwS4igpi4swgGfRXWxV6Fr2ZMJdtJGgkipVBj
XPuLkGEfgk3d9/8vdcq60IMhvvJ1q9TJVdCbd/gWyp9XRefs6HguLBfNj31Q1yMlRl8O1THNpcHO
K8RvIZC+t25VQ6Fx03+Gq3OfSDo23+IJ2DeT/7kjDEXt1G6woRnMn+H+yonjkzp23t8GDfym11QN
G8wXCBAUrMnEekX0NbJLOCGCouqHkBaTP45XzSHVbImptK8DpR/TW12arBfC9P9lqvLuTfRVM7l+
1PnWrKkkmEMRfy8HuA311hq19Ls1YyDEO5E7KXDYQsmfosYf2diUUOyT31nRCqQQmK3rHo9QCLyw
/c3l/1Ewq3lkiV743sYX6Mf7AT9U7xwHfHflr7AFcuT4ULv3WkIDVzbrnS6Ax0HJm2m1rwOGYDCr
54LIHqJmrSFv+oHAuh1q4s2iHeoSa3hTkTL9/ZXzenyaNNLfcudjFI+wJQAWtLL+0yUMB3kZmcQ3
iJXV/q/HbrLG4yhZdJGSKiHLzDi1LP3A4GnkRAFTC0XlaDSPc4XvDhIZWRmRAUqlz1OhEIvZlrmz
59VSkZTokAlculdDBXpLqUBx9rC5f813cYtTg3XpYMh9NT8nYdOGN2cojXDpmmqwktl4osVYc+AF
F7xiHmIxtHc89Uiv6uNFF4fbgxhC8vJ3oc0Qa5UUTH0Sta0YfPI+sVZSkGfEZ6HF6bgQ4EUslV1d
iZ4DeFl9d0KqSg666DKTJuUbq9Gajzjoq5WjwYrM4YYzns9Zd2+A0+2+jaGHmNBkfvkUVyR1muH6
CEhBrZz6d0VNojBWtNLNUQ9j1LabwAU0OCOKUY0DRcacWobm6dFZRaePrZ8vGwTCw9QFY/nBaKvd
y+D72/v85/3xdd2ANxJV7W2jRIs89+txdGP4/ZJY+m98nPaPr2hIgfxQbtW8GhgThTETBMAWKTMs
jEB3PWBmDX3e185tbf9PFdYgCwozhQlWtGTF6jFrpXT0bKHroEqkkqx0qVpo2duylTvxlJAwHzdE
4fQBhAshcOBanSHdA0cbAAMqmFAx8qyksN/Zm5vzD5I69bHdFm+jDiCmJW9o0OVUrEWdexBjK2oV
EfDoMj6WEtWpcHfeQTy1PZMz+Ge2Tl5OdSF531GpmJDXu809iaM7DriUfOuqmo9JVpeNIApTLXFK
f9JEyqoSOe1siPYED7obAtFBBOvRFLsxfSXz3Upi+OvYkp0d1urWo7R1vTOankI1IbtWU0jObP7N
aaxLQdU0EWkAp9rZWsjaHNSzu5ZrbuSYSNlvHEDFuG/um0mUcYeOvPNpMqLsTSVGDhvbSTZYYy0i
gpX/neOzHIKdAULz2g7VVV9Bqc214SYRFmDw8n4GK1MCX8wSV/y7KHL5/x7U5B7tS9YgW1EZKRgI
0l82hbEx7uLX/0/stTiBKWWlH4swgIzmvYJuOJYYGmkC/7IkrJpwvjUij1j2LqQCOrz2BlhueNUj
OTgnBfMJrUMgcFHUTbkVnJzsRlofZj4jxoqn/CGmpwiMvt5gcaWg3nvwEc0/JrLtrUA1oKBTn4ve
5OI8xSgvFdaZtrjbPLpPHL8nvok3VT6td4Qvqs+eMn8mEjgg1V8pMqpv2Q/9w+SJQNwMBs9wsRky
+GA=
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
