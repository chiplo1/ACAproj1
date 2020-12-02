LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder IS
  PORT (A: IN  STD_LOGIC_VECTOR(15 downto 0);
        S: OUT STD_LOGIC_VECTOR(23 downto 0));
END encoder;

ARCHITECTURE behavior OF encoder IS

SIGNAL s_xor_2_4 : STD_LOGIC;
SIGNAL s_xor_0_2_4 : STD_LOGIC;
SIGNAL s_xor_0_5 : STD_LOGIC;
SIGNAL s_xor_1_3 : STD_LOGIC;
SIGNAL s_xor_8_9 : STD_LOGIC;
SIGNAL s_xor_7_8_9 : STD_LOGIC;
SIGNAL s_xor_6_7_8_9 : STD_LOGIC;
SIGNAL s_xor_5_6_7_8_9 : STD_LOGIC;
SIGNAL s_xor_10_11 : STD_LOGIC;
SIGNAL s_xor_10_11_12_15 : STD_LOGIC;
SIGNAL s_xor_9_14 : STD_LOGIC;

BEGIN
	s_xor_2_4 <= A(2) XOR A(4); -- 1
	s_xor_0_2_4 <= A(0) XOR s_xor_2_4; -- 2
	s_xor_0_5 <= A(0) XOR A(5); -- 1
	s_xor_1_3 <= A(1) XOR A(3); -- 1
	s_xor_8_9 <= A(8) XOR A(9); -- 1
	s_xor_7_8_9 <= A(7) XOR s_xor_8_9; -- 2
	s_xor_6_7_8_9 <= A(6) XOR s_xor_7_8_9; -- 3
	s_xor_5_6_7_8_9 <= A(5) XOR s_xor_6_7_8_9; -- 4
	s_xor_10_11 <= A(10) XOR A(11); -- 1
	s_xor_10_11_12_15 <= s_xor_10_11 XOR A(12) XOR A(15); -- 3
	s_xor_9_14 <= A(9) XOR A(14); -- 1
	
	S(0) <= s_xor_0_5 XOR A(3) XOR s_xor_7_8_9 XOR s_xor_10_11_12_15; -- 6
	S(1) <= s_xor_0_5 XOR s_xor_1_3 XOR A(4) XOR A(6) XOR A(7) XOR A(13) XOR A(15); -- 7
	S(2) <= s_xor_0_2_4 XOR s_xor_1_3 XOR A(6) XOR s_xor_9_14 XOR s_xor_10_11_12_15; -- 7
	S(3) <= s_xor_0_2_4 XOR A(1) XOR s_xor_8_9 XOR A(13); -- 5
	S(4) <= s_xor_1_3 XOR A(2) XOR A(5) XOR s_xor_9_14 XOR A(10); -- 5
	S(5) <= s_xor_0_2_4 XOR s_xor_5_6_7_8_9 XOR A(12); -- 6
	S(6) <= s_xor_1_3 XOR s_xor_5_6_7_8_9 XOR A(10) XOR A(13); -- 7
	S(7) <= s_xor_2_4 XOR s_xor_6_7_8_9 XOR s_xor_10_11 XOR A(14); -- 7
	
	S(23 downto 8) <= A(15 downto 0);
END behavior; 
-- custo otimizado de 64x para 40x XOR
-- atraso otimizado de 11 A.P. para 7 A.P.