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

-- DATE "12/15/2020 14:12:17"

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

ENTITY 	encoder_bdf IS
    PORT (
	S : OUT std_logic_vector(23 DOWNTO 0);
	A : IN std_logic_vector(15 DOWNTO 0)
	);
END encoder_bdf;

-- Design Ports Information
-- S[23]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder_bdf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst|xor_s7_3|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s7_3|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s7_3|S~2_combout\ : std_logic;
SIGNAL \inst|xor_8_9|S~0_combout\ : std_logic;
SIGNAL \inst|xor_5_6_7_8_9|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s6_3|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s6_3|S~1_combout\ : std_logic;
SIGNAL \inst|xor_0_2_4|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s5_2|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s4_4|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s4_4|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s3_3|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s0_3|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s2_4|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s2_4|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s1_6|S~0_combout\ : std_logic;
SIGNAL \inst|xor_s1_6|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s0_3|S~1_combout\ : std_logic;
SIGNAL \inst|xor_s0_3|S~2_combout\ : std_logic;

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

-- Location: IOOBUF_X16_Y0_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[15]~input_o\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[14]~input_o\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[13]~input_o\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[12]~input_o\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[11]~input_o\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[10]~input_o\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[9]~input_o\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[8]~input_o\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[7]~input_o\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[6]~input_o\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[5]~input_o\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[4]~input_o\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[3]~input_o\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[2]~input_o\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[1]~input_o\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A[0]~input_o\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s7_3|S~2_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s6_3|S~1_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s5_2|S~0_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s4_4|S~1_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s3_3|S~0_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s2_4|S~1_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s1_6|S~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xor_s0_3|S~2_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
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
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X22_Y4_N2
\inst|xor_s7_3|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s7_3|S~1_combout\ = \A[2]~input_o\ $ (\A[11]~input_o\ $ (\A[10]~input_o\ $ (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|xor_s7_3|S~1_combout\);

-- Location: LCCOMB_X22_Y4_N16
\inst|xor_s7_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s7_3|S~0_combout\ = \A[7]~input_o\ $ (\A[6]~input_o\ $ (\A[9]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|xor_s7_3|S~0_combout\);

-- Location: LCCOMB_X21_Y4_N8
\inst|xor_s7_3|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s7_3|S~2_combout\ = \inst|xor_s7_3|S~1_combout\ $ (\A[4]~input_o\ $ (\inst|xor_s7_3|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_s7_3|S~1_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|xor_s7_3|S~0_combout\,
	combout => \inst|xor_s7_3|S~2_combout\);

-- Location: LCCOMB_X22_Y4_N12
\inst|xor_8_9|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_8_9|S~0_combout\ = \A[9]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|xor_8_9|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N22
\inst|xor_5_6_7_8_9|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_5_6_7_8_9|S~0_combout\ = \A[7]~input_o\ $ (\A[6]~input_o\ $ (\A[5]~input_o\ $ (\inst|xor_8_9|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[5]~input_o\,
	datad => \inst|xor_8_9|S~0_combout\,
	combout => \inst|xor_5_6_7_8_9|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\inst|xor_s6_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s6_3|S~0_combout\ = \A[3]~input_o\ $ (\A[1]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \inst|xor_s6_3|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N26
\inst|xor_s6_3|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s6_3|S~1_combout\ = \inst|xor_5_6_7_8_9|S~0_combout\ $ (\A[10]~input_o\ $ (\inst|xor_s6_3|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_5_6_7_8_9|S~0_combout\,
	datac => \A[10]~input_o\,
	datad => \inst|xor_s6_3|S~0_combout\,
	combout => \inst|xor_s6_3|S~1_combout\);

-- Location: LCCOMB_X21_Y4_N2
\inst|xor_0_2_4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_0_2_4|S~0_combout\ = \A[0]~input_o\ $ (\A[4]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[2]~input_o\,
	combout => \inst|xor_0_2_4|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N20
\inst|xor_s5_2|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s5_2|S~0_combout\ = \inst|xor_0_2_4|S~0_combout\ $ (\inst|xor_5_6_7_8_9|S~0_combout\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_0_2_4|S~0_combout\,
	datac => \inst|xor_5_6_7_8_9|S~0_combout\,
	datad => \A[12]~input_o\,
	combout => \inst|xor_s5_2|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\inst|xor_s4_4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s4_4|S~0_combout\ = \A[2]~input_o\ $ (\A[9]~input_o\ $ (\A[10]~input_o\ $ (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[14]~input_o\,
	combout => \inst|xor_s4_4|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N8
\inst|xor_s4_4|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s4_4|S~1_combout\ = \A[3]~input_o\ $ (\A[5]~input_o\ $ (\A[1]~input_o\ $ (\inst|xor_s4_4|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|xor_s4_4|S~0_combout\,
	combout => \inst|xor_s4_4|S~1_combout\);

-- Location: LCCOMB_X22_Y4_N10
\inst|xor_s3_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s3_3|S~0_combout\ = \inst|xor_0_2_4|S~0_combout\ $ (\A[13]~input_o\ $ (\A[1]~input_o\ $ (\inst|xor_8_9|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_0_2_4|S~0_combout\,
	datab => \A[13]~input_o\,
	datac => \A[1]~input_o\,
	datad => \inst|xor_8_9|S~0_combout\,
	combout => \inst|xor_s3_3|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\inst|xor_s0_3|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s0_3|S~0_combout\ = \A[15]~input_o\ $ (\A[11]~input_o\ $ (\A[10]~input_o\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \inst|xor_s0_3|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N14
\inst|xor_s2_4|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s2_4|S~0_combout\ = \A[3]~input_o\ $ (\A[9]~input_o\ $ (\A[1]~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst|xor_s2_4|S~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\inst|xor_s2_4|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s2_4|S~1_combout\ = \inst|xor_0_2_4|S~0_combout\ $ (\inst|xor_s0_3|S~0_combout\ $ (\inst|xor_s2_4|S~0_combout\ $ (\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|xor_0_2_4|S~0_combout\,
	datab => \inst|xor_s0_3|S~0_combout\,
	datac => \inst|xor_s2_4|S~0_combout\,
	datad => \A[14]~input_o\,
	combout => \inst|xor_s2_4|S~1_combout\);

-- Location: LCCOMB_X22_Y4_N18
\inst|xor_s1_6|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s1_6|S~0_combout\ = \A[7]~input_o\ $ (\A[15]~input_o\ $ (\A[5]~input_o\ $ (\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[6]~input_o\,
	combout => \inst|xor_s1_6|S~0_combout\);

-- Location: LCCOMB_X21_Y4_N4
\inst|xor_s1_6|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s1_6|S~1_combout\ = \A[0]~input_o\ $ (\inst|xor_s1_6|S~0_combout\ $ (\A[4]~input_o\ $ (\inst|xor_s6_3|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \inst|xor_s1_6|S~0_combout\,
	datac => \A[4]~input_o\,
	datad => \inst|xor_s6_3|S~0_combout\,
	combout => \inst|xor_s1_6|S~1_combout\);

-- Location: LCCOMB_X22_Y4_N4
\inst|xor_s0_3|S~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s0_3|S~1_combout\ = \A[3]~input_o\ $ (\A[5]~input_o\ $ (\A[9]~input_o\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \inst|xor_s0_3|S~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\inst|xor_s0_3|S~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xor_s0_3|S~2_combout\ = \A[7]~input_o\ $ (\A[0]~input_o\ $ (\inst|xor_s0_3|S~1_combout\ $ (\inst|xor_s0_3|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[0]~input_o\,
	datac => \inst|xor_s0_3|S~1_combout\,
	datad => \inst|xor_s0_3|S~0_combout\,
	combout => \inst|xor_s0_3|S~2_combout\);

ww_S(23) <= \S[23]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;
END structure;


