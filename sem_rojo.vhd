library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity sem_rojo is 


	port(
	
	
	
	pulsad,echo : in std_logic;
	
	trigger : out std_logic;
	
	clk : in std_logic;
	
	S_o : out std_logic_vector(6 downto 0);
	
	gnd_1,gnd_2 : out std_logic;
	
	red,green,yellow,press,yt : out std_logic;
	
	red_peaton, green_peaton : out std_logic
	
	);
	
end sem_rojo;



architecture cuenta of sem_rojo is



signal clk1,clk2,clk3,gnd_1i,gnd_2i,preset,presence,pulsa, puls,pulsador_sinreb,gree,re,yello,green_45s: std_logic;
signal greenn,yelloww,redd,greenp,redp : std_logic := '0';
signal notrafficc, paso_peaton,reset : std_logic;
signal digit_sel: std_logic :='0';
signal i : integer range 0 to 3 := 0;
signal num: std_logic_vector(7 downto 0);
signal BCD_1,BCD_2 : std_logic_vector (3 downto 0);
signal seg_1,seg_2,S : std_logic_vector (6 downto 0);
signal Q: STD_LOGIC_VECTOR (5 downto 0) := "101110";
signal Q_i: STD_LOGIC_VECTOR (5 downto 0);
   




component sensor_quieto is 


	Port ( echo : in std_logic;
				trigger : out std_logic;
			  CLK : in std_logic;
			  y : out std_logic;
			  yy : out std_logic
			  
			  );

end component;


component div_frec is

	port(
	
		clk: in  std_logic;
		Nciclos: in	integer;			
		
		
		f: out std_logic);



end component;


component ff_jk is 

Port ( CLK : in  STD_LOGIC;
           J   : in  STD_LOGIC;
           K   : in  STD_LOGIC;
			  rst :in STD_LOGIC;
			  preset : in STD_LOGIC;
           Q   : out STD_LOGIC);
			  


end component; 


component bcd_to_7seg is


	port (
    bcd_in : in std_logic_vector(3 downto 0);
    seg_out : out std_logic_vector(6 downto 0)
	);


end component;




component binario_a_bcd is


    Port ( binario : in  STD_LOGIC_VECTOR (5 downto 0);
	 
	 
	 
           bcd : out  STD_LOGIC_VECTOR (7 downto 0)
			  
			  
			  );
			  



end component;

component HCRS04 is 

		
Port ( clk : in  STD_LOGIC;
           echo : in  STD_LOGIC;
           Trigger : out  STD_LOGIC;
			  prs : out std_logic);


end component;

component pulsador is

	
	
	port(

	p : in std_logic;
	x : in std_logic;
	l : out std_logic
	);
		
end component;

component anti_rebote is

	port (
        clk	: in std_logic;
		  btn_in : in std_logic;
	     btn_out	: out std_logic);

end component;

component Incrementador is


	port (
			q : in  std_logic_vector(5 downto 0);
			CLK : in std_logic;
			i_f : out integer range 0 to 3 
		);


end component;

component sem_verde_45s is

port(

		CLK : in std_logic;
		q : in std_logic_vector(5 downto 0);
		presencia : in std_logic;
		x : in std_logic;
		y : in std_logic;
		
		
		
		carro : out std_logic

);

end component;



begin 

	pulsa <= not pulsad;


	clk_1Hz : div_frec port map(clk, 25000000, clk1);
	clk_500Hz : div_frec port map(clk, 50000, clk2);
	clk_10kHz : div_frec port map(clk, 2500, clk3);
	
	anti_rebote_pulsador : anti_rebote port map(clk2, pulsa , pulsador_sinreb);
	
	pulsador1 : pulsador port map(pulsador_sinreb,greenn,puls);
	
	
	
	
	
	 JK0 : ff_jk port map (clk1 ,  '1', '1',   re , gree or yello or reset, Q(0));
    JK1 : ff_jk port map (clk1 , Q(0) , Q(0)  ,  yello or gree ,   re or reset,  Q(1));
    JK2 : ff_jk port map (clk1 , Q(0) and Q(1) , Q(0) and Q(1) , gree or re , yello or reset,  Q(2));
    JK3 : ff_jk port map (clk1 , Q(0) and Q(1) and Q(2)  , Q(0) and Q(1) and Q(2)  ,   gree or re, yello or reset,  Q(3));
    JK4 : ff_jk port map (clk1 , Q(0) and Q(1) and Q(2) and Q(3) , Q(0) and Q(1) and Q(2) and Q(3) , gree , yello or re or reset, Q(4));
    JK5 : ff_jk port map (clk1 , Q(0) and Q(1) and Q(2) and Q(3) and Q(4) , Q(0) and Q(1) and Q(2) and Q(3) and Q(4) , re , gree or yello or reset,  Q(5));
    
    
    Q_i(5)<=  not Q(5);
	 Q_i(4)<=  not Q(4);
	 Q_i(3)<=  not Q(3);
	 Q_i(2)<=  not Q(2);
	 Q_i(1)<=  not Q(1);
	 Q_i(0)<=  not Q(0);
	 
	 
	 
	Incrementador_i : Incrementador port map(Q_i,clk1,i);
	
	HCRS04_sens : sensor_quieto port map(echo , trigger, CLK ,presence,notrafficc);

	
	press <= presence;

	
	senal_verde_45s : sem_verde_45s port map(clk1,Q_i,presence,redd,yelloww,green_45s);
	
	
	
	yt <= green_45s;
	 
	 process(i,Q_i,green_45s)
	 
	 begin
	 
		if i = 0 then
			
		
			yello <= '0';
			gree <= '0';
			
			redd <= '1';
			yelloww <= '0';
			greenn <= '0';
			
			if Q = "000000" then
			
				re <= '1';
				
			else 
			
				re <= '0';
			
			end if;
		
			
		elsif (i = 1 or i=3) then
		
			re <= '0';
			gree <= '0';
			
			redd <= '0';
			yelloww <= '1';
			greenn <= '0';
			
			if Q = "000000" then
			
				yello <= '1';
				
			else 
			
				yello <= '0';
			
			end if;
		
			
			
		elsif i = 2 then
		
		
			re <= '0';
			yello <= '0';
		
			redd <= '0';
			yelloww <= '0';
			greenn <= '1';
			
			
			
			if Q = "000000" then
			
				gree <= not green_45s;
				re <= green_45s;
				
			else 
			
				gree <= '0';
				re <= '0';
			
			end if;
		
		
		end if;
		
		
	end process;
	
	
	
	
	paso_peaton <= greenn and notrafficc and puls;
	
	
	process(paso_peaton)
		
		
	begin
	
		if (paso_peaton = '1') then
		
			reset <= '1';
			
		else 
		
			reset <= '0';
		
		end if;
	
	
	
	end process;
	
	
	
	
	
	
	redp <= yelloww or greenn;
	greenp <= redd;
	
	 
	red <= redd;
	green <= greenn;
	yellow <= yelloww;
	
	
	green_peaton <= greenp;
	red_peaton <= redp;
	
	
	
	
	BCD : binario_a_bcd port map(Q_i,num);
	
	BCD_1 <= num(3 downto 0);
	BCD_2 <= num(7 downto 4);
	
	
	seg7_1 : bcd_to_7seg port map(BCD_1,seg_1);
	
	seg7_2 : bcd_to_7seg port map(BCD_2,seg_2);
	

	
	
	
	
	process(clk3)
	
	
	
begin


    if rising_edge(clk3) then
	 
	 
	 
        if digit_sel = '0' then 
		  
		  
				gnd_1i <= '1';
				
				gnd_2i <= '0';
		  
		  
            S <= seg_1;
				
				
            digit_sel <= '1';
				
        else 
		  
		  
		  
				gnd_1i <= '0';
				
				gnd_2i <= '1';
		  
            S <= seg_2;
				
				
            digit_sel <= '0';
				
				
        end if;
		  
	
	
		  
	
		  
    end if;
	 
	 
	 
	 for i in S'range loop
	
    S_o(i) <= not S(i);
	 
	 end loop;
	
	 
end process;
	
	
	
	 
	gnd_1 <= not gnd_1i;
	gnd_2 <= not gnd_2i;
	
	
	
	
end architecture;