library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity atan is 
port (
	angle 	: in std_logic_vector(15 downto 0);
	arc		: out std_logic_vector(31 downto 0);
	sel		: in std_logic_vector(1 downto 0)
);
end atan;

architecture atan_arch of atan is
begin
	process(angle, sel)
	variable angle_reg 	: std_logic_vector(15 downto 0);
  	variable arc_reg	: std_logic_vector(31 downto 0);
  	variable arc_reg_h	: std_logic_vector(31 downto 0);
  	variable arc_reg_l	: std_logic_vector(31 downto 0);
  	variable tan_offset	: std_logic_vector(15 downto 0);
	
	begin
		angle_reg 	:= angle;
		arc_reg 	:= "00000000000000000000111011011001"; -- 3801 in 32-bit binary
		arc_reg_h 	:= "00000000000000000000101001001110"; -- 2638 in 32-bit binary
		arc_reg_l 	:= "00000000000000000000101001001110"; -- 2638 in 32-bit binary
		tan_offset	:= "0000001001000110"; -- 582 in binary
	
		-- Middle Case (Middle of Piece-Wise)
		for i in 1 to 16 loop
			if arc_reg(0)='1' then
	  			arc_reg(31 downto 16) := arc_reg(31 downto 16) 
	  			+ angle_reg(15 downto 0);
			end if;
			arc_reg(31 downto 0) := '0' & arc_reg(31 downto 1);
		end loop;
		arc_reg(31 downto 0) := "000000000000" & arc_reg(31 downto 12); 
		
		-- High Case (High part of Piece-Wise)
		for i in 1 to 16 loop
			if arc_reg_h(0)='1' then
	  			arc_reg_h(31 downto 16) := arc_reg_h(31 downto 16) 
	  			+ angle_reg(15 downto 0);
			end if;
			arc_reg_h(31 downto 0) := '0' & arc_reg_h(31 downto 1);
		end loop;
		arc_reg_h(31 downto 0) := "000000000000" & arc_reg_h(31 downto 12); 
		arc_reg_h(31 downto 0) := arc_reg_h(31 downto 0) + tan_offset(15 downto 0);
		
		arc_reg_l(31 downto 0) := arc_reg_h(31 downto 0);
		for i in 0 to 31 loop
			if arc_reg_h(i)='0' then
				arc_reg_l(i) := '1';
			else
				arc_reg_l(i) := '0';
				arc_reg_l(31 downto 0) := arc_reg_l(31 downto 0) xor "11111111111111111111111111111111";
				exit;
			end if;
		end loop;
		
		-- Select which answer to use
		case sel is 
			when "00" => arc <= arc_reg_h(31 downto 0);
			when "01" => arc <= arc_reg_l(31 downto 0);
			when "10" => arc <= arc_reg(31 downto 0);
			when "11" => arc <= arc_reg(31 downto 0);
			when others => arc <= arc_reg(31 downto 0);
		end case;
	end process;
	
end atan_arch;
