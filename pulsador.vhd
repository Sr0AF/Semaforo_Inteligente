library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pulsador is

port(

	p : in std_logic;
	x : in std_logic;
	l : out std_logic


);

end pulsador;

architecture pulpo of pulsador is 


	signal q : std_logic := '0';
	
	begin 
	
	process (p,x)
	
	
	begin 
	
	if x = '1' then
	
		if rising_edge(p) then 
		
			q<=not q;
			
		end if;
		
		
		l<=q;
		
	else 
	
		q <= '0';
		
	end if;
	
	end process;
	
end pulpo;