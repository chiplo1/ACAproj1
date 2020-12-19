-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/15/2020 14:17:02"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	checker_bdf IS
    PORT (
	S : OUT std_logic;
	A : IN std_logic_vector(23 DOWNTO 0)
	);
END checker_bdf;

-- Design Ports Information
-- S	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF checker_bdf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_A : std_logic_vector(23 DOWNTO 0);
SIGNAL \S~output_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \inst|xor_s_5|S~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \inst|xor_5_6_7_8_9|S~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \inst|xor_s_5|S~1_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \inst|xor_s_6|S~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \inst|xor_s_6|S~1_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \inst|xor_s_4|S~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \inst|xor_s_2|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s_2|S~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst|xor_s_2|S~0_combout\ : std_logic;
SIGNAL \inst|and8|y~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \inst|xor_s_4|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s_4|S~2_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|xor_s_0|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s_0|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s_1|S~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \inst|xor_s_1|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s_1|S~2_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \inst|xor_s_7|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s_7|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s_7|S~2_combout\ : std_logic;
SIGNAL \inst|and8|y~1_combout\ : std_logic;
SIGNAL \inst|xor_s_3|S~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst|xor_s_3|S~1_combout\ : std_logic;
SIGNAL \inst|and8|y~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S <= ww_S;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\S~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|and8|y~2_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X29_Y4_N20
\inst|xor_s_5|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_5|S~0_combout\ = \A[12]~input_o\ $ (\A[10]~input_o\ $ (\A[20]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|xor_s_5|S~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X29_Y4_N0
\inst|xor_5_6_7_8_9|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_5_6_7_8_9|S~0_combout\ = \A[17]~input_o\ $ (\A[15]~input_o\ $ (\A[13]~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[16]~input_o\,
	combout => \inst|xor_5_6_7_8_9|S~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X28_Y4_N10
\inst|xor_s_5|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_5|S~1_combout\ = \inst|xor_s_5|S~0_combout\ $ (\inst|xor_5_6_7_8_9|S~0_combout\ $ (\A[14]~input_o\ $ (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_5|S~0_combout\,
	datab => \inst|xor_5_6_7_8_9|S~0_combout\,
	datac => \A[14]~input_o\,
	datad => \A[5]~input_o\,
	combout => \inst|xor_s_5|S~1_combout\);

-- Location: IOIBUF_X30_Y0_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X29_Y4_N2
\inst|xor_s_6|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_6|S~0_combout\ = \A[18]~input_o\ $ (\A[9]~input_o\ $ (\A[11]~input_o\ $ (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[21]~input_o\,
	combout => \inst|xor_s_6|S~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X28_Y4_N24
\inst|xor_s_6|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_6|S~1_combout\ = \inst|xor_s_6|S~0_combout\ $ (\A[14]~input_o\ $ (\inst|xor_5_6_7_8_9|S~0_combout\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_6|S~0_combout\,
	datab => \A[14]~input_o\,
	datac => \inst|xor_5_6_7_8_9|S~0_combout\,
	datad => \A[6]~input_o\,
	combout => \inst|xor_s_6|S~1_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X29_Y4_N14
\inst|xor_s_4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_4|S~0_combout\ = \A[22]~input_o\ $ (\A[9]~input_o\ $ (\A[11]~input_o\ $ (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[10]~input_o\,
	combout => \inst|xor_s_4|S~0_combout\);

-- Location: IOIBUF_X32_Y0_N15
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X29_Y4_N16
\inst|xor_s_2|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_2|S~1_combout\ = \A[23]~input_o\ $ (\A[8]~input_o\ $ (\A[19]~input_o\ $ (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \inst|xor_s_2|S~1_combout\);

-- Location: LCCOMB_X29_Y4_N10
\inst|xor_s_2|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_2|S~2_combout\ = \A[20]~input_o\ $ (\inst|xor_s_4|S~0_combout\ $ (\A[17]~input_o\ $ (\inst|xor_s_2|S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \inst|xor_s_4|S~0_combout\,
	datac => \A[17]~input_o\,
	datad => \inst|xor_s_2|S~1_combout\,
	combout => \inst|xor_s_2|S~2_combout\);

-- Location: IOIBUF_X28_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X28_Y4_N12
\inst|xor_s_2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_2|S~0_combout\ = \A[12]~input_o\ $ (\A[14]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst|xor_s_2|S~0_combout\);

-- Location: LCCOMB_X28_Y4_N6
\inst|and8|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and8|y~0_combout\ = (\inst|xor_s_5|S~1_combout\) # ((\inst|xor_s_6|S~1_combout\) # (\inst|xor_s_2|S~2_combout\ $ (\inst|xor_s_2|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_5|S~1_combout\,
	datab => \inst|xor_s_6|S~1_combout\,
	datac => \inst|xor_s_2|S~2_combout\,
	datad => \inst|xor_s_2|S~0_combout\,
	combout => \inst|and8|y~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X30_Y2_N24
\inst|xor_s_4|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_4|S~1_combout\ = \A[13]~input_o\ $ (\A[4]~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[4]~input_o\,
	datad => \A[18]~input_o\,
	combout => \inst|xor_s_4|S~1_combout\);

-- Location: LCCOMB_X29_Y4_N4
\inst|xor_s_4|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_4|S~2_combout\ = \inst|xor_s_4|S~0_combout\ $ (\A[17]~input_o\ $ (\inst|xor_s_4|S~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|xor_s_4|S~0_combout\,
	datac => \A[17]~input_o\,
	datad => \inst|xor_s_4|S~1_combout\,
	combout => \inst|xor_s_4|S~2_combout\);

-- Location: IOIBUF_X34_Y9_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X33_Y9_N24
\inst|xor_s_0|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_0|S~0_combout\ = \A[0]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datad => \A[11]~input_o\,
	combout => \inst|xor_s_0|S~0_combout\);

-- Location: LCCOMB_X29_Y4_N18
\inst|xor_s_0|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_0|S~1_combout\ = \inst|xor_5_6_7_8_9|S~0_combout\ $ (\inst|xor_s_2|S~1_combout\ $ (\A[20]~input_o\ $ (\inst|xor_s_0|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_5_6_7_8_9|S~0_combout\,
	datab => \inst|xor_s_2|S~1_combout\,
	datac => \A[20]~input_o\,
	datad => \inst|xor_s_0|S~0_combout\,
	combout => \inst|xor_s_0|S~1_combout\);

-- Location: LCCOMB_X29_Y4_N6
\inst|xor_s_1|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_1|S~0_combout\ = \A[12]~input_o\ $ (\A[13]~input_o\ $ (\A[14]~input_o\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|xor_s_1|S~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X29_Y4_N8
\inst|xor_s_1|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_1|S~1_combout\ = \A[1]~input_o\ $ (\A[9]~input_o\ $ (\A[11]~input_o\ $ (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[21]~input_o\,
	combout => \inst|xor_s_1|S~1_combout\);

-- Location: LCCOMB_X29_Y4_N26
\inst|xor_s_1|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_1|S~2_combout\ = \inst|xor_s_1|S~0_combout\ $ (\inst|xor_s_1|S~1_combout\ $ (\A[23]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_1|S~0_combout\,
	datab => \inst|xor_s_1|S~1_combout\,
	datac => \A[23]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|xor_s_1|S~2_combout\);

-- Location: IOIBUF_X34_Y9_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X29_Y4_N30
\inst|xor_s_7|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_7|S~1_combout\ = \A[12]~input_o\ $ (\A[14]~input_o\ $ (\A[7]~input_o\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[14]~input_o\,
	datac => \A[7]~input_o\,
	datad => \A[15]~input_o\,
	combout => \inst|xor_s_7|S~1_combout\);

-- Location: LCCOMB_X29_Y4_N28
\inst|xor_s_7|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_7|S~0_combout\ = \A[22]~input_o\ $ (\A[10]~input_o\ $ (\A[17]~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[10]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \inst|xor_s_7|S~0_combout\);

-- Location: LCCOMB_X29_Y4_N24
\inst|xor_s_7|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_7|S~2_combout\ = \inst|xor_s_7|S~1_combout\ $ (\inst|xor_s_7|S~0_combout\ $ (\A[19]~input_o\ $ (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_7|S~1_combout\,
	datab => \inst|xor_s_7|S~0_combout\,
	datac => \A[19]~input_o\,
	datad => \A[18]~input_o\,
	combout => \inst|xor_s_7|S~2_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst|and8|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and8|y~1_combout\ = (\inst|xor_s_4|S~2_combout\) # ((\inst|xor_s_0|S~1_combout\) # ((\inst|xor_s_1|S~2_combout\) # (\inst|xor_s_7|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s_4|S~2_combout\,
	datab => \inst|xor_s_0|S~1_combout\,
	datac => \inst|xor_s_1|S~2_combout\,
	datad => \inst|xor_s_7|S~2_combout\,
	combout => \inst|and8|y~1_combout\);

-- Location: LCCOMB_X29_Y4_N12
\inst|xor_s_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_3|S~0_combout\ = \A[21]~input_o\ $ (\A[8]~input_o\ $ (\A[12]~input_o\ $ (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[10]~input_o\,
	combout => \inst|xor_s_3|S~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X29_Y4_N22
\inst|xor_s_3|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s_3|S~1_combout\ = \A[3]~input_o\ $ (\A[9]~input_o\ $ (\A[17]~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[16]~input_o\,
	combout => \inst|xor_s_3|S~1_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst|and8|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|and8|y~2_combout\ = (\inst|and8|y~0_combout\) # ((\inst|and8|y~1_combout\) # (\inst|xor_s_3|S~0_combout\ $ (\inst|xor_s_3|S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|and8|y~0_combout\,
	datab => \inst|and8|y~1_combout\,
	datac => \inst|xor_s_3|S~0_combout\,
	datad => \inst|xor_s_3|S~1_combout\,
	combout => \inst|and8|y~2_combout\);

ww_S <= \S~output_o\;
END structure;


