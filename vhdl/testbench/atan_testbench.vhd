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
		arc		: out integer32_bit
	);
	end component;
	
	signal angle 	: integer16_bit := 200;
	signal arc		: integer32_bit;
	
BEGIN
	uut: atan PORT MAP (
		angle 	=> angle,
		arc 	=> arc
	);  
		
	sim_proc: process
	begin	
		angle <= 200;
	end process;
END;
