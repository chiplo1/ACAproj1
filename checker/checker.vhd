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


--OR 8
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr8 IS
  PORT (x: IN  STD_LOGIC_VECTOR(7 downto 0);
        y: OUT STD_LOGIC);
END gateOr8;

ARCHITECTURE logicFunction OF gateOr8 IS
BEGIN
  y <= x(0) OR x(1) OR x(2) OR x(3) OR x(4) OR x(5) OR x(6) OR x(7);
END logicFunction;
------------------------------------------


--CHECKER
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY checker IS
  PORT (A: IN  STD_LOGIC_VECTOR(23 downto 0);
        S: OUT STD_LOGIC);
END checker;

ARCHITECTURE behavior OF checker IS

	SIGNAL iA : STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL iRem: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL ixor_s: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL iOut : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL iOutFinal : STD_LOGIC;
	
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
	COMPONENT gateOr8
		PORT (x: IN STD_LOGIC_VECTOR(7 downto 0);
				y: OUT STD_LOGIC);
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
	iA <= A(23 downto 8);
	iRem <= A(7 downto 0);

	xor_2_4: XOR2 PORT MAP (iA(2), iA(4),s_xor_2_4);
	xor_0_2_4: XOR2 PORT MAP (iA(0), s_xor_2_4,s_xor_0_2_4);
	xor_0_5: XOR2 PORT MAP (iA(0), iA(5),s_xor_0_5);
	xor_1_3: XOR2 PORT MAP (iA(1), iA(3),s_xor_1_3);
	xor_8_9: XOR2 PORT MAP (iA(8), iA(9),s_xor_8_9);
	xor_7_8_9: XOR2 PORT MAP (iA(7), s_xor_8_9,s_xor_7_8_9);
	xor_6_7_8_9: XOR2 PORT MAP (iA(6), s_xor_7_8_9,s_xor_6_7_8_9);
	xor_5_6_7_8_9: XOR2 PORT MAP (iA(5), s_xor_6_7_8_9,s_xor_5_6_7_8_9);
	xor_10_11: XOR2 PORT MAP (iA(10), iA(11),s_xor_10_11);
	xor_10_11_12: XOR2 PORT MAP (s_xor_10_11, iA(12),s_xor_10_11_12);
	xor_10_11_12_15: XOR2 PORT MAP (s_xor_10_11_12, iA(15),s_xor_10_11_12_15);
	xor_9_14: XOR2 PORT MAP (iA(9), iA(14),s_xor_9_14);
	
	xor_s0_1: XOR2 PORT MAP (s_xor_0_5, iA(3),s_xor_s0_1);
	xor_s0_2: XOR2 PORT MAP (s_xor_s0_1, s_xor_7_8_9,s_xor_s0_2);
	xor_s0_3: XOR2 PORT MAP (s_xor_s0_2, s_xor_10_11_12_15,iOut(0));
	
	xor_s1_1: XOR2 PORT MAP (s_xor_0_5, s_xor_1_3,s_xor_s1_1);
	xor_s1_2: XOR2 PORT MAP (s_xor_s1_1, iA(4),s_xor_s1_2);
	xor_s1_3: XOR2 PORT MAP (s_xor_s1_2, iA(6),s_xor_s1_3);
	xor_s1_4: XOR2 PORT MAP (s_xor_s1_3, iA(7),s_xor_s1_4);
	xor_s1_5: XOR2 PORT MAP (s_xor_s1_4, iA(13),s_xor_s1_5);
	xor_s1_6: XOR2 PORT MAP (s_xor_s1_5, iA(15),iOut(1));
	
	xor_s2_1: XOR2 PORT MAP (s_xor_0_2_4, s_xor_1_3,s_xor_s2_1);
	xor_s2_2: XOR2 PORT MAP (s_xor_s2_1, iA(6),s_xor_s2_2);
	xor_s2_3: XOR2 PORT MAP (s_xor_s2_2, s_xor_9_14,s_xor_s2_3);
	xor_s2_4: XOR2 PORT MAP (s_xor_s2_3, s_xor_10_11_12_15,iOut(2));
	
	xor_s3_1: XOR2 PORT MAP (s_xor_0_2_4, iA(1),s_xor_s3_1);
	xor_s3_2: XOR2 PORT MAP (s_xor_s3_1, s_xor_8_9,s_xor_s3_2);
	xor_s3_3: XOR2 PORT MAP (s_xor_s3_2, iA(13),iOut(3));
	
	xor_s4_1: XOR2 PORT MAP (s_xor_1_3, iA(2),s_xor_s4_1);
	xor_s4_2: XOR2 PORT MAP (s_xor_s4_1, iA(5),s_xor_s4_2);
	xor_s4_3: XOR2 PORT MAP (s_xor_s4_2, s_xor_9_14,s_xor_s4_3);
	xor_s4_4: XOR2 PORT MAP (s_xor_s4_3, iA(10),iOut(4));
	
	xor_s5_1: XOR2 PORT MAP (s_xor_0_2_4, s_xor_5_6_7_8_9,s_xor_s5_1);
	xor_s5_2: XOR2 PORT MAP (s_xor_s5_1, iA(12),iOut(5));
	
	xor_s6_1: XOR2 PORT MAP (s_xor_1_3, s_xor_5_6_7_8_9,s_xor_s6_1);
	xor_s6_2: XOR2 PORT MAP (s_xor_s6_1, iA(10),s_xor_s6_2);
	xor_s6_3: XOR2 PORT MAP (s_xor_s6_2, iA(13),iOut(6));
	
	xor_s7_1: XOR2 PORT MAP (s_xor_2_4, s_xor_6_7_8_9,s_xor_s7_1);
	xor_s7_2: XOR2 PORT MAP (s_xor_s7_1, s_xor_10_11,s_xor_s7_2);
	xor_s7_3: XOR2 PORT MAP (s_xor_s7_2, iA(14),iOut(7));
	
	xor_s_0: XOR2 PORT MAP (iOut(0),iRem(0),ixor_s(0));
	xor_s_1: XOR2 PORT MAP (iOut(1),iRem(1),ixor_s(1));
	xor_s_2: XOR2 PORT MAP (iOut(2),iRem(2),ixor_s(2));
	xor_s_3: XOR2 PORT MAP (iOut(3),iRem(3),ixor_s(3));
	xor_s_4: XOR2 PORT MAP (iOut(4),iRem(4),ixor_s(4));
	xor_s_5: XOR2 PORT MAP (iOut(5),iRem(5),ixor_s(5));
	xor_s_6: XOR2 PORT MAP (iOut(6),iRem(6),ixor_s(6));
	xor_s_7: XOR2 PORT MAP (iOut(7),iRem(7),ixor_s(7));
	
	and8: gateOr8 PORT MAP (ixor_s,iOutFinal);
	
	S <= iOutFinal;
	
END behavior; 