-- Testbench for Cosine Implementation

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity tb_cos is
end tb_cos;

architecture TB of tb_cos is
	component cos
	port (
		rads	: in signed(15 downto 0);
		angle	: out signed(31 downto 0)
	);
	end component;
	
	signal T_rads	: signed(15 downto 0);
	signal T_angle	: signed(31 downto 0);

BEGIN
	uut: cos PORT MAP(T_rads, T_angle);
	process
	begin
		-- Lowest Input Piece-Wise Function
		T_rads <= "1101111111111100"; -- -8196 in binary
		wait for 20 ns; -- -1713 is answer
		assert(T_angle="11111111111111111111100101001111") report "Error Detected! Cosine Problem -- ONE"
		severity warning;	
		
		-- Second Lowest Input Piece-Wise Function
		T_rads <= "1111111111101100"; -- -20 in binary
		wait for 20 ns; -- 4090 is answer
		assert(T_angle="00000000000000000000111111111010") report "Error Detected! Cosine Problem -- TWO"
		severity warning;
		
		-- Second Highest Input Piece-Wise Function
		T_rads <= "0000000110100100"; -- 420 in binary
		wait for 20 ns; -- 3988 is answer
		assert(T_angle="00000000000000000000111110010100") report "Error Detected! Cosine Problem -- THREE"
		severity warning;
		
		-- Highest Input Piece-Wise Function
		T_rads <= "0010001100101001"; -- 9001 in binary
		wait for 20 ns; -- -2495 is answer
		assert(T_angle="11111111111111111111011001000001") report "Error Detected! Cosine Problem -- FOUR"
		severity warning;
		
		wait;
	end process;

END;

-----------------------------------------------------------
configuration CFG_TB2 of tb_cos is
	for TB
	end for;
end CFG_TB2;
-----------------------------------------------------------
