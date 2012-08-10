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

entity atan is 
port (
	angle 	: in integer16_bit;
	arc		: out integer32_bit
);
end atan;

architecture atan_arch of atan is
begin
	process
	begin
		arc <= angle*16;
	end process;
end atan_arch;
