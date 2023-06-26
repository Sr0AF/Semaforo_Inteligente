library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;

entity binario_a_bcd is



    port ( binario : in  std_logic_vector(5 downto 0);
	 
	 
	 
           bcd : out  std_logic_vector(7 downto 0)
			  
			  
			  );
			  
			  
end binario_a_bcd;

architecture Behavioral of binario_a_bcd is


signal bcd_x : std_logic_vector(7 downto 0);

begin


    process(binario)
	 
	 
	 
    variable temp : std_logic_vector(7 downto 0);
	 
	 
    
	 
	 
begin
    
	 
    temp := (others => '0');
	 
	 
 
	 
    for i in 0 to 5 loop
	 
	 
 
		  
		  

		  
        for j in 0 to 1 loop
		  
		  
		  
            if unsigned(temp(j*4+3 downto j*4)) > 4 then
				
				
                temp(j*4+3 downto j*4) :=  temp(j*4+3 downto j*4) + "0011"; 
					 
				
					 
					 
            end if;
				
				
        end loop;
		  
		  
		  
        temp := temp(6 downto 0) & binario(5-i);
		  
		  
    end loop;

    bcd_x <= temp;
	 
end process;

bcd <= bcd_x; 

end Behavioral;