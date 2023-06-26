library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity distance_calculation is
port(
echo_count : in STD_LOGIC_VECTOR (19 downto 0);
presence : out  STD_LOGIC
);
end distance_calculation;

architecture Behavioral of distance_calculation is

begin


process(echo_count)

begin

	if (echo_count < 21750) then 
	
		presence <= '0';
		
	else
	
		presence <= '1';
		
		
	end if;
	
end process;


end Behavioral;
