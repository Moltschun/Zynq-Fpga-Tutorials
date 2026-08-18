// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Aug 18 04:42:30 2026
// Host        : laptop running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /projects/09_BRAM/09_BRAM.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [3:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire ena;
  wire enb;
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
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.68455 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21600)
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
