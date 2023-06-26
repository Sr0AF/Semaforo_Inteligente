library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Incrementador is

    port (
        q : in  std_logic_vector(5 downto 0);
		  CLK : in std_logic;
        i_f : out integer range 0 to 3 
    );
	 
end entity Incrementador;

architecture count of Incrementador is

signal i : integer range 0 to 3;

begin 

process(q,CLK)
	 
	 begin
	 
	 
	 if rising_edge(CLK) then
	 
		if q = "000000"  then 
		
			i <= i+1;
			
		else 
		
			i <= i;
		
		end if;
	 
		if (i > 3) then
		
			i <= 0;
		
		end if;
	
	end if;
	 
	 end process;
	 
	i_f <= i;
	 
end architecture count;