library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

package data_type is
	subtype integer8_bit is integer range -128 to 127;
	subtype integer16_bit is integer range -32768 to 32767;
	subtype integer32_bit is integer range -2147483648 to 2147483647;
end data_type;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.data_type.all;

entity test_atan is
end test_atan;

architecture test_behav of test_atan is
	component atan
	port (
		angle 	: in integer16_bit;
		arc		: out integer16_bit;
		clock	: in std_logic;
		reset	: in std_logic
	);
	end component;
	
	signal angle 	: integer16_bit := 200;
	signal arc		: integer32_bit;
	signal clock	: std_logic := '0';
	signal reset	: std_logic := '0';
	
	constant clk_period : time := 10 ns;
	
BEGIN
	uut: atan PORT MAP (
		angle 	=> angle,
		arc 	=> arc,
		clock	=> clock,
		reset	=> reset
	);  
	
	clk_process: process
	begin
		clock <= '0';
		wait for clk_period/2;
		clock <= '1';
		wait for clk_period/2;
	end process;
		
	sim_proc: process
	begin	
		wait for 17 ns;
		angle <= 250;
		reset <= '1';
	end process;
END;
