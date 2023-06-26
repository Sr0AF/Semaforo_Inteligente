library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notraffic is

    Port ( echo : in std_logic;
				trigger : out std_logic;
			  CLK : in std_logic;
			  y : out std_logic
			  
			  );
			  
			  
end notraffic;

architecture prueba of notraffic is

	signal CLK_1Hz,CLK_10kHz,x_i,y_i : std_logic;
	signal i : integer range 0 to 6 := 0;
	
component div_frec is
	
	
	port(
	
		clk: in  std_logic;
		Nciclos: in	integer;			
		
		
		f: out std_logic
		
		
		);
	
	
	
	
end component;



component HCRS04 is



Port ( clk : in  STD_LOGIC;
           echo : in  STD_LOGIC;
           Trigger : out  STD_LOGIC;
			  prs : out std_logic);



end component;

component anti_rebotee

	port (
        clk	: in std_logic;
		  btn_in : in std_logic;
	     btn_out	: out std_logic);

end component;
	 

begin
	
	
	
	CLOCK_1kHz : div_frec port map(CLK, 25000000, CLK_1Hz);
	
	Sens : HCRS04 port map(CLK, echo , trigger , x_i);
	
	process(CLK_1Hz)
	
	begin
		
		if rising_edge(CLK_1Hz) then
		
			if (not x_i = '0') then
		
				if (i < 3) then
		
					i <= i+1;
		
					y_i <='0';
					
				
				else 
				
					y_i <= '1';
					
					i <= 0;
				
				
				
				end if;
				
			else 
			
				i <= 0;
				
				y_i <= '0';
			
			end if;
			
		end if;
		
	end process;
	
	y <= y_i;
	
		
end prueba;