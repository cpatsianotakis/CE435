// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 28 20:51:27 2019
// Host        : localhost.localdomain running 64-bit Fedora release 29 (Twenty Nine)
// Command     : write_verilog -force -mode funcsim
//               /home/jesterhead1924/Documents/CE435-Embedded_Systems/Labs/vivado-projects/lab3_step3/lab2_simple_arm.srcs/sources_1/bd/arm/ip/arm_gray_counter_ip_0_0/arm_gray_counter_ip_0_0_sim_netlist.v
// Design      : arm_gray_counter_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "arm_gray_counter_ip_0_0,gray_counter_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "gray_counter_ip_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module arm_gray_counter_ip_0_0
   (leds,
    Display_C,
    Display_AA,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  output [7:0]leds;
  output Display_C;
  output Display_AA;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [3:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN arm_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN arm_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire \<const0> ;
  wire Display_AA;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AG;
  wire Display_C;
  wire [7:0]leds;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  arm_gray_counter_ip_0_0_gray_counter_ip_v1_0 inst
       (.D({leds[7:6],leds[2:0]}),
        .Display_AA(Display_AA),
        .Display_AB(Display_AB),
        .Display_AC(Display_AC),
        .Display_AD(Display_AD),
        .Display_AE(Display_AE),
        .Display_AF(Display_AF),
        .Display_AG(Display_AG),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .digit_reg(Display_C),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\state_reg[4] (leds[3]),
        .\state_reg[5] (leds[4]),
        .\state_reg[6] (leds[5]));
endmodule

(* ORIG_REF_NAME = "DigitLEDdriver" *) 
module arm_gray_counter_ip_0_0_DigitLEDdriver
   (digit_reg,
    Display_AA,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_aclk,
    AR,
    D);
  output digit_reg;
  output Display_AA;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  input s_axi_aclk;
  input [0:0]AR;
  input [7:0]D;

  wire [0:0]AR;
  wire [7:0]D;
  wire Display_AA;
  wire Display_AA_INST_0_i_1_n_0;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AF_INST_0_i_1_n_0;
  wire Display_AG;
  wire [5:0]\Lower_LEDdecoderINSTANCE/LED__30 ;
  wire change_value;
  wire digit_reg;
  wire s_axi_aclk;
  wire \saved_value_reg_n_0_[0] ;
  wire \saved_value_reg_n_0_[1] ;
  wire \saved_value_reg_n_0_[2] ;
  wire \saved_value_reg_n_0_[3] ;
  wire [3:0]sel0;

  arm_gray_counter_ip_0_0_Digit_chooser Digit_chooserINSTANCE
       (.AR(AR),
        .CLK(change_value),
        .Display_AA(Display_AA),
        .Display_AA_0(Display_AA_INST_0_i_1_n_0),
        .Display_AB(Display_AB),
        .Display_AC(Display_AC),
        .Display_AD(Display_AD),
        .Display_AE(Display_AE),
        .Display_AF(Display_AF),
        .Display_AF_0(Display_AF_INST_0_i_1_n_0),
        .Display_AG(Display_AG),
        .LED__30({\Lower_LEDdecoderINSTANCE/LED__30 [5:2],\Lower_LEDdecoderINSTANCE/LED__30 [0]}),
        .Q(sel0),
        .digit_reg_0(digit_reg),
        .s_axi_aclk(s_axi_aclk));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFEEF)) 
    Display_AA_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[1] ),
        .I2(\saved_value_reg_n_0_[0] ),
        .I3(\saved_value_reg_n_0_[2] ),
        .O(Display_AA_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'h8C48)) 
    Display_AB_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[2] ),
        .I2(\saved_value_reg_n_0_[0] ),
        .I3(\saved_value_reg_n_0_[1] ),
        .O(\Lower_LEDdecoderINSTANCE/LED__30 [5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    Display_AC_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[0] ),
        .I2(\saved_value_reg_n_0_[1] ),
        .I3(\saved_value_reg_n_0_[2] ),
        .O(\Lower_LEDdecoderINSTANCE/LED__30 [4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    Display_AD_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[2] ),
        .I2(\saved_value_reg_n_0_[0] ),
        .I3(\saved_value_reg_n_0_[1] ),
        .O(\Lower_LEDdecoderINSTANCE/LED__30 [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    Display_AE_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[1] ),
        .I2(\saved_value_reg_n_0_[2] ),
        .I3(\saved_value_reg_n_0_[0] ),
        .O(\Lower_LEDdecoderINSTANCE/LED__30 [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBFAB)) 
    Display_AF_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[1] ),
        .I2(\saved_value_reg_n_0_[0] ),
        .I3(\saved_value_reg_n_0_[2] ),
        .O(Display_AF_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h40A5)) 
    Display_AG_INST_0_i_1
       (.I0(\saved_value_reg_n_0_[3] ),
        .I1(\saved_value_reg_n_0_[0] ),
        .I2(\saved_value_reg_n_0_[2] ),
        .I3(\saved_value_reg_n_0_[1] ),
        .O(\Lower_LEDdecoderINSTANCE/LED__30 [0]));
  FDRE \saved_value_reg[0] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[0]),
        .Q(\saved_value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \saved_value_reg[1] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[1]),
        .Q(\saved_value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \saved_value_reg[2] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[2]),
        .Q(\saved_value_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \saved_value_reg[3] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[3]),
        .Q(\saved_value_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \saved_value_reg[4] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE \saved_value_reg[5] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE \saved_value_reg[6] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[6]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \saved_value_reg[7] 
       (.C(change_value),
        .CE(1'b1),
        .D(D[7]),
        .Q(sel0[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit_chooser" *) 
module arm_gray_counter_ip_0_0_Digit_chooser
   (CLK,
    digit_reg_0,
    Display_AA,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_aclk,
    AR,
    Q,
    Display_AA_0,
    LED__30,
    Display_AF_0);
  output CLK;
  output digit_reg_0;
  output Display_AA;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  input s_axi_aclk;
  input [0:0]AR;
  input [3:0]Q;
  input Display_AA_0;
  input [4:0]LED__30;
  input Display_AF_0;

  wire [0:0]AR;
  wire CLK;
  wire Display_AA;
  wire Display_AA_0;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AF_0;
  wire Display_AG;
  wire [4:0]LED__30;
  wire [3:0]Q;
  wire change_value;
  wire change_value_i_2_n_0;
  wire change_value_i_3_n_0;
  wire change_value_i_4_n_0;
  wire change_value_i_5_n_0;
  wire [20:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [20:0]counter_0;
  wire [20:1]data0;
  wire digit_i_1_n_0;
  wire digit_reg_0;
  wire s_axi_aclk;
  wire [3:3]NLW_counter0_carry__3_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFEEFFFFFFEEF0000)) 
    Display_AA_INST_0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(digit_reg_0),
        .I5(Display_AA_0),
        .O(Display_AA));
  LUT6 #(
    .INIT(64'h4F9F00004F9FFFFF)) 
    Display_AB_INST_0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(digit_reg_0),
        .I5(LED__30[4]),
        .O(Display_AB));
  LUT6 #(
    .INIT(64'h75FB000075FBFFFF)) 
    Display_AC_INST_0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(digit_reg_0),
        .I5(LED__30[3]),
        .O(Display_AC));
  LUT6 #(
    .INIT(64'h7D6B00007D6BFFFF)) 
    Display_AD_INST_0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(digit_reg_0),
        .I5(LED__30[2]),
        .O(Display_AD));
  LUT6 #(
    .INIT(64'hFD510000FD51FFFF)) 
    Display_AE_INST_0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(digit_reg_0),
        .I5(LED__30[1]),
        .O(Display_AE));
  LUT6 #(
    .INIT(64'hBFABFFFFBFAB0000)) 
    Display_AF_INST_0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(digit_reg_0),
        .I5(Display_AF_0),
        .O(Display_AF));
  LUT6 #(
    .INIT(64'hBB6E0000BB6EFFFF)) 
    Display_AG_INST_0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(digit_reg_0),
        .I5(LED__30[0]),
        .O(Display_AG));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    change_value_i_1
       (.I0(change_value_i_2_n_0),
        .I1(counter[14]),
        .I2(counter[9]),
        .I3(counter[16]),
        .I4(change_value_i_3_n_0),
        .I5(change_value_i_4_n_0),
        .O(change_value));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    change_value_i_2
       (.I0(counter[5]),
        .I1(counter[0]),
        .I2(counter[20]),
        .I3(counter[17]),
        .I4(counter[7]),
        .I5(counter[6]),
        .O(change_value_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    change_value_i_3
       (.I0(counter[12]),
        .I1(counter[11]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(change_value_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    change_value_i_4
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(change_value_i_5_n_0),
        .O(change_value_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    change_value_i_5
       (.I0(counter[13]),
        .I1(counter[15]),
        .I2(counter[10]),
        .I3(counter[8]),
        .O(change_value_i_5_n_0));
  FDCE change_value_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(change_value),
        .Q(CLK));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({NLW_counter0_carry__3_CO_UNCONNECTED[3],counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter[0]),
        .I1(change_value),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[10]_i_1 
       (.I0(data0[10]),
        .I1(change_value),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_1 
       (.I0(data0[11]),
        .I1(change_value),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(change_value),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(change_value),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(change_value),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(change_value),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(data0[16]),
        .I1(change_value),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[17]_i_1 
       (.I0(data0[17]),
        .I1(change_value),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[18]_i_1 
       (.I0(data0[18]),
        .I1(change_value),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[19]_i_1 
       (.I0(data0[19]),
        .I1(change_value),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(change_value),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_1 
       (.I0(data0[20]),
        .I1(change_value),
        .O(counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(change_value),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(change_value),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(change_value),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(change_value),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(change_value),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[7]_i_1 
       (.I0(data0[7]),
        .I1(change_value),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_1 
       (.I0(data0[8]),
        .I1(change_value),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(data0[9]),
        .I1(change_value),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[20]),
        .Q(counter[20]));
  FDCE \counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[9]),
        .Q(counter[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    digit_i_1
       (.I0(change_value),
        .I1(digit_reg_0),
        .O(digit_i_1_n_0));
  FDCE digit_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(digit_i_1_n_0),
        .Q(digit_reg_0));
endmodule

(* ORIG_REF_NAME = "GrayCounter_Pulse" *) 
module arm_gray_counter_ip_0_0_GrayCounter_Pulse
   (pulse,
    AR,
    CO,
    s_axi_aclk,
    \counter_reg[0]_0 ,
    button_posedge,
    gc_button,
    gc_rst);
  output pulse;
  output [0:0]AR;
  output [0:0]CO;
  input s_axi_aclk;
  input \counter_reg[0]_0 ;
  input button_posedge;
  input gc_button;
  input gc_rst;

  wire [0:0]AR;
  wire [0:0]CO;
  wire button_posedge;
  wire counter2_carry__0_i_1_n_0;
  wire counter2_carry__0_i_2_n_0;
  wire counter2_carry__0_i_3_n_0;
  wire counter2_carry__0_i_4_n_0;
  wire counter2_carry__0_n_0;
  wire counter2_carry__0_n_1;
  wire counter2_carry__0_n_2;
  wire counter2_carry__0_n_3;
  wire counter2_carry__1_i_1_n_0;
  wire counter2_carry_i_1_n_0;
  wire counter2_carry_i_2_n_0;
  wire counter2_carry_i_3_n_0;
  wire counter2_carry_i_4_n_0;
  wire counter2_carry_n_0;
  wire counter2_carry_n_1;
  wire counter2_carry_n_2;
  wire counter2_carry_n_3;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [26:0]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [26:0]distance;
  wire [26:4]distance0;
  wire \distance[11]_i_3_n_0 ;
  wire \distance[11]_i_4_n_0 ;
  wire \distance[11]_i_5_n_0 ;
  wire \distance[15]_i_3_n_0 ;
  wire \distance[15]_i_4_n_0 ;
  wire \distance[19]_i_3_n_0 ;
  wire \distance[23]_i_3_n_0 ;
  wire \distance[23]_i_4_n_0 ;
  wire \distance[23]_i_5_n_0 ;
  wire \distance[23]_i_6_n_0 ;
  wire \distance[26]_i_10_n_0 ;
  wire \distance[26]_i_11_n_0 ;
  wire \distance[26]_i_12_n_0 ;
  wire \distance[26]_i_13_n_0 ;
  wire \distance[26]_i_14_n_0 ;
  wire \distance[26]_i_15_n_0 ;
  wire \distance[26]_i_16_n_0 ;
  wire \distance[26]_i_17_n_0 ;
  wire \distance[26]_i_18_n_0 ;
  wire \distance[26]_i_19_n_0 ;
  wire \distance[26]_i_1_n_0 ;
  wire \distance[26]_i_3_n_0 ;
  wire \distance[26]_i_4_n_0 ;
  wire \distance[26]_i_5_n_0 ;
  wire \distance[26]_i_6_n_0 ;
  wire \distance[26]_i_7_n_0 ;
  wire \distance[26]_i_9_n_0 ;
  wire \distance[7]_i_3_n_0 ;
  wire \distance[7]_i_4_n_0 ;
  wire \distance[7]_i_5_n_0 ;
  wire \distance_reg[11]_i_2_n_0 ;
  wire \distance_reg[11]_i_2_n_1 ;
  wire \distance_reg[11]_i_2_n_2 ;
  wire \distance_reg[11]_i_2_n_3 ;
  wire \distance_reg[15]_i_2_n_0 ;
  wire \distance_reg[15]_i_2_n_1 ;
  wire \distance_reg[15]_i_2_n_2 ;
  wire \distance_reg[15]_i_2_n_3 ;
  wire \distance_reg[19]_i_2_n_0 ;
  wire \distance_reg[19]_i_2_n_1 ;
  wire \distance_reg[19]_i_2_n_2 ;
  wire \distance_reg[19]_i_2_n_3 ;
  wire \distance_reg[23]_i_2_n_0 ;
  wire \distance_reg[23]_i_2_n_1 ;
  wire \distance_reg[23]_i_2_n_2 ;
  wire \distance_reg[23]_i_2_n_3 ;
  wire \distance_reg[26]_i_8_n_2 ;
  wire \distance_reg[26]_i_8_n_3 ;
  wire \distance_reg[7]_i_2_n_0 ;
  wire \distance_reg[7]_i_2_n_1 ;
  wire \distance_reg[7]_i_2_n_2 ;
  wire \distance_reg[7]_i_2_n_3 ;
  wire gc_button;
  wire gc_rst;
  wire [26:0]p_1_in;
  wire pulse;
  wire pulse_i_1_n_0;
  wire s_axi_aclk;
  wire [3:0]NLW_counter2_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter2_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_counter2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter2_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_distance_reg[26]_i_8_CO_UNCONNECTED ;
  wire [3:3]\NLW_distance_reg[26]_i_8_O_UNCONNECTED ;

  CARRY4 counter2_carry
       (.CI(1'b0),
        .CO({counter2_carry_n_0,counter2_carry_n_1,counter2_carry_n_2,counter2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter2_carry_O_UNCONNECTED[3:0]),
        .S({counter2_carry_i_1_n_0,counter2_carry_i_2_n_0,counter2_carry_i_3_n_0,counter2_carry_i_4_n_0}));
  CARRY4 counter2_carry__0
       (.CI(counter2_carry_n_0),
        .CO({counter2_carry__0_n_0,counter2_carry__0_n_1,counter2_carry__0_n_2,counter2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter2_carry__0_O_UNCONNECTED[3:0]),
        .S({counter2_carry__0_i_1_n_0,counter2_carry__0_i_2_n_0,counter2_carry__0_i_3_n_0,counter2_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry__0_i_1
       (.I0(counter_reg[22]),
        .I1(distance[22]),
        .I2(counter_reg[21]),
        .I3(distance[21]),
        .I4(counter_reg[23]),
        .I5(distance[23]),
        .O(counter2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry__0_i_2
       (.I0(counter_reg[19]),
        .I1(distance[19]),
        .I2(counter_reg[18]),
        .I3(distance[18]),
        .I4(counter_reg[20]),
        .I5(distance[20]),
        .O(counter2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry__0_i_3
       (.I0(counter_reg[16]),
        .I1(distance[16]),
        .I2(counter_reg[15]),
        .I3(distance[15]),
        .I4(counter_reg[17]),
        .I5(distance[17]),
        .O(counter2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry__0_i_4
       (.I0(counter_reg[13]),
        .I1(distance[13]),
        .I2(counter_reg[12]),
        .I3(distance[12]),
        .I4(counter_reg[14]),
        .I5(distance[14]),
        .O(counter2_carry__0_i_4_n_0));
  CARRY4 counter2_carry__1
       (.CI(counter2_carry__0_n_0),
        .CO({NLW_counter2_carry__1_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter2_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,counter2_carry__1_i_1_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry__1_i_1
       (.I0(counter_reg[25]),
        .I1(distance[25]),
        .I2(counter_reg[24]),
        .I3(distance[24]),
        .I4(counter_reg[26]),
        .I5(distance[26]),
        .O(counter2_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry_i_1
       (.I0(counter_reg[10]),
        .I1(distance[10]),
        .I2(counter_reg[9]),
        .I3(distance[9]),
        .I4(counter_reg[11]),
        .I5(distance[11]),
        .O(counter2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry_i_2
       (.I0(counter_reg[7]),
        .I1(distance[7]),
        .I2(counter_reg[6]),
        .I3(distance[6]),
        .I4(counter_reg[8]),
        .I5(distance[8]),
        .O(counter2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry_i_3
       (.I0(counter_reg[4]),
        .I1(distance[4]),
        .I2(counter_reg[3]),
        .I3(distance[3]),
        .I4(counter_reg[5]),
        .I5(distance[5]),
        .O(counter2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    counter2_carry_i_4
       (.I0(counter_reg[1]),
        .I1(distance[1]),
        .I2(counter_reg[0]),
        .I3(distance[0]),
        .I4(counter_reg[2]),
        .I5(distance[2]),
        .O(counter2_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_3 
       (.I0(counter_reg[0]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_4 
       (.I0(counter_reg[3]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_5 
       (.I0(counter_reg[2]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[0]_i_6 
       (.I0(counter_reg[1]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter[0]_i_7 
       (.I0(counter_reg[0]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[16]_i_2 
       (.I0(counter_reg[19]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[16]_i_3 
       (.I0(counter_reg[18]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[16]_i_4 
       (.I0(counter_reg[17]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[16]_i_5 
       (.I0(counter_reg[16]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[20]_i_2 
       (.I0(counter_reg[23]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[20]_i_3 
       (.I0(counter_reg[22]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[20]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[20]_i_4 
       (.I0(counter_reg[21]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[20]_i_5 
       (.I0(counter_reg[20]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[24]_i_2 
       (.I0(counter_reg[26]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[24]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[24]_i_3 
       (.I0(counter_reg[25]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[24]_i_4 
       (.I0(counter_reg[24]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(button_posedge),
        .I2(CO),
        .O(\counter[8]_i_5_n_0 ));
  FDCE \counter_reg[0] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(counter_reg[0]));
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_3_n_0 }),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 ,\counter[0]_i_7_n_0 }));
  FDCE \counter_reg[10] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE \counter_reg[13] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[16] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE \counter_reg[17] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE \counter_reg[18] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE \counter_reg[19] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE \counter_reg[1] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(counter_reg[1]));
  FDCE \counter_reg[20] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDCE \counter_reg[21] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE \counter_reg[22] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE \counter_reg[23] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE \counter_reg[24] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[24]_i_1_O_UNCONNECTED [3],\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({1'b0,\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 }));
  FDCE \counter_reg[25] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE \counter_reg[26] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]));
  FDCE \counter_reg[2] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(counter_reg[2]));
  FDCE \counter_reg[3] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[4] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE \counter_reg[5] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE \counter_reg[9] 
       (.C(s_axi_aclk),
        .CE(\counter_reg[0]_0 ),
        .CLR(AR),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[0]_i_1 
       (.I0(distance[1]),
        .I1(distance[0]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[10]_i_1 
       (.I0(distance[11]),
        .I1(distance0[10]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[11]_i_1 
       (.I0(distance[12]),
        .I1(distance0[11]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[11]_i_3 
       (.I0(distance[11]),
        .O(\distance[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[11]_i_4 
       (.I0(distance[10]),
        .O(\distance[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[11]_i_5 
       (.I0(distance[9]),
        .O(\distance[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[12]_i_1 
       (.I0(distance[13]),
        .I1(distance0[12]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[13]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[13]),
        .I4(distance[14]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[14]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[14]),
        .I4(distance[15]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[15]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[15]),
        .I4(distance[16]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[15]_i_3 
       (.I0(distance[14]),
        .O(\distance[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[15]_i_4 
       (.I0(distance[12]),
        .O(\distance[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[16]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[16]),
        .I4(distance[17]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[17]_i_1 
       (.I0(distance[18]),
        .I1(distance0[17]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[18]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[18]),
        .I4(distance[19]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[19]_i_1 
       (.I0(distance[20]),
        .I1(distance0[19]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[19]_i_3 
       (.I0(distance[19]),
        .O(\distance[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[1]_i_1 
       (.I0(distance[2]),
        .I1(distance[1]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[20]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[20]),
        .I4(distance[21]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[21]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[21]),
        .I4(distance[22]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[22]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[22]),
        .I4(distance[23]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[23]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[23]),
        .I4(distance[24]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[23]_i_3 
       (.I0(distance[23]),
        .O(\distance[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[23]_i_4 
       (.I0(distance[22]),
        .O(\distance[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[23]_i_5 
       (.I0(distance[21]),
        .O(\distance[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[23]_i_6 
       (.I0(distance[20]),
        .O(\distance[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[24]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[24]),
        .I4(distance[25]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[25]_i_1 
       (.I0(distance[26]),
        .I1(distance0[25]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hFFFEFFFF0000FFFF)) 
    \distance[26]_i_1 
       (.I0(\distance[26]_i_3_n_0 ),
        .I1(\distance[26]_i_4_n_0 ),
        .I2(\distance[26]_i_5_n_0 ),
        .I3(\distance[26]_i_6_n_0 ),
        .I4(gc_button),
        .I5(\distance[26]_i_7_n_0 ),
        .O(\distance[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \distance[26]_i_10 
       (.I0(\distance[26]_i_18_n_0 ),
        .I1(distance[6]),
        .I2(\distance[26]_i_19_n_0 ),
        .I3(distance[7]),
        .I4(distance[9]),
        .I5(distance[8]),
        .O(\distance[26]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \distance[26]_i_11 
       (.I0(distance[14]),
        .I1(distance[15]),
        .I2(distance[16]),
        .O(\distance[26]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \distance[26]_i_12 
       (.I0(distance[22]),
        .I1(distance[23]),
        .I2(distance[24]),
        .O(\distance[26]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \distance[26]_i_13 
       (.I0(distance[16]),
        .I1(distance[15]),
        .I2(distance[18]),
        .I3(distance[17]),
        .O(\distance[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEEE)) 
    \distance[26]_i_14 
       (.I0(distance[11]),
        .I1(distance[10]),
        .I2(distance[8]),
        .I3(distance[6]),
        .I4(\distance[26]_i_19_n_0 ),
        .I5(distance[7]),
        .O(\distance[26]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[26]_i_15 
       (.I0(distance[26]),
        .O(\distance[26]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[26]_i_16 
       (.I0(distance[25]),
        .O(\distance[26]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[26]_i_17 
       (.I0(distance[24]),
        .O(\distance[26]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \distance[26]_i_18 
       (.I0(distance[15]),
        .I1(distance[10]),
        .I2(distance[11]),
        .I3(distance[13]),
        .I4(distance[12]),
        .O(\distance[26]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \distance[26]_i_19 
       (.I0(distance[4]),
        .I1(distance[0]),
        .I2(distance[3]),
        .I3(distance[2]),
        .I4(distance[1]),
        .I5(distance[5]),
        .O(\distance[26]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h4F4F4FFF)) 
    \distance[26]_i_2 
       (.I0(\distance[26]_i_3_n_0 ),
        .I1(distance0[26]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \distance[26]_i_3 
       (.I0(\distance[26]_i_9_n_0 ),
        .I1(\distance[26]_i_10_n_0 ),
        .I2(\distance[26]_i_11_n_0 ),
        .I3(distance[25]),
        .I4(distance[26]),
        .I5(\distance[26]_i_12_n_0 ),
        .O(\distance[26]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \distance[26]_i_4 
       (.I0(distance[20]),
        .I1(distance[21]),
        .O(\distance[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA888888888)) 
    \distance[26]_i_5 
       (.I0(\distance[26]_i_13_n_0 ),
        .I1(distance[14]),
        .I2(distance[9]),
        .I3(distance[12]),
        .I4(\distance[26]_i_14_n_0 ),
        .I5(distance[13]),
        .O(\distance[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \distance[26]_i_6 
       (.I0(distance[22]),
        .I1(distance[23]),
        .I2(distance[24]),
        .I3(distance[25]),
        .I4(distance[26]),
        .I5(distance[19]),
        .O(\distance[26]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \distance[26]_i_7 
       (.I0(CO),
        .I1(button_posedge),
        .O(\distance[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \distance[26]_i_9 
       (.I0(distance[18]),
        .I1(distance[19]),
        .I2(distance[23]),
        .I3(distance[17]),
        .I4(distance[21]),
        .I5(distance[20]),
        .O(\distance[26]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[2]_i_1 
       (.I0(distance[3]),
        .I1(distance[2]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[3]_i_1 
       (.I0(distance[4]),
        .I1(distance[3]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[4]_i_1 
       (.I0(distance[5]),
        .I1(distance0[4]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[5]_i_1 
       (.I0(distance[6]),
        .I1(distance0[5]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[6]_i_1 
       (.I0(distance[7]),
        .I1(distance0[6]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[7]_i_1 
       (.I0(distance[8]),
        .I1(distance0[7]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[7]_i_3 
       (.I0(distance[7]),
        .O(\distance[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[7]_i_4 
       (.I0(distance[6]),
        .O(\distance[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \distance[7]_i_5 
       (.I0(distance[5]),
        .O(\distance[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1F1FFF1FFF1F)) 
    \distance[8]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .I3(distance0[8]),
        .I4(distance[9]),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hA0A0A000C0C0C000)) 
    \distance[9]_i_1 
       (.I0(distance[10]),
        .I1(distance0[9]),
        .I2(gc_button),
        .I3(CO),
        .I4(button_posedge),
        .I5(\distance[26]_i_3_n_0 ),
        .O(p_1_in[9]));
  FDCE \distance_reg[0] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(distance[0]));
  FDCE \distance_reg[10] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[10]),
        .Q(distance[10]));
  FDCE \distance_reg[11] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[11]),
        .Q(distance[11]));
  CARRY4 \distance_reg[11]_i_2 
       (.CI(\distance_reg[7]_i_2_n_0 ),
        .CO({\distance_reg[11]_i_2_n_0 ,\distance_reg[11]_i_2_n_1 ,\distance_reg[11]_i_2_n_2 ,\distance_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({distance[11:9],1'b0}),
        .O(distance0[11:8]),
        .S({\distance[11]_i_3_n_0 ,\distance[11]_i_4_n_0 ,\distance[11]_i_5_n_0 ,distance[8]}));
  FDCE \distance_reg[12] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[12]),
        .Q(distance[12]));
  FDPE \distance_reg[13] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[13]),
        .PRE(AR),
        .Q(distance[13]));
  FDPE \distance_reg[14] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[14]),
        .PRE(AR),
        .Q(distance[14]));
  FDPE \distance_reg[15] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[15]),
        .PRE(AR),
        .Q(distance[15]));
  CARRY4 \distance_reg[15]_i_2 
       (.CI(\distance_reg[11]_i_2_n_0 ),
        .CO({\distance_reg[15]_i_2_n_0 ,\distance_reg[15]_i_2_n_1 ,\distance_reg[15]_i_2_n_2 ,\distance_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,distance[14],1'b0,distance[12]}),
        .O(distance0[15:12]),
        .S({distance[15],\distance[15]_i_3_n_0 ,distance[13],\distance[15]_i_4_n_0 }));
  FDPE \distance_reg[16] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[16]),
        .PRE(AR),
        .Q(distance[16]));
  FDCE \distance_reg[17] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[17]),
        .Q(distance[17]));
  FDPE \distance_reg[18] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[18]),
        .PRE(AR),
        .Q(distance[18]));
  FDCE \distance_reg[19] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[19]),
        .Q(distance[19]));
  CARRY4 \distance_reg[19]_i_2 
       (.CI(\distance_reg[15]_i_2_n_0 ),
        .CO({\distance_reg[19]_i_2_n_0 ,\distance_reg[19]_i_2_n_1 ,\distance_reg[19]_i_2_n_2 ,\distance_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({distance[19],1'b0,1'b0,1'b0}),
        .O(distance0[19:16]),
        .S({\distance[19]_i_3_n_0 ,distance[18:16]}));
  FDCE \distance_reg[1] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(distance[1]));
  FDPE \distance_reg[20] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[20]),
        .PRE(AR),
        .Q(distance[20]));
  FDPE \distance_reg[21] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[21]),
        .PRE(AR),
        .Q(distance[21]));
  FDPE \distance_reg[22] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[22]),
        .PRE(AR),
        .Q(distance[22]));
  FDPE \distance_reg[23] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[23]),
        .PRE(AR),
        .Q(distance[23]));
  CARRY4 \distance_reg[23]_i_2 
       (.CI(\distance_reg[19]_i_2_n_0 ),
        .CO({\distance_reg[23]_i_2_n_0 ,\distance_reg[23]_i_2_n_1 ,\distance_reg[23]_i_2_n_2 ,\distance_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(distance[23:20]),
        .O(distance0[23:20]),
        .S({\distance[23]_i_3_n_0 ,\distance[23]_i_4_n_0 ,\distance[23]_i_5_n_0 ,\distance[23]_i_6_n_0 }));
  FDPE \distance_reg[24] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[24]),
        .PRE(AR),
        .Q(distance[24]));
  FDCE \distance_reg[25] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[25]),
        .Q(distance[25]));
  FDPE \distance_reg[26] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[26]),
        .PRE(AR),
        .Q(distance[26]));
  CARRY4 \distance_reg[26]_i_8 
       (.CI(\distance_reg[23]_i_2_n_0 ),
        .CO({\NLW_distance_reg[26]_i_8_CO_UNCONNECTED [3:2],\distance_reg[26]_i_8_n_2 ,\distance_reg[26]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,distance[25:24]}),
        .O({\NLW_distance_reg[26]_i_8_O_UNCONNECTED [3],distance0[26:24]}),
        .S({1'b0,\distance[26]_i_15_n_0 ,\distance[26]_i_16_n_0 ,\distance[26]_i_17_n_0 }));
  FDCE \distance_reg[2] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(distance[2]));
  FDCE \distance_reg[3] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(distance[3]));
  FDCE \distance_reg[4] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(distance[4]));
  FDCE \distance_reg[5] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[5]),
        .Q(distance[5]));
  FDCE \distance_reg[6] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[6]),
        .Q(distance[6]));
  FDCE \distance_reg[7] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[7]),
        .Q(distance[7]));
  CARRY4 \distance_reg[7]_i_2 
       (.CI(1'b0),
        .CO({\distance_reg[7]_i_2_n_0 ,\distance_reg[7]_i_2_n_1 ,\distance_reg[7]_i_2_n_2 ,\distance_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({distance[7:5],1'b0}),
        .O(distance0[7:4]),
        .S({\distance[7]_i_3_n_0 ,\distance[7]_i_4_n_0 ,\distance[7]_i_5_n_0 ,distance[4]}));
  FDPE \distance_reg[8] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .D(p_1_in[8]),
        .PRE(AR),
        .Q(distance[8]));
  FDCE \distance_reg[9] 
       (.C(s_axi_aclk),
        .CE(\distance[26]_i_1_n_0 ),
        .CLR(AR),
        .D(p_1_in[9]),
        .Q(distance[9]));
  LUT5 #(
    .INIT(32'hFDFFFC00)) 
    pulse_i_1
       (.I0(gc_button),
        .I1(CO),
        .I2(button_posedge),
        .I3(gc_rst),
        .I4(pulse),
        .O(pulse_i_1_n_0));
  FDRE pulse_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pulse_i_1_n_0),
        .Q(pulse),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \state[8]_i_2 
       (.I0(gc_rst),
        .O(AR));
endmodule

(* ORIG_REF_NAME = "GrayCounter_System" *) 
module arm_gray_counter_ip_0_0_GrayCounter_System
   (digit_reg,
    \state_reg[2] ,
    \state_reg[1] ,
    \state_reg[3] ,
    D,
    \state_reg[4] ,
    \state_reg[5] ,
    \state_reg[6] ,
    \state_reg[8] ,
    Display_AA,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_aclk,
    Q,
    axi_araddr,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    gc_button,
    gc_rst);
  output digit_reg;
  output \state_reg[2] ;
  output \state_reg[1] ;
  output \state_reg[3] ;
  output [7:0]D;
  output \state_reg[4] ;
  output \state_reg[5] ;
  output \state_reg[6] ;
  output [1:0]\state_reg[8] ;
  output Display_AA;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  input s_axi_aclk;
  input [7:0]Q;
  input [1:0]axi_araddr;
  input [7:0]\axi_rdata_reg[7] ;
  input [7:0]\axi_rdata_reg[7]_0 ;
  input gc_button;
  input gc_rst;

  wire [7:0]D;
  wire Display_AA;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AG;
  wire [7:0]Q;
  wire [1:0]axi_araddr;
  wire [7:0]\axi_rdata_reg[7] ;
  wire [7:0]\axi_rdata_reg[7]_0 ;
  wire button_posedge;
  wire digit_reg;
  wire gc_button;
  wire gc_rst;
  wire pulse;
  wire pulser_INST_n_1;
  wire pulser_INST_n_2;
  wire s_axi_aclk;
  wire signal_posedge_INST_n_1;
  wire \state_reg[1] ;
  wire \state_reg[2] ;
  wire \state_reg[3] ;
  wire \state_reg[4] ;
  wire \state_reg[5] ;
  wire \state_reg[6] ;
  wire [1:0]\state_reg[8] ;

  arm_gray_counter_ip_0_0_gray_Nbits Counter_INST
       (.AR(pulser_INST_n_1),
        .D({\state_reg[8] ,\state_reg[6] ,\state_reg[5] ,\state_reg[4] ,\state_reg[3] ,\state_reg[2] ,\state_reg[1] }),
        .Q(Q),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[7] (\axi_rdata_reg[7] ),
        .\axi_rdata_reg[7]_0 (\axi_rdata_reg[7]_0 ),
        .pulse(pulse),
        .s_axi_aclk(s_axi_aclk),
        .\slv_reg3_reg[7] (D));
  arm_gray_counter_ip_0_0_DigitLEDdriver DigitLEDdriver_INST
       (.AR(pulser_INST_n_1),
        .D({\state_reg[8] ,\state_reg[6] ,\state_reg[5] ,\state_reg[4] ,\state_reg[3] ,\state_reg[2] ,\state_reg[1] }),
        .Display_AA(Display_AA),
        .Display_AB(Display_AB),
        .Display_AC(Display_AC),
        .Display_AD(Display_AD),
        .Display_AE(Display_AE),
        .Display_AF(Display_AF),
        .Display_AG(Display_AG),
        .digit_reg(digit_reg),
        .s_axi_aclk(s_axi_aclk));
  arm_gray_counter_ip_0_0_GrayCounter_Pulse pulser_INST
       (.AR(pulser_INST_n_1),
        .CO(pulser_INST_n_2),
        .button_posedge(button_posedge),
        .\counter_reg[0]_0 (signal_posedge_INST_n_1),
        .gc_button(gc_button),
        .gc_rst(gc_rst),
        .pulse(pulse),
        .s_axi_aclk(s_axi_aclk));
  arm_gray_counter_ip_0_0_signal_posedge signal_posedge_INST
       (.AR(pulser_INST_n_1),
        .CO(pulser_INST_n_2),
        .button_posedge(button_posedge),
        .clean_reg_0(signal_posedge_INST_n_1),
        .gc_button(gc_button),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "gray_Nbits" *) 
module arm_gray_counter_ip_0_0_gray_Nbits
   (D,
    \slv_reg3_reg[7] ,
    pulse,
    Q,
    axi_araddr,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[7]_0 ,
    s_axi_aclk,
    AR);
  output [7:0]D;
  output [7:0]\slv_reg3_reg[7] ;
  input pulse;
  input [7:0]Q;
  input [1:0]axi_araddr;
  input [7:0]\axi_rdata_reg[7] ;
  input [7:0]\axi_rdata_reg[7]_0 ;
  input s_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [7:0]D;
  wire [7:0]Q;
  wire [1:0]axi_araddr;
  wire [7:0]\axi_rdata_reg[7] ;
  wire [7:0]\axi_rdata_reg[7]_0 ;
  wire [1:1]p_0_in;
  wire pulse;
  wire s_axi_aclk;
  wire [7:0]\slv_reg3_reg[7] ;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state[5]_i_1_n_0 ;
  wire \state[6]_i_1_n_0 ;
  wire \state[7]_i_1_n_0 ;
  wire \state[8]_i_1_n_0 ;
  wire \state[8]_i_3_n_0 ;

  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [0]),
        .I4(\axi_rdata_reg[7]_0 [0]),
        .I5(D[0]),
        .O(\slv_reg3_reg[7] [0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [1]),
        .I4(\axi_rdata_reg[7]_0 [1]),
        .I5(D[1]),
        .O(\slv_reg3_reg[7] [1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [2]),
        .I4(\axi_rdata_reg[7]_0 [2]),
        .I5(D[2]),
        .O(\slv_reg3_reg[7] [2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [3]),
        .I4(\axi_rdata_reg[7]_0 [3]),
        .I5(D[3]),
        .O(\slv_reg3_reg[7] [3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [4]),
        .I4(\axi_rdata_reg[7]_0 [4]),
        .I5(D[4]),
        .O(\slv_reg3_reg[7] [4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [5]),
        .I4(\axi_rdata_reg[7]_0 [5]),
        .I5(D[5]),
        .O(\slv_reg3_reg[7] [5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [6]),
        .I4(\axi_rdata_reg[7]_0 [6]),
        .I5(D[6]),
        .O(\slv_reg3_reg[7] [6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(axi_araddr[0]),
        .I2(axi_araddr[1]),
        .I3(\axi_rdata_reg[7] [7]),
        .I4(\axi_rdata_reg[7]_0 [7]),
        .I5(D[7]),
        .O(\slv_reg3_reg[7] [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \state[0]_i_1 
       (.I0(pulse),
        .I1(p_0_in),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \state[1]_i_1 
       (.I0(p_0_in),
        .I1(pulse),
        .I2(D[0]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \state[2]_i_1 
       (.I0(D[0]),
        .I1(pulse),
        .I2(p_0_in),
        .I3(D[1]),
        .O(\state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \state[3]_i_1 
       (.I0(D[1]),
        .I1(p_0_in),
        .I2(pulse),
        .I3(D[0]),
        .I4(D[2]),
        .O(\state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000020)) 
    \state[4]_i_1 
       (.I0(D[2]),
        .I1(D[0]),
        .I2(pulse),
        .I3(p_0_in),
        .I4(D[1]),
        .I5(D[3]),
        .O(\state[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \state[5]_i_1 
       (.I0(D[3]),
        .I1(\state[8]_i_3_n_0 ),
        .I2(D[4]),
        .O(\state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \state[6]_i_1 
       (.I0(\state[8]_i_3_n_0 ),
        .I1(D[4]),
        .I2(D[3]),
        .I3(D[5]),
        .O(\state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFDF0020)) 
    \state[7]_i_1 
       (.I0(\state[8]_i_3_n_0 ),
        .I1(D[4]),
        .I2(D[5]),
        .I3(D[3]),
        .I4(D[6]),
        .O(\state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    \state[8]_i_1 
       (.I0(\state[8]_i_3_n_0 ),
        .I1(D[5]),
        .I2(D[4]),
        .I3(D[3]),
        .I4(D[7]),
        .O(\state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \state[8]_i_3 
       (.I0(D[1]),
        .I1(p_0_in),
        .I2(pulse),
        .I3(D[0]),
        .I4(D[2]),
        .O(\state[8]_i_3_n_0 ));
  FDCE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[0]_i_1_n_0 ),
        .Q(p_0_in));
  FDCE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[1]_i_1_n_0 ),
        .Q(D[0]));
  FDCE \state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[2]_i_1_n_0 ),
        .Q(D[1]));
  FDCE \state_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[3]_i_1_n_0 ),
        .Q(D[2]));
  FDCE \state_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[4]_i_1_n_0 ),
        .Q(D[3]));
  FDCE \state_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[5]_i_1_n_0 ),
        .Q(D[4]));
  FDCE \state_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[6]_i_1_n_0 ),
        .Q(D[5]));
  FDCE \state_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\state[7]_i_1_n_0 ),
        .Q(D[6]));
  FDPE \state_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[8]_i_1_n_0 ),
        .PRE(AR),
        .Q(D[7]));
endmodule

(* ORIG_REF_NAME = "gray_counter_ip_v1_0" *) 
module arm_gray_counter_ip_0_0_gray_counter_ip_v1_0
   (\state_reg[6] ,
    \state_reg[5] ,
    \state_reg[4] ,
    D,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    Display_AA,
    digit_reg,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output \state_reg[6] ;
  output \state_reg[5] ;
  output \state_reg[4] ;
  output [4:0]D;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output Display_AA;
  output digit_reg;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire [4:0]D;
  wire Display_AA;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AG;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire digit_reg;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \state_reg[4] ;
  wire \state_reg[5] ;
  wire \state_reg[6] ;

  arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI gray_counter_ip_v1_0_S_AXI_inst
       (.D({D[4:3],\state_reg[6] ,\state_reg[5] ,\state_reg[4] ,D[2:0]}),
        .Display_AA(Display_AA),
        .Display_AB(Display_AB),
        .Display_AC(Display_AC),
        .Display_AD(Display_AD),
        .Display_AE(Display_AE),
        .Display_AF(Display_AF),
        .Display_AG(Display_AG),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .digit_reg(digit_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "gray_counter_ip_v1_0_S_AXI" *) 
module arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI
   (D,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    Display_AA,
    digit_reg,
    Display_AB,
    Display_AC,
    Display_AD,
    Display_AE,
    Display_AF,
    Display_AG,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output [7:0]D;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output Display_AA;
  output digit_reg;
  output Display_AB;
  output Display_AC;
  output Display_AD;
  output Display_AE;
  output Display_AF;
  output Display_AG;
  output s_axi_rvalid;
  output s_axi_bvalid;
  input s_axi_aclk;
  input [3:0]s_axi_awaddr;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire [7:0]D;
  wire Display_AA;
  wire Display_AB;
  wire Display_AC;
  wire Display_AD;
  wire Display_AE;
  wire Display_AF;
  wire Display_AG;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr_reg_n_0_[0] ;
  wire \axi_awaddr_reg_n_0_[1] ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire digit_reg;
  wire gc_button;
  wire gc_button_i_1_n_0;
  wire gc_rst;
  wire gc_rst0;
  wire gc_rst_i_1_n_0;
  wire [1:0]p_0_in_0;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;

  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(p_0_in_0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(p_0_in_0[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg2[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg2[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg2[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg2[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg2[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg2[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg2[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg2[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg2[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg2[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg2[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg2[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg2[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg2[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg2[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg2[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg2[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg2[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg2[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg2[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg2[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg2[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg2[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg2[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gc_button_i_1
       (.I0(s_axi_wdata[0]),
        .I1(gc_rst0),
        .I2(gc_button),
        .O(gc_button_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    gc_button_i_2
       (.I0(\axi_awaddr_reg_n_0_[1] ),
        .I1(\axi_awaddr_reg_n_0_[0] ),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(slv_reg_wren__2),
        .O(gc_rst0));
  FDRE gc_button_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gc_button_i_1_n_0),
        .Q(gc_button),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    gc_rst_i_1
       (.I0(s_axi_wdata[1]),
        .I1(gc_rst0),
        .I2(gc_rst),
        .O(gc_rst_i_1_n_0));
  FDRE gc_rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gc_rst_i_1_n_0),
        .Q(gc_rst),
        .R(axi_awready_i_1_n_0));
  arm_gray_counter_ip_0_0_GrayCounter_System nolabel_line420
       (.D(reg_data_out[7:0]),
        .Display_AA(Display_AA),
        .Display_AB(Display_AB),
        .Display_AC(Display_AC),
        .Display_AD(Display_AD),
        .Display_AE(Display_AE),
        .Display_AF(Display_AF),
        .Display_AG(Display_AG),
        .Q(slv_reg3[7:0]),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[7] (slv_reg2[7:0]),
        .\axi_rdata_reg[7]_0 (slv_reg1[7:0]),
        .digit_reg(digit_reg),
        .gc_button(gc_button),
        .gc_rst(gc_rst),
        .s_axi_aclk(s_axi_aclk),
        .\state_reg[1] (D[0]),
        .\state_reg[2] (D[1]),
        .\state_reg[3] (D[2]),
        .\state_reg[4] (D[3]),
        .\state_reg[5] (D[4]),
        .\state_reg[6] (D[5]),
        .\state_reg[8] (D[7:6]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(p_0_in_0[1]),
        .I2(s_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s_axi_arvalid),
        .I1(s_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "signal_posedge" *) 
module arm_gray_counter_ip_0_0_signal_posedge
   (button_posedge,
    clean_reg_0,
    s_axi_aclk,
    AR,
    gc_button,
    CO);
  output button_posedge;
  output clean_reg_0;
  input s_axi_aclk;
  input [0:0]AR;
  input gc_button;
  input [0:0]CO;

  wire [0:0]AR;
  wire [0:0]CO;
  wire button_posedge;
  wire clean_i_1_n_0;
  wire clean_reg_0;
  wire gc_button;
  wire new;
  wire p_0_in;
  wire s_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    clean_i_1
       (.I0(gc_button),
        .I1(new),
        .O(clean_i_1_n_0));
  FDCE clean_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clean_i_1_n_0),
        .Q(button_posedge));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_1 
       (.I0(button_posedge),
        .I1(CO),
        .I2(gc_button),
        .O(clean_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    new_i_1
       (.I0(gc_button),
        .O(p_0_in));
  FDPE new_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .PRE(AR),
        .Q(new));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
