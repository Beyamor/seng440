-- Implementation of Cosine
-- Using Fixed-Point Arithmetic 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity cos is 
port (
	rads	: in signed(15 downto 0);
	angle	: out signed(31 downto 0)
);
end cos;

architecture cos_arch of cos is
begin
	process(rads)
		-- Multiplication values
		variable cos_out	: signed(15 downto 0) := "0000111110001111"; -- 3983 in binary
		variable cos_in		: signed(15 downto 0) := "0000010000100000"; -- 1056 in binary
		variable cos_off	: signed(31 downto 0) := "00000000000000000001100001110001"; -- 6257 in binary
		variable cos_scale	: signed(31 downto 0) := "00000000000000000001000000000000"; -- 4096 in binary
		
		-- Cutoff Points
		variable cut_1		: signed(15 downto 0) := "1111001100001011"; -- -3317 in binary 
		variable cut_2		: signed(15 downto 0) := "0000000000000000"; -- 0 in binary
		variable cut_3		: signed(15 downto 0) := "0000110011110101"; -- 3317 in binary
		variable cut_4		: signed(15 downto 0) := "0011001001000100"; -- 12868 in binary
		
		-- Storage Values
		variable cos_1		: signed(31 downto 0); -- Lowest Cutoff
		variable cos_2		: signed(31 downto 0); -- 2nd Lowest Cutoff
		variable cos_3		: signed(31 downto 0); -- 2nd Highest Cutoff
		variable cos_4		: signed(31 downto 0); -- Highest Cutoff
	begin
		cos_1 := resize(rads*cos_out, cos_1'length);
		cos_4 := cos_off - ((31 downto 20 => cos_1(31)) & cos_1(31 downto 12)); 
		cos_1 := cos_off + ((31 downto 20 => cos_1(31)) & cos_1(31 downto 12));
		
		cos_2 := resize(rads*cos_in, cos_2'length);
		cos_3 := cos_scale - ((31 downto 20 => cos_2(31)) & cos_2(31 downto 12));
		cos_2 := cos_scale + ((31 downto 20 => cos_2(31)) & cos_2(31 downto 12));
		
		if rads < cut_1 then	
			angle <= cos_1;
		elsif rads < cut_2 then
			angle <= cos_2;
		elsif rads < cut_3 then
			angle <= cos_3;
		elsif rads < cut_4 then
			angle <= cos_4;
		else
			angle <= (others=>'0');
		end if;
	end process;

end cos_arch;
