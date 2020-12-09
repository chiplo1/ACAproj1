--INV GATE
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateInv IS
  PORT (x: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateInv;

ARCHITECTURE logicFunction OF gateInv IS
BEGIN
  y <= NOT x;
END logicFunction;
------------------------------------------


--XOR GATE
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR2 IS
	PORT (A, B: IN STD_LOGIC;
			S: OUT STD_LOGIC);
END XOR2;

ARCHITECTURE structure OF XOR2 IS
	SIGNAL iA, iB, nA, nB: STD_LOGIC;
	COMPONENT gateInv
		PORT (x: IN STD_LOGIC;
				y: OUT STD_LOGIC);
	END COMPONENT;
BEGIN
	iA <= A;
	iB <= B;
	notA: gateInv PORT MAP (iA, nA);
	notB: gateInv PORT MAP (iB, nB);
	S <= (iA AND nB) OR (iB AND nA);
END structure;
------------------------------------------


--ENCODER
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY encoder IS
  PORT (A: IN  STD_LOGIC_VECTOR(15 downto 0);
        S: OUT STD_LOGIC_VECTOR(23 downto 0));
END encoder;

ARCHITECTURE behavior OF encoder IS

	SIGNAL iA : STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL iOut : STD_LOGIC_VECTOR(23 downto 0);
	SIGNAL s_xor_2_4 : STD_LOGIC;
	SIGNAL s_xor_0_2_4 : STD_LOGIC;
	SIGNAL s_xor_0_5 : STD_LOGIC;
	SIGNAL s_xor_1_3 : STD_LOGIC;
	SIGNAL s_xor_8_9 : STD_LOGIC;
	SIGNAL s_xor_7_8_9 : STD_LOGIC;
	SIGNAL s_xor_6_7_8_9 : STD_LOGIC;
	SIGNAL s_xor_5_6_7_8_9 : STD_LOGIC;
	SIGNAL s_xor_10_11 : STD_LOGIC;
	SIGNAL s_xor_10_11_12 : STD_LOGIC;
	SIGNAL s_xor_10_11_12_15 : STD_LOGIC;
	SIGNAL s_xor_9_14 : STD_LOGIC;
	COMPONENT XOR2
		 PORT (A, B: IN STD_LOGIC;
				 S: OUT STD_LOGIC);
	END COMPONENT;
	SIGNAL s_xor_s0_1,s_xor_s0_2 : STD_LOGIC;
	SIGNAL s_xor_s1_1,s_xor_s1_2,s_xor_s1_3,s_xor_s1_4,s_xor_s1_5 : STD_LOGIC;
	SIGNAL s_xor_s2_1,s_xor_s2_2,s_xor_s2_3 : STD_LOGIC;
	SIGNAL s_xor_s3_1,s_xor_s3_2 : STD_LOGIC;
	SIGNAL s_xor_s4_1,s_xor_s4_2,s_xor_s4_3 : STD_LOGIC;	
	SIGNAL s_xor_s5_1 : STD_LOGIC;
	SIGNAL s_xor_s6_1,s_xor_s6_2 : STD_LOGIC;
	SIGNAL s_xor_s7_1,s_xor_s7_2 : STD_LOGIC;
	
BEGIN
	iA <= A;
	xor_2_4: XOR2 PORT MAP (iA(2), iA(4),s_xor_2_4);
	--s_xor_2_4 <= A(2) XOR A(4); -- 1
	xor_0_2_4: XOR2 PORT MAP (iA(0), s_xor_2_4,s_xor_0_2_4);
	--s_xor_0_2_4 <= A(0) XOR s_xor_2_4; -- 2
	xor_0_5: XOR2 PORT MAP (iA(0), iA(5),s_xor_0_5);
	--s_xor_0_5 <= A(0) XOR A(5); -- 1
	xor_1_3: XOR2 PORT MAP (iA(1), iA(3),s_xor_1_3);
	--s_xor_1_3 <= A(1) XOR A(3); -- 1
	xor_8_9: XOR2 PORT MAP (iA(8), iA(9),s_xor_8_9);
	--s_xor_8_9 <= A(8) XOR A(9); -- 1
	xor_7_8_9: XOR2 PORT MAP (iA(7), s_xor_8_9,s_xor_7_8_9);
	--s_xor_7_8_9 <= A(7) XOR s_xor_8_9; -- 2
	xor_6_7_8_9: XOR2 PORT MAP (iA(6), s_xor_7_8_9,s_xor_6_7_8_9);
	--s_xor_6_7_8_9 <= A(6) XOR s_xor_7_8_9; -- 3
	xor_5_6_7_8_9: XOR2 PORT MAP (iA(5), s_xor_6_7_8_9,s_xor_5_6_7_8_9);
	--s_xor_5_6_7_8_9 <= A(5) XOR s_xor_6_7_8_9; -- 4
	xor_10_11: XOR2 PORT MAP (iA(10), iA(11),s_xor_10_11);
	--s_xor_10_11 <= A(10) XOR A(11); -- 1
	xor_10_11_12: XOR2 PORT MAP (s_xor_10_11, iA(12),s_xor_10_11_12);
	xor_10_11_12_15: XOR2 PORT MAP (s_xor_10_11_12, iA(15),s_xor_10_11_12_15);
	--s_xor_10_11_12_15 <= s_xor_10_11 XOR A(12) XOR A(15); -- 3
	xor_9_14: XOR2 PORT MAP (iA(9), iA(14),s_xor_9_14);
	--s_xor_9_14 <= A(9) XOR A(14); -- 1
	
	xor_s0_1: XOR2 PORT MAP (s_xor_0_5, iA(3),s_xor_s0_1);
	xor_s0_2: XOR2 PORT MAP (s_xor_s0_1, s_xor_7_8_9,s_xor_s0_2);
	xor_s0_3: XOR2 PORT MAP (s_xor_s0_2, s_xor_10_11_12_15,iOut(0));
	--iOut(0) <= s_xor_0_5 XOR A(3) XOR s_xor_7_8_9 XOR s_xor_10_11_12_15; -- 6
	
	xor_s1_1: XOR2 PORT MAP (s_xor_0_5, s_xor_1_3,s_xor_s1_1);
	xor_s1_2: XOR2 PORT MAP (s_xor_s1_1, iA(4),s_xor_s1_2);
	xor_s1_3: XOR2 PORT MAP (s_xor_s1_2, iA(6),s_xor_s1_3);
	xor_s1_4: XOR2 PORT MAP (s_xor_s1_3, iA(7),s_xor_s1_4);
	xor_s1_5: XOR2 PORT MAP (s_xor_s1_4, iA(13),s_xor_s1_5);
	xor_s1_6: XOR2 PORT MAP (s_xor_s1_5, iA(15),iOut(1));
	--iOut(1) <= s_xor_0_5 XOR s_xor_1_3 XOR A(4) XOR A(6) XOR A(7) XOR A(13) XOR A(15); -- 7
	
	xor_s2_1: XOR2 PORT MAP (s_xor_0_2_4, s_xor_1_3,s_xor_s2_1);
	xor_s2_2: XOR2 PORT MAP (s_xor_s2_1, iA(6),s_xor_s2_2);
	xor_s2_3: XOR2 PORT MAP (s_xor_s2_2, s_xor_9_14,s_xor_s2_3);
	xor_s2_4: XOR2 PORT MAP (s_xor_s2_3, s_xor_10_11_12_15,iOut(2));
	--iOut(2) <= s_xor_0_2_4 XOR s_xor_1_3 XOR A(6) XOR s_xor_9_14 XOR s_xor_10_11_12_15; -- 7
	
	xor_s3_1: XOR2 PORT MAP (s_xor_0_2_4, iA(1),s_xor_s3_1);
	xor_s3_2: XOR2 PORT MAP (s_xor_s3_1, s_xor_8_9,s_xor_s3_2);
	xor_s3_3: XOR2 PORT MAP (s_xor_s3_2, iA(13),iOut(3));
	--iOut(3) <= s_xor_0_2_4 XOR A(1) XOR s_xor_8_9 XOR A(13); -- 5
	
	xor_s4_1: XOR2 PORT MAP (s_xor_1_3, iA(2),s_xor_s4_1);
	xor_s4_2: XOR2 PORT MAP (s_xor_s4_1, iA(5),s_xor_s4_2);
	xor_s4_3: XOR2 PORT MAP (s_xor_s4_2, s_xor_9_14,s_xor_s4_3);
	xor_s4_4: XOR2 PORT MAP (s_xor_s4_3, iA(10),iOut(4));
	--iOut(4) <= s_xor_1_3 XOR A(2) XOR A(5) XOR s_xor_9_14 XOR A(10); -- 5
	
	xor_s5_1: XOR2 PORT MAP (s_xor_0_2_4, s_xor_5_6_7_8_9,s_xor_s5_1);
	xor_s5_2: XOR2 PORT MAP (s_xor_s5_1, iA(12),iOut(5));
	--iOut(5) <= s_xor_0_2_4 XOR s_xor_5_6_7_8_9 XOR A(12); -- 6
	
	xor_s6_1: XOR2 PORT MAP (s_xor_1_3, s_xor_5_6_7_8_9,s_xor_s6_1);
	xor_s6_2: XOR2 PORT MAP (s_xor_s6_1, iA(10),s_xor_s6_2);
	xor_s6_3: XOR2 PORT MAP (s_xor_s6_2, iA(13),iOut(6));
	--iOut(6) <= s_xor_1_3 XOR s_xor_5_6_7_8_9 XOR A(10) XOR A(13); -- 7
	
	xor_s7_1: XOR2 PORT MAP (s_xor_2_4, s_xor_6_7_8_9,s_xor_s7_1);
	xor_s7_2: XOR2 PORT MAP (s_xor_s7_1, s_xor_10_11,s_xor_s7_2);
	xor_s7_3: XOR2 PORT MAP (s_xor_s7_2, iA(14),iOut(7));
	--iOut(7) <= s_xor_2_4 XOR s_xor_6_7_8_9 XOR s_xor_10_11 XOR A(14); -- 7
	
	iOut(23 downto 8) <= iA(15 downto 0);
	S <= iOut;
	
END behavior; 
-- custo otimizado de 64x para 40x XOR
-- atraso otimizado de 11 A.P. para 7 A.P.