-- Testbench for Cosine Implementation

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity tb_sin is
end tb_sin;

architecture TB of tb_sin is
	component sin
	port (
		rads	: in signed(15 downto 0);
		angle	: out signed(31 downto 0)
	);
	end component;
	
	signal T_rads	: signed(15 downto 0);
	signal T_angle	: signed(31 downto 0);

BEGIN
	uut : sin PORT MAP(T_rads, T_angle);
	process
	begin
		-- Lowest Input Piece-Wise Function
		T_rads <= "1111000001100000"; -- -4000 in binary
		wait for 20 ns; -- -3470 is answer (Weirdly Off)
		assert(T_angle="11111111111111111111001001110010") report "Error Detected! Sine Problem -- ONE"
		severity warning;
		
		-- Middle Input Piece-Wise Function (Negative)
		T_rads <= "1111111111011000"; -- -40 in binary
		wait for 20 ns; -- -39 is answer
		assert(T_angle="11111111111111111111111111011001") report "Error Detected! Sine Problem -- TWO"
		severity warning;
		
		-- Middle Input Piece-Wise Function (Positive)
		T_rads <= "0000000110100100"; -- 420 in binary
		wait for 20 ns; -- 408 is answer
		assert(T_angle="00000000000000000000000110011000") report "Error Detected! Sine Problem -- THREE"
		severity warning;
		
		-- Highest Input Piece-Wise Function
		T_rads <= "0000111110100000"; -- 4000 in binary
		wait for 20 ns; -- 3469 is answer (Weirdly Off)
		assert(T_angle="00000000000000000000110110001101") report "Error Detected! Sine Problem -- FOUR"
		severity warning;
		
		wait;	
	end process;
END;

-----------------------------------------------------------
configuration CFG_TB1 of tb_sin is
	for TB
	end for;
end CFG_TB1;
-----------------------------------------------------------
