-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Mar 28 20:51:28 2019
-- Host        : localhost.localdomain running 64-bit Fedora release 29 (Twenty Nine)
-- Command     : write_vhdl -force -mode funcsim
--               /home/jesterhead1924/Documents/CE435-Embedded_Systems/Labs/vivado-projects/lab3_step3/lab2_simple_arm.srcs/sources_1/bd/arm/ip/arm_gray_counter_ip_0_0/arm_gray_counter_ip_0_0_sim_netlist.vhdl
-- Design      : arm_gray_counter_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_Digit_chooser is
  port (
    CLK : out STD_LOGIC;
    digit_reg_0 : out STD_LOGIC;
    Display_AA : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Display_AA_0 : in STD_LOGIC;
    \LED__30\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Display_AF_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_Digit_chooser : entity is "Digit_chooser";
end arm_gray_counter_ip_0_0_Digit_chooser;

architecture STRUCTURE of arm_gray_counter_ip_0_0_Digit_chooser is
  signal change_value : STD_LOGIC;
  signal change_value_i_2_n_0 : STD_LOGIC;
  signal change_value_i_3_n_0 : STD_LOGIC;
  signal change_value_i_4_n_0 : STD_LOGIC;
  signal change_value_i_5_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal digit_i_1_n_0 : STD_LOGIC;
  signal \^digit_reg_0\ : STD_LOGIC;
  signal \NLW_counter0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[17]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[18]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[19]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \counter[20]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \counter[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of digit_i_1 : label is "soft_lutpair3";
begin
  digit_reg_0 <= \^digit_reg_0\;
Display_AA_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFFFFFFEEF0000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^digit_reg_0\,
      I5 => Display_AA_0,
      O => Display_AA
    );
Display_AB_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F9F00004F9FFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \^digit_reg_0\,
      I5 => \LED__30\(4),
      O => Display_AB
    );
Display_AC_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75FB000075FBFFFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^digit_reg_0\,
      I5 => \LED__30\(3),
      O => Display_AC
    );
Display_AD_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7D6B00007D6BFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \^digit_reg_0\,
      I5 => \LED__30\(2),
      O => Display_AD
    );
Display_AE_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD510000FD51FFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(3),
      I4 => \^digit_reg_0\,
      I5 => \LED__30\(1),
      O => Display_AE
    );
Display_AF_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFABFFFFBFAB0000"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => \^digit_reg_0\,
      I5 => Display_AF_0,
      O => Display_AF
    );
Display_AG_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB6E0000BB6EFFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(3),
      I4 => \^digit_reg_0\,
      I5 => \LED__30\(0),
      O => Display_AG
    );
change_value_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => change_value_i_2_n_0,
      I1 => counter(14),
      I2 => counter(9),
      I3 => counter(16),
      I4 => change_value_i_3_n_0,
      I5 => change_value_i_4_n_0,
      O => change_value
    );
change_value_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => counter(5),
      I1 => counter(0),
      I2 => counter(20),
      I3 => counter(17),
      I4 => counter(7),
      I5 => counter(6),
      O => change_value_i_2_n_0
    );
change_value_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(11),
      I2 => counter(4),
      I3 => counter(3),
      O => change_value_i_3_n_0
    );
change_value_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => counter(18),
      I1 => counter(19),
      I2 => counter(1),
      I3 => counter(2),
      I4 => change_value_i_5_n_0,
      O => change_value_i_4_n_0
    );
change_value_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(13),
      I1 => counter(15),
      I2 => counter(10),
      I3 => counter(8),
      O => change_value_i_5_n_0
    );
change_value_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => change_value,
      Q => CLK
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \NLW_counter0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      I1 => change_value,
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => change_value,
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => change_value,
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => change_value,
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => change_value,
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => change_value,
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => change_value,
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => change_value,
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => change_value,
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(18),
      I1 => change_value,
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => change_value,
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => change_value,
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(20),
      I1 => change_value,
      O => counter_0(20)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => change_value,
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => change_value,
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => change_value,
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => change_value,
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => change_value,
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => change_value,
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => change_value,
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => change_value,
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(20),
      Q => counter(20)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => counter_0(9),
      Q => counter(9)
    );
digit_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => change_value,
      I1 => \^digit_reg_0\,
      O => digit_i_1_n_0
    );
digit_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => digit_i_1_n_0,
      Q => \^digit_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_GrayCounter_Pulse is
  port (
    pulse : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    \counter_reg[0]_0\ : in STD_LOGIC;
    button_posedge : in STD_LOGIC;
    gc_button : in STD_LOGIC;
    gc_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_GrayCounter_Pulse : entity is "GrayCounter_Pulse";
end arm_gray_counter_ip_0_0_GrayCounter_Pulse;

architecture STRUCTURE of arm_gray_counter_ip_0_0_GrayCounter_Pulse is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_0\ : STD_LOGIC;
  signal \counter2_carry__0_n_1\ : STD_LOGIC;
  signal \counter2_carry__0_n_2\ : STD_LOGIC;
  signal \counter2_carry__0_n_3\ : STD_LOGIC;
  signal \counter2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal counter2_carry_i_1_n_0 : STD_LOGIC;
  signal counter2_carry_i_2_n_0 : STD_LOGIC;
  signal counter2_carry_i_3_n_0 : STD_LOGIC;
  signal counter2_carry_i_4_n_0 : STD_LOGIC;
  signal counter2_carry_n_0 : STD_LOGIC;
  signal counter2_carry_n_1 : STD_LOGIC;
  signal counter2_carry_n_2 : STD_LOGIC;
  signal counter2_carry_n_3 : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal distance : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal distance0 : STD_LOGIC_VECTOR ( 26 downto 4 );
  signal \distance[11]_i_3_n_0\ : STD_LOGIC;
  signal \distance[11]_i_4_n_0\ : STD_LOGIC;
  signal \distance[11]_i_5_n_0\ : STD_LOGIC;
  signal \distance[15]_i_3_n_0\ : STD_LOGIC;
  signal \distance[15]_i_4_n_0\ : STD_LOGIC;
  signal \distance[19]_i_3_n_0\ : STD_LOGIC;
  signal \distance[23]_i_3_n_0\ : STD_LOGIC;
  signal \distance[23]_i_4_n_0\ : STD_LOGIC;
  signal \distance[23]_i_5_n_0\ : STD_LOGIC;
  signal \distance[23]_i_6_n_0\ : STD_LOGIC;
  signal \distance[26]_i_10_n_0\ : STD_LOGIC;
  signal \distance[26]_i_11_n_0\ : STD_LOGIC;
  signal \distance[26]_i_12_n_0\ : STD_LOGIC;
  signal \distance[26]_i_13_n_0\ : STD_LOGIC;
  signal \distance[26]_i_14_n_0\ : STD_LOGIC;
  signal \distance[26]_i_15_n_0\ : STD_LOGIC;
  signal \distance[26]_i_16_n_0\ : STD_LOGIC;
  signal \distance[26]_i_17_n_0\ : STD_LOGIC;
  signal \distance[26]_i_18_n_0\ : STD_LOGIC;
  signal \distance[26]_i_19_n_0\ : STD_LOGIC;
  signal \distance[26]_i_1_n_0\ : STD_LOGIC;
  signal \distance[26]_i_3_n_0\ : STD_LOGIC;
  signal \distance[26]_i_4_n_0\ : STD_LOGIC;
  signal \distance[26]_i_5_n_0\ : STD_LOGIC;
  signal \distance[26]_i_6_n_0\ : STD_LOGIC;
  signal \distance[26]_i_7_n_0\ : STD_LOGIC;
  signal \distance[26]_i_9_n_0\ : STD_LOGIC;
  signal \distance[7]_i_3_n_0\ : STD_LOGIC;
  signal \distance[7]_i_4_n_0\ : STD_LOGIC;
  signal \distance[7]_i_5_n_0\ : STD_LOGIC;
  signal \distance_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \distance_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \distance_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \distance_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \distance_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \distance_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \distance_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \distance_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \distance_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \distance_reg[19]_i_2_n_1\ : STD_LOGIC;
  signal \distance_reg[19]_i_2_n_2\ : STD_LOGIC;
  signal \distance_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \distance_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \distance_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \distance_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \distance_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \distance_reg[26]_i_8_n_2\ : STD_LOGIC;
  signal \distance_reg[26]_i_8_n_3\ : STD_LOGIC;
  signal \distance_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \distance_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \distance_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \distance_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \^pulse\ : STD_LOGIC;
  signal pulse_i_1_n_0 : STD_LOGIC;
  signal NLW_counter2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_distance_reg[26]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_distance_reg[26]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \distance[26]_i_11\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \distance[26]_i_13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \distance[26]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \distance[26]_i_7\ : label is "soft_lutpair17";
begin
  AR(0) <= \^ar\(0);
  CO(0) <= \^co\(0);
  pulse <= \^pulse\;
counter2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter2_carry_n_0,
      CO(2) => counter2_carry_n_1,
      CO(1) => counter2_carry_n_2,
      CO(0) => counter2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_counter2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter2_carry_i_1_n_0,
      S(2) => counter2_carry_i_2_n_0,
      S(1) => counter2_carry_i_3_n_0,
      S(0) => counter2_carry_i_4_n_0
    );
\counter2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter2_carry_n_0,
      CO(3) => \counter2_carry__0_n_0\,
      CO(2) => \counter2_carry__0_n_1\,
      CO(1) => \counter2_carry__0_n_2\,
      CO(0) => \counter2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter2_carry__0_i_1_n_0\,
      S(2) => \counter2_carry__0_i_2_n_0\,
      S(1) => \counter2_carry__0_i_3_n_0\,
      S(0) => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(22),
      I1 => distance(22),
      I2 => counter_reg(21),
      I3 => distance(21),
      I4 => counter_reg(23),
      I5 => distance(23),
      O => \counter2_carry__0_i_1_n_0\
    );
\counter2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(19),
      I1 => distance(19),
      I2 => counter_reg(18),
      I3 => distance(18),
      I4 => counter_reg(20),
      I5 => distance(20),
      O => \counter2_carry__0_i_2_n_0\
    );
\counter2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(16),
      I1 => distance(16),
      I2 => counter_reg(15),
      I3 => distance(15),
      I4 => counter_reg(17),
      I5 => distance(17),
      O => \counter2_carry__0_i_3_n_0\
    );
\counter2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(13),
      I1 => distance(13),
      I2 => counter_reg(12),
      I3 => distance(12),
      I4 => counter_reg(14),
      I5 => distance(14),
      O => \counter2_carry__0_i_4_n_0\
    );
\counter2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter2_carry__0_n_0\,
      CO(3 downto 1) => \NLW_counter2_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \counter2_carry__1_i_1_n_0\
    );
\counter2_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(25),
      I1 => distance(25),
      I2 => counter_reg(24),
      I3 => distance(24),
      I4 => counter_reg(26),
      I5 => distance(26),
      O => \counter2_carry__1_i_1_n_0\
    );
counter2_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(10),
      I1 => distance(10),
      I2 => counter_reg(9),
      I3 => distance(9),
      I4 => counter_reg(11),
      I5 => distance(11),
      O => counter2_carry_i_1_n_0
    );
counter2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(7),
      I1 => distance(7),
      I2 => counter_reg(6),
      I3 => distance(6),
      I4 => counter_reg(8),
      I5 => distance(8),
      O => counter2_carry_i_2_n_0
    );
counter2_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(4),
      I1 => distance(4),
      I2 => counter_reg(3),
      I3 => distance(3),
      I4 => counter_reg(5),
      I5 => distance(5),
      O => counter2_carry_i_3_n_0
    );
counter2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => counter_reg(1),
      I1 => distance(1),
      I2 => counter_reg(0),
      I3 => distance(0),
      I4 => counter_reg(2),
      I5 => distance(2),
      O => counter2_carry_i_4_n_0
    );
\counter[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(0),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(3),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(2),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(1),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => counter_reg(0),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[0]_i_7_n_0\
    );
\counter[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(15),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(14),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(13),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(12),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(19),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(18),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(17),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(16),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(23),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(22),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(21),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(20),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(26),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(25),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(24),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[24]_i_4_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(7),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(6),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(5),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(4),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(11),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(10),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(9),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => counter_reg(8),
      I1 => button_posedge,
      I2 => \^co\(0),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[0]_i_2_n_7\,
      Q => counter_reg(0)
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \counter[0]_i_3_n_0\,
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => \counter[0]_i_4_n_0\,
      S(2) => \counter[0]_i_5_n_0\,
      S(1) => \counter[0]_i_6_n_0\,
      S(0) => \counter[0]_i_7_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[0]_i_2_n_6\,
      Q => counter_reg(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => \counter[24]_i_2_n_0\,
      S(1) => \counter[24]_i_3_n_0\,
      S(0) => \counter[24]_i_4_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[0]_i_2_n_5\,
      Q => counter_reg(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg[0]_0\,
      CLR => \^ar\(0),
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
\distance[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(1),
      I1 => distance(0),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(0)
    );
\distance[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(11),
      I1 => distance0(10),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(10)
    );
\distance[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(12),
      I1 => distance0(11),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(11)
    );
\distance[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(11),
      O => \distance[11]_i_3_n_0\
    );
\distance[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(10),
      O => \distance[11]_i_4_n_0\
    );
\distance[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(9),
      O => \distance[11]_i_5_n_0\
    );
\distance[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(13),
      I1 => distance0(12),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(12)
    );
\distance[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(13),
      I4 => distance(14),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(13)
    );
\distance[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(14),
      I4 => distance(15),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(14)
    );
\distance[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(15),
      I4 => distance(16),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(15)
    );
\distance[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(14),
      O => \distance[15]_i_3_n_0\
    );
\distance[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(12),
      O => \distance[15]_i_4_n_0\
    );
\distance[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(16),
      I4 => distance(17),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(16)
    );
\distance[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(18),
      I1 => distance0(17),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(17)
    );
\distance[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(18),
      I4 => distance(19),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(18)
    );
\distance[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(20),
      I1 => distance0(19),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(19)
    );
\distance[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(19),
      O => \distance[19]_i_3_n_0\
    );
\distance[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(2),
      I1 => distance(1),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(1)
    );
\distance[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(20),
      I4 => distance(21),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(20)
    );
\distance[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(21),
      I4 => distance(22),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(21)
    );
\distance[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(22),
      I4 => distance(23),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(22)
    );
\distance[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(23),
      I4 => distance(24),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(23)
    );
\distance[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(23),
      O => \distance[23]_i_3_n_0\
    );
\distance[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(22),
      O => \distance[23]_i_4_n_0\
    );
\distance[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(21),
      O => \distance[23]_i_5_n_0\
    );
\distance[23]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(20),
      O => \distance[23]_i_6_n_0\
    );
\distance[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(24),
      I4 => distance(25),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(24)
    );
\distance[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(26),
      I1 => distance0(25),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(25)
    );
\distance[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF0000FFFF"
    )
        port map (
      I0 => \distance[26]_i_3_n_0\,
      I1 => \distance[26]_i_4_n_0\,
      I2 => \distance[26]_i_5_n_0\,
      I3 => \distance[26]_i_6_n_0\,
      I4 => gc_button,
      I5 => \distance[26]_i_7_n_0\,
      O => \distance[26]_i_1_n_0\
    );
\distance[26]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \distance[26]_i_18_n_0\,
      I1 => distance(6),
      I2 => \distance[26]_i_19_n_0\,
      I3 => distance(7),
      I4 => distance(9),
      I5 => distance(8),
      O => \distance[26]_i_10_n_0\
    );
\distance[26]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => distance(14),
      I1 => distance(15),
      I2 => distance(16),
      O => \distance[26]_i_11_n_0\
    );
\distance[26]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => distance(22),
      I1 => distance(23),
      I2 => distance(24),
      O => \distance[26]_i_12_n_0\
    );
\distance[26]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => distance(16),
      I1 => distance(15),
      I2 => distance(18),
      I3 => distance(17),
      O => \distance[26]_i_13_n_0\
    );
\distance[26]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEEE"
    )
        port map (
      I0 => distance(11),
      I1 => distance(10),
      I2 => distance(8),
      I3 => distance(6),
      I4 => \distance[26]_i_19_n_0\,
      I5 => distance(7),
      O => \distance[26]_i_14_n_0\
    );
\distance[26]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(26),
      O => \distance[26]_i_15_n_0\
    );
\distance[26]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(25),
      O => \distance[26]_i_16_n_0\
    );
\distance[26]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(24),
      O => \distance[26]_i_17_n_0\
    );
\distance[26]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => distance(15),
      I1 => distance(10),
      I2 => distance(11),
      I3 => distance(13),
      I4 => distance(12),
      O => \distance[26]_i_18_n_0\
    );
\distance[26]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => distance(4),
      I1 => distance(0),
      I2 => distance(3),
      I3 => distance(2),
      I4 => distance(1),
      I5 => distance(5),
      O => \distance[26]_i_19_n_0\
    );
\distance[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4FFF"
    )
        port map (
      I0 => \distance[26]_i_3_n_0\,
      I1 => distance0(26),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      O => p_1_in(26)
    );
\distance[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
        port map (
      I0 => \distance[26]_i_9_n_0\,
      I1 => \distance[26]_i_10_n_0\,
      I2 => \distance[26]_i_11_n_0\,
      I3 => distance(25),
      I4 => distance(26),
      I5 => \distance[26]_i_12_n_0\,
      O => \distance[26]_i_3_n_0\
    );
\distance[26]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => distance(20),
      I1 => distance(21),
      O => \distance[26]_i_4_n_0\
    );
\distance[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA888888888"
    )
        port map (
      I0 => \distance[26]_i_13_n_0\,
      I1 => distance(14),
      I2 => distance(9),
      I3 => distance(12),
      I4 => \distance[26]_i_14_n_0\,
      I5 => distance(13),
      O => \distance[26]_i_5_n_0\
    );
\distance[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => distance(22),
      I1 => distance(23),
      I2 => distance(24),
      I3 => distance(25),
      I4 => distance(26),
      I5 => distance(19),
      O => \distance[26]_i_6_n_0\
    );
\distance[26]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^co\(0),
      I1 => button_posedge,
      O => \distance[26]_i_7_n_0\
    );
\distance[26]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => distance(18),
      I1 => distance(19),
      I2 => distance(23),
      I3 => distance(17),
      I4 => distance(21),
      I5 => distance(20),
      O => \distance[26]_i_9_n_0\
    );
\distance[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(3),
      I1 => distance(2),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(2)
    );
\distance[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(4),
      I1 => distance(3),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(3)
    );
\distance[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(5),
      I1 => distance0(4),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(4)
    );
\distance[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(6),
      I1 => distance0(5),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(5)
    );
\distance[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(7),
      I1 => distance0(6),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(6)
    );
\distance[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(8),
      I1 => distance0(7),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(7)
    );
\distance[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(7),
      O => \distance[7]_i_3_n_0\
    );
\distance[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(6),
      O => \distance[7]_i_4_n_0\
    );
\distance[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => distance(5),
      O => \distance[7]_i_5_n_0\
    );
\distance[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1F1FFF1FFF1F"
    )
        port map (
      I0 => button_posedge,
      I1 => \^co\(0),
      I2 => gc_button,
      I3 => distance0(8),
      I4 => distance(9),
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(8)
    );
\distance[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A000C0C0C000"
    )
        port map (
      I0 => distance(10),
      I1 => distance0(9),
      I2 => gc_button,
      I3 => \^co\(0),
      I4 => button_posedge,
      I5 => \distance[26]_i_3_n_0\,
      O => p_1_in(9)
    );
\distance_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(0),
      Q => distance(0)
    );
\distance_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(10),
      Q => distance(10)
    );
\distance_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(11),
      Q => distance(11)
    );
\distance_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[7]_i_2_n_0\,
      CO(3) => \distance_reg[11]_i_2_n_0\,
      CO(2) => \distance_reg[11]_i_2_n_1\,
      CO(1) => \distance_reg[11]_i_2_n_2\,
      CO(0) => \distance_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => distance(11 downto 9),
      DI(0) => '0',
      O(3 downto 0) => distance0(11 downto 8),
      S(3) => \distance[11]_i_3_n_0\,
      S(2) => \distance[11]_i_4_n_0\,
      S(1) => \distance[11]_i_5_n_0\,
      S(0) => distance(8)
    );
\distance_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(12),
      Q => distance(12)
    );
\distance_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(13),
      PRE => \^ar\(0),
      Q => distance(13)
    );
\distance_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(14),
      PRE => \^ar\(0),
      Q => distance(14)
    );
\distance_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(15),
      PRE => \^ar\(0),
      Q => distance(15)
    );
\distance_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[11]_i_2_n_0\,
      CO(3) => \distance_reg[15]_i_2_n_0\,
      CO(2) => \distance_reg[15]_i_2_n_1\,
      CO(1) => \distance_reg[15]_i_2_n_2\,
      CO(0) => \distance_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => distance(14),
      DI(1) => '0',
      DI(0) => distance(12),
      O(3 downto 0) => distance0(15 downto 12),
      S(3) => distance(15),
      S(2) => \distance[15]_i_3_n_0\,
      S(1) => distance(13),
      S(0) => \distance[15]_i_4_n_0\
    );
\distance_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(16),
      PRE => \^ar\(0),
      Q => distance(16)
    );
\distance_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(17),
      Q => distance(17)
    );
\distance_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(18),
      PRE => \^ar\(0),
      Q => distance(18)
    );
\distance_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(19),
      Q => distance(19)
    );
\distance_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[15]_i_2_n_0\,
      CO(3) => \distance_reg[19]_i_2_n_0\,
      CO(2) => \distance_reg[19]_i_2_n_1\,
      CO(1) => \distance_reg[19]_i_2_n_2\,
      CO(0) => \distance_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => distance(19),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => distance0(19 downto 16),
      S(3) => \distance[19]_i_3_n_0\,
      S(2 downto 0) => distance(18 downto 16)
    );
\distance_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(1),
      Q => distance(1)
    );
\distance_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(20),
      PRE => \^ar\(0),
      Q => distance(20)
    );
\distance_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(21),
      PRE => \^ar\(0),
      Q => distance(21)
    );
\distance_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(22),
      PRE => \^ar\(0),
      Q => distance(22)
    );
\distance_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(23),
      PRE => \^ar\(0),
      Q => distance(23)
    );
\distance_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[19]_i_2_n_0\,
      CO(3) => \distance_reg[23]_i_2_n_0\,
      CO(2) => \distance_reg[23]_i_2_n_1\,
      CO(1) => \distance_reg[23]_i_2_n_2\,
      CO(0) => \distance_reg[23]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => distance(23 downto 20),
      O(3 downto 0) => distance0(23 downto 20),
      S(3) => \distance[23]_i_3_n_0\,
      S(2) => \distance[23]_i_4_n_0\,
      S(1) => \distance[23]_i_5_n_0\,
      S(0) => \distance[23]_i_6_n_0\
    );
\distance_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(24),
      PRE => \^ar\(0),
      Q => distance(24)
    );
\distance_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(25),
      Q => distance(25)
    );
\distance_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(26),
      PRE => \^ar\(0),
      Q => distance(26)
    );
\distance_reg[26]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \distance_reg[23]_i_2_n_0\,
      CO(3 downto 2) => \NLW_distance_reg[26]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \distance_reg[26]_i_8_n_2\,
      CO(0) => \distance_reg[26]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => distance(25 downto 24),
      O(3) => \NLW_distance_reg[26]_i_8_O_UNCONNECTED\(3),
      O(2 downto 0) => distance0(26 downto 24),
      S(3) => '0',
      S(2) => \distance[26]_i_15_n_0\,
      S(1) => \distance[26]_i_16_n_0\,
      S(0) => \distance[26]_i_17_n_0\
    );
\distance_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(2),
      Q => distance(2)
    );
\distance_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(3),
      Q => distance(3)
    );
\distance_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(4),
      Q => distance(4)
    );
\distance_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(5),
      Q => distance(5)
    );
\distance_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(6),
      Q => distance(6)
    );
\distance_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(7),
      Q => distance(7)
    );
\distance_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \distance_reg[7]_i_2_n_0\,
      CO(2) => \distance_reg[7]_i_2_n_1\,
      CO(1) => \distance_reg[7]_i_2_n_2\,
      CO(0) => \distance_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => distance(7 downto 5),
      DI(0) => '0',
      O(3 downto 0) => distance0(7 downto 4),
      S(3) => \distance[7]_i_3_n_0\,
      S(2) => \distance[7]_i_4_n_0\,
      S(1) => \distance[7]_i_5_n_0\,
      S(0) => distance(4)
    );
\distance_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      D => p_1_in(8),
      PRE => \^ar\(0),
      Q => distance(8)
    );
\distance_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \distance[26]_i_1_n_0\,
      CLR => \^ar\(0),
      D => p_1_in(9),
      Q => distance(9)
    );
pulse_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFC00"
    )
        port map (
      I0 => gc_button,
      I1 => \^co\(0),
      I2 => button_posedge,
      I3 => gc_rst,
      I4 => \^pulse\,
      O => pulse_i_1_n_0
    );
pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => pulse_i_1_n_0,
      Q => \^pulse\,
      R => '0'
    );
\state[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gc_rst,
      O => \^ar\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_gray_Nbits is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \slv_reg3_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulse : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_rdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_gray_Nbits : entity is "gray_Nbits";
end arm_gray_counter_ip_0_0_gray_Nbits;

architecture STRUCTURE of arm_gray_counter_ip_0_0_gray_Nbits is
  signal \^d\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[5]_i_1_n_0\ : STD_LOGIC;
  signal \state[6]_i_1_n_0\ : STD_LOGIC;
  signal \state[7]_i_1_n_0\ : STD_LOGIC;
  signal \state[8]_i_1_n_0\ : STD_LOGIC;
  signal \state[8]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[8]_i_3\ : label is "soft_lutpair0";
begin
  D(7 downto 0) <= \^d\(7 downto 0);
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(0),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(0),
      I4 => \axi_rdata_reg[7]_0\(0),
      I5 => \^d\(0),
      O => \slv_reg3_reg[7]\(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(1),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(1),
      I4 => \axi_rdata_reg[7]_0\(1),
      I5 => \^d\(1),
      O => \slv_reg3_reg[7]\(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(2),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(2),
      I4 => \axi_rdata_reg[7]_0\(2),
      I5 => \^d\(2),
      O => \slv_reg3_reg[7]\(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(3),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(3),
      I4 => \axi_rdata_reg[7]_0\(3),
      I5 => \^d\(3),
      O => \slv_reg3_reg[7]\(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(4),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(4),
      I4 => \axi_rdata_reg[7]_0\(4),
      I5 => \^d\(4),
      O => \slv_reg3_reg[7]\(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(5),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(5),
      I4 => \axi_rdata_reg[7]_0\(5),
      I5 => \^d\(5),
      O => \slv_reg3_reg[7]\(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(6),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(6),
      I4 => \axi_rdata_reg[7]_0\(6),
      I5 => \^d\(6),
      O => \slv_reg3_reg[7]\(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => Q(7),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => \axi_rdata_reg[7]\(7),
      I4 => \axi_rdata_reg[7]_0\(7),
      I5 => \^d\(7),
      O => \slv_reg3_reg[7]\(7)
    );
\state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pulse,
      I1 => p_0_in(1),
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_0_in(1),
      I1 => pulse,
      I2 => \^d\(0),
      O => \state[1]_i_1_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \^d\(0),
      I1 => pulse,
      I2 => p_0_in(1),
      I3 => \^d\(1),
      O => \state[2]_i_1_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => \^d\(1),
      I1 => p_0_in(1),
      I2 => pulse,
      I3 => \^d\(0),
      I4 => \^d\(2),
      O => \state[3]_i_1_n_0\
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000020"
    )
        port map (
      I0 => \^d\(2),
      I1 => \^d\(0),
      I2 => pulse,
      I3 => p_0_in(1),
      I4 => \^d\(1),
      I5 => \^d\(3),
      O => \state[4]_i_1_n_0\
    );
\state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^d\(3),
      I1 => \state[8]_i_3_n_0\,
      I2 => \^d\(4),
      O => \state[5]_i_1_n_0\
    );
\state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \state[8]_i_3_n_0\,
      I1 => \^d\(4),
      I2 => \^d\(3),
      I3 => \^d\(5),
      O => \state[6]_i_1_n_0\
    );
\state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => \state[8]_i_3_n_0\,
      I1 => \^d\(4),
      I2 => \^d\(5),
      I3 => \^d\(3),
      I4 => \^d\(6),
      O => \state[7]_i_1_n_0\
    );
\state[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => \state[8]_i_3_n_0\,
      I1 => \^d\(5),
      I2 => \^d\(4),
      I3 => \^d\(3),
      I4 => \^d\(7),
      O => \state[8]_i_1_n_0\
    );
\state[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^d\(1),
      I1 => p_0_in(1),
      I2 => pulse,
      I3 => \^d\(0),
      I4 => \^d\(2),
      O => \state[8]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[0]_i_1_n_0\,
      Q => p_0_in(1)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[1]_i_1_n_0\,
      Q => \^d\(0)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[2]_i_1_n_0\,
      Q => \^d\(1)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[3]_i_1_n_0\,
      Q => \^d\(2)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[4]_i_1_n_0\,
      Q => \^d\(3)
    );
\state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[5]_i_1_n_0\,
      Q => \^d\(4)
    );
\state_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[6]_i_1_n_0\,
      Q => \^d\(5)
    );
\state_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \state[7]_i_1_n_0\,
      Q => \^d\(6)
    );
\state_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[8]_i_1_n_0\,
      PRE => AR(0),
      Q => \^d\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_signal_posedge is
  port (
    button_posedge : out STD_LOGIC;
    clean_reg_0 : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gc_button : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_signal_posedge : entity is "signal_posedge";
end arm_gray_counter_ip_0_0_signal_posedge;

architecture STRUCTURE of arm_gray_counter_ip_0_0_signal_posedge is
  signal \^button_posedge\ : STD_LOGIC;
  signal clean_i_1_n_0 : STD_LOGIC;
  signal \new\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clean_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair19";
begin
  button_posedge <= \^button_posedge\;
clean_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gc_button,
      I1 => \new\,
      O => clean_i_1_n_0
    );
clean_reg: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => clean_i_1_n_0,
      Q => \^button_posedge\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^button_posedge\,
      I1 => CO(0),
      I2 => gc_button,
      O => clean_reg_0
    );
new_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gc_button,
      O => p_0_in
    );
new_reg: unisim.vcomponents.FDPE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      PRE => AR(0),
      Q => \new\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_DigitLEDdriver is
  port (
    digit_reg : out STD_LOGIC;
    Display_AA : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_DigitLEDdriver : entity is "DigitLEDdriver";
end arm_gray_counter_ip_0_0_DigitLEDdriver;

architecture STRUCTURE of arm_gray_counter_ip_0_0_DigitLEDdriver is
  signal Display_AA_INST_0_i_1_n_0 : STD_LOGIC;
  signal Display_AF_INST_0_i_1_n_0 : STD_LOGIC;
  signal \Lower_LEDdecoderINSTANCE/LED__30\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal change_value : STD_LOGIC;
  signal \saved_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \saved_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \saved_value_reg_n_0_[2]\ : STD_LOGIC;
  signal \saved_value_reg_n_0_[3]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Display_AA_INST_0_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of Display_AC_INST_0_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of Display_AD_INST_0_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of Display_AE_INST_0_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of Display_AF_INST_0_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of Display_AG_INST_0_i_1 : label is "soft_lutpair15";
begin
Digit_chooserINSTANCE: entity work.arm_gray_counter_ip_0_0_Digit_chooser
     port map (
      AR(0) => AR(0),
      CLK => change_value,
      Display_AA => Display_AA,
      Display_AA_0 => Display_AA_INST_0_i_1_n_0,
      Display_AB => Display_AB,
      Display_AC => Display_AC,
      Display_AD => Display_AD,
      Display_AE => Display_AE,
      Display_AF => Display_AF,
      Display_AF_0 => Display_AF_INST_0_i_1_n_0,
      Display_AG => Display_AG,
      \LED__30\(4 downto 1) => \Lower_LEDdecoderINSTANCE/LED__30\(5 downto 2),
      \LED__30\(0) => \Lower_LEDdecoderINSTANCE/LED__30\(0),
      Q(3 downto 0) => sel0(3 downto 0),
      digit_reg_0 => digit_reg,
      s_axi_aclk => s_axi_aclk
    );
Display_AA_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEF"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[1]\,
      I2 => \saved_value_reg_n_0_[0]\,
      I3 => \saved_value_reg_n_0_[2]\,
      O => Display_AA_INST_0_i_1_n_0
    );
Display_AB_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C48"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[2]\,
      I2 => \saved_value_reg_n_0_[0]\,
      I3 => \saved_value_reg_n_0_[1]\,
      O => \Lower_LEDdecoderINSTANCE/LED__30\(5)
    );
Display_AC_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[0]\,
      I2 => \saved_value_reg_n_0_[1]\,
      I3 => \saved_value_reg_n_0_[2]\,
      O => \Lower_LEDdecoderINSTANCE/LED__30\(4)
    );
Display_AD_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[2]\,
      I2 => \saved_value_reg_n_0_[0]\,
      I3 => \saved_value_reg_n_0_[1]\,
      O => \Lower_LEDdecoderINSTANCE/LED__30\(3)
    );
Display_AE_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[1]\,
      I2 => \saved_value_reg_n_0_[2]\,
      I3 => \saved_value_reg_n_0_[0]\,
      O => \Lower_LEDdecoderINSTANCE/LED__30\(2)
    );
Display_AF_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAB"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[1]\,
      I2 => \saved_value_reg_n_0_[0]\,
      I3 => \saved_value_reg_n_0_[2]\,
      O => Display_AF_INST_0_i_1_n_0
    );
Display_AG_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40A5"
    )
        port map (
      I0 => \saved_value_reg_n_0_[3]\,
      I1 => \saved_value_reg_n_0_[0]\,
      I2 => \saved_value_reg_n_0_[2]\,
      I3 => \saved_value_reg_n_0_[1]\,
      O => \Lower_LEDdecoderINSTANCE/LED__30\(0)
    );
\saved_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(0),
      Q => \saved_value_reg_n_0_[0]\,
      R => '0'
    );
\saved_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(1),
      Q => \saved_value_reg_n_0_[1]\,
      R => '0'
    );
\saved_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(2),
      Q => \saved_value_reg_n_0_[2]\,
      R => '0'
    );
\saved_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(3),
      Q => \saved_value_reg_n_0_[3]\,
      R => '0'
    );
\saved_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(4),
      Q => sel0(0),
      R => '0'
    );
\saved_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(5),
      Q => sel0(1),
      R => '0'
    );
\saved_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(6),
      Q => sel0(2),
      R => '0'
    );
\saved_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => change_value,
      CE => '1',
      D => D(7),
      Q => sel0(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_GrayCounter_System is
  port (
    digit_reg : out STD_LOGIC;
    \state_reg[2]\ : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \state_reg[4]\ : out STD_LOGIC;
    \state_reg[5]\ : out STD_LOGIC;
    \state_reg[6]\ : out STD_LOGIC;
    \state_reg[8]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Display_AA : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_rdata_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_rdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gc_button : in STD_LOGIC;
    gc_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_GrayCounter_System : entity is "GrayCounter_System";
end arm_gray_counter_ip_0_0_GrayCounter_System;

architecture STRUCTURE of arm_gray_counter_ip_0_0_GrayCounter_System is
  signal button_posedge : STD_LOGIC;
  signal pulse : STD_LOGIC;
  signal pulser_INST_n_1 : STD_LOGIC;
  signal pulser_INST_n_2 : STD_LOGIC;
  signal signal_posedge_INST_n_1 : STD_LOGIC;
  signal \^state_reg[1]\ : STD_LOGIC;
  signal \^state_reg[2]\ : STD_LOGIC;
  signal \^state_reg[3]\ : STD_LOGIC;
  signal \^state_reg[4]\ : STD_LOGIC;
  signal \^state_reg[5]\ : STD_LOGIC;
  signal \^state_reg[6]\ : STD_LOGIC;
  signal \^state_reg[8]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \state_reg[1]\ <= \^state_reg[1]\;
  \state_reg[2]\ <= \^state_reg[2]\;
  \state_reg[3]\ <= \^state_reg[3]\;
  \state_reg[4]\ <= \^state_reg[4]\;
  \state_reg[5]\ <= \^state_reg[5]\;
  \state_reg[6]\ <= \^state_reg[6]\;
  \state_reg[8]\(1 downto 0) <= \^state_reg[8]\(1 downto 0);
Counter_INST: entity work.arm_gray_counter_ip_0_0_gray_Nbits
     port map (
      AR(0) => pulser_INST_n_1,
      D(7 downto 6) => \^state_reg[8]\(1 downto 0),
      D(5) => \^state_reg[6]\,
      D(4) => \^state_reg[5]\,
      D(3) => \^state_reg[4]\,
      D(2) => \^state_reg[3]\,
      D(1) => \^state_reg[2]\,
      D(0) => \^state_reg[1]\,
      Q(7 downto 0) => Q(7 downto 0),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \axi_rdata_reg[7]\(7 downto 0) => \axi_rdata_reg[7]\(7 downto 0),
      \axi_rdata_reg[7]_0\(7 downto 0) => \axi_rdata_reg[7]_0\(7 downto 0),
      pulse => pulse,
      s_axi_aclk => s_axi_aclk,
      \slv_reg3_reg[7]\(7 downto 0) => D(7 downto 0)
    );
DigitLEDdriver_INST: entity work.arm_gray_counter_ip_0_0_DigitLEDdriver
     port map (
      AR(0) => pulser_INST_n_1,
      D(7 downto 6) => \^state_reg[8]\(1 downto 0),
      D(5) => \^state_reg[6]\,
      D(4) => \^state_reg[5]\,
      D(3) => \^state_reg[4]\,
      D(2) => \^state_reg[3]\,
      D(1) => \^state_reg[2]\,
      D(0) => \^state_reg[1]\,
      Display_AA => Display_AA,
      Display_AB => Display_AB,
      Display_AC => Display_AC,
      Display_AD => Display_AD,
      Display_AE => Display_AE,
      Display_AF => Display_AF,
      Display_AG => Display_AG,
      digit_reg => digit_reg,
      s_axi_aclk => s_axi_aclk
    );
pulser_INST: entity work.arm_gray_counter_ip_0_0_GrayCounter_Pulse
     port map (
      AR(0) => pulser_INST_n_1,
      CO(0) => pulser_INST_n_2,
      button_posedge => button_posedge,
      \counter_reg[0]_0\ => signal_posedge_INST_n_1,
      gc_button => gc_button,
      gc_rst => gc_rst,
      pulse => pulse,
      s_axi_aclk => s_axi_aclk
    );
signal_posedge_INST: entity work.arm_gray_counter_ip_0_0_signal_posedge
     port map (
      AR(0) => pulser_INST_n_1,
      CO(0) => pulser_INST_n_2,
      button_posedge => button_posedge,
      clean_reg_0 => signal_posedge_INST_n_1,
      gc_button => gc_button,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Display_AA : out STD_LOGIC;
    digit_reg : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI : entity is "gray_counter_ip_v1_0_S_AXI";
end arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI;

architecture STRUCTURE of arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[1]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal gc_button : STD_LOGIC;
  signal gc_button_i_1_n_0 : STD_LOGIC;
  signal gc_rst : STD_LOGIC;
  signal gc_rst0 : STD_LOGIC;
  signal gc_rst_i_1_n_0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of gc_button_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of gc_rst_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair20";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s_axi_wvalid,
      I3 => s_axi_awvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(0),
      Q => \axi_awaddr_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(1),
      Q => \axi_awaddr_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(2),
      Q => p_0_in_0(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => axi_awready0,
      D => s_axi_awaddr(3),
      Q => p_0_in_0(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg2(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg2(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg2(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg2(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg2(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg2(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg2(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg2(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg2(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg2(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(19)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg2(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg2(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg2(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg2(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg2(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg2(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg2(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg2(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg2(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg2(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg2(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg2(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(31)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg2(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0CCAA00"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg2(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arvalid,
      I2 => \^s_axi_rvalid\,
      I3 => s_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
gc_button_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => gc_rst0,
      I2 => gc_button,
      O => gc_button_i_1_n_0
    );
gc_button_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[1]\,
      I1 => \axi_awaddr_reg_n_0_[0]\,
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => \slv_reg_wren__2\,
      O => gc_rst0
    );
gc_button_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gc_button_i_1_n_0,
      Q => gc_button,
      R => axi_awready_i_1_n_0
    );
gc_rst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => gc_rst0,
      I2 => gc_rst,
      O => gc_rst_i_1_n_0
    );
gc_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gc_rst_i_1_n_0,
      Q => gc_rst,
      R => axi_awready_i_1_n_0
    );
nolabel_line420: entity work.arm_gray_counter_ip_0_0_GrayCounter_System
     port map (
      D(7 downto 0) => reg_data_out(7 downto 0),
      Display_AA => Display_AA,
      Display_AB => Display_AB,
      Display_AC => Display_AC,
      Display_AD => Display_AD,
      Display_AE => Display_AE,
      Display_AF => Display_AF,
      Display_AG => Display_AG,
      Q(7 downto 0) => slv_reg3(7 downto 0),
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \axi_rdata_reg[7]\(7 downto 0) => slv_reg2(7 downto 0),
      \axi_rdata_reg[7]_0\(7 downto 0) => slv_reg1(7 downto 0),
      digit_reg => digit_reg,
      gc_button => gc_button,
      gc_rst => gc_rst,
      s_axi_aclk => s_axi_aclk,
      \state_reg[1]\ => D(0),
      \state_reg[2]\ => D(1),
      \state_reg[3]\ => D(2),
      \state_reg[4]\ => D(3),
      \state_reg[5]\ => D(4),
      \state_reg[6]\ => D(5),
      \state_reg[8]\(1 downto 0) => D(7 downto 6)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => s_axi_wstrb(1),
      I3 => p_0_in_0(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => s_axi_wstrb(2),
      I3 => p_0_in_0(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => s_axi_wstrb(3),
      I3 => p_0_in_0(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => p_0_in_0(1),
      I2 => s_axi_wstrb(0),
      I3 => p_0_in_0(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0_gray_counter_ip_v1_0 is
  port (
    \state_reg[6]\ : out STD_LOGIC;
    \state_reg[5]\ : out STD_LOGIC;
    \state_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Display_AA : out STD_LOGIC;
    digit_reg : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of arm_gray_counter_ip_0_0_gray_counter_ip_v1_0 : entity is "gray_counter_ip_v1_0";
end arm_gray_counter_ip_0_0_gray_counter_ip_v1_0;

architecture STRUCTURE of arm_gray_counter_ip_0_0_gray_counter_ip_v1_0 is
begin
gray_counter_ip_v1_0_S_AXI_inst: entity work.arm_gray_counter_ip_0_0_gray_counter_ip_v1_0_S_AXI
     port map (
      D(7 downto 6) => D(4 downto 3),
      D(5) => \state_reg[6]\,
      D(4) => \state_reg[5]\,
      D(3) => \state_reg[4]\,
      D(2 downto 0) => D(2 downto 0),
      Display_AA => Display_AA,
      Display_AB => Display_AB,
      Display_AC => Display_AC,
      Display_AD => Display_AD,
      Display_AE => Display_AE,
      Display_AF => Display_AF,
      Display_AG => Display_AG,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      digit_reg => digit_reg,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity arm_gray_counter_ip_0_0 is
  port (
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Display_C : out STD_LOGIC;
    Display_AA : out STD_LOGIC;
    Display_AB : out STD_LOGIC;
    Display_AC : out STD_LOGIC;
    Display_AD : out STD_LOGIC;
    Display_AE : out STD_LOGIC;
    Display_AF : out STD_LOGIC;
    Display_AG : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of arm_gray_counter_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of arm_gray_counter_ip_0_0 : entity is "arm_gray_counter_ip_0_0,gray_counter_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of arm_gray_counter_ip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of arm_gray_counter_ip_0_0 : entity is "gray_counter_ip_v1_0,Vivado 2018.3";
end arm_gray_counter_ip_0_0;

architecture STRUCTURE of arm_gray_counter_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN arm_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN arm_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.arm_gray_counter_ip_0_0_gray_counter_ip_v1_0
     port map (
      D(4 downto 3) => leds(7 downto 6),
      D(2 downto 0) => leds(2 downto 0),
      Display_AA => Display_AA,
      Display_AB => Display_AB,
      Display_AC => Display_AC,
      Display_AD => Display_AD,
      Display_AE => Display_AE,
      Display_AF => Display_AF,
      Display_AG => Display_AG,
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_WREADY => s_axi_wready,
      digit_reg => Display_C,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \state_reg[4]\ => leds(3),
      \state_reg[5]\ => leds(4),
      \state_reg[6]\ => leds(5)
    );
end STRUCTURE;
