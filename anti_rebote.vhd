library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity anti_rebote is
    port (
        clk	: in std_logic;
		  btn_in : in std_logic;
	     btn_out	: out std_logic);
		  
end anti_rebote;

architecture registro of anti_rebote is

	
	
	signal reg    : std_logic_vector(3 downto 0);

begin

	
	process(clk,reg)
	
	begin
	
		
		if rising_edge(clk) then 
			
			reg <= reg(2 downto 0) & btn_in;
			
		end if;
		
				
		
		if reg = "1111" then
			
			btn_out <= '1';
			
		else
			
			btn_out <= '0';
			
		end if;
	
		
	
	end process;
	


end registro;