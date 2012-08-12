library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_atan is
end tb_atan;

architecture TB of tb_atan is
	component atan
	port (
		angle 	: in std_logic_vector(15 downto 0);
		arc		: out std_logic_vector(31 downto 0);
		sel		: in std_logic_vector(1 downto 0)
	);
	end component;
	
	signal T_angle 	: std_logic_vector(15 downto 0);
	signal T_arc	: std_logic_vector(31 downto 0);
	signal T_sel	: std_logic_vector(1 downto 0);
	
BEGIN
	uut: atan PORT MAP (T_angle, T_arc, T_sel);  
		
	process
	begin	
		-- Tests the Top piece-wise function
		T_angle <= "0000000000101000"; -- 40 in binary
		T_sel <= "00"; -- Select High Point
		wait for 20 ns;
		assert(T_arc="00000000000000011001111001110110") report "Error Detected! High"
		severity warning;
		
		-- Tests the Bottom piece-wise function
		T_angle <= "0000000000101000"; -- 40 in binary
		T_sel <= "01"; -- Select Low Point
		wait for 20 ns;
		assert(T_arc="00000000000000011001100111101010") report "Error Detected! Low"
		severity warning;
		
		-- Tests the middle piece-wise function
		T_angle <= "0000000000101000"; -- 40 in binary
		T_sel <= "10";
		wait for 20 ns;
		assert(T_arc="00000000000000100101000111101000") report "Error Detected! Mid"
		severity warning;
		
		wait;
	end process;
END;

-----------------------------------------------------------
configuration CFG_TB of tb_atan is
	for TB
	end for;
end CFG_TB;
-----------------------------------------------------------