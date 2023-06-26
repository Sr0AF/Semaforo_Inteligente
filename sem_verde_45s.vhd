library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity sem_verde_45s is

port(

		CLK : in std_logic;
		q : in std_logic_vector(5 downto 0);
		presencia : in std_logic;
		x : in std_logic;
		y : in std_logic;
		
		
		
		carro : out std_logic




);


end entity;



architecture condiciones of sem_verde_45s is


begin


process(CLK,q,presencia,x,y) 
	
begin 

if rising_edge(CLK) then
	
		if (q < "001010") then 
		
		
			if (presencia = '1' and (x = '1' or y = '1')) then
			
			
				carro <= '1';
				
				
			end if;
			
		
		else 
		
			   carro <= '0';
		
		end if;


end if;

end process;


end architecture condiciones;