-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Wed Feb 22 16:41:33 2023
-- Host        : pc-b042-18 running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ispr/Documentos/ispr/tutorials/lab3/hw/project/lab3/lab3.gen/sources_1/bd/system/ip/system_fir_top_0_0/system_fir_top_0_0_sim_netlist.vhdl
-- Design      : system_fir_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0_fir_io_if is
  port (
    FSM_sequential_rstate_reg_0 : out STD_LOGIC;
    sig_fir_ap_rst : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    \_y_ap_vld\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \_x_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \_x_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \_x_reg[13]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \_x_reg[15]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \_x_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    ap_done1 : out STD_LOGIC;
    \_y_ap_vld1\ : out STD_LOGIC;
    s_axi_fir_io_ARADDR_1_sp_1 : out STD_LOGIC;
    sig_fir_ap_start : out STD_LOGIC;
    \_x_reg[15]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \_x_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \_x_reg[10]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aclk : in STD_LOGIC;
    ap_done_reg_0 : in STD_LOGIC;
    \_y_ap_vld_reg_0\ : in STD_LOGIC;
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aresetn : in STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \rdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_CS_fsm : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rdata_reg[15]_0\ : in STD_LOGIC;
    \rdata_reg[14]_0\ : in STD_LOGIC;
    \rdata_reg[13]_0\ : in STD_LOGIC;
    \rdata_reg[12]_0\ : in STD_LOGIC;
    \rdata_reg[11]_0\ : in STD_LOGIC;
    \rdata_reg[10]_0\ : in STD_LOGIC;
    \rdata_reg[9]_0\ : in STD_LOGIC;
    \rdata_reg[8]_0\ : in STD_LOGIC;
    \rdata_reg[6]_0\ : in STD_LOGIC;
    \rdata_reg[5]_0\ : in STD_LOGIC;
    \rdata_reg[4]_0\ : in STD_LOGIC;
    \rdata_reg[3]_0\ : in STD_LOGIC;
    \rdata_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_top_0_0_fir_io_if : entity is "fir_io_if";
end system_fir_top_0_0_fir_io_if;

architecture STRUCTURE of system_fir_top_0_0_fir_io_if is
  signal \FSM_onehot_wstate[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_rstate_reg_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \_x[10]_i_1_n_0\ : STD_LOGIC;
  signal \_x[11]_i_1_n_0\ : STD_LOGIC;
  signal \_x[12]_i_1_n_0\ : STD_LOGIC;
  signal \_x[13]_i_1_n_0\ : STD_LOGIC;
  signal \_x[14]_i_1_n_0\ : STD_LOGIC;
  signal \_x[15]_i_1_n_0\ : STD_LOGIC;
  signal \_x[15]_i_2_n_0\ : STD_LOGIC;
  signal \_x[15]_i_3_n_0\ : STD_LOGIC;
  signal \_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \_x[7]_i_1_n_0\ : STD_LOGIC;
  signal \_x[8]_i_1_n_0\ : STD_LOGIC;
  signal \_x[9]_i_1_n_0\ : STD_LOGIC;
  signal \^_x_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^_y_ap_vld\ : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal ap_start0 : STD_LOGIC;
  signal ap_start_i_1_n_0 : STD_LOGIC;
  signal auto_restart : STD_LOGIC;
  signal auto_restart_i_1_n_0 : STD_LOGIC;
  signal auto_restart_i_2_n_0 : STD_LOGIC;
  signal aw_hs : STD_LOGIC;
  signal gie : STD_LOGIC;
  signal gie_i_1_n_0 : STD_LOGIC;
  signal \ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \isr[1]_i_1_n_0\ : STD_LOGIC;
  signal isr_reg03_out : STD_LOGIC;
  signal \isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \isr_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal rnext : STD_LOGIC;
  signal s_axi_fir_io_ARADDR_1_sn_1 : STD_LOGIC;
  signal \^sig_fir_ap_rst\ : STD_LOGIC;
  signal \^sig_fir_ap_start\ : STD_LOGIC;
  signal waddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_acc_2_fu_272_p2_carry__4_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_acc_2_fu_272_p2_carry__4_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[0]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:010,WRRESP:100,WRIDLE:001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_rstate_i_1 : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES of FSM_sequential_rstate_reg : label is "RDIDLE:0,RDDATA:1";
  attribute SOFT_HLUTNM of \_x[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \_x[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \_x[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \_x[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \_x[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \_x[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \_x[15]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \_x[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \_x[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \_x[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \_x[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \_x[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \_x[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \_x[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \_x[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \_x[9]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \_y_ap_vld_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_done_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ap_start_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of gie_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ier[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \isr[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_axi_fir_io_ARREADY_INST_0 : label is "soft_lutpair8";
begin
  FSM_sequential_rstate_reg_0 <= \^fsm_sequential_rstate_reg_0\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  \_x_reg[15]_0\(15 downto 0) <= \^_x_reg[15]_0\(15 downto 0);
  \_y_ap_vld\ <= \^_y_ap_vld\;
  ap_done <= \^ap_done\;
  s_axi_fir_io_ARADDR_1_sp_1 <= s_axi_fir_io_ARADDR_1_sn_1;
  sig_fir_ap_rst <= \^sig_fir_ap_rst\;
  sig_fir_ap_start <= \^sig_fir_ap_start\;
\FSM_onehot_wstate[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sig_fir_ap_rst\
    );
\FSM_onehot_wstate[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_fir_io_AWVALID,
      I1 => \^q\(0),
      I2 => s_axi_fir_io_BREADY,
      I3 => \^q\(2),
      O => \FSM_onehot_wstate[0]_i_2_n_0\
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_fir_io_AWVALID,
      I1 => \^q\(0),
      I2 => s_axi_fir_io_WVALID,
      I3 => \^q\(1),
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_fir_io_WVALID,
      I1 => \^q\(1),
      I2 => s_axi_fir_io_BREADY,
      I3 => \^q\(2),
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_wstate[0]_i_2_n_0\,
      Q => \^q\(0),
      S => \^sig_fir_ap_rst\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sig_fir_ap_rst\
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \^sig_fir_ap_rst\
    );
FSM_sequential_rstate_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s_axi_fir_io_RREADY,
      I1 => \^fsm_sequential_rstate_reg_0\,
      I2 => s_axi_fir_io_ARVALID,
      O => rnext
    );
FSM_sequential_rstate_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rnext,
      Q => \^fsm_sequential_rstate_reg_0\,
      R => \^sig_fir_ap_rst\
    );
\_x[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(0),
      O => \_x[0]_i_1_n_0\
    );
\_x[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(10),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(10),
      O => \_x[10]_i_1_n_0\
    );
\_x[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(11),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(11),
      O => \_x[11]_i_1_n_0\
    );
\_x[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(12),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(12),
      O => \_x[12]_i_1_n_0\
    );
\_x[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(13),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(13),
      O => \_x[13]_i_1_n_0\
    );
\_x[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(14),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(14),
      O => \_x[14]_i_1_n_0\
    );
\_x[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => waddr(4),
      I1 => waddr(2),
      I2 => \_x[15]_i_3_n_0\,
      I3 => waddr(3),
      O => \_x[15]_i_1_n_0\
    );
\_x[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(15),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(15),
      O => \_x[15]_i_2_n_0\
    );
\_x[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_fir_io_WVALID,
      I2 => waddr(0),
      I3 => waddr(1),
      O => \_x[15]_i_3_n_0\
    );
\_x[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(1),
      O => \_x[1]_i_1_n_0\
    );
\_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(2),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(2),
      O => \_x[2]_i_1_n_0\
    );
\_x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(3),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(3),
      O => \_x[3]_i_1_n_0\
    );
\_x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(4),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(4),
      O => \_x[4]_i_1_n_0\
    );
\_x[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(5),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(5),
      O => \_x[5]_i_1_n_0\
    );
\_x[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(6),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(6),
      O => \_x[6]_i_1_n_0\
    );
\_x[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(7),
      I1 => s_axi_fir_io_WSTRB(0),
      I2 => \^_x_reg[15]_0\(7),
      O => \_x[7]_i_1_n_0\
    );
\_x[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(8),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(8),
      O => \_x[8]_i_1_n_0\
    );
\_x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(9),
      I1 => s_axi_fir_io_WSTRB(1),
      I2 => \^_x_reg[15]_0\(9),
      O => \_x[9]_i_1_n_0\
    );
\_x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[0]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(0),
      R => '0'
    );
\_x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[10]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(10),
      R => '0'
    );
\_x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[11]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(11),
      R => '0'
    );
\_x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[12]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(12),
      R => '0'
    );
\_x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[13]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(13),
      R => '0'
    );
\_x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[14]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(14),
      R => '0'
    );
\_x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[15]_i_2_n_0\,
      Q => \^_x_reg[15]_0\(15),
      R => '0'
    );
\_x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[1]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(1),
      R => '0'
    );
\_x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[2]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(2),
      R => '0'
    );
\_x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[3]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(3),
      R => '0'
    );
\_x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[4]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(4),
      R => '0'
    );
\_x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[5]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(5),
      R => '0'
    );
\_x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[6]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(6),
      R => '0'
    );
\_x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[7]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(7),
      R => '0'
    );
\_x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[8]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(8),
      R => '0'
    );
\_x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \_x[15]_i_1_n_0\,
      D => \_x[9]_i_1_n_0\,
      Q => \^_x_reg[15]_0\(9),
      R => '0'
    );
\_y_ap_vld_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(4),
      I1 => s_axi_fir_io_ARADDR(2),
      I2 => s_axi_fir_io_ARADDR(1),
      I3 => s_axi_fir_io_ARADDR(3),
      I4 => s_axi_fir_io_ARADDR(0),
      O => \_y_ap_vld1\
    );
\_y_ap_vld_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \_y_ap_vld_reg_0\,
      Q => \^_y_ap_vld\,
      R => \^sig_fir_ap_rst\
    );
\acc_2_fu_272_p2_carry__4_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 1) => \NLW_acc_2_fu_272_p2_carry__4_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \_x_reg[15]_2\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_acc_2_fu_272_p2_carry__4_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
ap_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(3),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(4),
      I4 => s_axi_fir_io_ARADDR(2),
      O => ap_done1
    );
ap_done_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ap_done_reg_0,
      Q => \^ap_done\,
      R => \^sig_fir_ap_rst\
    );
ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => auto_restart,
      I1 => ap_CS_fsm(1),
      I2 => ap_CS_fsm(0),
      I3 => ap_start0,
      I4 => \^sig_fir_ap_start\,
      O => ap_start_i_1_n_0
    );
ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s_axi_fir_io_WSTRB(0),
      I1 => auto_restart_i_2_n_0,
      I2 => waddr(2),
      I3 => s_axi_fir_io_WDATA(0),
      O => ap_start0
    );
ap_start_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ap_start_i_1_n_0,
      Q => \^sig_fir_ap_start\,
      R => \^sig_fir_ap_rst\
    );
auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(7),
      I1 => waddr(2),
      I2 => auto_restart_i_2_n_0,
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => auto_restart,
      O => auto_restart_i_1_n_0
    );
auto_restart_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => waddr(4),
      I1 => \^q\(1),
      I2 => s_axi_fir_io_WVALID,
      I3 => waddr(0),
      I4 => waddr(1),
      I5 => waddr(3),
      O => auto_restart_i_2_n_0
    );
auto_restart_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => auto_restart_i_1_n_0,
      Q => auto_restart,
      R => \^sig_fir_ap_rst\
    );
gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => auto_restart_i_2_n_0,
      I2 => waddr(2),
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => gie,
      O => gie_i_1_n_0
    );
gie_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => gie_i_1_n_0,
      Q => gie,
      R => \^sig_fir_ap_rst\
    );
\ier[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => waddr(2),
      I2 => \ier[1]_i_2_n_0\,
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => \ier_reg_n_0_[0]\,
      O => \ier[0]_i_1_n_0\
    );
\ier[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => waddr(2),
      I2 => \ier[1]_i_2_n_0\,
      I3 => s_axi_fir_io_WSTRB(0),
      I4 => p_0_in1_in,
      O => \ier[1]_i_1_n_0\
    );
\ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => waddr(3),
      I1 => waddr(4),
      I2 => \^q\(1),
      I3 => s_axi_fir_io_WVALID,
      I4 => waddr(0),
      I5 => waddr(1),
      O => \ier[1]_i_2_n_0\
    );
\ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ier[0]_i_1_n_0\,
      Q => \ier_reg_n_0_[0]\,
      R => \^sig_fir_ap_rst\
    );
\ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ier[1]_i_1_n_0\,
      Q => p_0_in1_in,
      R => \^sig_fir_ap_rst\
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => gie,
      I1 => \isr_reg_n_0_[1]\,
      I2 => \isr_reg_n_0_[0]\,
      O => interrupt
    );
\isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(0),
      I1 => isr_reg03_out,
      I2 => ap_CS_fsm(0),
      I3 => ap_CS_fsm(1),
      I4 => \ier_reg_n_0_[0]\,
      I5 => \isr_reg_n_0_[0]\,
      O => \isr[0]_i_1_n_0\
    );
\isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ier[1]_i_2_n_0\,
      I1 => waddr(2),
      I2 => s_axi_fir_io_WSTRB(0),
      O => isr_reg03_out
    );
\isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777F8888888"
    )
        port map (
      I0 => s_axi_fir_io_WDATA(1),
      I1 => isr_reg03_out,
      I2 => ap_CS_fsm(0),
      I3 => ap_CS_fsm(1),
      I4 => p_0_in1_in,
      I5 => \isr_reg_n_0_[1]\,
      O => \isr[1]_i_1_n_0\
    );
\isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \isr[0]_i_1_n_0\,
      Q => \isr_reg_n_0_[0]\,
      R => \^sig_fir_ap_rst\
    );
\isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \isr[1]_i_1_n_0\,
      Q => \isr_reg_n_0_[1]\,
      R => \^sig_fir_ap_rst\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \isr_reg_n_0_[0]\,
      I1 => \ier_reg_n_0_[0]\,
      I2 => s_axi_fir_io_ARADDR(3),
      I3 => gie,
      I4 => s_axi_fir_io_ARADDR(2),
      I5 => \^sig_fir_ap_start\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => \^_x_reg[15]_0\(0),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => \rdata_reg[7]_0\(0),
      I3 => s_axi_fir_io_ARADDR(2),
      I4 => \^_y_ap_vld\,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E00"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(1),
      I1 => s_axi_fir_io_ARADDR(0),
      I2 => \^fsm_sequential_rstate_reg_0\,
      I3 => s_axi_fir_io_ARVALID,
      O => \rdata[15]_i_1_n_0\
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_fir_io_ARVALID,
      I1 => \^fsm_sequential_rstate_reg_0\,
      O => \rdata[15]_i_2_n_0\
    );
\rdata[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(1),
      I1 => s_axi_fir_io_ARADDR(0),
      I2 => s_axi_fir_io_ARADDR(4),
      O => s_axi_fir_io_ARADDR_1_sn_1
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => \^_x_reg[15]_0\(1),
      I1 => s_axi_fir_io_ARADDR(3),
      I2 => s_axi_fir_io_ARADDR(2),
      I3 => \rdata_reg[7]_0\(1),
      I4 => s_axi_fir_io_ARADDR_1_sn_1,
      I5 => \rdata[1]_i_2_n_0\,
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \isr_reg_n_0_[1]\,
      I1 => p_0_in1_in,
      I2 => s_axi_fir_io_ARADDR(3),
      I3 => \^ap_done\,
      I4 => s_axi_fir_io_ARADDR(2),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A000C00FC000"
    )
        port map (
      I0 => \^_x_reg[15]_0\(7),
      I1 => \rdata_reg[7]_0\(2),
      I2 => s_axi_fir_io_ARADDR_1_sn_1,
      I3 => s_axi_fir_io_ARADDR(2),
      I4 => auto_restart,
      I5 => s_axi_fir_io_ARADDR(3),
      O => \rdata[7]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[0]_i_1_n_0\,
      Q => s_axi_fir_io_RDATA(0),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \rdata[0]_i_2_n_0\,
      I1 => \rdata[0]_i_3_n_0\,
      O => \rdata_reg[0]_i_1_n_0\,
      S => s_axi_fir_io_ARADDR_1_sn_1
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[10]_0\,
      Q => s_axi_fir_io_RDATA(10),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[11]_0\,
      Q => s_axi_fir_io_RDATA(11),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[12]_0\,
      Q => s_axi_fir_io_RDATA(12),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[13]_0\,
      Q => s_axi_fir_io_RDATA(13),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[14]_0\,
      Q => s_axi_fir_io_RDATA(14),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[15]_0\,
      Q => s_axi_fir_io_RDATA(15),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_fir_io_RDATA(1),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[2]_0\,
      Q => s_axi_fir_io_RDATA(2),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[3]_0\,
      Q => s_axi_fir_io_RDATA(3),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[4]_0\,
      Q => s_axi_fir_io_RDATA(4),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[5]_0\,
      Q => s_axi_fir_io_RDATA(5),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[6]_0\,
      Q => s_axi_fir_io_RDATA(6),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_fir_io_RDATA(7),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[8]_0\,
      Q => s_axi_fir_io_RDATA(8),
      R => \rdata[15]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \rdata[15]_i_2_n_0\,
      D => \rdata_reg[9]_0\,
      Q => s_axi_fir_io_RDATA(9),
      R => \rdata[15]_i_1_n_0\
    );
s_axi_fir_io_ARREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_rstate_reg_0\,
      O => s_axi_fir_io_ARREADY
    );
\tmp_3_fu_262_p2__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(9),
      I1 => \^_x_reg[15]_0\(6),
      O => \_x_reg[9]_0\(3)
    );
\tmp_3_fu_262_p2__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(8),
      I1 => \^_x_reg[15]_0\(5),
      O => \_x_reg[9]_0\(2)
    );
\tmp_3_fu_262_p2__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(7),
      I1 => \^_x_reg[15]_0\(4),
      O => \_x_reg[9]_0\(1)
    );
\tmp_3_fu_262_p2__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(6),
      I1 => \^_x_reg[15]_0\(3),
      O => \_x_reg[9]_0\(0)
    );
\tmp_3_fu_262_p2__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(6),
      I1 => \^_x_reg[15]_0\(9),
      I2 => \^_x_reg[15]_0\(7),
      I3 => \^_x_reg[15]_0\(10),
      O => \_x_reg[6]_0\(3)
    );
\tmp_3_fu_262_p2__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(5),
      I1 => \^_x_reg[15]_0\(8),
      I2 => \^_x_reg[15]_0\(6),
      I3 => \^_x_reg[15]_0\(9),
      O => \_x_reg[6]_0\(2)
    );
\tmp_3_fu_262_p2__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(4),
      I1 => \^_x_reg[15]_0\(7),
      I2 => \^_x_reg[15]_0\(5),
      I3 => \^_x_reg[15]_0\(8),
      O => \_x_reg[6]_0\(1)
    );
\tmp_3_fu_262_p2__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(3),
      I1 => \^_x_reg[15]_0\(6),
      I2 => \^_x_reg[15]_0\(4),
      I3 => \^_x_reg[15]_0\(7),
      O => \_x_reg[6]_0\(0)
    );
\tmp_3_fu_262_p2__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(13),
      I1 => \^_x_reg[15]_0\(10),
      O => \_x_reg[13]_0\(3)
    );
\tmp_3_fu_262_p2__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(12),
      I1 => \^_x_reg[15]_0\(9),
      O => \_x_reg[13]_0\(2)
    );
\tmp_3_fu_262_p2__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(11),
      I1 => \^_x_reg[15]_0\(8),
      O => \_x_reg[13]_0\(1)
    );
\tmp_3_fu_262_p2__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(10),
      I1 => \^_x_reg[15]_0\(7),
      O => \_x_reg[13]_0\(0)
    );
\tmp_3_fu_262_p2__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(10),
      I1 => \^_x_reg[15]_0\(13),
      I2 => \^_x_reg[15]_0\(11),
      I3 => \^_x_reg[15]_0\(14),
      O => \_x_reg[10]_0\(3)
    );
\tmp_3_fu_262_p2__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(9),
      I1 => \^_x_reg[15]_0\(12),
      I2 => \^_x_reg[15]_0\(10),
      I3 => \^_x_reg[15]_0\(13),
      O => \_x_reg[10]_0\(2)
    );
\tmp_3_fu_262_p2__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(8),
      I1 => \^_x_reg[15]_0\(11),
      I2 => \^_x_reg[15]_0\(9),
      I3 => \^_x_reg[15]_0\(12),
      O => \_x_reg[10]_0\(1)
    );
\tmp_3_fu_262_p2__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(7),
      I1 => \^_x_reg[15]_0\(10),
      I2 => \^_x_reg[15]_0\(8),
      I3 => \^_x_reg[15]_0\(11),
      O => \_x_reg[10]_0\(0)
    );
\tmp_3_fu_262_p2__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^_x_reg[15]_0\(15),
      I1 => \^_x_reg[15]_0\(12),
      O => \_x_reg[15]_1\(0)
    );
\tmp_3_fu_262_p2__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^_x_reg[15]_0\(14),
      I1 => \^_x_reg[15]_0\(15),
      O => \_x_reg[14]_0\(3)
    );
\tmp_3_fu_262_p2__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^_x_reg[15]_0\(13),
      I1 => \^_x_reg[15]_0\(14),
      O => \_x_reg[14]_0\(2)
    );
\tmp_3_fu_262_p2__0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \^_x_reg[15]_0\(15),
      I1 => \^_x_reg[15]_0\(12),
      I2 => \^_x_reg[15]_0\(13),
      O => \_x_reg[14]_0\(1)
    );
\tmp_3_fu_262_p2__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9699"
    )
        port map (
      I0 => \^_x_reg[15]_0\(12),
      I1 => \^_x_reg[15]_0\(15),
      I2 => \^_x_reg[15]_0\(11),
      I3 => \^_x_reg[15]_0\(14),
      O => \_x_reg[14]_0\(0)
    );
\tmp_3_fu_262_p2__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(5),
      I1 => \^_x_reg[15]_0\(2),
      O => DI(2)
    );
\tmp_3_fu_262_p2__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(4),
      I1 => \^_x_reg[15]_0\(1),
      O => DI(1)
    );
\tmp_3_fu_262_p2__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(3),
      I1 => \^_x_reg[15]_0\(0),
      O => DI(0)
    );
\tmp_3_fu_262_p2__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(2),
      I1 => \^_x_reg[15]_0\(5),
      I2 => \^_x_reg[15]_0\(3),
      I3 => \^_x_reg[15]_0\(6),
      O => S(3)
    );
\tmp_3_fu_262_p2__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^_x_reg[15]_0\(1),
      I1 => \^_x_reg[15]_0\(4),
      I2 => \^_x_reg[15]_0\(2),
      I3 => \^_x_reg[15]_0\(5),
      O => S(2)
    );
\tmp_3_fu_262_p2__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^_x_reg[15]_0\(0),
      I1 => \^_x_reg[15]_0\(3),
      I2 => \^_x_reg[15]_0\(1),
      I3 => \^_x_reg[15]_0\(4),
      O => S(1)
    );
\tmp_3_fu_262_p2__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^_x_reg[15]_0\(3),
      I1 => \^_x_reg[15]_0\(0),
      O => S(0)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_fir_io_AWVALID,
      I1 => \^q\(0),
      O => aw_hs
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_fir_io_AWADDR(0),
      Q => waddr(0),
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_fir_io_AWADDR(1),
      Q => waddr(1),
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_fir_io_AWADDR(2),
      Q => waddr(2),
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_fir_io_AWADDR(3),
      Q => waddr(3),
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aw_hs,
      D => s_axi_fir_io_AWADDR(4),
      Q => waddr(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0_fir_shift_reg_ram is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CEA2 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_reg_ppiten_pp0_it0_reg : out STD_LOGIC;
    \indvar_reg_113_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_5 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_6 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_reg_7 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_8 : in STD_LOGIC;
    ram_reg_9 : in STD_LOGIC;
    ap_reg_ppiten_pp0_it0 : in STD_LOGIC;
    sig_fir_ap_start : in STD_LOGIC;
    ram_reg_10 : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_top_0_0_fir_shift_reg_ram : entity is "fir_shift_reg_ram";
end system_fir_top_0_0_fir_shift_reg_ram;

architecture STRUCTURE of system_fir_top_0_0_fir_shift_reg_ram is
  signal \^cea2\ : STD_LOGIC;
  signal \^doado\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_reg_ppiten_pp0_it0_reg\ : STD_LOGIC;
  signal \^indvar_reg_113_reg[0]\ : STD_LOGIC;
  signal ram_reg_i_10_n_0 : STD_LOGIC;
  signal ram_reg_i_3_n_0 : STD_LOGIC;
  signal ram_reg_i_4_n_0 : STD_LOGIC;
  signal ram_reg_i_5_n_0 : STD_LOGIC;
  signal ram_reg_i_6_n_0 : STD_LOGIC;
  signal ram_reg_i_7_n_0 : STD_LOGIC;
  signal ram_reg_i_8_n_0 : STD_LOGIC;
  signal shift_reg_ce0 : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 800;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "inst/fir_U/shift_reg_U/fir_shift_reg_ram_U/ram";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg : label is "RAM_TDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg : label is 960;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg : label is 15;
begin
  CEA2 <= \^cea2\;
  DOADO(15 downto 0) <= \^doado\(15 downto 0);
  WEA(0) <= \^wea\(0);
  ap_reg_ppiten_pp0_it0_reg <= \^ap_reg_ppiten_pp0_it0_reg\;
  \indvar_reg_113_reg[0]\ <= \^indvar_reg_113_reg[0]\;
\acc_fu_162_p2__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(9),
      I1 => \^doado\(6),
      O => ram_reg_0(3)
    );
\acc_fu_162_p2__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(5),
      O => ram_reg_0(2)
    );
\acc_fu_162_p2__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(4),
      O => ram_reg_0(1)
    );
\acc_fu_162_p2__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(3),
      O => ram_reg_0(0)
    );
\acc_fu_162_p2__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(6),
      I1 => \^doado\(9),
      I2 => \^doado\(7),
      I3 => \^doado\(10),
      O => ram_reg_4(3)
    );
\acc_fu_162_p2__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \^doado\(8),
      I2 => \^doado\(6),
      I3 => \^doado\(9),
      O => ram_reg_4(2)
    );
\acc_fu_162_p2__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \^doado\(7),
      I2 => \^doado\(5),
      I3 => \^doado\(8),
      O => ram_reg_4(1)
    );
\acc_fu_162_p2__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(6),
      I2 => \^doado\(4),
      I3 => \^doado\(7),
      O => ram_reg_4(0)
    );
\acc_fu_162_p2__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(13),
      I1 => \^doado\(10),
      O => ram_reg_1(3)
    );
\acc_fu_162_p2__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(12),
      I1 => \^doado\(9),
      O => ram_reg_1(2)
    );
\acc_fu_162_p2__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(11),
      I1 => \^doado\(8),
      O => ram_reg_1(1)
    );
\acc_fu_162_p2__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(10),
      I1 => \^doado\(7),
      O => ram_reg_1(0)
    );
\acc_fu_162_p2__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(10),
      I1 => \^doado\(13),
      I2 => \^doado\(11),
      I3 => \^doado\(14),
      O => ram_reg_5(3)
    );
\acc_fu_162_p2__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(9),
      I1 => \^doado\(12),
      I2 => \^doado\(10),
      I3 => \^doado\(13),
      O => ram_reg_5(2)
    );
\acc_fu_162_p2__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(8),
      I1 => \^doado\(11),
      I2 => \^doado\(9),
      I3 => \^doado\(12),
      O => ram_reg_5(1)
    );
\acc_fu_162_p2__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(7),
      I1 => \^doado\(10),
      I2 => \^doado\(8),
      I3 => \^doado\(11),
      O => ram_reg_5(0)
    );
\acc_fu_162_p2__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^doado\(15),
      I1 => \^doado\(12),
      O => ram_reg_2(0)
    );
\acc_fu_162_p2__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^doado\(14),
      I1 => \^doado\(15),
      O => ram_reg_3(3)
    );
\acc_fu_162_p2__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^doado\(13),
      I1 => \^doado\(14),
      O => ram_reg_3(2)
    );
\acc_fu_162_p2__0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => \^doado\(15),
      I1 => \^doado\(12),
      I2 => \^doado\(13),
      O => ram_reg_3(1)
    );
\acc_fu_162_p2__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9699"
    )
        port map (
      I0 => \^doado\(12),
      I1 => \^doado\(15),
      I2 => \^doado\(11),
      I3 => \^doado\(14),
      O => ram_reg_3(0)
    );
\acc_fu_162_p2__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(5),
      I1 => \^doado\(2),
      O => DI(2)
    );
\acc_fu_162_p2__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^doado\(4),
      I1 => \^doado\(1),
      O => DI(1)
    );
\acc_fu_162_p2__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(0),
      O => DI(0)
    );
\acc_fu_162_p2__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(2),
      I1 => \^doado\(5),
      I2 => \^doado\(3),
      I3 => \^doado\(6),
      O => S(3)
    );
\acc_fu_162_p2__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \^doado\(1),
      I1 => \^doado\(4),
      I2 => \^doado\(2),
      I3 => \^doado\(5),
      O => S(2)
    );
\acc_fu_162_p2__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^doado\(0),
      I1 => \^doado\(3),
      I2 => \^doado\(1),
      I3 => \^doado\(4),
      O => S(1)
    );
\acc_fu_162_p2__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^doado\(3),
      I1 => \^doado\(0),
      O => S(0)
    );
\i_cast_reg_309[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it0,
      I1 => ram_reg_8,
      I2 => ram_reg_9,
      I3 => \^indvar_reg_113_reg[0]\,
      O => \^ap_reg_ppiten_pp0_it0_reg\
    );
\i_cast_reg_309[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => ram_reg_7(0),
      I1 => ram_reg_7(2),
      I2 => ram_reg_7(1),
      I3 => ram_reg_7(5),
      I4 => ram_reg_7(3),
      I5 => ram_reg_7(4),
      O => \^indvar_reg_113_reg[0]\
    );
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 10) => B"1111",
      ADDRARDADDR(9) => ram_reg_i_3_n_0,
      ADDRARDADDR(8) => ram_reg_i_4_n_0,
      ADDRARDADDR(7) => ram_reg_i_5_n_0,
      ADDRARDADDR(6) => ram_reg_i_6_n_0,
      ADDRARDADDR(5) => ram_reg_i_7_n_0,
      ADDRARDADDR(4) => ram_reg_i_8_n_0,
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 10) => B"1111",
      ADDRBWRADDR(9 downto 4) => Q(5 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => aclk,
      CLKBWRCLK => aclk,
      DIADI(15 downto 0) => ram_reg_6(15 downto 0),
      DIBDI(15 downto 0) => \^doado\(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \^doado\(15 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => shift_reg_ce0,
      ENBWREN => \^cea2\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(3 downto 0) => B"0011"
    );
ram_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EBEA"
    )
        port map (
      I0 => \^ap_reg_ppiten_pp0_it0_reg\,
      I1 => ram_reg_9,
      I2 => ram_reg_8,
      I3 => sig_fir_ap_start,
      O => shift_reg_ce0
    );
ram_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ram_reg_7(2),
      I1 => ram_reg_7(1),
      I2 => ram_reg_7(0),
      I3 => ram_reg_7(3),
      O => ram_reg_i_10_n_0
    );
ram_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => ram_reg_9,
      I1 => ram_reg_8,
      I2 => ram_reg_10,
      I3 => ap_reg_ppiten_pp0_it1,
      O => \^cea2\
    );
ram_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002DFF2DFF2DFF"
    )
        port map (
      I0 => ram_reg_7(4),
      I1 => ram_reg_i_10_n_0,
      I2 => ram_reg_7(5),
      I3 => \^ap_reg_ppiten_pp0_it0_reg\,
      I4 => ram_reg_8,
      I5 => ram_reg_9,
      O => ram_reg_i_3_n_0
    );
ram_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006F6F6F"
    )
        port map (
      I0 => ram_reg_i_10_n_0,
      I1 => ram_reg_7(4),
      I2 => \^ap_reg_ppiten_pp0_it0_reg\,
      I3 => ram_reg_8,
      I4 => ram_reg_9,
      O => ram_reg_i_4_n_0
    );
ram_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FE0000"
    )
        port map (
      I0 => ram_reg_7(2),
      I1 => ram_reg_7(1),
      I2 => ram_reg_7(0),
      I3 => ram_reg_7(3),
      I4 => \^ap_reg_ppiten_pp0_it0_reg\,
      I5 => \^wea\(0),
      O => ram_reg_i_5_n_0
    );
ram_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001E001E001E00"
    )
        port map (
      I0 => ram_reg_7(0),
      I1 => ram_reg_7(1),
      I2 => ram_reg_7(2),
      I3 => \^ap_reg_ppiten_pp0_it0_reg\,
      I4 => ram_reg_8,
      I5 => ram_reg_9,
      O => ram_reg_i_6_n_0
    );
ram_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00606060"
    )
        port map (
      I0 => ram_reg_7(0),
      I1 => ram_reg_7(1),
      I2 => \^ap_reg_ppiten_pp0_it0_reg\,
      I3 => ram_reg_8,
      I4 => ram_reg_9,
      O => ram_reg_i_7_n_0
    );
ram_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DDD"
    )
        port map (
      I0 => \^ap_reg_ppiten_pp0_it0_reg\,
      I1 => ram_reg_7(0),
      I2 => ram_reg_8,
      I3 => ram_reg_9,
      O => ram_reg_i_8_n_0
    );
ram_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ram_reg_9,
      I1 => ram_reg_8,
      O => \^wea\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0_fir_shift_reg is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CEA2 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_reg_ppiten_pp0_it0_reg : out STD_LOGIC;
    \indvar_reg_113_reg[0]\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_5 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_reg_6 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ram_reg_7 : in STD_LOGIC;
    ram_reg_8 : in STD_LOGIC;
    ap_reg_ppiten_pp0_it0 : in STD_LOGIC;
    sig_fir_ap_start : in STD_LOGIC;
    ram_reg_9 : in STD_LOGIC;
    ap_reg_ppiten_pp0_it1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_top_0_0_fir_shift_reg : entity is "fir_shift_reg";
end system_fir_top_0_0_fir_shift_reg;

architecture STRUCTURE of system_fir_top_0_0_fir_shift_reg is
begin
fir_shift_reg_ram_U: entity work.system_fir_top_0_0_fir_shift_reg_ram
     port map (
      CEA2 => CEA2,
      DI(2 downto 0) => DI(2 downto 0),
      DOADO(15 downto 0) => DOADO(15 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      S(3 downto 0) => S(3 downto 0),
      WEA(0) => WEA(0),
      aclk => aclk,
      ap_reg_ppiten_pp0_it0 => ap_reg_ppiten_pp0_it0,
      ap_reg_ppiten_pp0_it0_reg => ap_reg_ppiten_pp0_it0_reg,
      ap_reg_ppiten_pp0_it1 => ap_reg_ppiten_pp0_it1,
      \indvar_reg_113_reg[0]\ => \indvar_reg_113_reg[0]\,
      ram_reg_0(3 downto 0) => ram_reg(3 downto 0),
      ram_reg_1(3 downto 0) => ram_reg_0(3 downto 0),
      ram_reg_10 => ram_reg_9,
      ram_reg_2(0) => ram_reg_1(0),
      ram_reg_3(3 downto 0) => ram_reg_2(3 downto 0),
      ram_reg_4(3 downto 0) => ram_reg_3(3 downto 0),
      ram_reg_5(3 downto 0) => ram_reg_4(3 downto 0),
      ram_reg_6(15 downto 0) => ram_reg_5(15 downto 0),
      ram_reg_7(5 downto 0) => ram_reg_6(5 downto 0),
      ram_reg_8 => ram_reg_7,
      ram_reg_9 => ram_reg_8,
      sig_fir_ap_start => sig_fir_ap_start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0_fir is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \acc_1_cast8_reg_334_reg[25]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_CS_fsm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \_x_reg[3]\ : out STD_LOGIC;
    \_x_reg[2]\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_0\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_1\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_2\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_3\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_4\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_5\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_6\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_7\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_8\ : out STD_LOGIC;
    \s_axi_fir_io_ARADDR[2]_9\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    \ap_CS_fsm_reg[1]_1\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_2_fu_272_p2_carry__0_i_1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_2_fu_272_p2_carry__0_i_1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_2_fu_272_p2_carry__1_i_1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_2_fu_272_p2_carry__1_i_1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_2_fu_272_p2_carry__2_i_1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \acc_2_fu_272_p2_carry__2_i_1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rdata_reg[14]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_fir_ap_start : in STD_LOGIC;
    \rdata_reg[3]\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ap_done1 : in STD_LOGIC;
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    \_y_ap_vld_reg\ : in STD_LOGIC;
    ap_done : in STD_LOGIC;
    \_y_ap_vld1\ : in STD_LOGIC;
    \_y_ap_vld\ : in STD_LOGIC;
    sig_fir_ap_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_top_0_0_fir : entity is "fir";
end system_fir_top_0_0_fir;

architecture STRUCTURE of system_fir_top_0_0_fir is
  signal acc_1_cast8_reg_334_reg : STD_LOGIC_VECTOR ( 30 downto 6 );
  signal acc_1_reg_1241 : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_n_1\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_n_2\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__0_n_3\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_n_1\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_n_2\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__1_n_3\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_n_1\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_n_2\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__2_n_3\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_n_1\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_n_2\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__3_n_3\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_n_0\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_n_1\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_n_2\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__4_n_3\ : STD_LOGIC;
  signal \acc_2_fu_272_p2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_i_1_n_0 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_i_2_n_0 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_i_3_n_0 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_i_4_n_0 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_n_0 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_n_1 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_n_2 : STD_LOGIC;
  signal acc_2_fu_272_p2_carry_n_3 : STD_LOGIC;
  signal acc_3_fu_230_p2_i_1_n_0 : STD_LOGIC;
  signal acc_3_fu_230_p2_i_2_n_0 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_100 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_101 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_102 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_103 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_104 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_105 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_69 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_70 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_71 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_72 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_73 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_74 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_75 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_76 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_77 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_78 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_79 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_80 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_81 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_82 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_83 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_84 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_85 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_86 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_87 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_88 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_89 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_90 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_91 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_92 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_93 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_94 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_95 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_96 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_97 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_98 : STD_LOGIC;
  signal acc_3_fu_230_p2_n_99 : STD_LOGIC;
  signal acc_fu_162_p20_out : STD_LOGIC_VECTOR ( 25 downto 9 );
  signal \acc_fu_162_p2__0_carry__0_n_0\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__0_n_1\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__0_n_2\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__0_n_3\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__1_n_0\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__1_n_1\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__1_n_2\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__1_n_3\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__2_n_0\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__2_n_1\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__2_n_2\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry__2_n_3\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry_n_0\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry_n_1\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry_n_2\ : STD_LOGIC;
  signal \acc_fu_162_p2__0_carry_n_3\ : STD_LOGIC;
  signal \^ap_cs_fsm\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ap_CS_fsm[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_0\ : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it0 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it0_i_1_n_0 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it1 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it1_i_1_n_0 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it2_i_1_n_0 : STD_LOGIC;
  signal ap_reg_ppiten_pp0_it2_reg_n_0 : STD_LOGIC;
  signal \ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0\ : STD_LOGIC;
  signal \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \exitcond2_reg_300[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond2_reg_300_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_cast_reg_309[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_cast_reg_309[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_cast_reg_309[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_cast_reg_309[5]_i_2_n_0\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_cast_reg_309_reg_n_0_[5]\ : STD_LOGIC;
  signal indvar_next_fu_178_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal indvar_reg_113 : STD_LOGIC;
  signal indvar_reg_113_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \indvar_reg_113_reg__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_3_in : STD_LOGIC;
  signal \rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal shift_reg_U_n_18 : STD_LOGIC;
  signal shift_reg_U_n_19 : STD_LOGIC;
  signal shift_reg_U_n_20 : STD_LOGIC;
  signal shift_reg_U_n_21 : STD_LOGIC;
  signal shift_reg_U_n_22 : STD_LOGIC;
  signal shift_reg_U_n_23 : STD_LOGIC;
  signal shift_reg_U_n_24 : STD_LOGIC;
  signal shift_reg_U_n_25 : STD_LOGIC;
  signal shift_reg_U_n_26 : STD_LOGIC;
  signal shift_reg_U_n_27 : STD_LOGIC;
  signal shift_reg_U_n_28 : STD_LOGIC;
  signal shift_reg_U_n_29 : STD_LOGIC;
  signal shift_reg_U_n_30 : STD_LOGIC;
  signal shift_reg_U_n_31 : STD_LOGIC;
  signal shift_reg_U_n_32 : STD_LOGIC;
  signal shift_reg_U_n_33 : STD_LOGIC;
  signal shift_reg_U_n_34 : STD_LOGIC;
  signal shift_reg_U_n_35 : STD_LOGIC;
  signal shift_reg_U_n_36 : STD_LOGIC;
  signal shift_reg_U_n_37 : STD_LOGIC;
  signal shift_reg_U_n_38 : STD_LOGIC;
  signal shift_reg_U_n_39 : STD_LOGIC;
  signal shift_reg_U_n_40 : STD_LOGIC;
  signal shift_reg_U_n_41 : STD_LOGIC;
  signal shift_reg_U_n_42 : STD_LOGIC;
  signal shift_reg_U_n_43 : STD_LOGIC;
  signal shift_reg_U_n_44 : STD_LOGIC;
  signal shift_reg_U_n_45 : STD_LOGIC;
  signal shift_reg_U_n_46 : STD_LOGIC;
  signal shift_reg_U_n_47 : STD_LOGIC;
  signal shift_reg_ce1 : STD_LOGIC;
  signal shift_reg_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_fir_y_ap_vld : STD_LOGIC;
  signal tmp_3_fu_262_p21_out : STD_LOGIC_VECTOR ( 24 downto 9 );
  signal \tmp_3_fu_262_p2__0_carry__0_n_0\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__0_n_1\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__0_n_2\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__0_n_3\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__1_n_0\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__1_n_1\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__1_n_2\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__1_n_3\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__2_n_1\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__2_n_2\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry__2_n_3\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry_n_0\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry_n_1\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry_n_2\ : STD_LOGIC;
  signal \tmp_3_fu_262_p2__0_carry_n_3\ : STD_LOGIC;
  signal NLW_acc_2_fu_272_p2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_2_fu_272_p2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_2_fu_272_p2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_acc_2_fu_272_p2_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_2_fu_272_p2_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_acc_3_fu_230_p2_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_acc_3_fu_230_p2_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_acc_3_fu_230_p2_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_acc_3_fu_230_p2_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_acc_3_fu_230_p2_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal NLW_acc_3_fu_230_p2_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_acc_fu_162_p2__0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_acc_fu_162_p2__0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of acc_2_fu_272_p2_carry : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_2_fu_272_p2_carry__5\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_cast_reg_309[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_cast_reg_309[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_cast_reg_309[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_cast_reg_309[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \indvar_reg_113[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indvar_reg_113[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \indvar_reg_113[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \indvar_reg_113[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[2]_i_2\ : label is "soft_lutpair0";
begin
  ap_CS_fsm(1 downto 0) <= \^ap_cs_fsm\(1 downto 0);
\_y_ap_vld_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFF88888888"
    )
        port map (
      I0 => \^ap_cs_fsm\(1),
      I1 => \^ap_cs_fsm\(0),
      I2 => \_y_ap_vld1\,
      I3 => s_axi_fir_io_ARVALID,
      I4 => \_y_ap_vld_reg\,
      I5 => \_y_ap_vld\,
      O => \ap_CS_fsm_reg[1]_1\
    );
\acc_1_cast8_reg_334[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ap_cs_fsm\(0),
      I1 => \^ap_cs_fsm\(1),
      I2 => ap_reg_ppiten_pp0_it2_reg_n_0,
      O => p_3_in
    );
\acc_1_cast8_reg_334_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_95,
      Q => acc_1_cast8_reg_334_reg(10),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_94,
      Q => acc_1_cast8_reg_334_reg(11),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_93,
      Q => acc_1_cast8_reg_334_reg(12),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_92,
      Q => acc_1_cast8_reg_334_reg(13),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_91,
      Q => acc_1_cast8_reg_334_reg(14),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_90,
      Q => acc_1_cast8_reg_334_reg(15),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_89,
      Q => acc_1_cast8_reg_334_reg(16),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_88,
      Q => acc_1_cast8_reg_334_reg(17),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_87,
      Q => acc_1_cast8_reg_334_reg(18),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_86,
      Q => acc_1_cast8_reg_334_reg(19),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_85,
      Q => acc_1_cast8_reg_334_reg(20),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_84,
      Q => acc_1_cast8_reg_334_reg(21),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_83,
      Q => acc_1_cast8_reg_334_reg(22),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_82,
      Q => acc_1_cast8_reg_334_reg(23),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_81,
      Q => acc_1_cast8_reg_334_reg(24),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_80,
      Q => acc_1_cast8_reg_334_reg(25),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_79,
      Q => acc_1_cast8_reg_334_reg(26),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_78,
      Q => acc_1_cast8_reg_334_reg(27),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_77,
      Q => acc_1_cast8_reg_334_reg(28),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_76,
      Q => acc_1_cast8_reg_334_reg(29),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_75,
      Q => acc_1_cast8_reg_334_reg(30),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_99,
      Q => acc_1_cast8_reg_334_reg(6),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_98,
      Q => acc_1_cast8_reg_334_reg(7),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_97,
      Q => acc_1_cast8_reg_334_reg(8),
      R => '0'
    );
\acc_1_cast8_reg_334_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_3_in,
      D => acc_3_fu_230_p2_n_96,
      Q => acc_1_cast8_reg_334_reg(9),
      R => '0'
    );
acc_2_fu_272_p2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => acc_2_fu_272_p2_carry_n_0,
      CO(2) => acc_2_fu_272_p2_carry_n_1,
      CO(1) => acc_2_fu_272_p2_carry_n_2,
      CO(0) => acc_2_fu_272_p2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => acc_1_cast8_reg_334_reg(9 downto 6),
      O(3 downto 0) => NLW_acc_2_fu_272_p2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => acc_2_fu_272_p2_carry_i_1_n_0,
      S(2) => acc_2_fu_272_p2_carry_i_2_n_0,
      S(1) => acc_2_fu_272_p2_carry_i_3_n_0,
      S(0) => acc_2_fu_272_p2_carry_i_4_n_0
    );
\acc_2_fu_272_p2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => acc_2_fu_272_p2_carry_n_0,
      CO(3) => \acc_2_fu_272_p2_carry__0_n_0\,
      CO(2) => \acc_2_fu_272_p2_carry__0_n_1\,
      CO(1) => \acc_2_fu_272_p2_carry__0_n_2\,
      CO(0) => \acc_2_fu_272_p2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_1_cast8_reg_334_reg(13 downto 10),
      O(3 downto 0) => \NLW_acc_2_fu_272_p2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \acc_2_fu_272_p2_carry__0_i_1_n_0\,
      S(2) => \acc_2_fu_272_p2_carry__0_i_2_n_0\,
      S(1) => \acc_2_fu_272_p2_carry__0_i_3_n_0\,
      S(0) => \acc_2_fu_272_p2_carry__0_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(13),
      I1 => tmp_3_fu_262_p21_out(13),
      O => \acc_2_fu_272_p2_carry__0_i_1_n_0\
    );
\acc_2_fu_272_p2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(12),
      I1 => tmp_3_fu_262_p21_out(12),
      O => \acc_2_fu_272_p2_carry__0_i_2_n_0\
    );
\acc_2_fu_272_p2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(11),
      I1 => tmp_3_fu_262_p21_out(11),
      O => \acc_2_fu_272_p2_carry__0_i_3_n_0\
    );
\acc_2_fu_272_p2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(10),
      I1 => tmp_3_fu_262_p21_out(10),
      O => \acc_2_fu_272_p2_carry__0_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_2_fu_272_p2_carry__0_n_0\,
      CO(3) => \acc_2_fu_272_p2_carry__1_n_0\,
      CO(2) => \acc_2_fu_272_p2_carry__1_n_1\,
      CO(1) => \acc_2_fu_272_p2_carry__1_n_2\,
      CO(0) => \acc_2_fu_272_p2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_1_cast8_reg_334_reg(17 downto 14),
      O(3) => data5(2),
      O(2 downto 1) => \acc_1_cast8_reg_334_reg[25]_0\(1 downto 0),
      O(0) => \NLW_acc_2_fu_272_p2_carry__1_O_UNCONNECTED\(0),
      S(3) => \acc_2_fu_272_p2_carry__1_i_1_n_0\,
      S(2) => \acc_2_fu_272_p2_carry__1_i_2_n_0\,
      S(1) => \acc_2_fu_272_p2_carry__1_i_3_n_0\,
      S(0) => \acc_2_fu_272_p2_carry__1_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(17),
      I1 => tmp_3_fu_262_p21_out(17),
      O => \acc_2_fu_272_p2_carry__1_i_1_n_0\
    );
\acc_2_fu_272_p2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(16),
      I1 => tmp_3_fu_262_p21_out(16),
      O => \acc_2_fu_272_p2_carry__1_i_2_n_0\
    );
\acc_2_fu_272_p2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(15),
      I1 => tmp_3_fu_262_p21_out(15),
      O => \acc_2_fu_272_p2_carry__1_i_3_n_0\
    );
\acc_2_fu_272_p2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(14),
      I1 => tmp_3_fu_262_p21_out(14),
      O => \acc_2_fu_272_p2_carry__1_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_2_fu_272_p2_carry__1_n_0\,
      CO(3) => \acc_2_fu_272_p2_carry__2_n_0\,
      CO(2) => \acc_2_fu_272_p2_carry__2_n_1\,
      CO(1) => \acc_2_fu_272_p2_carry__2_n_2\,
      CO(0) => \acc_2_fu_272_p2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_1_cast8_reg_334_reg(21 downto 18),
      O(3 downto 0) => data5(6 downto 3),
      S(3) => \acc_2_fu_272_p2_carry__2_i_1_n_0\,
      S(2) => \acc_2_fu_272_p2_carry__2_i_2_n_0\,
      S(1) => \acc_2_fu_272_p2_carry__2_i_3_n_0\,
      S(0) => \acc_2_fu_272_p2_carry__2_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(21),
      I1 => tmp_3_fu_262_p21_out(21),
      O => \acc_2_fu_272_p2_carry__2_i_1_n_0\
    );
\acc_2_fu_272_p2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(20),
      I1 => tmp_3_fu_262_p21_out(20),
      O => \acc_2_fu_272_p2_carry__2_i_2_n_0\
    );
\acc_2_fu_272_p2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(19),
      I1 => tmp_3_fu_262_p21_out(19),
      O => \acc_2_fu_272_p2_carry__2_i_3_n_0\
    );
\acc_2_fu_272_p2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(18),
      I1 => tmp_3_fu_262_p21_out(18),
      O => \acc_2_fu_272_p2_carry__2_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_2_fu_272_p2_carry__2_n_0\,
      CO(3) => \acc_2_fu_272_p2_carry__3_n_0\,
      CO(2) => \acc_2_fu_272_p2_carry__3_n_1\,
      CO(1) => \acc_2_fu_272_p2_carry__3_n_2\,
      CO(0) => \acc_2_fu_272_p2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => acc_1_cast8_reg_334_reg(25 downto 22),
      O(3 downto 1) => data5(10 downto 8),
      O(0) => \acc_1_cast8_reg_334_reg[25]_0\(2),
      S(3) => \acc_2_fu_272_p2_carry__3_i_1_n_0\,
      S(2) => \acc_2_fu_272_p2_carry__3_i_2_n_0\,
      S(1) => \acc_2_fu_272_p2_carry__3_i_3_n_0\,
      S(0) => \acc_2_fu_272_p2_carry__3_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rdata_reg[14]\(0),
      I1 => acc_1_cast8_reg_334_reg(25),
      O => \acc_2_fu_272_p2_carry__3_i_1_n_0\
    );
\acc_2_fu_272_p2_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(24),
      I1 => tmp_3_fu_262_p21_out(24),
      O => \acc_2_fu_272_p2_carry__3_i_2_n_0\
    );
\acc_2_fu_272_p2_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(23),
      I1 => tmp_3_fu_262_p21_out(23),
      O => \acc_2_fu_272_p2_carry__3_i_3_n_0\
    );
\acc_2_fu_272_p2_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(22),
      I1 => tmp_3_fu_262_p21_out(22),
      O => \acc_2_fu_272_p2_carry__3_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_2_fu_272_p2_carry__3_n_0\,
      CO(3) => \acc_2_fu_272_p2_carry__4_n_0\,
      CO(2) => \acc_2_fu_272_p2_carry__4_n_1\,
      CO(1) => \acc_2_fu_272_p2_carry__4_n_2\,
      CO(0) => \acc_2_fu_272_p2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => acc_1_cast8_reg_334_reg(28 downto 26),
      DI(0) => \rdata_reg[14]\(0),
      O(3 downto 0) => data5(14 downto 11),
      S(3) => \acc_2_fu_272_p2_carry__4_i_2_n_0\,
      S(2) => \acc_2_fu_272_p2_carry__4_i_3_n_0\,
      S(1) => \acc_2_fu_272_p2_carry__4_i_4_n_0\,
      S(0) => \acc_2_fu_272_p2_carry__4_i_5_n_0\
    );
\acc_2_fu_272_p2_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(28),
      I1 => acc_1_cast8_reg_334_reg(29),
      O => \acc_2_fu_272_p2_carry__4_i_2_n_0\
    );
\acc_2_fu_272_p2_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(27),
      I1 => acc_1_cast8_reg_334_reg(28),
      O => \acc_2_fu_272_p2_carry__4_i_3_n_0\
    );
\acc_2_fu_272_p2_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(26),
      I1 => acc_1_cast8_reg_334_reg(27),
      O => \acc_2_fu_272_p2_carry__4_i_4_n_0\
    );
\acc_2_fu_272_p2_carry__4_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rdata_reg[14]\(0),
      I1 => acc_1_cast8_reg_334_reg(26),
      O => \acc_2_fu_272_p2_carry__4_i_5_n_0\
    );
\acc_2_fu_272_p2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_2_fu_272_p2_carry__4_n_0\,
      CO(3 downto 0) => \NLW_acc_2_fu_272_p2_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_acc_2_fu_272_p2_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => data5(15),
      S(3 downto 1) => B"000",
      S(0) => \acc_2_fu_272_p2_carry__5_i_1_n_0\
    );
\acc_2_fu_272_p2_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(29),
      I1 => acc_1_cast8_reg_334_reg(30),
      O => \acc_2_fu_272_p2_carry__5_i_1_n_0\
    );
acc_2_fu_272_p2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(9),
      I1 => tmp_3_fu_262_p21_out(9),
      O => acc_2_fu_272_p2_carry_i_1_n_0
    );
acc_2_fu_272_p2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(8),
      I1 => Q(2),
      O => acc_2_fu_272_p2_carry_i_2_n_0
    );
acc_2_fu_272_p2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(7),
      I1 => Q(1),
      O => acc_2_fu_272_p2_carry_i_3_n_0
    );
acc_2_fu_272_p2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => acc_1_cast8_reg_334_reg(6),
      I1 => Q(0),
      O => acc_2_fu_272_p2_carry_i_4_n_0
    );
acc_3_fu_230_p2: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_acc_3_fu_230_p2_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => shift_reg_q0(15),
      B(16) => shift_reg_q0(15),
      B(15 downto 0) => shift_reg_q0(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_acc_3_fu_230_p2_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 37) => B"00000000000",
      C(36) => acc_fu_162_p20_out(25),
      C(35) => acc_fu_162_p20_out(25),
      C(34) => acc_fu_162_p20_out(25),
      C(33) => acc_fu_162_p20_out(25),
      C(32) => acc_fu_162_p20_out(25),
      C(31) => acc_fu_162_p20_out(25),
      C(30) => acc_fu_162_p20_out(25),
      C(29) => acc_fu_162_p20_out(25),
      C(28) => acc_fu_162_p20_out(25),
      C(27) => acc_fu_162_p20_out(25),
      C(26) => acc_fu_162_p20_out(25),
      C(25 downto 9) => acc_fu_162_p20_out(25 downto 9),
      C(8 downto 6) => shift_reg_q0(2 downto 0),
      C(5 downto 0) => B"000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_acc_3_fu_230_p2_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_acc_3_fu_230_p2_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => shift_reg_U_n_18,
      CEA2 => shift_reg_ce1,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => shift_reg_ce1,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => acc_3_fu_230_p2_i_1_n_0,
      CLK => aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_acc_3_fu_230_p2_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => acc_3_fu_230_p2_i_2_n_0,
      OPMODE(3) => '0',
      OPMODE(2) => acc_1_reg_1241,
      OPMODE(1) => '0',
      OPMODE(0) => acc_1_reg_1241,
      OVERFLOW => NLW_acc_3_fu_230_p2_OVERFLOW_UNCONNECTED,
      P(47 downto 37) => NLW_acc_3_fu_230_p2_P_UNCONNECTED(47 downto 37),
      P(36) => acc_3_fu_230_p2_n_69,
      P(35) => acc_3_fu_230_p2_n_70,
      P(34) => acc_3_fu_230_p2_n_71,
      P(33) => acc_3_fu_230_p2_n_72,
      P(32) => acc_3_fu_230_p2_n_73,
      P(31) => acc_3_fu_230_p2_n_74,
      P(30) => acc_3_fu_230_p2_n_75,
      P(29) => acc_3_fu_230_p2_n_76,
      P(28) => acc_3_fu_230_p2_n_77,
      P(27) => acc_3_fu_230_p2_n_78,
      P(26) => acc_3_fu_230_p2_n_79,
      P(25) => acc_3_fu_230_p2_n_80,
      P(24) => acc_3_fu_230_p2_n_81,
      P(23) => acc_3_fu_230_p2_n_82,
      P(22) => acc_3_fu_230_p2_n_83,
      P(21) => acc_3_fu_230_p2_n_84,
      P(20) => acc_3_fu_230_p2_n_85,
      P(19) => acc_3_fu_230_p2_n_86,
      P(18) => acc_3_fu_230_p2_n_87,
      P(17) => acc_3_fu_230_p2_n_88,
      P(16) => acc_3_fu_230_p2_n_89,
      P(15) => acc_3_fu_230_p2_n_90,
      P(14) => acc_3_fu_230_p2_n_91,
      P(13) => acc_3_fu_230_p2_n_92,
      P(12) => acc_3_fu_230_p2_n_93,
      P(11) => acc_3_fu_230_p2_n_94,
      P(10) => acc_3_fu_230_p2_n_95,
      P(9) => acc_3_fu_230_p2_n_96,
      P(8) => acc_3_fu_230_p2_n_97,
      P(7) => acc_3_fu_230_p2_n_98,
      P(6) => acc_3_fu_230_p2_n_99,
      P(5) => acc_3_fu_230_p2_n_100,
      P(4) => acc_3_fu_230_p2_n_101,
      P(3) => acc_3_fu_230_p2_n_102,
      P(2) => acc_3_fu_230_p2_n_103,
      P(1) => acc_3_fu_230_p2_n_104,
      P(0) => acc_3_fu_230_p2_n_105,
      PATTERNBDETECT => NLW_acc_3_fu_230_p2_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_acc_3_fu_230_p2_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_acc_3_fu_230_p2_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_acc_3_fu_230_p2_UNDERFLOW_UNCONNECTED
    );
acc_3_fu_230_p2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F40"
    )
        port map (
      I0 => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\,
      I1 => ap_reg_ppiten_pp0_it2_reg_n_0,
      I2 => \^ap_cs_fsm\(1),
      I3 => \^ap_cs_fsm\(0),
      O => acc_3_fu_230_p2_i_1_n_0
    );
acc_3_fu_230_p2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\,
      I1 => \^ap_cs_fsm\(0),
      I2 => \^ap_cs_fsm\(1),
      I3 => ap_reg_ppiten_pp0_it2_reg_n_0,
      O => acc_3_fu_230_p2_i_2_n_0
    );
acc_3_fu_230_p2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it2_reg_n_0,
      I1 => \^ap_cs_fsm\(1),
      I2 => \^ap_cs_fsm\(0),
      I3 => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\,
      O => acc_1_reg_1241
    );
\acc_fu_162_p2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_fu_162_p2__0_carry_n_0\,
      CO(2) => \acc_fu_162_p2__0_carry_n_1\,
      CO(1) => \acc_fu_162_p2__0_carry_n_2\,
      CO(0) => \acc_fu_162_p2__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => shift_reg_U_n_24,
      DI(2) => shift_reg_U_n_25,
      DI(1) => shift_reg_U_n_26,
      DI(0) => '0',
      O(3 downto 0) => acc_fu_162_p20_out(12 downto 9),
      S(3) => shift_reg_U_n_20,
      S(2) => shift_reg_U_n_21,
      S(1) => shift_reg_U_n_22,
      S(0) => shift_reg_U_n_23
    );
\acc_fu_162_p2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_162_p2__0_carry_n_0\,
      CO(3) => \acc_fu_162_p2__0_carry__0_n_0\,
      CO(2) => \acc_fu_162_p2__0_carry__0_n_1\,
      CO(1) => \acc_fu_162_p2__0_carry__0_n_2\,
      CO(0) => \acc_fu_162_p2__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => shift_reg_U_n_27,
      DI(2) => shift_reg_U_n_28,
      DI(1) => shift_reg_U_n_29,
      DI(0) => shift_reg_U_n_30,
      O(3 downto 0) => acc_fu_162_p20_out(16 downto 13),
      S(3) => shift_reg_U_n_40,
      S(2) => shift_reg_U_n_41,
      S(1) => shift_reg_U_n_42,
      S(0) => shift_reg_U_n_43
    );
\acc_fu_162_p2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_162_p2__0_carry__0_n_0\,
      CO(3) => \acc_fu_162_p2__0_carry__1_n_0\,
      CO(2) => \acc_fu_162_p2__0_carry__1_n_1\,
      CO(1) => \acc_fu_162_p2__0_carry__1_n_2\,
      CO(0) => \acc_fu_162_p2__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => shift_reg_U_n_31,
      DI(2) => shift_reg_U_n_32,
      DI(1) => shift_reg_U_n_33,
      DI(0) => shift_reg_U_n_34,
      O(3 downto 0) => acc_fu_162_p20_out(20 downto 17),
      S(3) => shift_reg_U_n_44,
      S(2) => shift_reg_U_n_45,
      S(1) => shift_reg_U_n_46,
      S(0) => shift_reg_U_n_47
    );
\acc_fu_162_p2__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_162_p2__0_carry__1_n_0\,
      CO(3) => \acc_fu_162_p2__0_carry__2_n_0\,
      CO(2) => \acc_fu_162_p2__0_carry__2_n_1\,
      CO(1) => \acc_fu_162_p2__0_carry__2_n_2\,
      CO(0) => \acc_fu_162_p2__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => shift_reg_q0(15 downto 13),
      DI(0) => shift_reg_U_n_35,
      O(3 downto 0) => acc_fu_162_p20_out(24 downto 21),
      S(3) => shift_reg_U_n_36,
      S(2) => shift_reg_U_n_37,
      S(1) => shift_reg_U_n_38,
      S(0) => shift_reg_U_n_39
    );
\acc_fu_162_p2__0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_fu_162_p2__0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_acc_fu_162_p2__0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_acc_fu_162_p2__0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => acc_fu_162_p20_out(25),
      S(3 downto 0) => B"0001"
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"030A000A"
    )
        port map (
      I0 => sig_fir_ap_start,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => \^ap_cs_fsm\(0),
      I3 => \^ap_cs_fsm\(1),
      I4 => ap_reg_ppiten_pp0_it2_reg_n_0,
      O => \ap_CS_fsm[0]_i_1_n_0\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ap_cs_fsm\(0),
      I1 => \^ap_cs_fsm\(1),
      O => \ap_CS_fsm[1]_i_1_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_0\,
      Q => \^ap_cs_fsm\(0),
      R => sig_fir_ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_0\,
      Q => \^ap_cs_fsm\(1),
      R => sig_fir_ap_rst
    );
ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFF88888888"
    )
        port map (
      I0 => \^ap_cs_fsm\(1),
      I1 => \^ap_cs_fsm\(0),
      I2 => ap_done1,
      I3 => s_axi_fir_io_ARVALID,
      I4 => \_y_ap_vld_reg\,
      I5 => ap_done,
      O => \ap_CS_fsm_reg[1]_0\
    );
ap_reg_ppiten_pp0_it0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80C888C8"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it0,
      I1 => aresetn,
      I2 => \^ap_cs_fsm\(0),
      I3 => \^ap_cs_fsm\(1),
      I4 => shift_reg_U_n_19,
      O => ap_reg_ppiten_pp0_it0_i_1_n_0
    );
ap_reg_ppiten_pp0_it0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_reg_ppiten_pp0_it0_i_1_n_0,
      Q => ap_reg_ppiten_pp0_it0,
      R => '0'
    );
ap_reg_ppiten_pp0_it1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C0A0"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it1,
      I1 => ap_reg_ppiten_pp0_it0,
      I2 => aresetn,
      I3 => \^ap_cs_fsm\(1),
      I4 => \^ap_cs_fsm\(0),
      O => ap_reg_ppiten_pp0_it1_i_1_n_0
    );
ap_reg_ppiten_pp0_it1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_reg_ppiten_pp0_it1_i_1_n_0,
      Q => ap_reg_ppiten_pp0_it1,
      R => '0'
    );
ap_reg_ppiten_pp0_it2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000C0A0"
    )
        port map (
      I0 => ap_reg_ppiten_pp0_it2_reg_n_0,
      I1 => ap_reg_ppiten_pp0_it1,
      I2 => aresetn,
      I3 => \^ap_cs_fsm\(1),
      I4 => \^ap_cs_fsm\(0),
      O => ap_reg_ppiten_pp0_it2_i_1_n_0
    );
ap_reg_ppiten_pp0_it2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ap_reg_ppiten_pp0_it2_i_1_n_0,
      Q => ap_reg_ppiten_pp0_it2_reg_n_0,
      R => '0'
    );
\ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \exitcond2_reg_300_reg_n_0_[0]\,
      I1 => \^ap_cs_fsm\(1),
      I2 => \^ap_cs_fsm\(0),
      I3 => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\,
      O => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0\
    );
\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0\,
      Q => \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0]\,
      R => '0'
    );
\exitcond2_reg_300[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => shift_reg_U_n_19,
      I1 => \^ap_cs_fsm\(0),
      I2 => \^ap_cs_fsm\(1),
      I3 => ap_reg_ppiten_pp0_it0,
      I4 => \exitcond2_reg_300_reg_n_0_[0]\,
      O => \exitcond2_reg_300[0]_i_1_n_0\
    );
\exitcond2_reg_300_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \exitcond2_reg_300[0]_i_1_n_0\,
      Q => \exitcond2_reg_300_reg_n_0_[0]\,
      R => '0'
    );
\i_cast_reg_309[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_reg_113_reg(0),
      O => p_0_in(0)
    );
\i_cast_reg_309[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_reg_113_reg__0\(1),
      I1 => indvar_reg_113_reg(2),
      O => \i_cast_reg_309[2]_i_1_n_0\
    );
\i_cast_reg_309[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \indvar_reg_113_reg__0\(1),
      I1 => indvar_reg_113_reg(2),
      I2 => indvar_reg_113_reg(3),
      O => \i_cast_reg_309[3]_i_1_n_0\
    );
\i_cast_reg_309[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => indvar_reg_113_reg(3),
      I1 => indvar_reg_113_reg(2),
      I2 => \indvar_reg_113_reg__0\(1),
      I3 => indvar_reg_113_reg(4),
      O => \i_cast_reg_309[4]_i_1_n_0\
    );
\i_cast_reg_309[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA85557"
    )
        port map (
      I0 => indvar_reg_113_reg(4),
      I1 => \indvar_reg_113_reg__0\(1),
      I2 => indvar_reg_113_reg(2),
      I3 => indvar_reg_113_reg(3),
      I4 => indvar_reg_113_reg(5),
      O => \i_cast_reg_309[5]_i_2_n_0\
    );
\i_cast_reg_309_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => p_0_in(0),
      Q => \i_cast_reg_309_reg_n_0_[0]\,
      R => '0'
    );
\i_cast_reg_309_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => \indvar_reg_113_reg__0\(1),
      Q => \i_cast_reg_309_reg_n_0_[1]\,
      R => '0'
    );
\i_cast_reg_309_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => \i_cast_reg_309[2]_i_1_n_0\,
      Q => \i_cast_reg_309_reg_n_0_[2]\,
      R => '0'
    );
\i_cast_reg_309_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => \i_cast_reg_309[3]_i_1_n_0\,
      Q => \i_cast_reg_309_reg_n_0_[3]\,
      R => '0'
    );
\i_cast_reg_309_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => \i_cast_reg_309[4]_i_1_n_0\,
      Q => \i_cast_reg_309_reg_n_0_[4]\,
      R => '0'
    );
\i_cast_reg_309_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => \i_cast_reg_309[5]_i_2_n_0\,
      Q => \i_cast_reg_309_reg_n_0_[5]\,
      R => '0'
    );
\indvar_reg_113[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_reg_113_reg(0),
      I1 => \indvar_reg_113_reg__0\(1),
      O => indvar_next_fu_178_p2(1)
    );
\indvar_reg_113[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => indvar_reg_113_reg(0),
      I1 => \indvar_reg_113_reg__0\(1),
      I2 => indvar_reg_113_reg(2),
      O => indvar_next_fu_178_p2(2)
    );
\indvar_reg_113[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \indvar_reg_113_reg__0\(1),
      I1 => indvar_reg_113_reg(0),
      I2 => indvar_reg_113_reg(2),
      I3 => indvar_reg_113_reg(3),
      O => indvar_next_fu_178_p2(3)
    );
\indvar_reg_113[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => indvar_reg_113_reg(2),
      I1 => indvar_reg_113_reg(0),
      I2 => \indvar_reg_113_reg__0\(1),
      I3 => indvar_reg_113_reg(3),
      I4 => indvar_reg_113_reg(4),
      O => indvar_next_fu_178_p2(4)
    );
\indvar_reg_113[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ap_cs_fsm\(1),
      I1 => \^ap_cs_fsm\(0),
      I2 => shift_reg_U_n_18,
      O => indvar_reg_113
    );
\indvar_reg_113[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => indvar_reg_113_reg(3),
      I1 => \indvar_reg_113_reg__0\(1),
      I2 => indvar_reg_113_reg(0),
      I3 => indvar_reg_113_reg(2),
      I4 => indvar_reg_113_reg(4),
      I5 => indvar_reg_113_reg(5),
      O => indvar_next_fu_178_p2(5)
    );
\indvar_reg_113_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => p_0_in(0),
      Q => indvar_reg_113_reg(0),
      R => indvar_reg_113
    );
\indvar_reg_113_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => indvar_next_fu_178_p2(1),
      Q => \indvar_reg_113_reg__0\(1),
      R => indvar_reg_113
    );
\indvar_reg_113_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => indvar_next_fu_178_p2(2),
      Q => indvar_reg_113_reg(2),
      R => indvar_reg_113
    );
\indvar_reg_113_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => indvar_next_fu_178_p2(3),
      Q => indvar_reg_113_reg(3),
      R => indvar_reg_113
    );
\indvar_reg_113_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => indvar_next_fu_178_p2(4),
      Q => indvar_reg_113_reg(4),
      R => indvar_reg_113
    );
\indvar_reg_113_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg_U_n_18,
      D => indvar_next_fu_178_p2(5),
      Q => indvar_reg_113_reg(5),
      R => indvar_reg_113
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(10),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(10),
      O => \s_axi_fir_io_ARADDR[2]_4\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(11),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(11),
      O => \s_axi_fir_io_ARADDR[2]_5\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(12),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(12),
      O => \s_axi_fir_io_ARADDR[2]_6\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(13),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(13),
      O => \s_axi_fir_io_ARADDR[2]_7\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(14),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(14),
      O => \s_axi_fir_io_ARADDR[2]_8\
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(15),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(15),
      O => \s_axi_fir_io_ARADDR[2]_9\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B080FFFFB0800000"
    )
        port map (
      I0 => Q(2),
      I1 => s_axi_fir_io_ARADDR(1),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => data5(2),
      I4 => \rdata_reg[3]\,
      I5 => \rdata[2]_i_2_n_0\,
      O => \_x_reg[2]\
    );
\rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_fir_io_ARADDR(0),
      I1 => \^ap_cs_fsm\(1),
      I2 => \^ap_cs_fsm\(0),
      I3 => sig_fir_ap_start,
      I4 => s_axi_fir_io_ARADDR(1),
      O => \rdata[2]_i_2_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000A000C00FC000"
    )
        port map (
      I0 => Q(3),
      I1 => data5(3),
      I2 => \rdata_reg[3]\,
      I3 => s_axi_fir_io_ARADDR(0),
      I4 => sig_fir_y_ap_vld,
      I5 => s_axi_fir_io_ARADDR(1),
      O => \_x_reg[3]\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(4),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(4),
      O => \s_axi_fir_io_ARADDR[2]\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(5),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(5),
      O => \s_axi_fir_io_ARADDR[2]_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(6),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(6),
      O => \s_axi_fir_io_ARADDR[2]_1\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(8),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(8),
      O => \s_axi_fir_io_ARADDR[2]_2\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0800080"
    )
        port map (
      I0 => \rdata_reg[3]\,
      I1 => data5(9),
      I2 => s_axi_fir_io_ARADDR(0),
      I3 => s_axi_fir_io_ARADDR(1),
      I4 => Q(9),
      O => \s_axi_fir_io_ARADDR[2]_3\
    );
shift_reg_U: entity work.system_fir_top_0_0_fir_shift_reg
     port map (
      CEA2 => shift_reg_ce1,
      DI(2) => shift_reg_U_n_24,
      DI(1) => shift_reg_U_n_25,
      DI(0) => shift_reg_U_n_26,
      DOADO(15 downto 0) => shift_reg_q0(15 downto 0),
      Q(5) => \i_cast_reg_309_reg_n_0_[5]\,
      Q(4) => \i_cast_reg_309_reg_n_0_[4]\,
      Q(3) => \i_cast_reg_309_reg_n_0_[3]\,
      Q(2) => \i_cast_reg_309_reg_n_0_[2]\,
      Q(1) => \i_cast_reg_309_reg_n_0_[1]\,
      Q(0) => \i_cast_reg_309_reg_n_0_[0]\,
      S(3) => shift_reg_U_n_20,
      S(2) => shift_reg_U_n_21,
      S(1) => shift_reg_U_n_22,
      S(0) => shift_reg_U_n_23,
      WEA(0) => sig_fir_y_ap_vld,
      aclk => aclk,
      ap_reg_ppiten_pp0_it0 => ap_reg_ppiten_pp0_it0,
      ap_reg_ppiten_pp0_it0_reg => shift_reg_U_n_18,
      ap_reg_ppiten_pp0_it1 => ap_reg_ppiten_pp0_it1,
      \indvar_reg_113_reg[0]\ => shift_reg_U_n_19,
      ram_reg(3) => shift_reg_U_n_27,
      ram_reg(2) => shift_reg_U_n_28,
      ram_reg(1) => shift_reg_U_n_29,
      ram_reg(0) => shift_reg_U_n_30,
      ram_reg_0(3) => shift_reg_U_n_31,
      ram_reg_0(2) => shift_reg_U_n_32,
      ram_reg_0(1) => shift_reg_U_n_33,
      ram_reg_0(0) => shift_reg_U_n_34,
      ram_reg_1(0) => shift_reg_U_n_35,
      ram_reg_2(3) => shift_reg_U_n_36,
      ram_reg_2(2) => shift_reg_U_n_37,
      ram_reg_2(1) => shift_reg_U_n_38,
      ram_reg_2(0) => shift_reg_U_n_39,
      ram_reg_3(3) => shift_reg_U_n_40,
      ram_reg_3(2) => shift_reg_U_n_41,
      ram_reg_3(1) => shift_reg_U_n_42,
      ram_reg_3(0) => shift_reg_U_n_43,
      ram_reg_4(3) => shift_reg_U_n_44,
      ram_reg_4(2) => shift_reg_U_n_45,
      ram_reg_4(1) => shift_reg_U_n_46,
      ram_reg_4(0) => shift_reg_U_n_47,
      ram_reg_5(15 downto 0) => Q(15 downto 0),
      ram_reg_6(5 downto 2) => indvar_reg_113_reg(5 downto 2),
      ram_reg_6(1) => \indvar_reg_113_reg__0\(1),
      ram_reg_6(0) => indvar_reg_113_reg(0),
      ram_reg_7 => \^ap_cs_fsm\(1),
      ram_reg_8 => \^ap_cs_fsm\(0),
      ram_reg_9 => \exitcond2_reg_300_reg_n_0_[0]\,
      sig_fir_ap_start => sig_fir_ap_start
    );
\tmp_3_fu_262_p2__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_3_fu_262_p2__0_carry_n_0\,
      CO(2) => \tmp_3_fu_262_p2__0_carry_n_1\,
      CO(1) => \tmp_3_fu_262_p2__0_carry_n_2\,
      CO(0) => \tmp_3_fu_262_p2__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => tmp_3_fu_262_p21_out(12 downto 9),
      S(3 downto 0) => S(3 downto 0)
    );
\tmp_3_fu_262_p2__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_3_fu_262_p2__0_carry_n_0\,
      CO(3) => \tmp_3_fu_262_p2__0_carry__0_n_0\,
      CO(2) => \tmp_3_fu_262_p2__0_carry__0_n_1\,
      CO(1) => \tmp_3_fu_262_p2__0_carry__0_n_2\,
      CO(0) => \tmp_3_fu_262_p2__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \acc_2_fu_272_p2_carry__0_i_1_0\(3 downto 0),
      O(3 downto 0) => tmp_3_fu_262_p21_out(16 downto 13),
      S(3 downto 0) => \acc_2_fu_272_p2_carry__0_i_1_1\(3 downto 0)
    );
\tmp_3_fu_262_p2__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_3_fu_262_p2__0_carry__0_n_0\,
      CO(3) => \tmp_3_fu_262_p2__0_carry__1_n_0\,
      CO(2) => \tmp_3_fu_262_p2__0_carry__1_n_1\,
      CO(1) => \tmp_3_fu_262_p2__0_carry__1_n_2\,
      CO(0) => \tmp_3_fu_262_p2__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \acc_2_fu_272_p2_carry__1_i_1_0\(3 downto 0),
      O(3 downto 0) => tmp_3_fu_262_p21_out(20 downto 17),
      S(3 downto 0) => \acc_2_fu_272_p2_carry__1_i_1_1\(3 downto 0)
    );
\tmp_3_fu_262_p2__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_3_fu_262_p2__0_carry__1_n_0\,
      CO(3) => CO(0),
      CO(2) => \tmp_3_fu_262_p2__0_carry__2_n_1\,
      CO(1) => \tmp_3_fu_262_p2__0_carry__2_n_2\,
      CO(0) => \tmp_3_fu_262_p2__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => Q(15 downto 13),
      DI(0) => \acc_2_fu_272_p2_carry__2_i_1_0\(0),
      O(3 downto 0) => tmp_3_fu_262_p21_out(24 downto 21),
      S(3 downto 0) => \acc_2_fu_272_p2_carry__2_i_1_1\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0_fir_top is
  port (
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_RREADY : in STD_LOGIC;
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_top_0_0_fir_top : entity is "fir_top";
end system_fir_top_0_0_fir_top;

architecture STRUCTURE of system_fir_top_0_0_fir_top is
  signal \_y_ap_vld\ : STD_LOGIC;
  signal \_y_ap_vld1\ : STD_LOGIC;
  signal ap_CS_fsm : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_done : STD_LOGIC;
  signal ap_done1 : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fir_U_n_0 : STD_LOGIC;
  signal fir_U_n_10 : STD_LOGIC;
  signal fir_U_n_11 : STD_LOGIC;
  signal fir_U_n_12 : STD_LOGIC;
  signal fir_U_n_13 : STD_LOGIC;
  signal fir_U_n_14 : STD_LOGIC;
  signal fir_U_n_15 : STD_LOGIC;
  signal fir_U_n_16 : STD_LOGIC;
  signal fir_U_n_17 : STD_LOGIC;
  signal fir_U_n_18 : STD_LOGIC;
  signal fir_U_n_19 : STD_LOGIC;
  signal fir_U_n_20 : STD_LOGIC;
  signal fir_U_n_6 : STD_LOGIC;
  signal fir_U_n_7 : STD_LOGIC;
  signal fir_U_n_8 : STD_LOGIC;
  signal fir_U_n_9 : STD_LOGIC;
  signal fir_io_if_U_n_10 : STD_LOGIC;
  signal fir_io_if_U_n_27 : STD_LOGIC;
  signal fir_io_if_U_n_28 : STD_LOGIC;
  signal fir_io_if_U_n_29 : STD_LOGIC;
  signal fir_io_if_U_n_30 : STD_LOGIC;
  signal fir_io_if_U_n_31 : STD_LOGIC;
  signal fir_io_if_U_n_32 : STD_LOGIC;
  signal fir_io_if_U_n_33 : STD_LOGIC;
  signal fir_io_if_U_n_34 : STD_LOGIC;
  signal fir_io_if_U_n_35 : STD_LOGIC;
  signal fir_io_if_U_n_36 : STD_LOGIC;
  signal fir_io_if_U_n_37 : STD_LOGIC;
  signal fir_io_if_U_n_38 : STD_LOGIC;
  signal fir_io_if_U_n_39 : STD_LOGIC;
  signal fir_io_if_U_n_40 : STD_LOGIC;
  signal fir_io_if_U_n_41 : STD_LOGIC;
  signal fir_io_if_U_n_42 : STD_LOGIC;
  signal fir_io_if_U_n_47 : STD_LOGIC;
  signal fir_io_if_U_n_49 : STD_LOGIC;
  signal fir_io_if_U_n_50 : STD_LOGIC;
  signal fir_io_if_U_n_51 : STD_LOGIC;
  signal fir_io_if_U_n_52 : STD_LOGIC;
  signal fir_io_if_U_n_53 : STD_LOGIC;
  signal fir_io_if_U_n_54 : STD_LOGIC;
  signal fir_io_if_U_n_55 : STD_LOGIC;
  signal fir_io_if_U_n_56 : STD_LOGIC;
  signal fir_io_if_U_n_57 : STD_LOGIC;
  signal fir_io_if_U_n_7 : STD_LOGIC;
  signal fir_io_if_U_n_8 : STD_LOGIC;
  signal fir_io_if_U_n_9 : STD_LOGIC;
  signal \^s_axi_fir_io_rvalid\ : STD_LOGIC;
  signal sig_fir_ap_rst : STD_LOGIC;
  signal sig_fir_ap_start : STD_LOGIC;
  signal sig_fir_x : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  s_axi_fir_io_RVALID <= \^s_axi_fir_io_rvalid\;
fir_U: entity work.system_fir_top_0_0_fir
     port map (
      CO(0) => fir_U_n_0,
      DI(2) => fir_io_if_U_n_27,
      DI(1) => fir_io_if_U_n_28,
      DI(0) => fir_io_if_U_n_29,
      Q(15 downto 0) => sig_fir_x(15 downto 0),
      S(3) => fir_io_if_U_n_7,
      S(2) => fir_io_if_U_n_8,
      S(1) => fir_io_if_U_n_9,
      S(0) => fir_io_if_U_n_10,
      \_x_reg[2]\ => fir_U_n_7,
      \_x_reg[3]\ => fir_U_n_6,
      \_y_ap_vld\ => \_y_ap_vld\,
      \_y_ap_vld1\ => \_y_ap_vld1\,
      \_y_ap_vld_reg\ => \^s_axi_fir_io_rvalid\,
      \acc_1_cast8_reg_334_reg[25]_0\(2) => data5(7),
      \acc_1_cast8_reg_334_reg[25]_0\(1 downto 0) => data5(1 downto 0),
      \acc_2_fu_272_p2_carry__0_i_1_0\(3) => fir_io_if_U_n_30,
      \acc_2_fu_272_p2_carry__0_i_1_0\(2) => fir_io_if_U_n_31,
      \acc_2_fu_272_p2_carry__0_i_1_0\(1) => fir_io_if_U_n_32,
      \acc_2_fu_272_p2_carry__0_i_1_0\(0) => fir_io_if_U_n_33,
      \acc_2_fu_272_p2_carry__0_i_1_1\(3) => fir_io_if_U_n_50,
      \acc_2_fu_272_p2_carry__0_i_1_1\(2) => fir_io_if_U_n_51,
      \acc_2_fu_272_p2_carry__0_i_1_1\(1) => fir_io_if_U_n_52,
      \acc_2_fu_272_p2_carry__0_i_1_1\(0) => fir_io_if_U_n_53,
      \acc_2_fu_272_p2_carry__1_i_1_0\(3) => fir_io_if_U_n_34,
      \acc_2_fu_272_p2_carry__1_i_1_0\(2) => fir_io_if_U_n_35,
      \acc_2_fu_272_p2_carry__1_i_1_0\(1) => fir_io_if_U_n_36,
      \acc_2_fu_272_p2_carry__1_i_1_0\(0) => fir_io_if_U_n_37,
      \acc_2_fu_272_p2_carry__1_i_1_1\(3) => fir_io_if_U_n_54,
      \acc_2_fu_272_p2_carry__1_i_1_1\(2) => fir_io_if_U_n_55,
      \acc_2_fu_272_p2_carry__1_i_1_1\(1) => fir_io_if_U_n_56,
      \acc_2_fu_272_p2_carry__1_i_1_1\(0) => fir_io_if_U_n_57,
      \acc_2_fu_272_p2_carry__2_i_1_0\(0) => fir_io_if_U_n_38,
      \acc_2_fu_272_p2_carry__2_i_1_1\(3) => fir_io_if_U_n_39,
      \acc_2_fu_272_p2_carry__2_i_1_1\(2) => fir_io_if_U_n_40,
      \acc_2_fu_272_p2_carry__2_i_1_1\(1) => fir_io_if_U_n_41,
      \acc_2_fu_272_p2_carry__2_i_1_1\(0) => fir_io_if_U_n_42,
      aclk => aclk,
      ap_CS_fsm(1 downto 0) => ap_CS_fsm(1 downto 0),
      \ap_CS_fsm_reg[1]_0\ => fir_U_n_19,
      \ap_CS_fsm_reg[1]_1\ => fir_U_n_20,
      ap_done => ap_done,
      ap_done1 => ap_done1,
      aresetn => aresetn,
      \rdata_reg[14]\(0) => fir_io_if_U_n_49,
      \rdata_reg[3]\ => fir_io_if_U_n_47,
      s_axi_fir_io_ARADDR(1 downto 0) => s_axi_fir_io_ARADDR(3 downto 2),
      \s_axi_fir_io_ARADDR[2]\ => fir_U_n_8,
      \s_axi_fir_io_ARADDR[2]_0\ => fir_U_n_9,
      \s_axi_fir_io_ARADDR[2]_1\ => fir_U_n_10,
      \s_axi_fir_io_ARADDR[2]_2\ => fir_U_n_11,
      \s_axi_fir_io_ARADDR[2]_3\ => fir_U_n_12,
      \s_axi_fir_io_ARADDR[2]_4\ => fir_U_n_13,
      \s_axi_fir_io_ARADDR[2]_5\ => fir_U_n_14,
      \s_axi_fir_io_ARADDR[2]_6\ => fir_U_n_15,
      \s_axi_fir_io_ARADDR[2]_7\ => fir_U_n_16,
      \s_axi_fir_io_ARADDR[2]_8\ => fir_U_n_17,
      \s_axi_fir_io_ARADDR[2]_9\ => fir_U_n_18,
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      sig_fir_ap_rst => sig_fir_ap_rst,
      sig_fir_ap_start => sig_fir_ap_start
    );
fir_io_if_U: entity work.system_fir_top_0_0_fir_io_if
     port map (
      CO(0) => fir_U_n_0,
      DI(2) => fir_io_if_U_n_27,
      DI(1) => fir_io_if_U_n_28,
      DI(0) => fir_io_if_U_n_29,
      FSM_sequential_rstate_reg_0 => \^s_axi_fir_io_rvalid\,
      Q(2) => s_axi_fir_io_BVALID,
      Q(1) => s_axi_fir_io_WREADY,
      Q(0) => s_axi_fir_io_AWREADY,
      S(3) => fir_io_if_U_n_7,
      S(2) => fir_io_if_U_n_8,
      S(1) => fir_io_if_U_n_9,
      S(0) => fir_io_if_U_n_10,
      \_x_reg[10]_0\(3) => fir_io_if_U_n_54,
      \_x_reg[10]_0\(2) => fir_io_if_U_n_55,
      \_x_reg[10]_0\(1) => fir_io_if_U_n_56,
      \_x_reg[10]_0\(0) => fir_io_if_U_n_57,
      \_x_reg[13]_0\(3) => fir_io_if_U_n_34,
      \_x_reg[13]_0\(2) => fir_io_if_U_n_35,
      \_x_reg[13]_0\(1) => fir_io_if_U_n_36,
      \_x_reg[13]_0\(0) => fir_io_if_U_n_37,
      \_x_reg[14]_0\(3) => fir_io_if_U_n_39,
      \_x_reg[14]_0\(2) => fir_io_if_U_n_40,
      \_x_reg[14]_0\(1) => fir_io_if_U_n_41,
      \_x_reg[14]_0\(0) => fir_io_if_U_n_42,
      \_x_reg[15]_0\(15 downto 0) => sig_fir_x(15 downto 0),
      \_x_reg[15]_1\(0) => fir_io_if_U_n_38,
      \_x_reg[15]_2\(0) => fir_io_if_U_n_49,
      \_x_reg[6]_0\(3) => fir_io_if_U_n_50,
      \_x_reg[6]_0\(2) => fir_io_if_U_n_51,
      \_x_reg[6]_0\(1) => fir_io_if_U_n_52,
      \_x_reg[6]_0\(0) => fir_io_if_U_n_53,
      \_x_reg[9]_0\(3) => fir_io_if_U_n_30,
      \_x_reg[9]_0\(2) => fir_io_if_U_n_31,
      \_x_reg[9]_0\(1) => fir_io_if_U_n_32,
      \_x_reg[9]_0\(0) => fir_io_if_U_n_33,
      \_y_ap_vld\ => \_y_ap_vld\,
      \_y_ap_vld1\ => \_y_ap_vld1\,
      \_y_ap_vld_reg_0\ => fir_U_n_20,
      aclk => aclk,
      ap_CS_fsm(1 downto 0) => ap_CS_fsm(1 downto 0),
      ap_done => ap_done,
      ap_done1 => ap_done1,
      ap_done_reg_0 => fir_U_n_19,
      aresetn => aresetn,
      interrupt => interrupt,
      \rdata_reg[10]_0\ => fir_U_n_13,
      \rdata_reg[11]_0\ => fir_U_n_14,
      \rdata_reg[12]_0\ => fir_U_n_15,
      \rdata_reg[13]_0\ => fir_U_n_16,
      \rdata_reg[14]_0\ => fir_U_n_17,
      \rdata_reg[15]_0\ => fir_U_n_18,
      \rdata_reg[2]_0\ => fir_U_n_7,
      \rdata_reg[3]_0\ => fir_U_n_6,
      \rdata_reg[4]_0\ => fir_U_n_8,
      \rdata_reg[5]_0\ => fir_U_n_9,
      \rdata_reg[6]_0\ => fir_U_n_10,
      \rdata_reg[7]_0\(2) => data5(7),
      \rdata_reg[7]_0\(1 downto 0) => data5(1 downto 0),
      \rdata_reg[8]_0\ => fir_U_n_11,
      \rdata_reg[9]_0\ => fir_U_n_12,
      s_axi_fir_io_ARADDR(4 downto 0) => s_axi_fir_io_ARADDR(4 downto 0),
      s_axi_fir_io_ARADDR_1_sp_1 => fir_io_if_U_n_47,
      s_axi_fir_io_ARREADY => s_axi_fir_io_ARREADY,
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(4 downto 0) => s_axi_fir_io_AWADDR(4 downto 0),
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_RDATA(15 downto 0) => s_axi_fir_io_RDATA(15 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_WDATA(15 downto 0) => s_axi_fir_io_WDATA(15 downto 0),
      s_axi_fir_io_WSTRB(1 downto 0) => s_axi_fir_io_WSTRB(1 downto 0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID,
      sig_fir_ap_rst => sig_fir_ap_rst,
      sig_fir_ap_start => sig_fir_ap_start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_top_0_0 is
  port (
    s_axi_fir_io_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_fir_io_AWVALID : in STD_LOGIC;
    s_axi_fir_io_AWREADY : out STD_LOGIC;
    s_axi_fir_io_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_fir_io_WVALID : in STD_LOGIC;
    s_axi_fir_io_WREADY : out STD_LOGIC;
    s_axi_fir_io_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_BVALID : out STD_LOGIC;
    s_axi_fir_io_BREADY : in STD_LOGIC;
    s_axi_fir_io_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_fir_io_ARVALID : in STD_LOGIC;
    s_axi_fir_io_ARREADY : out STD_LOGIC;
    s_axi_fir_io_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_fir_io_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_fir_io_RVALID : out STD_LOGIC;
    s_axi_fir_io_RREADY : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_fir_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_fir_top_0_0 : entity is "system_fir_top_0_0,fir_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_fir_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_fir_top_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_fir_top_0_0 : entity is "fir_top,Vivado 2021.2";
end system_fir_top_0_0;

architecture STRUCTURE of system_fir_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_fir_io_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF s_axi_fir_io, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_fir_io_RREADY : signal is "XIL_INTERFACENAME s_axi_fir_io, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID";
  attribute X_INTERFACE_INFO of s_axi_fir_io_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR";
  attribute X_INTERFACE_INFO of s_axi_fir_io_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA";
  attribute X_INTERFACE_INFO of s_axi_fir_io_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB";
begin
  s_axi_fir_io_BRESP(1) <= \<const0>\;
  s_axi_fir_io_BRESP(0) <= \<const0>\;
  s_axi_fir_io_RDATA(31) <= \<const0>\;
  s_axi_fir_io_RDATA(30) <= \<const0>\;
  s_axi_fir_io_RDATA(29) <= \<const0>\;
  s_axi_fir_io_RDATA(28) <= \<const0>\;
  s_axi_fir_io_RDATA(27) <= \<const0>\;
  s_axi_fir_io_RDATA(26) <= \<const0>\;
  s_axi_fir_io_RDATA(25) <= \<const0>\;
  s_axi_fir_io_RDATA(24) <= \<const0>\;
  s_axi_fir_io_RDATA(23) <= \<const0>\;
  s_axi_fir_io_RDATA(22) <= \<const0>\;
  s_axi_fir_io_RDATA(21) <= \<const0>\;
  s_axi_fir_io_RDATA(20) <= \<const0>\;
  s_axi_fir_io_RDATA(19) <= \<const0>\;
  s_axi_fir_io_RDATA(18) <= \<const0>\;
  s_axi_fir_io_RDATA(17) <= \<const0>\;
  s_axi_fir_io_RDATA(16) <= \<const0>\;
  s_axi_fir_io_RDATA(15 downto 0) <= \^s_axi_fir_io_rdata\(15 downto 0);
  s_axi_fir_io_RRESP(1) <= \<const0>\;
  s_axi_fir_io_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_fir_top_0_0_fir_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      interrupt => interrupt,
      s_axi_fir_io_ARADDR(4 downto 0) => s_axi_fir_io_ARADDR(4 downto 0),
      s_axi_fir_io_ARREADY => s_axi_fir_io_ARREADY,
      s_axi_fir_io_ARVALID => s_axi_fir_io_ARVALID,
      s_axi_fir_io_AWADDR(4 downto 0) => s_axi_fir_io_AWADDR(4 downto 0),
      s_axi_fir_io_AWREADY => s_axi_fir_io_AWREADY,
      s_axi_fir_io_AWVALID => s_axi_fir_io_AWVALID,
      s_axi_fir_io_BREADY => s_axi_fir_io_BREADY,
      s_axi_fir_io_BVALID => s_axi_fir_io_BVALID,
      s_axi_fir_io_RDATA(15 downto 0) => \^s_axi_fir_io_rdata\(15 downto 0),
      s_axi_fir_io_RREADY => s_axi_fir_io_RREADY,
      s_axi_fir_io_RVALID => s_axi_fir_io_RVALID,
      s_axi_fir_io_WDATA(15 downto 0) => s_axi_fir_io_WDATA(15 downto 0),
      s_axi_fir_io_WREADY => s_axi_fir_io_WREADY,
      s_axi_fir_io_WSTRB(1 downto 0) => s_axi_fir_io_WSTRB(1 downto 0),
      s_axi_fir_io_WVALID => s_axi_fir_io_WVALID
    );
end STRUCTURE;
