library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity HCRS04 is
    Port ( clk : in  STD_LOGIC;
           echo : in  STD_LOGIC;
           Trigger : out  STD_LOGIC;
			  prs : out std_logic);
end HCRS04;

architecture Behavioral of HCRS04 is

COMPONENT TriggerGen is
	PORT(
		clk : IN std_logic;          
		trigger : OUT std_logic
		);
END COMPONENT;

COMPONENT counter is
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		enable : IN std_logic;          
		q : OUT std_logic_vector(19 downto 0)
		);
	END COMPONENT;
	
COMPONENT distance_calculation is
	PORT(
		echo_count : IN std_logic_vector(19 downto 0);          
		presence : OUT std_logic
		);
	END COMPONENT;



signal Trigger_out: std_logic;
signal presence : std_logic;
signal echo_counter1 : STD_LOGIC_VECTOR (19 downto 0);
signal echo_count : STD_LOGIC_VECTOR (19 downto 0);

begin

Inst_TriggerGen: TriggerGen PORT MAP(
		clk,
		Trigger_out 
	);
	
Inst_counter: counter PORT MAP(
		clk,
		Trigger_out,
		echo,
		echo_counter1 
	);
	
	process(echo) begin
		if falling_edge(echo) then
			echo_count <= echo_counter1;
		end if;
	
	end process;
	
Inst_distance_calculation: distance_calculation PORT MAP(echo_count,presence);
	

	
prs <= presence;

Trigger <= Trigger_out;



end Behavioral;