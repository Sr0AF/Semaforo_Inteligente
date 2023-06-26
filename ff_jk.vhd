library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ff_jk is

    Port ( CLK : in  STD_LOGIC;
           J   : in  STD_LOGIC;
           K   : in  STD_LOGIC;
			  rst :in STD_LOGIC;
			  preset : in STD_LOGIC;
			  Q   : out STD_LOGIC
			  );
			  
			  
end ff_jk;

architecture Behavioral of ff_jk is

    signal Q_int,preset_i : STD_LOGIC;
	 

begin



	

    process (CLK)
    begin
	 
	 
	 
			
			if rst ='1' then 
			
			
			Q_int <= '0';
			
			
			elsif (preset = '1')  then
			
			Q_int <= '1';
			
    
         elsif (rising_edge(CLK)) then
		  
		  
            if (J = '1' and K = '0') then
				
				
                Q_int <= '1';
					 
					 
            elsif (J = '0' and K = '1') then
				
				
                Q_int <= '0';
					 
					 
            elsif (J = '1' and K = '1') then
				
				
                Q_int <= not Q_int;
					 
					 
            end if;
				
		
				
				
        end if;
		  
		  
        
    end process;
    
    Q <= Q_int;

end Behavioral;

 