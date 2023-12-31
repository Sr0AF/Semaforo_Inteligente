library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity div_frec is

	port(
	
		clk: in  std_logic;
		Nciclos: in	integer;			
		
		
		f: out std_logic
		
		
		);
		
end div_frec;


architecture divisor of div_frec is

	signal salida: std_logic;
	signal cuenta: integer range 0 to 250000000 := 0;
	
begin

	
	process(clk) 
	begin
	
		
		if rising_edge(clk) then 
		
			if cuenta = Nciclos then
				cuenta <= 0;
				salida <= not salida; 
			else
				cuenta <= cuenta + 1; 
			end if;
		end if;
		
		
	
	end process;
	
	f <= salida;

end divisor;