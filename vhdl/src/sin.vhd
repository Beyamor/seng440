-- Implementation of Sine
-- Using Fixed-Point Arithmetic 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity sin is 
port (
	rads	: in signed(15 downto 0);
	angle	: out signed(31 downto 0)
);
end sin;

architecture sin_arch of sin is
begin
	process(rads)
		-- Multiplication Values
		variable sin_in		: signed(15 downto 0) := "0000111110001111"; -- 3983 in binary
		variable sin_out	: signed(15 downto 0) := "0000010000100000"; -- 1056 in binary
		variable sin_off	: signed(31 downto 0) := "11111111111111111111011001111010"; -- -2438 in binary
		
		-- Cutoff Points
		variable cut_1		: signed(15 downto 0) := "1111001100001011"; -- -3317 in binary 
		variable cut_2		: signed(15 downto 0) := "0000110011110101"; -- 3317 in binary
		variable cut_3		: signed(15 downto 0) := "0001100100100010"; -- 6434 in binary
		
		-- Storage Values
		variable sin_l		: signed(31 downto 0); -- Lowest Cutoff
		variable sin_m		: signed(31 downto 0); -- Middle Cutoff
		variable sin_h		: signed(31 downto 0); -- Highest Cutoff
		
	begin
		sin_l := resize(rads*sin_out, sin_l'length);
		sin_h := ("000000000000" & sin_l(31 downto 12)) - sin_off;
		sin_l := sin_off + ("111111111111" & sin_l(31 downto 12));
		
		sin_m := resize(rads*sin_in, sin_m'length);
		sin_m := (31 downto 20 => sin_m(31)) & sin_m(31 downto 12);
		
		if rads < cut_1 then 
			angle <= sin_l;
		elsif rads < cut_2 then
			angle <= sin_m;
		elsif rads < cut_3 then
			angle <= sin_h;
		else
			angle <= (others=>'0');
		end if;
	end process;

end sin_arch;
