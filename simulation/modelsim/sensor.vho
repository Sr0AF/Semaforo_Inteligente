-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/25/2023 11:30:18"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sem_rojo IS
    PORT (
	pulsad : IN std_logic;
	echo : IN std_logic;
	trigger : BUFFER std_logic;
	clk : IN std_logic;
	S_o : BUFFER std_logic_vector(6 DOWNTO 0);
	gnd_1 : BUFFER std_logic;
	gnd_2 : BUFFER std_logic;
	red : BUFFER std_logic;
	green : BUFFER std_logic;
	yellow : BUFFER std_logic;
	press : BUFFER std_logic;
	yt : BUFFER std_logic;
	red_peaton : BUFFER std_logic;
	green_peaton : BUFFER std_logic
	);
END sem_rojo;

-- Design Ports Information
-- trigger	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[1]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_o[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd_1	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gnd_2	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yellow	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- press	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yt	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_peaton	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_peaton	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- echo	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulsad	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sem_rojo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pulsad : std_logic;
SIGNAL ww_echo : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_S_o : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_gnd_1 : std_logic;
SIGNAL ww_gnd_2 : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_yellow : std_logic;
SIGNAL ww_press : std_logic;
SIGNAL ww_yt : std_logic;
SIGNAL ww_red_peaton : std_logic;
SIGNAL ww_green_peaton : std_logic;
SIGNAL \echo~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_10kHz|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_1Hz|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trigger~output_o\ : std_logic;
SIGNAL \S_o[0]~output_o\ : std_logic;
SIGNAL \S_o[1]~output_o\ : std_logic;
SIGNAL \S_o[2]~output_o\ : std_logic;
SIGNAL \S_o[3]~output_o\ : std_logic;
SIGNAL \S_o[4]~output_o\ : std_logic;
SIGNAL \S_o[5]~output_o\ : std_logic;
SIGNAL \S_o[6]~output_o\ : std_logic;
SIGNAL \gnd_1~output_o\ : std_logic;
SIGNAL \gnd_2~output_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \yellow~output_o\ : std_logic;
SIGNAL \press~output_o\ : std_logic;
SIGNAL \yt~output_o\ : std_logic;
SIGNAL \red_peaton~output_o\ : std_logic;
SIGNAL \green_peaton~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~59_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~2_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~58_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~4_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~45_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~6_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~46_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~8_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~47_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~10_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~48_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~12_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~49_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~14_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~43_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~16_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~44_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~18_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~51_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~22_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~53_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~24_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~50_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~26_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~54_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~28_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~55_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~30_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~56_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~32_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~57_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~34_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~36_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~37_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~39_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~38\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~40_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~42_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~20_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|Add0~52_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~0_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~5_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~1\ : std_logic;
SIGNAL \clk_10kHz|Add0~2_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~3\ : std_logic;
SIGNAL \clk_10kHz|Add0~4_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~4_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~5\ : std_logic;
SIGNAL \clk_10kHz|Add0~6_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~7\ : std_logic;
SIGNAL \clk_10kHz|Add0~8_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~9\ : std_logic;
SIGNAL \clk_10kHz|Add0~10_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~11\ : std_logic;
SIGNAL \clk_10kHz|Add0~12_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~3_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~13\ : std_logic;
SIGNAL \clk_10kHz|Add0~14_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~2_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~15\ : std_logic;
SIGNAL \clk_10kHz|Add0~16_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~1_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~17\ : std_logic;
SIGNAL \clk_10kHz|Add0~18_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~19\ : std_logic;
SIGNAL \clk_10kHz|Add0~20_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~21\ : std_logic;
SIGNAL \clk_10kHz|Add0~22_combout\ : std_logic;
SIGNAL \clk_10kHz|cuenta~0_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~23\ : std_logic;
SIGNAL \clk_10kHz|Add0~24_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~25\ : std_logic;
SIGNAL \clk_10kHz|Add0~26_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~27\ : std_logic;
SIGNAL \clk_10kHz|Add0~28_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~29\ : std_logic;
SIGNAL \clk_10kHz|Add0~30_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~31\ : std_logic;
SIGNAL \clk_10kHz|Add0~32_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~33\ : std_logic;
SIGNAL \clk_10kHz|Add0~34_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~35\ : std_logic;
SIGNAL \clk_10kHz|Add0~36_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~37\ : std_logic;
SIGNAL \clk_10kHz|Add0~38_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~39\ : std_logic;
SIGNAL \clk_10kHz|Add0~40_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~41\ : std_logic;
SIGNAL \clk_10kHz|Add0~42_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~43\ : std_logic;
SIGNAL \clk_10kHz|Add0~44_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~45\ : std_logic;
SIGNAL \clk_10kHz|Add0~46_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~47\ : std_logic;
SIGNAL \clk_10kHz|Add0~48_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~49\ : std_logic;
SIGNAL \clk_10kHz|Add0~50_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~51\ : std_logic;
SIGNAL \clk_10kHz|Add0~52_combout\ : std_logic;
SIGNAL \clk_10kHz|Add0~53\ : std_logic;
SIGNAL \clk_10kHz|Add0~54_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_10kHz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_10kHz|salida~0_combout\ : std_logic;
SIGNAL \clk_10kHz|salida~feeder_combout\ : std_logic;
SIGNAL \clk_10kHz|salida~q\ : std_logic;
SIGNAL \clk_10kHz|salida~clkctrl_outclk\ : std_logic;
SIGNAL \clk_1Hz|salida~0_combout\ : std_logic;
SIGNAL \clk_1Hz|salida~feeder_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~11_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~1\ : std_logic;
SIGNAL \clk_1Hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~3\ : std_logic;
SIGNAL \clk_1Hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~5\ : std_logic;
SIGNAL \clk_1Hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~7\ : std_logic;
SIGNAL \clk_1Hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~9\ : std_logic;
SIGNAL \clk_1Hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~11\ : std_logic;
SIGNAL \clk_1Hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~10_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~13\ : std_logic;
SIGNAL \clk_1Hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~15\ : std_logic;
SIGNAL \clk_1Hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~17\ : std_logic;
SIGNAL \clk_1Hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~19\ : std_logic;
SIGNAL \clk_1Hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~21\ : std_logic;
SIGNAL \clk_1Hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~9_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~23\ : std_logic;
SIGNAL \clk_1Hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~8_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~25\ : std_logic;
SIGNAL \clk_1Hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~7_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~27\ : std_logic;
SIGNAL \clk_1Hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~6_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~29\ : std_logic;
SIGNAL \clk_1Hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~31\ : std_logic;
SIGNAL \clk_1Hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~5_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~33\ : std_logic;
SIGNAL \clk_1Hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~35\ : std_logic;
SIGNAL \clk_1Hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~4_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~37\ : std_logic;
SIGNAL \clk_1Hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~3_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~39\ : std_logic;
SIGNAL \clk_1Hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~2_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~41\ : std_logic;
SIGNAL \clk_1Hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~1_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~43\ : std_logic;
SIGNAL \clk_1Hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~0_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~45\ : std_logic;
SIGNAL \clk_1Hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~47\ : std_logic;
SIGNAL \clk_1Hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta~12_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~49\ : std_logic;
SIGNAL \clk_1Hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~51\ : std_logic;
SIGNAL \clk_1Hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_1Hz|Add0~53\ : std_logic;
SIGNAL \clk_1Hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_1Hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_1Hz|salida~q\ : std_logic;
SIGNAL \clk_1Hz|salida~clkctrl_outclk\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \greenn~0_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~0_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~6_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~1\ : std_logic;
SIGNAL \clk_500Hz|Add0~2_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~3\ : std_logic;
SIGNAL \clk_500Hz|Add0~4_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~5\ : std_logic;
SIGNAL \clk_500Hz|Add0~6_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~7\ : std_logic;
SIGNAL \clk_500Hz|Add0~8_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~5_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~9\ : std_logic;
SIGNAL \clk_500Hz|Add0~10_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~11\ : std_logic;
SIGNAL \clk_500Hz|Add0~12_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~4_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~13\ : std_logic;
SIGNAL \clk_500Hz|Add0~14_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~5_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~15\ : std_logic;
SIGNAL \clk_500Hz|Add0~16_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~3_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~17\ : std_logic;
SIGNAL \clk_500Hz|Add0~18_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~2_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~19\ : std_logic;
SIGNAL \clk_500Hz|Add0~20_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~21\ : std_logic;
SIGNAL \clk_500Hz|Add0~22_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~23\ : std_logic;
SIGNAL \clk_500Hz|Add0~24_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~25\ : std_logic;
SIGNAL \clk_500Hz|Add0~26_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~27\ : std_logic;
SIGNAL \clk_500Hz|Add0~28_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~1_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~29\ : std_logic;
SIGNAL \clk_500Hz|Add0~30_combout\ : std_logic;
SIGNAL \clk_500Hz|cuenta~0_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~31\ : std_logic;
SIGNAL \clk_500Hz|Add0~32_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~33\ : std_logic;
SIGNAL \clk_500Hz|Add0~34_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~35\ : std_logic;
SIGNAL \clk_500Hz|Add0~36_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~37\ : std_logic;
SIGNAL \clk_500Hz|Add0~38_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~39\ : std_logic;
SIGNAL \clk_500Hz|Add0~40_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~41\ : std_logic;
SIGNAL \clk_500Hz|Add0~42_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~43\ : std_logic;
SIGNAL \clk_500Hz|Add0~44_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~45\ : std_logic;
SIGNAL \clk_500Hz|Add0~46_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~47\ : std_logic;
SIGNAL \clk_500Hz|Add0~48_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~49\ : std_logic;
SIGNAL \clk_500Hz|Add0~50_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~51\ : std_logic;
SIGNAL \clk_500Hz|Add0~52_combout\ : std_logic;
SIGNAL \clk_500Hz|Add0~53\ : std_logic;
SIGNAL \clk_500Hz|Add0~54_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~7_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~6_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~2_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~3_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~1_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~0_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~4_combout\ : std_logic;
SIGNAL \clk_500Hz|Equal0~8_combout\ : std_logic;
SIGNAL \clk_500Hz|salida~0_combout\ : std_logic;
SIGNAL \clk_500Hz|salida~feeder_combout\ : std_logic;
SIGNAL \clk_500Hz|salida~q\ : std_logic;
SIGNAL \pulsad~input_o\ : std_logic;
SIGNAL \anti_rebote_pulsador|reg[0]~0_combout\ : std_logic;
SIGNAL \anti_rebote_pulsador|reg[1]~feeder_combout\ : std_logic;
SIGNAL \anti_rebote_pulsador|reg[2]~feeder_combout\ : std_logic;
SIGNAL \anti_rebote_pulsador|Equal0~combout\ : std_logic;
SIGNAL \pulsador1|q~0_combout\ : std_logic;
SIGNAL \pulsador1|q~q\ : std_logic;
SIGNAL \pulsador1|l~combout\ : std_logic;
SIGNAL \HCRS04_sens|CLOCK_1kHz|salida~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|CLOCK_1kHz|salida~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|CLOCK_1kHz|salida~q\ : std_logic;
SIGNAL \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\ : std_logic;
SIGNAL \echo~input_o\ : std_logic;
SIGNAL \echo~inputclkctrl_outclk\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[0]~57_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[0]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[1]~19_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[1]~20\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[2]~21_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[2]~22\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[3]~23_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[3]~24\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[4]~25_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[4]~26\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[5]~27_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[5]~28\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[6]~29_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[6]~30\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[7]~31_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[7]~32\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[8]~33_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[8]~34\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[9]~35_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[9]~36\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[10]~37_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[10]~38\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[11]~39_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[11]~40\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[12]~41_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[12]~42\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[13]~43_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[13]~44\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[14]~45_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[14]~46\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[15]~47_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[15]~48\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[16]~49_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[16]~50\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[17]~51_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[17]~52\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[18]~53_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[18]~54\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick[19]~55_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[15]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[17]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[16]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[14]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[11]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[12]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[9]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[8]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[5]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[6]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[2]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[1]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|echo_count[3]~feeder_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\ : std_logic;
SIGNAL \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\ : std_logic;
SIGNAL \HCRS04_sens|k~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|k~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|yy_i~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|yy_i~q\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \JK1|Q_int~1_combout\ : std_logic;
SIGNAL \JK1|Q_int~3_combout\ : std_logic;
SIGNAL \JK1|Q_int~0_combout\ : std_logic;
SIGNAL \JK1|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK1|Q_int~2_combout\ : std_logic;
SIGNAL \JK2|Q_int~1_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \JK3|Q_int~0_combout\ : std_logic;
SIGNAL \JK2|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK2|Q_int~0_combout\ : std_logic;
SIGNAL \JK5|Q_int~7_combout\ : std_logic;
SIGNAL \Incrementador_i|Equal0~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \JK5|Q_int~3_combout\ : std_logic;
SIGNAL \JK5|Q_int~0_combout\ : std_logic;
SIGNAL \JK5|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK5|Q_int~2_combout\ : std_logic;
SIGNAL \Incrementador_i|Equal0~1_combout\ : std_logic;
SIGNAL \Incrementador_i|i[1]~2_combout\ : std_logic;
SIGNAL \senal_verde_45s|carro~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|i~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|i~1_combout\ : std_logic;
SIGNAL \HCRS04_sens|i~2_combout\ : std_logic;
SIGNAL \HCRS04_sens|y_i~0_combout\ : std_logic;
SIGNAL \HCRS04_sens|y_i~q\ : std_logic;
SIGNAL \senal_verde_45s|carro~0_combout\ : std_logic;
SIGNAL \senal_verde_45s|carro~2_combout\ : std_logic;
SIGNAL \senal_verde_45s|carro~q\ : std_logic;
SIGNAL \gree~combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \JK4|Q_int~1_combout\ : std_logic;
SIGNAL \JK4|Q_int~3_combout\ : std_logic;
SIGNAL \JK4|Q_int~0_combout\ : std_logic;
SIGNAL \JK4|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK4|Q_int~2_combout\ : std_logic;
SIGNAL \Incrementador_i|i[0]~3_combout\ : std_logic;
SIGNAL \re~0_combout\ : std_logic;
SIGNAL \JK5|Q_int~1_combout\ : std_logic;
SIGNAL \JK0|Q_int~1_combout\ : std_logic;
SIGNAL \JK0|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK0|Q_int~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \JK3|Q_int~7_combout\ : std_logic;
SIGNAL \JK3|Q_int~1_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \JK3|Q_int~3_combout\ : std_logic;
SIGNAL \JK3|Q_int~_emulated_q\ : std_logic;
SIGNAL \JK3|Q_int~2_combout\ : std_logic;
SIGNAL \BCD|bcd[5]~0_combout\ : std_logic;
SIGNAL \BCD|temp~1_combout\ : std_logic;
SIGNAL \BCD|temp~0_combout\ : std_logic;
SIGNAL \BCD|temp~2_combout\ : std_logic;
SIGNAL \BCD|bcd[4]~1_combout\ : std_logic;
SIGNAL \S~5_combout\ : std_logic;
SIGNAL \BCD|LessThan0~0_combout\ : std_logic;
SIGNAL \S[0]~0_combout\ : std_logic;
SIGNAL \BCD|bcd[2]~3_combout\ : std_logic;
SIGNAL \BCD|bcd[3]~4_combout\ : std_logic;
SIGNAL \BCD|bcd[1]~2_combout\ : std_logic;
SIGNAL \seg7_1|Mux6~0_combout\ : std_logic;
SIGNAL \digit_sel~0_combout\ : std_logic;
SIGNAL \digit_sel~q\ : std_logic;
SIGNAL \S~6_combout\ : std_logic;
SIGNAL \S[1]~1_combout\ : std_logic;
SIGNAL \seg7_1|Mux5~0_combout\ : std_logic;
SIGNAL \S~7_combout\ : std_logic;
SIGNAL \seg7_1|Mux4~0_combout\ : std_logic;
SIGNAL \S~8_combout\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \S[3]~2_combout\ : std_logic;
SIGNAL \seg7_1|Mux3~0_combout\ : std_logic;
SIGNAL \seg7_1|Mux2~0_combout\ : std_logic;
SIGNAL \S~9_combout\ : std_logic;
SIGNAL \S~10_combout\ : std_logic;
SIGNAL \S~11_combout\ : std_logic;
SIGNAL \seg7_1|Mux1~0_combout\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \seg7_1|Mux0~0_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \gnd_1i~0_combout\ : std_logic;
SIGNAL \gnd_1i~q\ : std_logic;
SIGNAL \gnd_2i~feeder_combout\ : std_logic;
SIGNAL \gnd_2i~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_1Hz|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL S : std_logic_vector(6 DOWNTO 0);
SIGNAL \HCRS04_sens|Sens|Inst_counter|tick\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \clk_10kHz|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \clk_500Hz|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \HCRS04_sens|Sens|echo_count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|tick\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \HCRS04_sens|i\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Incrementador_i|i\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \HCRS04_sens|k\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \anti_rebote_pulsador|reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_echo~inputclkctrl_outclk\ : std_logic;
SIGNAL \JK1|ALT_INV_Q_int~0_combout\ : std_logic;
SIGNAL \JK4|ALT_INV_Q_int~0_combout\ : std_logic;
SIGNAL \JK3|ALT_INV_Q_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_digit_sel~q\ : std_logic;
SIGNAL \ALT_INV_greenn~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_gnd_2i~q\ : std_logic;
SIGNAL \ALT_INV_gnd_1i~q\ : std_logic;
SIGNAL ALT_INV_S : std_logic_vector(6 DOWNTO 0);
SIGNAL \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\ : std_logic;
SIGNAL \JK5|ALT_INV_Q_int~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pulsad <= pulsad;
ww_echo <= echo;
trigger <= ww_trigger;
ww_clk <= clk;
S_o <= ww_S_o;
gnd_1 <= ww_gnd_1;
gnd_2 <= ww_gnd_2;
red <= ww_red;
green <= ww_green;
yellow <= ww_yellow;
press <= ww_press;
yt <= ww_yt;
red_peaton <= ww_red_peaton;
green_peaton <= ww_green_peaton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\echo~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \echo~input_o\);

\clk_10kHz|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_10kHz|salida~q\);

\HCRS04_sens|CLOCK_1kHz|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \HCRS04_sens|CLOCK_1kHz|salida~q\);

\clk_1Hz|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_1Hz|salida~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_echo~inputclkctrl_outclk\ <= NOT \echo~inputclkctrl_outclk\;
\JK1|ALT_INV_Q_int~0_combout\ <= NOT \JK1|Q_int~0_combout\;
\JK4|ALT_INV_Q_int~0_combout\ <= NOT \JK4|Q_int~0_combout\;
\JK3|ALT_INV_Q_int~0_combout\ <= NOT \JK3|Q_int~0_combout\;
\ALT_INV_digit_sel~q\ <= NOT \digit_sel~q\;
\ALT_INV_greenn~0_combout\ <= NOT \greenn~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_gnd_2i~q\ <= NOT \gnd_2i~q\;
\ALT_INV_gnd_1i~q\ <= NOT \gnd_1i~q\;
ALT_INV_S(6) <= NOT S(6);
ALT_INV_S(5) <= NOT S(5);
ALT_INV_S(4) <= NOT S(4);
ALT_INV_S(2) <= NOT S(2);
\HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\ <= NOT \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5_combout\;
ALT_INV_S(3) <= NOT S(3);
ALT_INV_S(1) <= NOT S(1);
ALT_INV_S(0) <= NOT S(0);
\JK5|ALT_INV_Q_int~0_combout\ <= NOT \JK5|Q_int~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\trigger~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5_combout\,
	devoe => ww_devoe,
	o => \trigger~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\S_o[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(0),
	devoe => ww_devoe,
	o => \S_o[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\S_o[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(1),
	devoe => ww_devoe,
	o => \S_o[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\S_o[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(2),
	devoe => ww_devoe,
	o => \S_o[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\S_o[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(3),
	devoe => ww_devoe,
	o => \S_o[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\S_o[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(4),
	devoe => ww_devoe,
	o => \S_o[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\S_o[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(5),
	devoe => ww_devoe,
	o => \S_o[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\S_o[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_S(6),
	devoe => ww_devoe,
	o => \S_o[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\gnd_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_gnd_1i~q\,
	devoe => ww_devoe,
	o => \gnd_1~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\gnd_2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_gnd_2i~q\,
	devoe => ww_devoe,
	o => \gnd_2~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\red~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\green~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_greenn~0_combout\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\yellow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Incrementador_i|i\(0),
	devoe => ww_devoe,
	o => \yellow~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\press~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HCRS04_sens|y_i~q\,
	devoe => ww_devoe,
	o => \press~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\yt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \senal_verde_45s|carro~q\,
	devoe => ww_devoe,
	o => \yt~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\red_peaton~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \red_peaton~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\green_peaton~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \green_peaton~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y8_N12
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~0_combout\ = \HCRS04_sens|Sens|Inst_TriggerGen|tick\(0) $ (GND)
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\ = CARRY(!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(0),
	datad => VCC,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~0_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\);

-- Location: LCCOMB_X3_Y8_N4
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~59_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~0_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~59_combout\);

-- Location: FF_X3_Y8_N5
\HCRS04_sens|Sens|Inst_TriggerGen|tick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(0));

-- Location: LCCOMB_X3_Y8_N14
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~2_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(1) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(1) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(1)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(1),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~1\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~2_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\);

-- Location: LCCOMB_X3_Y8_N6
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~58_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~2_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~58_combout\);

-- Location: FF_X3_Y8_N7
\HCRS04_sens|Sens|Inst_TriggerGen|tick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(1));

-- Location: LCCOMB_X3_Y8_N16
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~4_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(2) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(2) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\ $ (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(2) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(2),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~3\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~4_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\);

-- Location: LCCOMB_X3_Y8_N2
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~45_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~4_combout\,
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~45_combout\);

-- Location: FF_X3_Y8_N3
\HCRS04_sens|Sens|Inst_TriggerGen|tick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(2));

-- Location: LCCOMB_X3_Y8_N18
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~6_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(3) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(3) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(3)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(3),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~5\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~6_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\);

-- Location: LCCOMB_X3_Y8_N0
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~46_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~6_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~46_combout\);

-- Location: FF_X3_Y8_N1
\HCRS04_sens|Sens|Inst_TriggerGen|tick[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(3));

-- Location: LCCOMB_X3_Y8_N20
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~8_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(4) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(4) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\ $ (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(4) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(4),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~7\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~8_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\);

-- Location: LCCOMB_X2_Y8_N6
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~47_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~8_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~47_combout\);

-- Location: FF_X2_Y8_N7
\HCRS04_sens|Sens|Inst_TriggerGen|tick[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(4));

-- Location: LCCOMB_X3_Y8_N22
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~10_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(5) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(5) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(5)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(5),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~9\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~10_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\);

-- Location: LCCOMB_X2_Y8_N12
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~48_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~10_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~48_combout\);

-- Location: FF_X2_Y8_N13
\HCRS04_sens|Sens|Inst_TriggerGen|tick[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(5));

-- Location: LCCOMB_X3_Y8_N24
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~12_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(6) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(6) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\ $ (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(6) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(6),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~11\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~12_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\);

-- Location: LCCOMB_X2_Y8_N26
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~49_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~12_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~49_combout\);

-- Location: FF_X2_Y8_N27
\HCRS04_sens|Sens|Inst_TriggerGen|tick[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(6));

-- Location: LCCOMB_X3_Y8_N26
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~14_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(7) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(7) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(7)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(7),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~13\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~14_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\);

-- Location: LCCOMB_X3_Y8_N8
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~43_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~14_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~43_combout\);

-- Location: FF_X3_Y8_N9
\HCRS04_sens|Sens|Inst_TriggerGen|tick[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(7));

-- Location: LCCOMB_X3_Y8_N28
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~16_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(8) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(8) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\ $ (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(8) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(8),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~15\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~16_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\);

-- Location: LCCOMB_X2_Y8_N14
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~44_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~16_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~44_combout\);

-- Location: FF_X2_Y8_N15
\HCRS04_sens|Sens|Inst_TriggerGen|tick[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(8));

-- Location: LCCOMB_X3_Y8_N30
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~18_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(9) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(9) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(9)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(9),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~17\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~18_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\);

-- Location: LCCOMB_X4_Y8_N4
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~51_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~18_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~51_combout\);

-- Location: FF_X4_Y8_N5
\HCRS04_sens|Sens|Inst_TriggerGen|tick[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(9));

-- Location: LCCOMB_X3_Y7_N0
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~20_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(10) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(10) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\ $ 
-- (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(10) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(10),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~19\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~20_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\);

-- Location: LCCOMB_X3_Y7_N2
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~22_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(11) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(11) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(11)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(11),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~21\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~22_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\);

-- Location: LCCOMB_X2_Y8_N28
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~53_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~22_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~53_combout\);

-- Location: FF_X2_Y8_N29
\HCRS04_sens|Sens|Inst_TriggerGen|tick[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(11));

-- Location: LCCOMB_X3_Y7_N4
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~24_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(12) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(12) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\ $ 
-- (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(12) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(12),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~23\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~24_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\);

-- Location: LCCOMB_X2_Y7_N0
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~50_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~24_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~50_combout\);

-- Location: FF_X2_Y7_N1
\HCRS04_sens|Sens|Inst_TriggerGen|tick[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(12));

-- Location: LCCOMB_X3_Y7_N6
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~26_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(13) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(13) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(13)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(13),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~25\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~26_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\);

-- Location: LCCOMB_X3_Y7_N26
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~54_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~26_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~54_combout\);

-- Location: FF_X3_Y7_N27
\HCRS04_sens|Sens|Inst_TriggerGen|tick[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(13));

-- Location: LCCOMB_X3_Y7_N8
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~28_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(14) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(14) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\ $ 
-- (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(14) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(14),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~27\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~28_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\);

-- Location: LCCOMB_X3_Y7_N20
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~55_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~28_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~55_combout\);

-- Location: FF_X3_Y7_N21
\HCRS04_sens|Sens|Inst_TriggerGen|tick[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(14));

-- Location: LCCOMB_X2_Y7_N16
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(12)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(14)) # (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(12),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(14),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(13),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4_combout\);

-- Location: LCCOMB_X3_Y7_N10
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~30_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(15) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(15) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(15)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(15),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~29\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~30_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\);

-- Location: LCCOMB_X3_Y7_N22
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~56_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~30_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~56_combout\);

-- Location: FF_X3_Y7_N23
\HCRS04_sens|Sens|Inst_TriggerGen|tick[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(15));

-- Location: LCCOMB_X3_Y7_N12
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~32_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(16) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(16) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\ $ 
-- (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(16) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(16),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~31\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~32_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\);

-- Location: LCCOMB_X3_Y7_N24
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~57_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~32_combout\,
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~57_combout\);

-- Location: FF_X3_Y7_N25
\HCRS04_sens|Sens|Inst_TriggerGen|tick[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(16));

-- Location: LCCOMB_X2_Y7_N10
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(17)) # (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(17),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(16),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y8_N26
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(11) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(10) & \HCRS04_sens|Sens|Inst_TriggerGen|tick\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(11),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(10),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(9),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6_combout\);

-- Location: LCCOMB_X3_Y8_N10
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(1)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(3)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(0)) # (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(1),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(3),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(0),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(2),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y8_N2
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(6) & ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(5)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(4) & 
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(6),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(4),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~1_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(5),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y8_N16
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6_combout\ & ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(7)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(8)) # 
-- (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(7),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(8),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~6_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~2_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y8_N18
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0_combout\) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(15) & ((\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4_combout\) # 
-- (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~4_combout\,
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(15),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~0_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~3_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\);

-- Location: LCCOMB_X3_Y7_N14
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~34_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(17) & ((\HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\) # (GND))) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(17) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\ = CARRY((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(17)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(17),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~33\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~34_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\);

-- Location: LCCOMB_X2_Y8_N8
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~36_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~34_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~36_combout\);

-- Location: FF_X2_Y8_N9
\HCRS04_sens|Sens|Inst_TriggerGen|tick[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(17));

-- Location: LCCOMB_X3_Y7_N16
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~37_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18) & (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\ & VCC)) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18) & (\HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\ $ 
-- (GND)))
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~38\ = CARRY((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18) & !\HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~35\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~37_combout\,
	cout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~38\);

-- Location: LCCOMB_X3_Y7_N28
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~39_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~37_combout\,
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~39_combout\);

-- Location: FF_X3_Y7_N29
\HCRS04_sens|Sens|Inst_TriggerGen|tick[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18));

-- Location: LCCOMB_X3_Y7_N18
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~40_combout\ = \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) $ (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~38\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	cin => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~38\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~40_combout\);

-- Location: LCCOMB_X2_Y8_N10
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~42_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~40_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~42_combout\);

-- Location: FF_X2_Y8_N11
\HCRS04_sens|Sens|Inst_TriggerGen|tick[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19));

-- Location: LCCOMB_X2_Y8_N30
\HCRS04_sens|Sens|Inst_TriggerGen|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|Add0~52_combout\ = ((!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & ((!\HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\) # (!\HCRS04_sens|Sens|Inst_TriggerGen|tick\(18))))) # 
-- (!\HCRS04_sens|Sens|Inst_TriggerGen|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~20_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan0~5_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~52_combout\);

-- Location: FF_X2_Y8_N31
\HCRS04_sens|Sens|Inst_TriggerGen|tick[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_TriggerGen|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(10));

-- Location: LCCOMB_X2_Y8_N22
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(10) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(11) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(9) & \HCRS04_sens|Sens|Inst_TriggerGen|tick\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(10),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(11),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(9),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(12),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3_combout\);

-- Location: LCCOMB_X2_Y8_N24
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(19) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(17) & \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(19),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(17),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(18),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y8_N20
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(8)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(7)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(3) & \HCRS04_sens|Sens|Inst_TriggerGen|tick\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(8),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(7),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(3),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(2),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1_combout\);

-- Location: LCCOMB_X2_Y8_N4
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(5)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(4)) # ((\HCRS04_sens|Sens|Inst_TriggerGen|tick\(6)) # 
-- (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(5),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(4),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(6),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~1_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y7_N30
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(13) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(14) & (\HCRS04_sens|Sens|Inst_TriggerGen|tick\(15) & \HCRS04_sens|Sens|Inst_TriggerGen|tick\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(13),
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(14),
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(15),
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|tick\(16),
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4_combout\);

-- Location: LCCOMB_X2_Y8_N0
\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5_combout\ = (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3_combout\ & (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0_combout\ & (\HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2_combout\ & 
-- \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~3_combout\,
	datab => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~0_combout\,
	datac => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~2_combout\,
	datad => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~4_combout\,
	combout => \HCRS04_sens|Sens|Inst_TriggerGen|LessThan1~5_combout\);

-- Location: LCCOMB_X11_Y8_N4
\clk_10kHz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~0_combout\ = \clk_10kHz|cuenta\(0) $ (VCC)
-- \clk_10kHz|Add0~1\ = CARRY(\clk_10kHz|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(0),
	datad => VCC,
	combout => \clk_10kHz|Add0~0_combout\,
	cout => \clk_10kHz|Add0~1\);

-- Location: LCCOMB_X11_Y8_N2
\clk_10kHz|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~5_combout\ = (\clk_10kHz|Add0~0_combout\ & !\clk_10kHz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_10kHz|Add0~0_combout\,
	datad => \clk_10kHz|Equal0~8_combout\,
	combout => \clk_10kHz|cuenta~5_combout\);

-- Location: FF_X11_Y8_N3
\clk_10kHz|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(0));

-- Location: LCCOMB_X11_Y8_N6
\clk_10kHz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~2_combout\ = (\clk_10kHz|cuenta\(1) & (!\clk_10kHz|Add0~1\)) # (!\clk_10kHz|cuenta\(1) & ((\clk_10kHz|Add0~1\) # (GND)))
-- \clk_10kHz|Add0~3\ = CARRY((!\clk_10kHz|Add0~1\) # (!\clk_10kHz|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(1),
	datad => VCC,
	cin => \clk_10kHz|Add0~1\,
	combout => \clk_10kHz|Add0~2_combout\,
	cout => \clk_10kHz|Add0~3\);

-- Location: FF_X11_Y8_N7
\clk_10kHz|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(1));

-- Location: LCCOMB_X11_Y8_N8
\clk_10kHz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~4_combout\ = (\clk_10kHz|cuenta\(2) & (\clk_10kHz|Add0~3\ $ (GND))) # (!\clk_10kHz|cuenta\(2) & (!\clk_10kHz|Add0~3\ & VCC))
-- \clk_10kHz|Add0~5\ = CARRY((\clk_10kHz|cuenta\(2) & !\clk_10kHz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(2),
	datad => VCC,
	cin => \clk_10kHz|Add0~3\,
	combout => \clk_10kHz|Add0~4_combout\,
	cout => \clk_10kHz|Add0~5\);

-- Location: LCCOMB_X11_Y8_N0
\clk_10kHz|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~4_combout\ = (\clk_10kHz|Add0~4_combout\ & !\clk_10kHz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_10kHz|Add0~4_combout\,
	datad => \clk_10kHz|Equal0~8_combout\,
	combout => \clk_10kHz|cuenta~4_combout\);

-- Location: FF_X11_Y8_N1
\clk_10kHz|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(2));

-- Location: LCCOMB_X11_Y8_N10
\clk_10kHz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~6_combout\ = (\clk_10kHz|cuenta\(3) & (!\clk_10kHz|Add0~5\)) # (!\clk_10kHz|cuenta\(3) & ((\clk_10kHz|Add0~5\) # (GND)))
-- \clk_10kHz|Add0~7\ = CARRY((!\clk_10kHz|Add0~5\) # (!\clk_10kHz|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(3),
	datad => VCC,
	cin => \clk_10kHz|Add0~5\,
	combout => \clk_10kHz|Add0~6_combout\,
	cout => \clk_10kHz|Add0~7\);

-- Location: FF_X11_Y8_N11
\clk_10kHz|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(3));

-- Location: LCCOMB_X10_Y8_N22
\clk_10kHz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~6_combout\ = (!\clk_10kHz|cuenta\(0) & (\clk_10kHz|cuenta\(2) & (!\clk_10kHz|cuenta\(3) & !\clk_10kHz|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(0),
	datab => \clk_10kHz|cuenta\(2),
	datac => \clk_10kHz|cuenta\(3),
	datad => \clk_10kHz|cuenta\(1),
	combout => \clk_10kHz|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y8_N12
\clk_10kHz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~8_combout\ = (\clk_10kHz|cuenta\(4) & (\clk_10kHz|Add0~7\ $ (GND))) # (!\clk_10kHz|cuenta\(4) & (!\clk_10kHz|Add0~7\ & VCC))
-- \clk_10kHz|Add0~9\ = CARRY((\clk_10kHz|cuenta\(4) & !\clk_10kHz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(4),
	datad => VCC,
	cin => \clk_10kHz|Add0~7\,
	combout => \clk_10kHz|Add0~8_combout\,
	cout => \clk_10kHz|Add0~9\);

-- Location: FF_X11_Y8_N13
\clk_10kHz|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(4));

-- Location: LCCOMB_X11_Y8_N14
\clk_10kHz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~10_combout\ = (\clk_10kHz|cuenta\(5) & (!\clk_10kHz|Add0~9\)) # (!\clk_10kHz|cuenta\(5) & ((\clk_10kHz|Add0~9\) # (GND)))
-- \clk_10kHz|Add0~11\ = CARRY((!\clk_10kHz|Add0~9\) # (!\clk_10kHz|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(5),
	datad => VCC,
	cin => \clk_10kHz|Add0~9\,
	combout => \clk_10kHz|Add0~10_combout\,
	cout => \clk_10kHz|Add0~11\);

-- Location: FF_X11_Y8_N15
\clk_10kHz|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(5));

-- Location: LCCOMB_X11_Y8_N16
\clk_10kHz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~12_combout\ = (\clk_10kHz|cuenta\(6) & (\clk_10kHz|Add0~11\ $ (GND))) # (!\clk_10kHz|cuenta\(6) & (!\clk_10kHz|Add0~11\ & VCC))
-- \clk_10kHz|Add0~13\ = CARRY((\clk_10kHz|cuenta\(6) & !\clk_10kHz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(6),
	datad => VCC,
	cin => \clk_10kHz|Add0~11\,
	combout => \clk_10kHz|Add0~12_combout\,
	cout => \clk_10kHz|Add0~13\);

-- Location: LCCOMB_X10_Y8_N16
\clk_10kHz|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~3_combout\ = (!\clk_10kHz|Equal0~8_combout\ & \clk_10kHz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|Equal0~8_combout\,
	datad => \clk_10kHz|Add0~12_combout\,
	combout => \clk_10kHz|cuenta~3_combout\);

-- Location: FF_X10_Y8_N17
\clk_10kHz|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(6));

-- Location: LCCOMB_X11_Y8_N18
\clk_10kHz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~14_combout\ = (\clk_10kHz|cuenta\(7) & (!\clk_10kHz|Add0~13\)) # (!\clk_10kHz|cuenta\(7) & ((\clk_10kHz|Add0~13\) # (GND)))
-- \clk_10kHz|Add0~15\ = CARRY((!\clk_10kHz|Add0~13\) # (!\clk_10kHz|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(7),
	datad => VCC,
	cin => \clk_10kHz|Add0~13\,
	combout => \clk_10kHz|Add0~14_combout\,
	cout => \clk_10kHz|Add0~15\);

-- Location: LCCOMB_X10_Y8_N0
\clk_10kHz|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~2_combout\ = (!\clk_10kHz|Equal0~8_combout\ & \clk_10kHz|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|Equal0~8_combout\,
	datac => \clk_10kHz|Add0~14_combout\,
	combout => \clk_10kHz|cuenta~2_combout\);

-- Location: FF_X10_Y8_N1
\clk_10kHz|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(7));

-- Location: LCCOMB_X11_Y8_N20
\clk_10kHz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~16_combout\ = (\clk_10kHz|cuenta\(8) & (\clk_10kHz|Add0~15\ $ (GND))) # (!\clk_10kHz|cuenta\(8) & (!\clk_10kHz|Add0~15\ & VCC))
-- \clk_10kHz|Add0~17\ = CARRY((\clk_10kHz|cuenta\(8) & !\clk_10kHz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(8),
	datad => VCC,
	cin => \clk_10kHz|Add0~15\,
	combout => \clk_10kHz|Add0~16_combout\,
	cout => \clk_10kHz|Add0~17\);

-- Location: LCCOMB_X10_Y8_N6
\clk_10kHz|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~1_combout\ = (\clk_10kHz|Add0~16_combout\ & !\clk_10kHz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_10kHz|Add0~16_combout\,
	datad => \clk_10kHz|Equal0~8_combout\,
	combout => \clk_10kHz|cuenta~1_combout\);

-- Location: FF_X10_Y8_N7
\clk_10kHz|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(8));

-- Location: LCCOMB_X11_Y8_N22
\clk_10kHz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~18_combout\ = (\clk_10kHz|cuenta\(9) & (!\clk_10kHz|Add0~17\)) # (!\clk_10kHz|cuenta\(9) & ((\clk_10kHz|Add0~17\) # (GND)))
-- \clk_10kHz|Add0~19\ = CARRY((!\clk_10kHz|Add0~17\) # (!\clk_10kHz|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(9),
	datad => VCC,
	cin => \clk_10kHz|Add0~17\,
	combout => \clk_10kHz|Add0~18_combout\,
	cout => \clk_10kHz|Add0~19\);

-- Location: FF_X11_Y8_N23
\clk_10kHz|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(9));

-- Location: LCCOMB_X11_Y8_N24
\clk_10kHz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~20_combout\ = (\clk_10kHz|cuenta\(10) & (\clk_10kHz|Add0~19\ $ (GND))) # (!\clk_10kHz|cuenta\(10) & (!\clk_10kHz|Add0~19\ & VCC))
-- \clk_10kHz|Add0~21\ = CARRY((\clk_10kHz|cuenta\(10) & !\clk_10kHz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(10),
	datad => VCC,
	cin => \clk_10kHz|Add0~19\,
	combout => \clk_10kHz|Add0~20_combout\,
	cout => \clk_10kHz|Add0~21\);

-- Location: FF_X11_Y8_N25
\clk_10kHz|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(10));

-- Location: LCCOMB_X11_Y8_N26
\clk_10kHz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~22_combout\ = (\clk_10kHz|cuenta\(11) & (!\clk_10kHz|Add0~21\)) # (!\clk_10kHz|cuenta\(11) & ((\clk_10kHz|Add0~21\) # (GND)))
-- \clk_10kHz|Add0~23\ = CARRY((!\clk_10kHz|Add0~21\) # (!\clk_10kHz|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(11),
	datad => VCC,
	cin => \clk_10kHz|Add0~21\,
	combout => \clk_10kHz|Add0~22_combout\,
	cout => \clk_10kHz|Add0~23\);

-- Location: LCCOMB_X10_Y8_N14
\clk_10kHz|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|cuenta~0_combout\ = (!\clk_10kHz|Equal0~8_combout\ & \clk_10kHz|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|Equal0~8_combout\,
	datac => \clk_10kHz|Add0~22_combout\,
	combout => \clk_10kHz|cuenta~0_combout\);

-- Location: FF_X10_Y8_N15
\clk_10kHz|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(11));

-- Location: LCCOMB_X11_Y8_N28
\clk_10kHz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~24_combout\ = (\clk_10kHz|cuenta\(12) & (\clk_10kHz|Add0~23\ $ (GND))) # (!\clk_10kHz|cuenta\(12) & (!\clk_10kHz|Add0~23\ & VCC))
-- \clk_10kHz|Add0~25\ = CARRY((\clk_10kHz|cuenta\(12) & !\clk_10kHz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(12),
	datad => VCC,
	cin => \clk_10kHz|Add0~23\,
	combout => \clk_10kHz|Add0~24_combout\,
	cout => \clk_10kHz|Add0~25\);

-- Location: FF_X11_Y8_N29
\clk_10kHz|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(12));

-- Location: LCCOMB_X11_Y8_N30
\clk_10kHz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~26_combout\ = (\clk_10kHz|cuenta\(13) & (!\clk_10kHz|Add0~25\)) # (!\clk_10kHz|cuenta\(13) & ((\clk_10kHz|Add0~25\) # (GND)))
-- \clk_10kHz|Add0~27\ = CARRY((!\clk_10kHz|Add0~25\) # (!\clk_10kHz|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(13),
	datad => VCC,
	cin => \clk_10kHz|Add0~25\,
	combout => \clk_10kHz|Add0~26_combout\,
	cout => \clk_10kHz|Add0~27\);

-- Location: FF_X11_Y8_N31
\clk_10kHz|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(13));

-- Location: LCCOMB_X11_Y7_N0
\clk_10kHz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~28_combout\ = (\clk_10kHz|cuenta\(14) & (\clk_10kHz|Add0~27\ $ (GND))) # (!\clk_10kHz|cuenta\(14) & (!\clk_10kHz|Add0~27\ & VCC))
-- \clk_10kHz|Add0~29\ = CARRY((\clk_10kHz|cuenta\(14) & !\clk_10kHz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(14),
	datad => VCC,
	cin => \clk_10kHz|Add0~27\,
	combout => \clk_10kHz|Add0~28_combout\,
	cout => \clk_10kHz|Add0~29\);

-- Location: FF_X11_Y7_N1
\clk_10kHz|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(14));

-- Location: LCCOMB_X11_Y7_N2
\clk_10kHz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~30_combout\ = (\clk_10kHz|cuenta\(15) & (!\clk_10kHz|Add0~29\)) # (!\clk_10kHz|cuenta\(15) & ((\clk_10kHz|Add0~29\) # (GND)))
-- \clk_10kHz|Add0~31\ = CARRY((!\clk_10kHz|Add0~29\) # (!\clk_10kHz|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(15),
	datad => VCC,
	cin => \clk_10kHz|Add0~29\,
	combout => \clk_10kHz|Add0~30_combout\,
	cout => \clk_10kHz|Add0~31\);

-- Location: FF_X11_Y7_N3
\clk_10kHz|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(15));

-- Location: LCCOMB_X11_Y7_N4
\clk_10kHz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~32_combout\ = (\clk_10kHz|cuenta\(16) & (\clk_10kHz|Add0~31\ $ (GND))) # (!\clk_10kHz|cuenta\(16) & (!\clk_10kHz|Add0~31\ & VCC))
-- \clk_10kHz|Add0~33\ = CARRY((\clk_10kHz|cuenta\(16) & !\clk_10kHz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(16),
	datad => VCC,
	cin => \clk_10kHz|Add0~31\,
	combout => \clk_10kHz|Add0~32_combout\,
	cout => \clk_10kHz|Add0~33\);

-- Location: FF_X11_Y7_N5
\clk_10kHz|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(16));

-- Location: LCCOMB_X11_Y7_N6
\clk_10kHz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~34_combout\ = (\clk_10kHz|cuenta\(17) & (!\clk_10kHz|Add0~33\)) # (!\clk_10kHz|cuenta\(17) & ((\clk_10kHz|Add0~33\) # (GND)))
-- \clk_10kHz|Add0~35\ = CARRY((!\clk_10kHz|Add0~33\) # (!\clk_10kHz|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(17),
	datad => VCC,
	cin => \clk_10kHz|Add0~33\,
	combout => \clk_10kHz|Add0~34_combout\,
	cout => \clk_10kHz|Add0~35\);

-- Location: FF_X11_Y7_N7
\clk_10kHz|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(17));

-- Location: LCCOMB_X11_Y7_N8
\clk_10kHz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~36_combout\ = (\clk_10kHz|cuenta\(18) & (\clk_10kHz|Add0~35\ $ (GND))) # (!\clk_10kHz|cuenta\(18) & (!\clk_10kHz|Add0~35\ & VCC))
-- \clk_10kHz|Add0~37\ = CARRY((\clk_10kHz|cuenta\(18) & !\clk_10kHz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(18),
	datad => VCC,
	cin => \clk_10kHz|Add0~35\,
	combout => \clk_10kHz|Add0~36_combout\,
	cout => \clk_10kHz|Add0~37\);

-- Location: FF_X11_Y7_N9
\clk_10kHz|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(18));

-- Location: LCCOMB_X11_Y7_N10
\clk_10kHz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~38_combout\ = (\clk_10kHz|cuenta\(19) & (!\clk_10kHz|Add0~37\)) # (!\clk_10kHz|cuenta\(19) & ((\clk_10kHz|Add0~37\) # (GND)))
-- \clk_10kHz|Add0~39\ = CARRY((!\clk_10kHz|Add0~37\) # (!\clk_10kHz|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(19),
	datad => VCC,
	cin => \clk_10kHz|Add0~37\,
	combout => \clk_10kHz|Add0~38_combout\,
	cout => \clk_10kHz|Add0~39\);

-- Location: FF_X11_Y7_N11
\clk_10kHz|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(19));

-- Location: LCCOMB_X11_Y7_N12
\clk_10kHz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~40_combout\ = (\clk_10kHz|cuenta\(20) & (\clk_10kHz|Add0~39\ $ (GND))) # (!\clk_10kHz|cuenta\(20) & (!\clk_10kHz|Add0~39\ & VCC))
-- \clk_10kHz|Add0~41\ = CARRY((\clk_10kHz|cuenta\(20) & !\clk_10kHz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(20),
	datad => VCC,
	cin => \clk_10kHz|Add0~39\,
	combout => \clk_10kHz|Add0~40_combout\,
	cout => \clk_10kHz|Add0~41\);

-- Location: FF_X11_Y7_N13
\clk_10kHz|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(20));

-- Location: LCCOMB_X11_Y7_N14
\clk_10kHz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~42_combout\ = (\clk_10kHz|cuenta\(21) & (!\clk_10kHz|Add0~41\)) # (!\clk_10kHz|cuenta\(21) & ((\clk_10kHz|Add0~41\) # (GND)))
-- \clk_10kHz|Add0~43\ = CARRY((!\clk_10kHz|Add0~41\) # (!\clk_10kHz|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(21),
	datad => VCC,
	cin => \clk_10kHz|Add0~41\,
	combout => \clk_10kHz|Add0~42_combout\,
	cout => \clk_10kHz|Add0~43\);

-- Location: FF_X11_Y7_N15
\clk_10kHz|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(21));

-- Location: LCCOMB_X11_Y7_N16
\clk_10kHz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~44_combout\ = (\clk_10kHz|cuenta\(22) & (\clk_10kHz|Add0~43\ $ (GND))) # (!\clk_10kHz|cuenta\(22) & (!\clk_10kHz|Add0~43\ & VCC))
-- \clk_10kHz|Add0~45\ = CARRY((\clk_10kHz|cuenta\(22) & !\clk_10kHz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(22),
	datad => VCC,
	cin => \clk_10kHz|Add0~43\,
	combout => \clk_10kHz|Add0~44_combout\,
	cout => \clk_10kHz|Add0~45\);

-- Location: FF_X11_Y7_N17
\clk_10kHz|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(22));

-- Location: LCCOMB_X11_Y7_N18
\clk_10kHz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~46_combout\ = (\clk_10kHz|cuenta\(23) & (!\clk_10kHz|Add0~45\)) # (!\clk_10kHz|cuenta\(23) & ((\clk_10kHz|Add0~45\) # (GND)))
-- \clk_10kHz|Add0~47\ = CARRY((!\clk_10kHz|Add0~45\) # (!\clk_10kHz|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(23),
	datad => VCC,
	cin => \clk_10kHz|Add0~45\,
	combout => \clk_10kHz|Add0~46_combout\,
	cout => \clk_10kHz|Add0~47\);

-- Location: FF_X11_Y7_N19
\clk_10kHz|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(23));

-- Location: LCCOMB_X11_Y7_N20
\clk_10kHz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~48_combout\ = (\clk_10kHz|cuenta\(24) & (\clk_10kHz|Add0~47\ $ (GND))) # (!\clk_10kHz|cuenta\(24) & (!\clk_10kHz|Add0~47\ & VCC))
-- \clk_10kHz|Add0~49\ = CARRY((\clk_10kHz|cuenta\(24) & !\clk_10kHz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(24),
	datad => VCC,
	cin => \clk_10kHz|Add0~47\,
	combout => \clk_10kHz|Add0~48_combout\,
	cout => \clk_10kHz|Add0~49\);

-- Location: FF_X11_Y7_N21
\clk_10kHz|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(24));

-- Location: LCCOMB_X11_Y7_N22
\clk_10kHz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~50_combout\ = (\clk_10kHz|cuenta\(25) & (!\clk_10kHz|Add0~49\)) # (!\clk_10kHz|cuenta\(25) & ((\clk_10kHz|Add0~49\) # (GND)))
-- \clk_10kHz|Add0~51\ = CARRY((!\clk_10kHz|Add0~49\) # (!\clk_10kHz|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(25),
	datad => VCC,
	cin => \clk_10kHz|Add0~49\,
	combout => \clk_10kHz|Add0~50_combout\,
	cout => \clk_10kHz|Add0~51\);

-- Location: FF_X11_Y7_N23
\clk_10kHz|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(25));

-- Location: LCCOMB_X11_Y7_N24
\clk_10kHz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~52_combout\ = (\clk_10kHz|cuenta\(26) & (\clk_10kHz|Add0~51\ $ (GND))) # (!\clk_10kHz|cuenta\(26) & (!\clk_10kHz|Add0~51\ & VCC))
-- \clk_10kHz|Add0~53\ = CARRY((\clk_10kHz|cuenta\(26) & !\clk_10kHz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|cuenta\(26),
	datad => VCC,
	cin => \clk_10kHz|Add0~51\,
	combout => \clk_10kHz|Add0~52_combout\,
	cout => \clk_10kHz|Add0~53\);

-- Location: FF_X11_Y7_N25
\clk_10kHz|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(26));

-- Location: LCCOMB_X11_Y7_N26
\clk_10kHz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Add0~54_combout\ = \clk_10kHz|cuenta\(27) $ (\clk_10kHz|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(27),
	cin => \clk_10kHz|Add0~53\,
	combout => \clk_10kHz|Add0~54_combout\);

-- Location: FF_X11_Y7_N27
\clk_10kHz|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|cuenta\(27));

-- Location: LCCOMB_X10_Y7_N0
\clk_10kHz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~7_combout\ = (!\clk_10kHz|cuenta\(26) & (!\clk_10kHz|cuenta\(25) & (!\clk_10kHz|cuenta\(24) & !\clk_10kHz|cuenta\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(26),
	datab => \clk_10kHz|cuenta\(25),
	datac => \clk_10kHz|cuenta\(24),
	datad => \clk_10kHz|cuenta\(27),
	combout => \clk_10kHz|Equal0~7_combout\);

-- Location: LCCOMB_X10_Y8_N26
\clk_10kHz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~5_combout\ = (!\clk_10kHz|cuenta\(5) & (\clk_10kHz|cuenta\(6) & (\clk_10kHz|cuenta\(7) & !\clk_10kHz|cuenta\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(5),
	datab => \clk_10kHz|cuenta\(6),
	datac => \clk_10kHz|cuenta\(7),
	datad => \clk_10kHz|cuenta\(4),
	combout => \clk_10kHz|Equal0~5_combout\);

-- Location: LCCOMB_X10_Y8_N12
\clk_10kHz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~3_combout\ = (\clk_10kHz|cuenta\(8) & (\clk_10kHz|cuenta\(11) & (!\clk_10kHz|cuenta\(10) & !\clk_10kHz|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(8),
	datab => \clk_10kHz|cuenta\(11),
	datac => \clk_10kHz|cuenta\(10),
	datad => \clk_10kHz|cuenta\(9),
	combout => \clk_10kHz|Equal0~3_combout\);

-- Location: LCCOMB_X10_Y8_N18
\clk_10kHz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~2_combout\ = (!\clk_10kHz|cuenta\(13) & (!\clk_10kHz|cuenta\(12) & (!\clk_10kHz|cuenta\(15) & !\clk_10kHz|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(13),
	datab => \clk_10kHz|cuenta\(12),
	datac => \clk_10kHz|cuenta\(15),
	datad => \clk_10kHz|cuenta\(14),
	combout => \clk_10kHz|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y7_N30
\clk_10kHz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~1_combout\ = (!\clk_10kHz|cuenta\(17) & (!\clk_10kHz|cuenta\(16) & (!\clk_10kHz|cuenta\(18) & !\clk_10kHz|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(17),
	datab => \clk_10kHz|cuenta\(16),
	datac => \clk_10kHz|cuenta\(18),
	datad => \clk_10kHz|cuenta\(19),
	combout => \clk_10kHz|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y7_N28
\clk_10kHz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~0_combout\ = (!\clk_10kHz|cuenta\(20) & (!\clk_10kHz|cuenta\(23) & (!\clk_10kHz|cuenta\(21) & !\clk_10kHz|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|cuenta\(20),
	datab => \clk_10kHz|cuenta\(23),
	datac => \clk_10kHz|cuenta\(21),
	datad => \clk_10kHz|cuenta\(22),
	combout => \clk_10kHz|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y8_N28
\clk_10kHz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~4_combout\ = (\clk_10kHz|Equal0~3_combout\ & (\clk_10kHz|Equal0~2_combout\ & (\clk_10kHz|Equal0~1_combout\ & \clk_10kHz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|Equal0~3_combout\,
	datab => \clk_10kHz|Equal0~2_combout\,
	datac => \clk_10kHz|Equal0~1_combout\,
	datad => \clk_10kHz|Equal0~0_combout\,
	combout => \clk_10kHz|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y8_N10
\clk_10kHz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|Equal0~8_combout\ = (\clk_10kHz|Equal0~6_combout\ & (\clk_10kHz|Equal0~7_combout\ & (\clk_10kHz|Equal0~5_combout\ & \clk_10kHz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|Equal0~6_combout\,
	datab => \clk_10kHz|Equal0~7_combout\,
	datac => \clk_10kHz|Equal0~5_combout\,
	datad => \clk_10kHz|Equal0~4_combout\,
	combout => \clk_10kHz|Equal0~8_combout\);

-- Location: LCCOMB_X10_Y8_N20
\clk_10kHz|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|salida~0_combout\ = \clk_10kHz|salida~q\ $ (\clk_10kHz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_10kHz|salida~q\,
	datad => \clk_10kHz|Equal0~8_combout\,
	combout => \clk_10kHz|salida~0_combout\);

-- Location: LCCOMB_X10_Y8_N30
\clk_10kHz|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_10kHz|salida~feeder_combout\ = \clk_10kHz|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_10kHz|salida~0_combout\,
	combout => \clk_10kHz|salida~feeder_combout\);

-- Location: FF_X10_Y8_N31
\clk_10kHz|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_10kHz|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_10kHz|salida~q\);

-- Location: CLKCTRL_G4
\clk_10kHz|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_10kHz|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_10kHz|salida~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N30
\clk_1Hz|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|salida~0_combout\ = !\clk_1Hz|salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|salida~q\,
	combout => \clk_1Hz|salida~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\clk_1Hz|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|salida~feeder_combout\ = \clk_1Hz|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|salida~0_combout\,
	combout => \clk_1Hz|salida~feeder_combout\);

-- Location: LCCOMB_X32_Y12_N4
\clk_1Hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~0_combout\ = \clk_1Hz|cuenta\(0) $ (VCC)
-- \clk_1Hz|Add0~1\ = CARRY(\clk_1Hz|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(0),
	datad => VCC,
	combout => \clk_1Hz|Add0~0_combout\,
	cout => \clk_1Hz|Add0~1\);

-- Location: LCCOMB_X31_Y12_N16
\clk_1Hz|cuenta~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~11_combout\ = (\clk_1Hz|Add0~0_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|Add0~0_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~11_combout\);

-- Location: FF_X31_Y12_N17
\clk_1Hz|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(0));

-- Location: LCCOMB_X32_Y12_N6
\clk_1Hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~2_combout\ = (\clk_1Hz|cuenta\(1) & (!\clk_1Hz|Add0~1\)) # (!\clk_1Hz|cuenta\(1) & ((\clk_1Hz|Add0~1\) # (GND)))
-- \clk_1Hz|Add0~3\ = CARRY((!\clk_1Hz|Add0~1\) # (!\clk_1Hz|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(1),
	datad => VCC,
	cin => \clk_1Hz|Add0~1\,
	combout => \clk_1Hz|Add0~2_combout\,
	cout => \clk_1Hz|Add0~3\);

-- Location: FF_X32_Y12_N7
\clk_1Hz|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(1));

-- Location: LCCOMB_X32_Y12_N8
\clk_1Hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~4_combout\ = (\clk_1Hz|cuenta\(2) & (\clk_1Hz|Add0~3\ $ (GND))) # (!\clk_1Hz|cuenta\(2) & (!\clk_1Hz|Add0~3\ & VCC))
-- \clk_1Hz|Add0~5\ = CARRY((\clk_1Hz|cuenta\(2) & !\clk_1Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(2),
	datad => VCC,
	cin => \clk_1Hz|Add0~3\,
	combout => \clk_1Hz|Add0~4_combout\,
	cout => \clk_1Hz|Add0~5\);

-- Location: FF_X32_Y12_N9
\clk_1Hz|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(2));

-- Location: LCCOMB_X32_Y12_N10
\clk_1Hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~6_combout\ = (\clk_1Hz|cuenta\(3) & (!\clk_1Hz|Add0~5\)) # (!\clk_1Hz|cuenta\(3) & ((\clk_1Hz|Add0~5\) # (GND)))
-- \clk_1Hz|Add0~7\ = CARRY((!\clk_1Hz|Add0~5\) # (!\clk_1Hz|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(3),
	datad => VCC,
	cin => \clk_1Hz|Add0~5\,
	combout => \clk_1Hz|Add0~6_combout\,
	cout => \clk_1Hz|Add0~7\);

-- Location: FF_X32_Y12_N11
\clk_1Hz|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(3));

-- Location: LCCOMB_X32_Y12_N12
\clk_1Hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~8_combout\ = (\clk_1Hz|cuenta\(4) & (\clk_1Hz|Add0~7\ $ (GND))) # (!\clk_1Hz|cuenta\(4) & (!\clk_1Hz|Add0~7\ & VCC))
-- \clk_1Hz|Add0~9\ = CARRY((\clk_1Hz|cuenta\(4) & !\clk_1Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(4),
	datad => VCC,
	cin => \clk_1Hz|Add0~7\,
	combout => \clk_1Hz|Add0~8_combout\,
	cout => \clk_1Hz|Add0~9\);

-- Location: FF_X32_Y12_N13
\clk_1Hz|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(4));

-- Location: LCCOMB_X32_Y12_N14
\clk_1Hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~10_combout\ = (\clk_1Hz|cuenta\(5) & (!\clk_1Hz|Add0~9\)) # (!\clk_1Hz|cuenta\(5) & ((\clk_1Hz|Add0~9\) # (GND)))
-- \clk_1Hz|Add0~11\ = CARRY((!\clk_1Hz|Add0~9\) # (!\clk_1Hz|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(5),
	datad => VCC,
	cin => \clk_1Hz|Add0~9\,
	combout => \clk_1Hz|Add0~10_combout\,
	cout => \clk_1Hz|Add0~11\);

-- Location: FF_X32_Y12_N15
\clk_1Hz|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(5));

-- Location: LCCOMB_X32_Y12_N16
\clk_1Hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~12_combout\ = (\clk_1Hz|cuenta\(6) & (\clk_1Hz|Add0~11\ $ (GND))) # (!\clk_1Hz|cuenta\(6) & (!\clk_1Hz|Add0~11\ & VCC))
-- \clk_1Hz|Add0~13\ = CARRY((\clk_1Hz|cuenta\(6) & !\clk_1Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(6),
	datad => VCC,
	cin => \clk_1Hz|Add0~11\,
	combout => \clk_1Hz|Add0~12_combout\,
	cout => \clk_1Hz|Add0~13\);

-- Location: LCCOMB_X32_Y12_N2
\clk_1Hz|cuenta~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~10_combout\ = (\clk_1Hz|Add0~12_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|Add0~12_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~10_combout\);

-- Location: FF_X32_Y12_N3
\clk_1Hz|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(6));

-- Location: LCCOMB_X32_Y12_N18
\clk_1Hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~14_combout\ = (\clk_1Hz|cuenta\(7) & (!\clk_1Hz|Add0~13\)) # (!\clk_1Hz|cuenta\(7) & ((\clk_1Hz|Add0~13\) # (GND)))
-- \clk_1Hz|Add0~15\ = CARRY((!\clk_1Hz|Add0~13\) # (!\clk_1Hz|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(7),
	datad => VCC,
	cin => \clk_1Hz|Add0~13\,
	combout => \clk_1Hz|Add0~14_combout\,
	cout => \clk_1Hz|Add0~15\);

-- Location: FF_X32_Y12_N19
\clk_1Hz|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(7));

-- Location: LCCOMB_X32_Y12_N20
\clk_1Hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~16_combout\ = (\clk_1Hz|cuenta\(8) & (\clk_1Hz|Add0~15\ $ (GND))) # (!\clk_1Hz|cuenta\(8) & (!\clk_1Hz|Add0~15\ & VCC))
-- \clk_1Hz|Add0~17\ = CARRY((\clk_1Hz|cuenta\(8) & !\clk_1Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(8),
	datad => VCC,
	cin => \clk_1Hz|Add0~15\,
	combout => \clk_1Hz|Add0~16_combout\,
	cout => \clk_1Hz|Add0~17\);

-- Location: FF_X32_Y12_N21
\clk_1Hz|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(8));

-- Location: LCCOMB_X32_Y12_N22
\clk_1Hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~18_combout\ = (\clk_1Hz|cuenta\(9) & (!\clk_1Hz|Add0~17\)) # (!\clk_1Hz|cuenta\(9) & ((\clk_1Hz|Add0~17\) # (GND)))
-- \clk_1Hz|Add0~19\ = CARRY((!\clk_1Hz|Add0~17\) # (!\clk_1Hz|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(9),
	datad => VCC,
	cin => \clk_1Hz|Add0~17\,
	combout => \clk_1Hz|Add0~18_combout\,
	cout => \clk_1Hz|Add0~19\);

-- Location: FF_X32_Y12_N23
\clk_1Hz|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(9));

-- Location: LCCOMB_X32_Y12_N24
\clk_1Hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~20_combout\ = (\clk_1Hz|cuenta\(10) & (\clk_1Hz|Add0~19\ $ (GND))) # (!\clk_1Hz|cuenta\(10) & (!\clk_1Hz|Add0~19\ & VCC))
-- \clk_1Hz|Add0~21\ = CARRY((\clk_1Hz|cuenta\(10) & !\clk_1Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(10),
	datad => VCC,
	cin => \clk_1Hz|Add0~19\,
	combout => \clk_1Hz|Add0~20_combout\,
	cout => \clk_1Hz|Add0~21\);

-- Location: FF_X32_Y12_N25
\clk_1Hz|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(10));

-- Location: LCCOMB_X32_Y12_N26
\clk_1Hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~22_combout\ = (\clk_1Hz|cuenta\(11) & (!\clk_1Hz|Add0~21\)) # (!\clk_1Hz|cuenta\(11) & ((\clk_1Hz|Add0~21\) # (GND)))
-- \clk_1Hz|Add0~23\ = CARRY((!\clk_1Hz|Add0~21\) # (!\clk_1Hz|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(11),
	datad => VCC,
	cin => \clk_1Hz|Add0~21\,
	combout => \clk_1Hz|Add0~22_combout\,
	cout => \clk_1Hz|Add0~23\);

-- Location: LCCOMB_X32_Y12_N0
\clk_1Hz|cuenta~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~9_combout\ = (\clk_1Hz|Add0~22_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~22_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~9_combout\);

-- Location: FF_X32_Y12_N1
\clk_1Hz|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(11));

-- Location: LCCOMB_X32_Y12_N28
\clk_1Hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~24_combout\ = (\clk_1Hz|cuenta\(12) & (\clk_1Hz|Add0~23\ $ (GND))) # (!\clk_1Hz|cuenta\(12) & (!\clk_1Hz|Add0~23\ & VCC))
-- \clk_1Hz|Add0~25\ = CARRY((\clk_1Hz|cuenta\(12) & !\clk_1Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(12),
	datad => VCC,
	cin => \clk_1Hz|Add0~23\,
	combout => \clk_1Hz|Add0~24_combout\,
	cout => \clk_1Hz|Add0~25\);

-- Location: LCCOMB_X31_Y11_N2
\clk_1Hz|cuenta~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~8_combout\ = (!\clk_1Hz|Equal0~8_combout\ & \clk_1Hz|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|Equal0~8_combout\,
	datac => \clk_1Hz|Add0~24_combout\,
	combout => \clk_1Hz|cuenta~8_combout\);

-- Location: FF_X31_Y11_N3
\clk_1Hz|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(12));

-- Location: LCCOMB_X32_Y12_N30
\clk_1Hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~26_combout\ = (\clk_1Hz|cuenta\(13) & (!\clk_1Hz|Add0~25\)) # (!\clk_1Hz|cuenta\(13) & ((\clk_1Hz|Add0~25\) # (GND)))
-- \clk_1Hz|Add0~27\ = CARRY((!\clk_1Hz|Add0~25\) # (!\clk_1Hz|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(13),
	datad => VCC,
	cin => \clk_1Hz|Add0~25\,
	combout => \clk_1Hz|Add0~26_combout\,
	cout => \clk_1Hz|Add0~27\);

-- Location: LCCOMB_X31_Y12_N8
\clk_1Hz|cuenta~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~7_combout\ = (\clk_1Hz|Add0~26_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~26_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~7_combout\);

-- Location: FF_X31_Y12_N9
\clk_1Hz|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(13));

-- Location: LCCOMB_X32_Y11_N0
\clk_1Hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~28_combout\ = (\clk_1Hz|cuenta\(14) & (\clk_1Hz|Add0~27\ $ (GND))) # (!\clk_1Hz|cuenta\(14) & (!\clk_1Hz|Add0~27\ & VCC))
-- \clk_1Hz|Add0~29\ = CARRY((\clk_1Hz|cuenta\(14) & !\clk_1Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(14),
	datad => VCC,
	cin => \clk_1Hz|Add0~27\,
	combout => \clk_1Hz|Add0~28_combout\,
	cout => \clk_1Hz|Add0~29\);

-- Location: LCCOMB_X31_Y11_N6
\clk_1Hz|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~6_combout\ = (\clk_1Hz|Add0~28_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~28_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~6_combout\);

-- Location: FF_X31_Y11_N7
\clk_1Hz|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(14));

-- Location: LCCOMB_X32_Y11_N2
\clk_1Hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~30_combout\ = (\clk_1Hz|cuenta\(15) & (!\clk_1Hz|Add0~29\)) # (!\clk_1Hz|cuenta\(15) & ((\clk_1Hz|Add0~29\) # (GND)))
-- \clk_1Hz|Add0~31\ = CARRY((!\clk_1Hz|Add0~29\) # (!\clk_1Hz|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(15),
	datad => VCC,
	cin => \clk_1Hz|Add0~29\,
	combout => \clk_1Hz|Add0~30_combout\,
	cout => \clk_1Hz|Add0~31\);

-- Location: FF_X32_Y11_N3
\clk_1Hz|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(15));

-- Location: LCCOMB_X32_Y11_N4
\clk_1Hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~32_combout\ = (\clk_1Hz|cuenta\(16) & (\clk_1Hz|Add0~31\ $ (GND))) # (!\clk_1Hz|cuenta\(16) & (!\clk_1Hz|Add0~31\ & VCC))
-- \clk_1Hz|Add0~33\ = CARRY((\clk_1Hz|cuenta\(16) & !\clk_1Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(16),
	datad => VCC,
	cin => \clk_1Hz|Add0~31\,
	combout => \clk_1Hz|Add0~32_combout\,
	cout => \clk_1Hz|Add0~33\);

-- Location: LCCOMB_X31_Y11_N0
\clk_1Hz|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~5_combout\ = (!\clk_1Hz|Equal0~8_combout\ & \clk_1Hz|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|Equal0~8_combout\,
	datad => \clk_1Hz|Add0~32_combout\,
	combout => \clk_1Hz|cuenta~5_combout\);

-- Location: FF_X31_Y11_N1
\clk_1Hz|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(16));

-- Location: LCCOMB_X32_Y11_N6
\clk_1Hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~34_combout\ = (\clk_1Hz|cuenta\(17) & (!\clk_1Hz|Add0~33\)) # (!\clk_1Hz|cuenta\(17) & ((\clk_1Hz|Add0~33\) # (GND)))
-- \clk_1Hz|Add0~35\ = CARRY((!\clk_1Hz|Add0~33\) # (!\clk_1Hz|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(17),
	datad => VCC,
	cin => \clk_1Hz|Add0~33\,
	combout => \clk_1Hz|Add0~34_combout\,
	cout => \clk_1Hz|Add0~35\);

-- Location: FF_X32_Y11_N7
\clk_1Hz|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(17));

-- Location: LCCOMB_X32_Y11_N8
\clk_1Hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~36_combout\ = (\clk_1Hz|cuenta\(18) & (\clk_1Hz|Add0~35\ $ (GND))) # (!\clk_1Hz|cuenta\(18) & (!\clk_1Hz|Add0~35\ & VCC))
-- \clk_1Hz|Add0~37\ = CARRY((\clk_1Hz|cuenta\(18) & !\clk_1Hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(18),
	datad => VCC,
	cin => \clk_1Hz|Add0~35\,
	combout => \clk_1Hz|Add0~36_combout\,
	cout => \clk_1Hz|Add0~37\);

-- Location: LCCOMB_X31_Y11_N24
\clk_1Hz|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~4_combout\ = (\clk_1Hz|Add0~36_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~36_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~4_combout\);

-- Location: FF_X31_Y11_N25
\clk_1Hz|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(18));

-- Location: LCCOMB_X32_Y11_N10
\clk_1Hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~38_combout\ = (\clk_1Hz|cuenta\(19) & (!\clk_1Hz|Add0~37\)) # (!\clk_1Hz|cuenta\(19) & ((\clk_1Hz|Add0~37\) # (GND)))
-- \clk_1Hz|Add0~39\ = CARRY((!\clk_1Hz|Add0~37\) # (!\clk_1Hz|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(19),
	datad => VCC,
	cin => \clk_1Hz|Add0~37\,
	combout => \clk_1Hz|Add0~38_combout\,
	cout => \clk_1Hz|Add0~39\);

-- Location: LCCOMB_X32_Y11_N30
\clk_1Hz|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~3_combout\ = (!\clk_1Hz|Equal0~8_combout\ & \clk_1Hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Equal0~8_combout\,
	datad => \clk_1Hz|Add0~38_combout\,
	combout => \clk_1Hz|cuenta~3_combout\);

-- Location: FF_X32_Y11_N31
\clk_1Hz|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(19));

-- Location: LCCOMB_X32_Y11_N12
\clk_1Hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~40_combout\ = (\clk_1Hz|cuenta\(20) & (\clk_1Hz|Add0~39\ $ (GND))) # (!\clk_1Hz|cuenta\(20) & (!\clk_1Hz|Add0~39\ & VCC))
-- \clk_1Hz|Add0~41\ = CARRY((\clk_1Hz|cuenta\(20) & !\clk_1Hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(20),
	datad => VCC,
	cin => \clk_1Hz|Add0~39\,
	combout => \clk_1Hz|Add0~40_combout\,
	cout => \clk_1Hz|Add0~41\);

-- Location: LCCOMB_X31_Y11_N10
\clk_1Hz|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~2_combout\ = (\clk_1Hz|Add0~40_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~40_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~2_combout\);

-- Location: FF_X31_Y11_N11
\clk_1Hz|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(20));

-- Location: LCCOMB_X32_Y11_N14
\clk_1Hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~42_combout\ = (\clk_1Hz|cuenta\(21) & (!\clk_1Hz|Add0~41\)) # (!\clk_1Hz|cuenta\(21) & ((\clk_1Hz|Add0~41\) # (GND)))
-- \clk_1Hz|Add0~43\ = CARRY((!\clk_1Hz|Add0~41\) # (!\clk_1Hz|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(21),
	datad => VCC,
	cin => \clk_1Hz|Add0~41\,
	combout => \clk_1Hz|Add0~42_combout\,
	cout => \clk_1Hz|Add0~43\);

-- Location: LCCOMB_X32_Y11_N28
\clk_1Hz|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~1_combout\ = (!\clk_1Hz|Equal0~8_combout\ & \clk_1Hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|Equal0~8_combout\,
	datac => \clk_1Hz|Add0~42_combout\,
	combout => \clk_1Hz|cuenta~1_combout\);

-- Location: FF_X32_Y11_N29
\clk_1Hz|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(21));

-- Location: LCCOMB_X32_Y11_N16
\clk_1Hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~44_combout\ = (\clk_1Hz|cuenta\(22) & (\clk_1Hz|Add0~43\ $ (GND))) # (!\clk_1Hz|cuenta\(22) & (!\clk_1Hz|Add0~43\ & VCC))
-- \clk_1Hz|Add0~45\ = CARRY((\clk_1Hz|cuenta\(22) & !\clk_1Hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(22),
	datad => VCC,
	cin => \clk_1Hz|Add0~43\,
	combout => \clk_1Hz|Add0~44_combout\,
	cout => \clk_1Hz|Add0~45\);

-- Location: LCCOMB_X31_Y11_N20
\clk_1Hz|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~0_combout\ = (!\clk_1Hz|Equal0~8_combout\ & \clk_1Hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|Equal0~8_combout\,
	datad => \clk_1Hz|Add0~44_combout\,
	combout => \clk_1Hz|cuenta~0_combout\);

-- Location: FF_X31_Y11_N21
\clk_1Hz|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(22));

-- Location: LCCOMB_X32_Y11_N18
\clk_1Hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~46_combout\ = (\clk_1Hz|cuenta\(23) & (!\clk_1Hz|Add0~45\)) # (!\clk_1Hz|cuenta\(23) & ((\clk_1Hz|Add0~45\) # (GND)))
-- \clk_1Hz|Add0~47\ = CARRY((!\clk_1Hz|Add0~45\) # (!\clk_1Hz|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(23),
	datad => VCC,
	cin => \clk_1Hz|Add0~45\,
	combout => \clk_1Hz|Add0~46_combout\,
	cout => \clk_1Hz|Add0~47\);

-- Location: FF_X32_Y11_N19
\clk_1Hz|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(23));

-- Location: LCCOMB_X32_Y11_N20
\clk_1Hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~48_combout\ = (\clk_1Hz|cuenta\(24) & (\clk_1Hz|Add0~47\ $ (GND))) # (!\clk_1Hz|cuenta\(24) & (!\clk_1Hz|Add0~47\ & VCC))
-- \clk_1Hz|Add0~49\ = CARRY((\clk_1Hz|cuenta\(24) & !\clk_1Hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(24),
	datad => VCC,
	cin => \clk_1Hz|Add0~47\,
	combout => \clk_1Hz|Add0~48_combout\,
	cout => \clk_1Hz|Add0~49\);

-- Location: LCCOMB_X31_Y11_N4
\clk_1Hz|cuenta~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|cuenta~12_combout\ = (\clk_1Hz|Add0~48_combout\ & !\clk_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_1Hz|Add0~48_combout\,
	datad => \clk_1Hz|Equal0~8_combout\,
	combout => \clk_1Hz|cuenta~12_combout\);

-- Location: FF_X31_Y11_N5
\clk_1Hz|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|cuenta~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(24));

-- Location: LCCOMB_X32_Y11_N22
\clk_1Hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~50_combout\ = (\clk_1Hz|cuenta\(25) & (!\clk_1Hz|Add0~49\)) # (!\clk_1Hz|cuenta\(25) & ((\clk_1Hz|Add0~49\) # (GND)))
-- \clk_1Hz|Add0~51\ = CARRY((!\clk_1Hz|Add0~49\) # (!\clk_1Hz|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(25),
	datad => VCC,
	cin => \clk_1Hz|Add0~49\,
	combout => \clk_1Hz|Add0~50_combout\,
	cout => \clk_1Hz|Add0~51\);

-- Location: FF_X32_Y11_N23
\clk_1Hz|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(25));

-- Location: LCCOMB_X32_Y11_N24
\clk_1Hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~52_combout\ = (\clk_1Hz|cuenta\(26) & (\clk_1Hz|Add0~51\ $ (GND))) # (!\clk_1Hz|cuenta\(26) & (!\clk_1Hz|Add0~51\ & VCC))
-- \clk_1Hz|Add0~53\ = CARRY((\clk_1Hz|cuenta\(26) & !\clk_1Hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_1Hz|cuenta\(26),
	datad => VCC,
	cin => \clk_1Hz|Add0~51\,
	combout => \clk_1Hz|Add0~52_combout\,
	cout => \clk_1Hz|Add0~53\);

-- Location: FF_X32_Y11_N25
\clk_1Hz|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(26));

-- Location: LCCOMB_X32_Y11_N26
\clk_1Hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Add0~54_combout\ = \clk_1Hz|Add0~53\ $ (\clk_1Hz|cuenta\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clk_1Hz|cuenta\(27),
	cin => \clk_1Hz|Add0~53\,
	combout => \clk_1Hz|Add0~54_combout\);

-- Location: FF_X32_Y11_N27
\clk_1Hz|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|cuenta\(27));

-- Location: LCCOMB_X31_Y11_N26
\clk_1Hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~7_combout\ = (!\clk_1Hz|cuenta\(26) & (!\clk_1Hz|cuenta\(27) & (\clk_1Hz|cuenta\(24) & !\clk_1Hz|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(26),
	datab => \clk_1Hz|cuenta\(27),
	datac => \clk_1Hz|cuenta\(24),
	datad => \clk_1Hz|cuenta\(25),
	combout => \clk_1Hz|Equal0~7_combout\);

-- Location: LCCOMB_X31_Y11_N12
\clk_1Hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~1_combout\ = (\clk_1Hz|cuenta\(19) & (\clk_1Hz|cuenta\(16) & (!\clk_1Hz|cuenta\(17) & \clk_1Hz|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(19),
	datab => \clk_1Hz|cuenta\(16),
	datac => \clk_1Hz|cuenta\(17),
	datad => \clk_1Hz|cuenta\(18),
	combout => \clk_1Hz|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y11_N18
\clk_1Hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~0_combout\ = (\clk_1Hz|cuenta\(20) & (\clk_1Hz|cuenta\(22) & (\clk_1Hz|cuenta\(21) & !\clk_1Hz|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(20),
	datab => \clk_1Hz|cuenta\(22),
	datac => \clk_1Hz|cuenta\(21),
	datad => \clk_1Hz|cuenta\(23),
	combout => \clk_1Hz|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y11_N14
\clk_1Hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~3_combout\ = (!\clk_1Hz|cuenta\(10) & (!\clk_1Hz|cuenta\(9) & (\clk_1Hz|cuenta\(11) & !\clk_1Hz|cuenta\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(10),
	datab => \clk_1Hz|cuenta\(9),
	datac => \clk_1Hz|cuenta\(11),
	datad => \clk_1Hz|cuenta\(8),
	combout => \clk_1Hz|Equal0~3_combout\);

-- Location: LCCOMB_X31_Y11_N28
\clk_1Hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~2_combout\ = (\clk_1Hz|cuenta\(14) & (\clk_1Hz|cuenta\(12) & (\clk_1Hz|cuenta\(13) & !\clk_1Hz|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(14),
	datab => \clk_1Hz|cuenta\(12),
	datac => \clk_1Hz|cuenta\(13),
	datad => \clk_1Hz|cuenta\(15),
	combout => \clk_1Hz|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y11_N8
\clk_1Hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~4_combout\ = (\clk_1Hz|Equal0~1_combout\ & (\clk_1Hz|Equal0~0_combout\ & (\clk_1Hz|Equal0~3_combout\ & \clk_1Hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|Equal0~1_combout\,
	datab => \clk_1Hz|Equal0~0_combout\,
	datac => \clk_1Hz|Equal0~3_combout\,
	datad => \clk_1Hz|Equal0~2_combout\,
	combout => \clk_1Hz|Equal0~4_combout\);

-- Location: LCCOMB_X31_Y12_N26
\clk_1Hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~6_combout\ = (!\clk_1Hz|cuenta\(1) & (!\clk_1Hz|cuenta\(3) & (!\clk_1Hz|cuenta\(2) & !\clk_1Hz|cuenta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(1),
	datab => \clk_1Hz|cuenta\(3),
	datac => \clk_1Hz|cuenta\(2),
	datad => \clk_1Hz|cuenta\(0),
	combout => \clk_1Hz|Equal0~6_combout\);

-- Location: LCCOMB_X31_Y12_N14
\clk_1Hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~5_combout\ = (\clk_1Hz|cuenta\(6) & (!\clk_1Hz|cuenta\(5) & (!\clk_1Hz|cuenta\(4) & !\clk_1Hz|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|cuenta\(6),
	datab => \clk_1Hz|cuenta\(5),
	datac => \clk_1Hz|cuenta\(4),
	datad => \clk_1Hz|cuenta\(7),
	combout => \clk_1Hz|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y11_N16
\clk_1Hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_1Hz|Equal0~8_combout\ = (\clk_1Hz|Equal0~7_combout\ & (\clk_1Hz|Equal0~4_combout\ & (\clk_1Hz|Equal0~6_combout\ & \clk_1Hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_1Hz|Equal0~7_combout\,
	datab => \clk_1Hz|Equal0~4_combout\,
	datac => \clk_1Hz|Equal0~6_combout\,
	datad => \clk_1Hz|Equal0~5_combout\,
	combout => \clk_1Hz|Equal0~8_combout\);

-- Location: FF_X31_Y11_N23
\clk_1Hz|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_1Hz|salida~feeder_combout\,
	ena => \clk_1Hz|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_1Hz|salida~q\);

-- Location: CLKCTRL_G5
\clk_1Hz|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_1Hz|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_1Hz|salida~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y14_N2
\comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (\gree~combout\) # ((\Incrementador_i|i\(0) & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Incrementador_i|i\(0),
	datac => \Equal4~1_combout\,
	datad => \gree~combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X24_Y14_N30
\greenn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \greenn~0_combout\ = (\Incrementador_i|i\(0)) # (!\Incrementador_i|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Incrementador_i|i\(0),
	datad => \Incrementador_i|i\(1),
	combout => \greenn~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\clk_500Hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~0_combout\ = \clk_500Hz|cuenta\(0) $ (VCC)
-- \clk_500Hz|Add0~1\ = CARRY(\clk_500Hz|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(0),
	datad => VCC,
	combout => \clk_500Hz|Add0~0_combout\,
	cout => \clk_500Hz|Add0~1\);

-- Location: LCCOMB_X25_Y9_N2
\clk_500Hz|cuenta~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~6_combout\ = (\clk_500Hz|Add0~0_combout\ & !\clk_500Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_500Hz|Add0~0_combout\,
	datad => \clk_500Hz|Equal0~8_combout\,
	combout => \clk_500Hz|cuenta~6_combout\);

-- Location: FF_X25_Y9_N3
\clk_500Hz|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(0));

-- Location: LCCOMB_X25_Y9_N6
\clk_500Hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~2_combout\ = (\clk_500Hz|cuenta\(1) & (!\clk_500Hz|Add0~1\)) # (!\clk_500Hz|cuenta\(1) & ((\clk_500Hz|Add0~1\) # (GND)))
-- \clk_500Hz|Add0~3\ = CARRY((!\clk_500Hz|Add0~1\) # (!\clk_500Hz|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(1),
	datad => VCC,
	cin => \clk_500Hz|Add0~1\,
	combout => \clk_500Hz|Add0~2_combout\,
	cout => \clk_500Hz|Add0~3\);

-- Location: FF_X25_Y9_N7
\clk_500Hz|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(1));

-- Location: LCCOMB_X25_Y9_N8
\clk_500Hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~4_combout\ = (\clk_500Hz|cuenta\(2) & (\clk_500Hz|Add0~3\ $ (GND))) # (!\clk_500Hz|cuenta\(2) & (!\clk_500Hz|Add0~3\ & VCC))
-- \clk_500Hz|Add0~5\ = CARRY((\clk_500Hz|cuenta\(2) & !\clk_500Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(2),
	datad => VCC,
	cin => \clk_500Hz|Add0~3\,
	combout => \clk_500Hz|Add0~4_combout\,
	cout => \clk_500Hz|Add0~5\);

-- Location: FF_X25_Y9_N9
\clk_500Hz|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(2));

-- Location: LCCOMB_X25_Y9_N10
\clk_500Hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~6_combout\ = (\clk_500Hz|cuenta\(3) & (!\clk_500Hz|Add0~5\)) # (!\clk_500Hz|cuenta\(3) & ((\clk_500Hz|Add0~5\) # (GND)))
-- \clk_500Hz|Add0~7\ = CARRY((!\clk_500Hz|Add0~5\) # (!\clk_500Hz|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(3),
	datad => VCC,
	cin => \clk_500Hz|Add0~5\,
	combout => \clk_500Hz|Add0~6_combout\,
	cout => \clk_500Hz|Add0~7\);

-- Location: FF_X25_Y9_N11
\clk_500Hz|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(3));

-- Location: LCCOMB_X25_Y9_N12
\clk_500Hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~8_combout\ = (\clk_500Hz|cuenta\(4) & (\clk_500Hz|Add0~7\ $ (GND))) # (!\clk_500Hz|cuenta\(4) & (!\clk_500Hz|Add0~7\ & VCC))
-- \clk_500Hz|Add0~9\ = CARRY((\clk_500Hz|cuenta\(4) & !\clk_500Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(4),
	datad => VCC,
	cin => \clk_500Hz|Add0~7\,
	combout => \clk_500Hz|Add0~8_combout\,
	cout => \clk_500Hz|Add0~9\);

-- Location: LCCOMB_X25_Y9_N0
\clk_500Hz|cuenta~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~5_combout\ = (\clk_500Hz|Add0~8_combout\ & !\clk_500Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|Add0~8_combout\,
	datad => \clk_500Hz|Equal0~8_combout\,
	combout => \clk_500Hz|cuenta~5_combout\);

-- Location: FF_X25_Y9_N1
\clk_500Hz|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(4));

-- Location: LCCOMB_X25_Y9_N14
\clk_500Hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~10_combout\ = (\clk_500Hz|cuenta\(5) & (!\clk_500Hz|Add0~9\)) # (!\clk_500Hz|cuenta\(5) & ((\clk_500Hz|Add0~9\) # (GND)))
-- \clk_500Hz|Add0~11\ = CARRY((!\clk_500Hz|Add0~9\) # (!\clk_500Hz|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(5),
	datad => VCC,
	cin => \clk_500Hz|Add0~9\,
	combout => \clk_500Hz|Add0~10_combout\,
	cout => \clk_500Hz|Add0~11\);

-- Location: FF_X25_Y9_N15
\clk_500Hz|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(5));

-- Location: LCCOMB_X25_Y9_N16
\clk_500Hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~12_combout\ = (\clk_500Hz|cuenta\(6) & (\clk_500Hz|Add0~11\ $ (GND))) # (!\clk_500Hz|cuenta\(6) & (!\clk_500Hz|Add0~11\ & VCC))
-- \clk_500Hz|Add0~13\ = CARRY((\clk_500Hz|cuenta\(6) & !\clk_500Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(6),
	datad => VCC,
	cin => \clk_500Hz|Add0~11\,
	combout => \clk_500Hz|Add0~12_combout\,
	cout => \clk_500Hz|Add0~13\);

-- Location: LCCOMB_X24_Y9_N18
\clk_500Hz|cuenta~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~4_combout\ = (!\clk_500Hz|Equal0~8_combout\ & \clk_500Hz|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|Equal0~8_combout\,
	datad => \clk_500Hz|Add0~12_combout\,
	combout => \clk_500Hz|cuenta~4_combout\);

-- Location: FF_X24_Y9_N19
\clk_500Hz|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(6));

-- Location: LCCOMB_X25_Y9_N18
\clk_500Hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~14_combout\ = (\clk_500Hz|cuenta\(7) & (!\clk_500Hz|Add0~13\)) # (!\clk_500Hz|cuenta\(7) & ((\clk_500Hz|Add0~13\) # (GND)))
-- \clk_500Hz|Add0~15\ = CARRY((!\clk_500Hz|Add0~13\) # (!\clk_500Hz|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(7),
	datad => VCC,
	cin => \clk_500Hz|Add0~13\,
	combout => \clk_500Hz|Add0~14_combout\,
	cout => \clk_500Hz|Add0~15\);

-- Location: FF_X25_Y9_N19
\clk_500Hz|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(7));

-- Location: LCCOMB_X24_Y9_N26
\clk_500Hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~5_combout\ = (!\clk_500Hz|cuenta\(7) & (\clk_500Hz|cuenta\(4) & (!\clk_500Hz|cuenta\(5) & \clk_500Hz|cuenta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(7),
	datab => \clk_500Hz|cuenta\(4),
	datac => \clk_500Hz|cuenta\(5),
	datad => \clk_500Hz|cuenta\(6),
	combout => \clk_500Hz|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y9_N20
\clk_500Hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~16_combout\ = (\clk_500Hz|cuenta\(8) & (\clk_500Hz|Add0~15\ $ (GND))) # (!\clk_500Hz|cuenta\(8) & (!\clk_500Hz|Add0~15\ & VCC))
-- \clk_500Hz|Add0~17\ = CARRY((\clk_500Hz|cuenta\(8) & !\clk_500Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(8),
	datad => VCC,
	cin => \clk_500Hz|Add0~15\,
	combout => \clk_500Hz|Add0~16_combout\,
	cout => \clk_500Hz|Add0~17\);

-- Location: LCCOMB_X24_Y9_N0
\clk_500Hz|cuenta~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~3_combout\ = (\clk_500Hz|Add0~16_combout\ & !\clk_500Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_500Hz|Add0~16_combout\,
	datad => \clk_500Hz|Equal0~8_combout\,
	combout => \clk_500Hz|cuenta~3_combout\);

-- Location: FF_X24_Y9_N1
\clk_500Hz|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(8));

-- Location: LCCOMB_X25_Y9_N22
\clk_500Hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~18_combout\ = (\clk_500Hz|cuenta\(9) & (!\clk_500Hz|Add0~17\)) # (!\clk_500Hz|cuenta\(9) & ((\clk_500Hz|Add0~17\) # (GND)))
-- \clk_500Hz|Add0~19\ = CARRY((!\clk_500Hz|Add0~17\) # (!\clk_500Hz|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(9),
	datad => VCC,
	cin => \clk_500Hz|Add0~17\,
	combout => \clk_500Hz|Add0~18_combout\,
	cout => \clk_500Hz|Add0~19\);

-- Location: LCCOMB_X24_Y9_N6
\clk_500Hz|cuenta~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~2_combout\ = (!\clk_500Hz|Equal0~8_combout\ & \clk_500Hz|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|Equal0~8_combout\,
	datad => \clk_500Hz|Add0~18_combout\,
	combout => \clk_500Hz|cuenta~2_combout\);

-- Location: FF_X24_Y9_N7
\clk_500Hz|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(9));

-- Location: LCCOMB_X25_Y9_N24
\clk_500Hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~20_combout\ = (\clk_500Hz|cuenta\(10) & (\clk_500Hz|Add0~19\ $ (GND))) # (!\clk_500Hz|cuenta\(10) & (!\clk_500Hz|Add0~19\ & VCC))
-- \clk_500Hz|Add0~21\ = CARRY((\clk_500Hz|cuenta\(10) & !\clk_500Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(10),
	datad => VCC,
	cin => \clk_500Hz|Add0~19\,
	combout => \clk_500Hz|Add0~20_combout\,
	cout => \clk_500Hz|Add0~21\);

-- Location: FF_X25_Y9_N25
\clk_500Hz|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(10));

-- Location: LCCOMB_X25_Y9_N26
\clk_500Hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~22_combout\ = (\clk_500Hz|cuenta\(11) & (!\clk_500Hz|Add0~21\)) # (!\clk_500Hz|cuenta\(11) & ((\clk_500Hz|Add0~21\) # (GND)))
-- \clk_500Hz|Add0~23\ = CARRY((!\clk_500Hz|Add0~21\) # (!\clk_500Hz|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(11),
	datad => VCC,
	cin => \clk_500Hz|Add0~21\,
	combout => \clk_500Hz|Add0~22_combout\,
	cout => \clk_500Hz|Add0~23\);

-- Location: FF_X25_Y9_N27
\clk_500Hz|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(11));

-- Location: LCCOMB_X25_Y9_N28
\clk_500Hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~24_combout\ = (\clk_500Hz|cuenta\(12) & (\clk_500Hz|Add0~23\ $ (GND))) # (!\clk_500Hz|cuenta\(12) & (!\clk_500Hz|Add0~23\ & VCC))
-- \clk_500Hz|Add0~25\ = CARRY((\clk_500Hz|cuenta\(12) & !\clk_500Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(12),
	datad => VCC,
	cin => \clk_500Hz|Add0~23\,
	combout => \clk_500Hz|Add0~24_combout\,
	cout => \clk_500Hz|Add0~25\);

-- Location: FF_X25_Y9_N29
\clk_500Hz|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(12));

-- Location: LCCOMB_X25_Y9_N30
\clk_500Hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~26_combout\ = (\clk_500Hz|cuenta\(13) & (!\clk_500Hz|Add0~25\)) # (!\clk_500Hz|cuenta\(13) & ((\clk_500Hz|Add0~25\) # (GND)))
-- \clk_500Hz|Add0~27\ = CARRY((!\clk_500Hz|Add0~25\) # (!\clk_500Hz|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(13),
	datad => VCC,
	cin => \clk_500Hz|Add0~25\,
	combout => \clk_500Hz|Add0~26_combout\,
	cout => \clk_500Hz|Add0~27\);

-- Location: FF_X25_Y9_N31
\clk_500Hz|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(13));

-- Location: LCCOMB_X25_Y8_N0
\clk_500Hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~28_combout\ = (\clk_500Hz|cuenta\(14) & (\clk_500Hz|Add0~27\ $ (GND))) # (!\clk_500Hz|cuenta\(14) & (!\clk_500Hz|Add0~27\ & VCC))
-- \clk_500Hz|Add0~29\ = CARRY((\clk_500Hz|cuenta\(14) & !\clk_500Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(14),
	datad => VCC,
	cin => \clk_500Hz|Add0~27\,
	combout => \clk_500Hz|Add0~28_combout\,
	cout => \clk_500Hz|Add0~29\);

-- Location: LCCOMB_X25_Y8_N30
\clk_500Hz|cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~1_combout\ = (!\clk_500Hz|Equal0~8_combout\ & \clk_500Hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_500Hz|Equal0~8_combout\,
	datad => \clk_500Hz|Add0~28_combout\,
	combout => \clk_500Hz|cuenta~1_combout\);

-- Location: FF_X25_Y8_N31
\clk_500Hz|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(14));

-- Location: LCCOMB_X25_Y8_N2
\clk_500Hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~30_combout\ = (\clk_500Hz|cuenta\(15) & (!\clk_500Hz|Add0~29\)) # (!\clk_500Hz|cuenta\(15) & ((\clk_500Hz|Add0~29\) # (GND)))
-- \clk_500Hz|Add0~31\ = CARRY((!\clk_500Hz|Add0~29\) # (!\clk_500Hz|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(15),
	datad => VCC,
	cin => \clk_500Hz|Add0~29\,
	combout => \clk_500Hz|Add0~30_combout\,
	cout => \clk_500Hz|Add0~31\);

-- Location: LCCOMB_X25_Y8_N28
\clk_500Hz|cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|cuenta~0_combout\ = (!\clk_500Hz|Equal0~8_combout\ & \clk_500Hz|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_500Hz|Equal0~8_combout\,
	datad => \clk_500Hz|Add0~30_combout\,
	combout => \clk_500Hz|cuenta~0_combout\);

-- Location: FF_X25_Y8_N29
\clk_500Hz|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(15));

-- Location: LCCOMB_X25_Y8_N4
\clk_500Hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~32_combout\ = (\clk_500Hz|cuenta\(16) & (\clk_500Hz|Add0~31\ $ (GND))) # (!\clk_500Hz|cuenta\(16) & (!\clk_500Hz|Add0~31\ & VCC))
-- \clk_500Hz|Add0~33\ = CARRY((\clk_500Hz|cuenta\(16) & !\clk_500Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(16),
	datad => VCC,
	cin => \clk_500Hz|Add0~31\,
	combout => \clk_500Hz|Add0~32_combout\,
	cout => \clk_500Hz|Add0~33\);

-- Location: FF_X25_Y8_N5
\clk_500Hz|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(16));

-- Location: LCCOMB_X25_Y8_N6
\clk_500Hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~34_combout\ = (\clk_500Hz|cuenta\(17) & (!\clk_500Hz|Add0~33\)) # (!\clk_500Hz|cuenta\(17) & ((\clk_500Hz|Add0~33\) # (GND)))
-- \clk_500Hz|Add0~35\ = CARRY((!\clk_500Hz|Add0~33\) # (!\clk_500Hz|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(17),
	datad => VCC,
	cin => \clk_500Hz|Add0~33\,
	combout => \clk_500Hz|Add0~34_combout\,
	cout => \clk_500Hz|Add0~35\);

-- Location: FF_X25_Y8_N7
\clk_500Hz|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(17));

-- Location: LCCOMB_X25_Y8_N8
\clk_500Hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~36_combout\ = (\clk_500Hz|cuenta\(18) & (\clk_500Hz|Add0~35\ $ (GND))) # (!\clk_500Hz|cuenta\(18) & (!\clk_500Hz|Add0~35\ & VCC))
-- \clk_500Hz|Add0~37\ = CARRY((\clk_500Hz|cuenta\(18) & !\clk_500Hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(18),
	datad => VCC,
	cin => \clk_500Hz|Add0~35\,
	combout => \clk_500Hz|Add0~36_combout\,
	cout => \clk_500Hz|Add0~37\);

-- Location: FF_X25_Y8_N9
\clk_500Hz|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(18));

-- Location: LCCOMB_X25_Y8_N10
\clk_500Hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~38_combout\ = (\clk_500Hz|cuenta\(19) & (!\clk_500Hz|Add0~37\)) # (!\clk_500Hz|cuenta\(19) & ((\clk_500Hz|Add0~37\) # (GND)))
-- \clk_500Hz|Add0~39\ = CARRY((!\clk_500Hz|Add0~37\) # (!\clk_500Hz|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(19),
	datad => VCC,
	cin => \clk_500Hz|Add0~37\,
	combout => \clk_500Hz|Add0~38_combout\,
	cout => \clk_500Hz|Add0~39\);

-- Location: FF_X25_Y8_N11
\clk_500Hz|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(19));

-- Location: LCCOMB_X25_Y8_N12
\clk_500Hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~40_combout\ = (\clk_500Hz|cuenta\(20) & (\clk_500Hz|Add0~39\ $ (GND))) # (!\clk_500Hz|cuenta\(20) & (!\clk_500Hz|Add0~39\ & VCC))
-- \clk_500Hz|Add0~41\ = CARRY((\clk_500Hz|cuenta\(20) & !\clk_500Hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(20),
	datad => VCC,
	cin => \clk_500Hz|Add0~39\,
	combout => \clk_500Hz|Add0~40_combout\,
	cout => \clk_500Hz|Add0~41\);

-- Location: FF_X25_Y8_N13
\clk_500Hz|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(20));

-- Location: LCCOMB_X25_Y8_N14
\clk_500Hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~42_combout\ = (\clk_500Hz|cuenta\(21) & (!\clk_500Hz|Add0~41\)) # (!\clk_500Hz|cuenta\(21) & ((\clk_500Hz|Add0~41\) # (GND)))
-- \clk_500Hz|Add0~43\ = CARRY((!\clk_500Hz|Add0~41\) # (!\clk_500Hz|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(21),
	datad => VCC,
	cin => \clk_500Hz|Add0~41\,
	combout => \clk_500Hz|Add0~42_combout\,
	cout => \clk_500Hz|Add0~43\);

-- Location: FF_X25_Y8_N15
\clk_500Hz|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(21));

-- Location: LCCOMB_X25_Y8_N16
\clk_500Hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~44_combout\ = (\clk_500Hz|cuenta\(22) & (\clk_500Hz|Add0~43\ $ (GND))) # (!\clk_500Hz|cuenta\(22) & (!\clk_500Hz|Add0~43\ & VCC))
-- \clk_500Hz|Add0~45\ = CARRY((\clk_500Hz|cuenta\(22) & !\clk_500Hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(22),
	datad => VCC,
	cin => \clk_500Hz|Add0~43\,
	combout => \clk_500Hz|Add0~44_combout\,
	cout => \clk_500Hz|Add0~45\);

-- Location: FF_X25_Y8_N17
\clk_500Hz|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(22));

-- Location: LCCOMB_X25_Y8_N18
\clk_500Hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~46_combout\ = (\clk_500Hz|cuenta\(23) & (!\clk_500Hz|Add0~45\)) # (!\clk_500Hz|cuenta\(23) & ((\clk_500Hz|Add0~45\) # (GND)))
-- \clk_500Hz|Add0~47\ = CARRY((!\clk_500Hz|Add0~45\) # (!\clk_500Hz|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(23),
	datad => VCC,
	cin => \clk_500Hz|Add0~45\,
	combout => \clk_500Hz|Add0~46_combout\,
	cout => \clk_500Hz|Add0~47\);

-- Location: FF_X25_Y8_N19
\clk_500Hz|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(23));

-- Location: LCCOMB_X25_Y8_N20
\clk_500Hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~48_combout\ = (\clk_500Hz|cuenta\(24) & (\clk_500Hz|Add0~47\ $ (GND))) # (!\clk_500Hz|cuenta\(24) & (!\clk_500Hz|Add0~47\ & VCC))
-- \clk_500Hz|Add0~49\ = CARRY((\clk_500Hz|cuenta\(24) & !\clk_500Hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(24),
	datad => VCC,
	cin => \clk_500Hz|Add0~47\,
	combout => \clk_500Hz|Add0~48_combout\,
	cout => \clk_500Hz|Add0~49\);

-- Location: FF_X25_Y8_N21
\clk_500Hz|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(24));

-- Location: LCCOMB_X25_Y8_N22
\clk_500Hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~50_combout\ = (\clk_500Hz|cuenta\(25) & (!\clk_500Hz|Add0~49\)) # (!\clk_500Hz|cuenta\(25) & ((\clk_500Hz|Add0~49\) # (GND)))
-- \clk_500Hz|Add0~51\ = CARRY((!\clk_500Hz|Add0~49\) # (!\clk_500Hz|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(25),
	datad => VCC,
	cin => \clk_500Hz|Add0~49\,
	combout => \clk_500Hz|Add0~50_combout\,
	cout => \clk_500Hz|Add0~51\);

-- Location: FF_X25_Y8_N23
\clk_500Hz|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(25));

-- Location: LCCOMB_X25_Y8_N24
\clk_500Hz|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~52_combout\ = (\clk_500Hz|cuenta\(26) & (\clk_500Hz|Add0~51\ $ (GND))) # (!\clk_500Hz|cuenta\(26) & (!\clk_500Hz|Add0~51\ & VCC))
-- \clk_500Hz|Add0~53\ = CARRY((\clk_500Hz|cuenta\(26) & !\clk_500Hz|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|cuenta\(26),
	datad => VCC,
	cin => \clk_500Hz|Add0~51\,
	combout => \clk_500Hz|Add0~52_combout\,
	cout => \clk_500Hz|Add0~53\);

-- Location: FF_X25_Y8_N25
\clk_500Hz|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(26));

-- Location: LCCOMB_X25_Y8_N26
\clk_500Hz|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Add0~54_combout\ = \clk_500Hz|cuenta\(27) $ (\clk_500Hz|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(27),
	cin => \clk_500Hz|Add0~53\,
	combout => \clk_500Hz|Add0~54_combout\);

-- Location: FF_X25_Y8_N27
\clk_500Hz|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|cuenta\(27));

-- Location: LCCOMB_X24_Y8_N0
\clk_500Hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~7_combout\ = (!\clk_500Hz|cuenta\(24) & (!\clk_500Hz|cuenta\(26) & (!\clk_500Hz|cuenta\(27) & !\clk_500Hz|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(24),
	datab => \clk_500Hz|cuenta\(26),
	datac => \clk_500Hz|cuenta\(27),
	datad => \clk_500Hz|cuenta\(25),
	combout => \clk_500Hz|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y9_N4
\clk_500Hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~6_combout\ = (!\clk_500Hz|cuenta\(1) & (!\clk_500Hz|cuenta\(2) & (!\clk_500Hz|cuenta\(0) & !\clk_500Hz|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(1),
	datab => \clk_500Hz|cuenta\(2),
	datac => \clk_500Hz|cuenta\(0),
	datad => \clk_500Hz|cuenta\(3),
	combout => \clk_500Hz|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y9_N30
\clk_500Hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~2_combout\ = (!\clk_500Hz|cuenta\(13) & (!\clk_500Hz|cuenta\(12) & (\clk_500Hz|cuenta\(15) & \clk_500Hz|cuenta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(13),
	datab => \clk_500Hz|cuenta\(12),
	datac => \clk_500Hz|cuenta\(15),
	datad => \clk_500Hz|cuenta\(14),
	combout => \clk_500Hz|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y9_N4
\clk_500Hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~3_combout\ = (\clk_500Hz|cuenta\(9) & (\clk_500Hz|cuenta\(8) & (!\clk_500Hz|cuenta\(10) & !\clk_500Hz|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(9),
	datab => \clk_500Hz|cuenta\(8),
	datac => \clk_500Hz|cuenta\(10),
	datad => \clk_500Hz|cuenta\(11),
	combout => \clk_500Hz|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y9_N22
\clk_500Hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~1_combout\ = (!\clk_500Hz|cuenta\(17) & (!\clk_500Hz|cuenta\(18) & (!\clk_500Hz|cuenta\(19) & !\clk_500Hz|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(17),
	datab => \clk_500Hz|cuenta\(18),
	datac => \clk_500Hz|cuenta\(19),
	datad => \clk_500Hz|cuenta\(16),
	combout => \clk_500Hz|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y9_N10
\clk_500Hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~0_combout\ = (!\clk_500Hz|cuenta\(20) & (!\clk_500Hz|cuenta\(23) & (!\clk_500Hz|cuenta\(21) & !\clk_500Hz|cuenta\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|cuenta\(20),
	datab => \clk_500Hz|cuenta\(23),
	datac => \clk_500Hz|cuenta\(21),
	datad => \clk_500Hz|cuenta\(22),
	combout => \clk_500Hz|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y9_N16
\clk_500Hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~4_combout\ = (\clk_500Hz|Equal0~2_combout\ & (\clk_500Hz|Equal0~3_combout\ & (\clk_500Hz|Equal0~1_combout\ & \clk_500Hz|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|Equal0~2_combout\,
	datab => \clk_500Hz|Equal0~3_combout\,
	datac => \clk_500Hz|Equal0~1_combout\,
	datad => \clk_500Hz|Equal0~0_combout\,
	combout => \clk_500Hz|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y9_N28
\clk_500Hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|Equal0~8_combout\ = (\clk_500Hz|Equal0~5_combout\ & (\clk_500Hz|Equal0~7_combout\ & (\clk_500Hz|Equal0~6_combout\ & \clk_500Hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|Equal0~5_combout\,
	datab => \clk_500Hz|Equal0~7_combout\,
	datac => \clk_500Hz|Equal0~6_combout\,
	datad => \clk_500Hz|Equal0~4_combout\,
	combout => \clk_500Hz|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y9_N20
\clk_500Hz|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|salida~0_combout\ = \clk_500Hz|salida~q\ $ (\clk_500Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_500Hz|salida~q\,
	datad => \clk_500Hz|Equal0~8_combout\,
	combout => \clk_500Hz|salida~0_combout\);

-- Location: LCCOMB_X24_Y9_N8
\clk_500Hz|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_500Hz|salida~feeder_combout\ = \clk_500Hz|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_500Hz|salida~0_combout\,
	combout => \clk_500Hz|salida~feeder_combout\);

-- Location: FF_X24_Y9_N9
\clk_500Hz|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_500Hz|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_500Hz|salida~q\);

-- Location: IOIBUF_X34_Y10_N8
\pulsad~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulsad,
	o => \pulsad~input_o\);

-- Location: LCCOMB_X24_Y9_N12
\anti_rebote_pulsador|reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_rebote_pulsador|reg[0]~0_combout\ = !\pulsad~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pulsad~input_o\,
	combout => \anti_rebote_pulsador|reg[0]~0_combout\);

-- Location: FF_X24_Y9_N13
\anti_rebote_pulsador|reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_500Hz|salida~q\,
	d => \anti_rebote_pulsador|reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_rebote_pulsador|reg\(0));

-- Location: LCCOMB_X24_Y9_N24
\anti_rebote_pulsador|reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_rebote_pulsador|reg[1]~feeder_combout\ = \anti_rebote_pulsador|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anti_rebote_pulsador|reg\(0),
	combout => \anti_rebote_pulsador|reg[1]~feeder_combout\);

-- Location: FF_X24_Y9_N25
\anti_rebote_pulsador|reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_500Hz|salida~q\,
	d => \anti_rebote_pulsador|reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_rebote_pulsador|reg\(1));

-- Location: LCCOMB_X24_Y9_N14
\anti_rebote_pulsador|reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_rebote_pulsador|reg[2]~feeder_combout\ = \anti_rebote_pulsador|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anti_rebote_pulsador|reg\(1),
	combout => \anti_rebote_pulsador|reg[2]~feeder_combout\);

-- Location: FF_X24_Y9_N15
\anti_rebote_pulsador|reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_500Hz|salida~q\,
	d => \anti_rebote_pulsador|reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_rebote_pulsador|reg\(2));

-- Location: FF_X24_Y9_N3
\anti_rebote_pulsador|reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_500Hz|salida~q\,
	asdata => \anti_rebote_pulsador|reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anti_rebote_pulsador|reg\(3));

-- Location: LCCOMB_X24_Y9_N2
\anti_rebote_pulsador|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anti_rebote_pulsador|Equal0~combout\ = LCELL((\anti_rebote_pulsador|reg\(0) & (\anti_rebote_pulsador|reg\(2) & (\anti_rebote_pulsador|reg\(3) & \anti_rebote_pulsador|reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anti_rebote_pulsador|reg\(0),
	datab => \anti_rebote_pulsador|reg\(2),
	datac => \anti_rebote_pulsador|reg\(3),
	datad => \anti_rebote_pulsador|reg\(1),
	combout => \anti_rebote_pulsador|Equal0~combout\);

-- Location: LCCOMB_X24_Y14_N24
\pulsador1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsador1|q~0_combout\ = !\pulsador1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pulsador1|q~q\,
	combout => \pulsador1|q~0_combout\);

-- Location: FF_X24_Y14_N25
\pulsador1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anti_rebote_pulsador|Equal0~combout\,
	d => \pulsador1|q~0_combout\,
	clrn => \ALT_INV_greenn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulsador1|q~q\);

-- Location: LCCOMB_X23_Y14_N12
\pulsador1|l\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulsador1|l~combout\ = (\greenn~0_combout\ & (\pulsador1|l~combout\)) # (!\greenn~0_combout\ & ((\pulsador1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsador1|l~combout\,
	datac => \greenn~0_combout\,
	datad => \pulsador1|q~q\,
	combout => \pulsador1|l~combout\);

-- Location: LCCOMB_X33_Y11_N18
\HCRS04_sens|CLOCK_1kHz|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|CLOCK_1kHz|salida~0_combout\ = !\HCRS04_sens|CLOCK_1kHz|salida~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|CLOCK_1kHz|salida~q\,
	combout => \HCRS04_sens|CLOCK_1kHz|salida~0_combout\);

-- Location: LCCOMB_X33_Y11_N10
\HCRS04_sens|CLOCK_1kHz|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|CLOCK_1kHz|salida~feeder_combout\ = \HCRS04_sens|CLOCK_1kHz|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|CLOCK_1kHz|salida~0_combout\,
	combout => \HCRS04_sens|CLOCK_1kHz|salida~feeder_combout\);

-- Location: FF_X33_Y11_N11
\HCRS04_sens|CLOCK_1kHz|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|CLOCK_1kHz|salida~feeder_combout\,
	ena => \clk_1Hz|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|CLOCK_1kHz|salida~q\);

-- Location: CLKCTRL_G9
\HCRS04_sens|CLOCK_1kHz|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y8_N15
\echo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_echo,
	o => \echo~input_o\);

-- Location: CLKCTRL_G1
\echo~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \echo~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \echo~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y7_N30
\HCRS04_sens|Sens|Inst_counter|tick[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[0]~57_combout\ = \echo~input_o\ $ (\HCRS04_sens|Sens|Inst_counter|tick\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echo~input_o\,
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(0),
	combout => \HCRS04_sens|Sens|Inst_counter|tick[0]~57_combout\);

-- Location: LCCOMB_X1_Y7_N24
\HCRS04_sens|Sens|Inst_counter|tick[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[0]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick[0]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick[0]~57_combout\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[0]~feeder_combout\);

-- Location: FF_X1_Y7_N25
\HCRS04_sens|Sens|Inst_counter|tick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[0]~feeder_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(0));

-- Location: LCCOMB_X1_Y9_N14
\HCRS04_sens|Sens|Inst_counter|tick[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[1]~19_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(0) & (\HCRS04_sens|Sens|Inst_counter|tick\(1) $ (VCC))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(0) & (\HCRS04_sens|Sens|Inst_counter|tick\(1) & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[1]~20\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(0) & \HCRS04_sens|Sens|Inst_counter|tick\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(0),
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(1),
	datad => VCC,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[1]~19_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[1]~20\);

-- Location: FF_X1_Y9_N15
\HCRS04_sens|Sens|Inst_counter|tick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[1]~19_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(1));

-- Location: LCCOMB_X1_Y9_N16
\HCRS04_sens|Sens|Inst_counter|tick[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[2]~21_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(2) & (!\HCRS04_sens|Sens|Inst_counter|tick[1]~20\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(2) & ((\HCRS04_sens|Sens|Inst_counter|tick[1]~20\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[2]~22\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[1]~20\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(2),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[1]~20\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[2]~21_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[2]~22\);

-- Location: FF_X1_Y9_N17
\HCRS04_sens|Sens|Inst_counter|tick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[2]~21_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(2));

-- Location: LCCOMB_X1_Y9_N18
\HCRS04_sens|Sens|Inst_counter|tick[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[3]~23_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(3) & (\HCRS04_sens|Sens|Inst_counter|tick[2]~22\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(3) & (!\HCRS04_sens|Sens|Inst_counter|tick[2]~22\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[3]~24\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(3) & !\HCRS04_sens|Sens|Inst_counter|tick[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(3),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[2]~22\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[3]~23_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[3]~24\);

-- Location: FF_X1_Y9_N19
\HCRS04_sens|Sens|Inst_counter|tick[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[3]~23_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(3));

-- Location: LCCOMB_X1_Y9_N20
\HCRS04_sens|Sens|Inst_counter|tick[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[4]~25_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(4) & (!\HCRS04_sens|Sens|Inst_counter|tick[3]~24\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(4) & ((\HCRS04_sens|Sens|Inst_counter|tick[3]~24\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[4]~26\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[3]~24\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(4),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[3]~24\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[4]~25_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[4]~26\);

-- Location: FF_X1_Y9_N21
\HCRS04_sens|Sens|Inst_counter|tick[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[4]~25_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(4));

-- Location: LCCOMB_X1_Y9_N22
\HCRS04_sens|Sens|Inst_counter|tick[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[5]~27_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(5) & (\HCRS04_sens|Sens|Inst_counter|tick[4]~26\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(5) & (!\HCRS04_sens|Sens|Inst_counter|tick[4]~26\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[5]~28\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(5) & !\HCRS04_sens|Sens|Inst_counter|tick[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(5),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[4]~26\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[5]~27_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[5]~28\);

-- Location: FF_X1_Y9_N23
\HCRS04_sens|Sens|Inst_counter|tick[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[5]~27_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(5));

-- Location: LCCOMB_X1_Y9_N24
\HCRS04_sens|Sens|Inst_counter|tick[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[6]~29_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(6) & (!\HCRS04_sens|Sens|Inst_counter|tick[5]~28\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(6) & ((\HCRS04_sens|Sens|Inst_counter|tick[5]~28\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[6]~30\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[5]~28\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(6),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[5]~28\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[6]~29_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[6]~30\);

-- Location: FF_X1_Y9_N25
\HCRS04_sens|Sens|Inst_counter|tick[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[6]~29_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(6));

-- Location: LCCOMB_X1_Y9_N26
\HCRS04_sens|Sens|Inst_counter|tick[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[7]~31_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(7) & (\HCRS04_sens|Sens|Inst_counter|tick[6]~30\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(7) & (!\HCRS04_sens|Sens|Inst_counter|tick[6]~30\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[7]~32\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(7) & !\HCRS04_sens|Sens|Inst_counter|tick[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(7),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[6]~30\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[7]~31_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[7]~32\);

-- Location: FF_X1_Y9_N27
\HCRS04_sens|Sens|Inst_counter|tick[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[7]~31_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(7));

-- Location: LCCOMB_X1_Y9_N28
\HCRS04_sens|Sens|Inst_counter|tick[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[8]~33_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(8) & (!\HCRS04_sens|Sens|Inst_counter|tick[7]~32\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(8) & ((\HCRS04_sens|Sens|Inst_counter|tick[7]~32\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[8]~34\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[7]~32\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(8),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[7]~32\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[8]~33_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[8]~34\);

-- Location: FF_X1_Y9_N29
\HCRS04_sens|Sens|Inst_counter|tick[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[8]~33_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(8));

-- Location: LCCOMB_X1_Y9_N30
\HCRS04_sens|Sens|Inst_counter|tick[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[9]~35_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(9) & (\HCRS04_sens|Sens|Inst_counter|tick[8]~34\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(9) & (!\HCRS04_sens|Sens|Inst_counter|tick[8]~34\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[9]~36\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(9) & !\HCRS04_sens|Sens|Inst_counter|tick[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(9),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[8]~34\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[9]~35_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[9]~36\);

-- Location: FF_X1_Y9_N31
\HCRS04_sens|Sens|Inst_counter|tick[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[9]~35_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(9));

-- Location: LCCOMB_X1_Y8_N0
\HCRS04_sens|Sens|Inst_counter|tick[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[10]~37_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(10) & (!\HCRS04_sens|Sens|Inst_counter|tick[9]~36\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(10) & ((\HCRS04_sens|Sens|Inst_counter|tick[9]~36\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[10]~38\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[9]~36\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(10),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[9]~36\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[10]~37_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[10]~38\);

-- Location: FF_X1_Y8_N1
\HCRS04_sens|Sens|Inst_counter|tick[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[10]~37_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(10));

-- Location: LCCOMB_X1_Y8_N2
\HCRS04_sens|Sens|Inst_counter|tick[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[11]~39_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(11) & (\HCRS04_sens|Sens|Inst_counter|tick[10]~38\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(11) & (!\HCRS04_sens|Sens|Inst_counter|tick[10]~38\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[11]~40\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(11) & !\HCRS04_sens|Sens|Inst_counter|tick[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(11),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[10]~38\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[11]~39_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[11]~40\);

-- Location: FF_X1_Y8_N3
\HCRS04_sens|Sens|Inst_counter|tick[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[11]~39_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(11));

-- Location: LCCOMB_X1_Y8_N4
\HCRS04_sens|Sens|Inst_counter|tick[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[12]~41_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(12) & (!\HCRS04_sens|Sens|Inst_counter|tick[11]~40\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(12) & ((\HCRS04_sens|Sens|Inst_counter|tick[11]~40\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[12]~42\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[11]~40\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(12),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[11]~40\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[12]~41_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[12]~42\);

-- Location: FF_X1_Y8_N5
\HCRS04_sens|Sens|Inst_counter|tick[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[12]~41_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(12));

-- Location: LCCOMB_X1_Y8_N6
\HCRS04_sens|Sens|Inst_counter|tick[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[13]~43_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(13) & (\HCRS04_sens|Sens|Inst_counter|tick[12]~42\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(13) & (!\HCRS04_sens|Sens|Inst_counter|tick[12]~42\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[13]~44\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(13) & !\HCRS04_sens|Sens|Inst_counter|tick[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(13),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[12]~42\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[13]~43_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[13]~44\);

-- Location: FF_X1_Y8_N7
\HCRS04_sens|Sens|Inst_counter|tick[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[13]~43_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(13));

-- Location: LCCOMB_X1_Y8_N8
\HCRS04_sens|Sens|Inst_counter|tick[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[14]~45_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(14) & (!\HCRS04_sens|Sens|Inst_counter|tick[13]~44\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(14) & ((\HCRS04_sens|Sens|Inst_counter|tick[13]~44\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[14]~46\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[13]~44\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(14),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[13]~44\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[14]~45_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[14]~46\);

-- Location: FF_X1_Y8_N9
\HCRS04_sens|Sens|Inst_counter|tick[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[14]~45_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(14));

-- Location: LCCOMB_X1_Y8_N10
\HCRS04_sens|Sens|Inst_counter|tick[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[15]~47_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(15) & (\HCRS04_sens|Sens|Inst_counter|tick[14]~46\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(15) & (!\HCRS04_sens|Sens|Inst_counter|tick[14]~46\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[15]~48\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(15) & !\HCRS04_sens|Sens|Inst_counter|tick[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(15),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[14]~46\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[15]~47_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[15]~48\);

-- Location: FF_X1_Y8_N11
\HCRS04_sens|Sens|Inst_counter|tick[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[15]~47_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(15));

-- Location: LCCOMB_X1_Y8_N12
\HCRS04_sens|Sens|Inst_counter|tick[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[16]~49_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(16) & (!\HCRS04_sens|Sens|Inst_counter|tick[15]~48\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(16) & ((\HCRS04_sens|Sens|Inst_counter|tick[15]~48\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[16]~50\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[15]~48\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(16),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[15]~48\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[16]~49_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[16]~50\);

-- Location: FF_X1_Y8_N13
\HCRS04_sens|Sens|Inst_counter|tick[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[16]~49_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(16));

-- Location: LCCOMB_X1_Y8_N14
\HCRS04_sens|Sens|Inst_counter|tick[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[17]~51_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(17) & (\HCRS04_sens|Sens|Inst_counter|tick[16]~50\ $ (GND))) # (!\HCRS04_sens|Sens|Inst_counter|tick\(17) & (!\HCRS04_sens|Sens|Inst_counter|tick[16]~50\ & VCC))
-- \HCRS04_sens|Sens|Inst_counter|tick[17]~52\ = CARRY((\HCRS04_sens|Sens|Inst_counter|tick\(17) & !\HCRS04_sens|Sens|Inst_counter|tick[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_counter|tick\(17),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[16]~50\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[17]~51_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[17]~52\);

-- Location: FF_X1_Y8_N15
\HCRS04_sens|Sens|Inst_counter|tick[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[17]~51_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(17));

-- Location: LCCOMB_X1_Y8_N16
\HCRS04_sens|Sens|Inst_counter|tick[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[18]~53_combout\ = (\HCRS04_sens|Sens|Inst_counter|tick\(18) & (!\HCRS04_sens|Sens|Inst_counter|tick[17]~52\)) # (!\HCRS04_sens|Sens|Inst_counter|tick\(18) & ((\HCRS04_sens|Sens|Inst_counter|tick[17]~52\) # (GND)))
-- \HCRS04_sens|Sens|Inst_counter|tick[18]~54\ = CARRY((!\HCRS04_sens|Sens|Inst_counter|tick[17]~52\) # (!\HCRS04_sens|Sens|Inst_counter|tick\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_counter|tick\(18),
	datad => VCC,
	cin => \HCRS04_sens|Sens|Inst_counter|tick[17]~52\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[18]~53_combout\,
	cout => \HCRS04_sens|Sens|Inst_counter|tick[18]~54\);

-- Location: FF_X1_Y8_N17
\HCRS04_sens|Sens|Inst_counter|tick[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[18]~53_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(18));

-- Location: LCCOMB_X1_Y8_N18
\HCRS04_sens|Sens|Inst_counter|tick[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_counter|tick[19]~55_combout\ = \HCRS04_sens|Sens|Inst_counter|tick[18]~54\ $ (!\HCRS04_sens|Sens|Inst_counter|tick\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(19),
	cin => \HCRS04_sens|Sens|Inst_counter|tick[18]~54\,
	combout => \HCRS04_sens|Sens|Inst_counter|tick[19]~55_combout\);

-- Location: FF_X1_Y8_N19
\HCRS04_sens|Sens|Inst_counter|tick[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|Inst_counter|tick[19]~55_combout\,
	clrn => \HCRS04_sens|Sens|Inst_TriggerGen|ALT_INV_LessThan1~5_combout\,
	ena => \echo~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|Inst_counter|tick\(19));

-- Location: FF_X2_Y8_N25
\HCRS04_sens|Sens|echo_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(19));

-- Location: LCCOMB_X1_Y8_N30
\HCRS04_sens|Sens|echo_count[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[15]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(15),
	combout => \HCRS04_sens|Sens|echo_count[15]~feeder_combout\);

-- Location: FF_X1_Y8_N31
\HCRS04_sens|Sens|echo_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(15));

-- Location: LCCOMB_X1_Y8_N24
\HCRS04_sens|Sens|echo_count[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[17]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|Sens|Inst_counter|tick\(17),
	combout => \HCRS04_sens|Sens|echo_count[17]~feeder_combout\);

-- Location: FF_X1_Y8_N25
\HCRS04_sens|Sens|echo_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(17));

-- Location: FF_X1_Y8_N23
\HCRS04_sens|Sens|echo_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(18));

-- Location: LCCOMB_X1_Y8_N28
\HCRS04_sens|Sens|echo_count[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[16]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(16),
	combout => \HCRS04_sens|Sens|echo_count[16]~feeder_combout\);

-- Location: FF_X1_Y8_N29
\HCRS04_sens|Sens|echo_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(16));

-- Location: LCCOMB_X1_Y8_N22
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\ = (!\HCRS04_sens|Sens|echo_count\(15) & (!\HCRS04_sens|Sens|echo_count\(17) & (!\HCRS04_sens|Sens|echo_count\(18) & !\HCRS04_sens|Sens|echo_count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(15),
	datab => \HCRS04_sens|Sens|echo_count\(17),
	datac => \HCRS04_sens|Sens|echo_count\(18),
	datad => \HCRS04_sens|Sens|echo_count\(16),
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y9_N12
\HCRS04_sens|Sens|echo_count[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[14]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(14),
	combout => \HCRS04_sens|Sens|echo_count[14]~feeder_combout\);

-- Location: FF_X2_Y9_N13
\HCRS04_sens|Sens|echo_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(14));

-- Location: LCCOMB_X1_Y8_N20
\HCRS04_sens|Sens|echo_count[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[11]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(11),
	combout => \HCRS04_sens|Sens|echo_count[11]~feeder_combout\);

-- Location: FF_X1_Y8_N21
\HCRS04_sens|Sens|echo_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(11));

-- Location: LCCOMB_X2_Y9_N6
\HCRS04_sens|Sens|echo_count[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[12]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(12),
	combout => \HCRS04_sens|Sens|echo_count[12]~feeder_combout\);

-- Location: FF_X2_Y9_N7
\HCRS04_sens|Sens|echo_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(12));

-- Location: FF_X1_Y8_N27
\HCRS04_sens|Sens|echo_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(13));

-- Location: LCCOMB_X2_Y9_N18
\HCRS04_sens|Sens|echo_count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[9]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(9),
	combout => \HCRS04_sens|Sens|echo_count[9]~feeder_combout\);

-- Location: FF_X2_Y9_N19
\HCRS04_sens|Sens|echo_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(9));

-- Location: LCCOMB_X2_Y9_N0
\HCRS04_sens|Sens|echo_count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[8]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(8),
	combout => \HCRS04_sens|Sens|echo_count[8]~feeder_combout\);

-- Location: FF_X2_Y9_N1
\HCRS04_sens|Sens|echo_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(8));

-- Location: FF_X2_Y9_N17
\HCRS04_sens|Sens|echo_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(10));

-- Location: LCCOMB_X1_Y9_N10
\HCRS04_sens|Sens|echo_count[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[5]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|Sens|Inst_counter|tick\(5),
	combout => \HCRS04_sens|Sens|echo_count[5]~feeder_combout\);

-- Location: FF_X1_Y9_N11
\HCRS04_sens|Sens|echo_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(5));

-- Location: LCCOMB_X1_Y9_N4
\HCRS04_sens|Sens|echo_count[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[6]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(6),
	combout => \HCRS04_sens|Sens|echo_count[6]~feeder_combout\);

-- Location: FF_X1_Y9_N5
\HCRS04_sens|Sens|echo_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(6));

-- Location: FF_X1_Y9_N13
\HCRS04_sens|Sens|echo_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(7));

-- Location: LCCOMB_X1_Y9_N6
\HCRS04_sens|Sens|echo_count[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[2]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(2),
	combout => \HCRS04_sens|Sens|echo_count[2]~feeder_combout\);

-- Location: FF_X1_Y9_N7
\HCRS04_sens|Sens|echo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(2));

-- Location: LCCOMB_X1_Y9_N8
\HCRS04_sens|Sens|echo_count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[1]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|Sens|Inst_counter|tick\(1),
	combout => \HCRS04_sens|Sens|echo_count[1]~feeder_combout\);

-- Location: FF_X1_Y9_N9
\HCRS04_sens|Sens|echo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(1));

-- Location: FF_X1_Y9_N1
\HCRS04_sens|Sens|echo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	asdata => \HCRS04_sens|Sens|Inst_counter|tick\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(4));

-- Location: LCCOMB_X1_Y9_N2
\HCRS04_sens|Sens|echo_count[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|echo_count[3]~feeder_combout\ = \HCRS04_sens|Sens|Inst_counter|tick\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HCRS04_sens|Sens|Inst_counter|tick\(3),
	combout => \HCRS04_sens|Sens|echo_count[3]~feeder_combout\);

-- Location: FF_X1_Y9_N3
\HCRS04_sens|Sens|echo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_echo~inputclkctrl_outclk\,
	d => \HCRS04_sens|Sens|echo_count[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|Sens|echo_count\(3));

-- Location: LCCOMB_X1_Y9_N0
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1_combout\ = ((!\HCRS04_sens|Sens|echo_count\(3) & ((!\HCRS04_sens|Sens|echo_count\(1)) # (!\HCRS04_sens|Sens|echo_count\(2))))) # (!\HCRS04_sens|Sens|echo_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(2),
	datab => \HCRS04_sens|Sens|echo_count\(1),
	datac => \HCRS04_sens|Sens|echo_count\(4),
	datad => \HCRS04_sens|Sens|echo_count\(3),
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y9_N12
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2_combout\ = (\HCRS04_sens|Sens|echo_count\(5) & (\HCRS04_sens|Sens|echo_count\(6) & (\HCRS04_sens|Sens|echo_count\(7) & !\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(5),
	datab => \HCRS04_sens|Sens|echo_count\(6),
	datac => \HCRS04_sens|Sens|echo_count\(7),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~1_combout\,
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y9_N16
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3_combout\ = (\HCRS04_sens|Sens|echo_count\(10) & ((\HCRS04_sens|Sens|echo_count\(9)) # ((\HCRS04_sens|Sens|echo_count\(8)) # (\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(9),
	datab => \HCRS04_sens|Sens|echo_count\(8),
	datac => \HCRS04_sens|Sens|echo_count\(10),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~2_combout\,
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3_combout\);

-- Location: LCCOMB_X2_Y9_N10
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\ = (!\HCRS04_sens|Sens|echo_count\(13) & (((!\HCRS04_sens|Sens|echo_count\(11) & !\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3_combout\)) # (!\HCRS04_sens|Sens|echo_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(11),
	datab => \HCRS04_sens|Sens|echo_count\(12),
	datac => \HCRS04_sens|Sens|echo_count\(13),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~3_combout\,
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\);

-- Location: LCCOMB_X2_Y9_N2
\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\ = (!\HCRS04_sens|Sens|echo_count\(19) & (\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\ & ((\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\) # 
-- (!\HCRS04_sens|Sens|echo_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|echo_count\(19),
	datab => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\,
	datac => \HCRS04_sens|Sens|echo_count\(14),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\,
	combout => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\);

-- Location: LCCOMB_X2_Y9_N28
\HCRS04_sens|k~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|k~0_combout\ = (!\HCRS04_sens|k\(0) & !\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|k\(0),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\,
	combout => \HCRS04_sens|k~0_combout\);

-- Location: FF_X2_Y9_N29
\HCRS04_sens|k[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|k~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|k\(0));

-- Location: LCCOMB_X2_Y9_N26
\HCRS04_sens|k~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|k~1_combout\ = (!\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\ & (\HCRS04_sens|k\(0) $ (\HCRS04_sens|k\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|k\(0),
	datac => \HCRS04_sens|k\(1),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\,
	combout => \HCRS04_sens|k~1_combout\);

-- Location: FF_X2_Y9_N27
\HCRS04_sens|k[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|k~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|k\(1));

-- Location: LCCOMB_X2_Y9_N22
\HCRS04_sens|yy_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|yy_i~0_combout\ = (!\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\ & (\HCRS04_sens|k\(1) & \HCRS04_sens|k\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\,
	datac => \HCRS04_sens|k\(1),
	datad => \HCRS04_sens|k\(0),
	combout => \HCRS04_sens|yy_i~0_combout\);

-- Location: FF_X2_Y9_N23
\HCRS04_sens|yy_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|yy_i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|yy_i~q\);

-- Location: LCCOMB_X24_Y14_N4
\comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\re~0_combout\) # ((\pulsador1|l~combout\ & (!\greenn~0_combout\ & \HCRS04_sens|yy_i~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulsador1|l~combout\,
	datab => \greenn~0_combout\,
	datac => \HCRS04_sens|yy_i~q\,
	datad => \re~0_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X25_Y14_N6
\JK1|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK1|Q_int~1_combout\ = (!\comb~7_combout\ & ((\comb~6_combout\) # (\JK1|Q_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~7_combout\,
	datac => \comb~6_combout\,
	datad => \JK1|Q_int~1_combout\,
	combout => \JK1|Q_int~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
\JK1|Q_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK1|Q_int~3_combout\ = \JK0|Q_int~0_combout\ $ (\JK1|Q_int~2_combout\ $ (\JK1|Q_int~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~0_combout\,
	datac => \JK1|Q_int~2_combout\,
	datad => \JK1|Q_int~1_combout\,
	combout => \JK1|Q_int~3_combout\);

-- Location: LCCOMB_X24_Y14_N6
\JK1|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK1|Q_int~0_combout\ = (\comb~6_combout\) # (\comb~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datad => \comb~7_combout\,
	combout => \JK1|Q_int~0_combout\);

-- Location: FF_X24_Y14_N19
\JK1|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK1|Q_int~3_combout\,
	clrn => \JK1|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK1|Q_int~_emulated_q\);

-- Location: LCCOMB_X24_Y14_N0
\JK1|Q_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK1|Q_int~2_combout\ = (!\comb~7_combout\ & ((\comb~6_combout\) # (\JK1|Q_int~1_combout\ $ (\JK1|Q_int~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK1|Q_int~1_combout\,
	datab => \comb~7_combout\,
	datac => \comb~6_combout\,
	datad => \JK1|Q_int~_emulated_q\,
	combout => \JK1|Q_int~2_combout\);

-- Location: LCCOMB_X25_Y14_N16
\JK2|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK2|Q_int~1_combout\ = \JK3|Q_int~1_combout\ $ (\JK2|Q_int~0_combout\ $ (((\JK0|Q_int~0_combout\ & \JK1|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK0|Q_int~0_combout\,
	datab => \JK3|Q_int~1_combout\,
	datac => \JK2|Q_int~0_combout\,
	datad => \JK1|Q_int~2_combout\,
	combout => \JK2|Q_int~1_combout\);

-- Location: LCCOMB_X26_Y14_N18
\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\gree~combout\) # (\re~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gree~combout\,
	datad => \re~0_combout\,
	combout => \comb~3_combout\);

-- Location: LCCOMB_X26_Y14_N30
\JK3|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK3|Q_int~0_combout\ = (\JK3|Q_int~7_combout\) # (\comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~7_combout\,
	datac => \comb~3_combout\,
	combout => \JK3|Q_int~0_combout\);

-- Location: FF_X25_Y14_N17
\JK2|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK2|Q_int~1_combout\,
	clrn => \JK3|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK2|Q_int~_emulated_q\);

-- Location: LCCOMB_X23_Y14_N30
\JK2|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK2|Q_int~0_combout\ = (!\comb~3_combout\ & ((\JK3|Q_int~7_combout\) # (\JK2|Q_int~_emulated_q\ $ (\JK3|Q_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK2|Q_int~_emulated_q\,
	datab => \JK3|Q_int~7_combout\,
	datac => \JK3|Q_int~1_combout\,
	datad => \comb~3_combout\,
	combout => \JK2|Q_int~0_combout\);

-- Location: LCCOMB_X26_Y14_N28
\JK5|Q_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK5|Q_int~7_combout\ = (!\re~0_combout\ & ((\gree~combout\) # (!\comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gree~combout\,
	datac => \comb~2_combout\,
	datad => \re~0_combout\,
	combout => \JK5|Q_int~7_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Incrementador_i|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Incrementador_i|Equal0~0_combout\ = (\JK3|Q_int~2_combout\ & \JK4|Q_int~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \JK3|Q_int~2_combout\,
	datad => \JK4|Q_int~2_combout\,
	combout => \Incrementador_i|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\JK1|Q_int~2_combout\ & (\JK2|Q_int~0_combout\ & \JK0|Q_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK1|Q_int~2_combout\,
	datac => \JK2|Q_int~0_combout\,
	datad => \JK0|Q_int~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X26_Y14_N24
\JK5|Q_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK5|Q_int~3_combout\ = \JK5|Q_int~2_combout\ $ (\JK5|Q_int~1_combout\ $ (((\Incrementador_i|Equal0~0_combout\ & \comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK5|Q_int~2_combout\,
	datab => \JK5|Q_int~1_combout\,
	datac => \Incrementador_i|Equal0~0_combout\,
	datad => \comb~0_combout\,
	combout => \JK5|Q_int~3_combout\);

-- Location: LCCOMB_X26_Y14_N14
\JK5|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK5|Q_int~0_combout\ = (\re~0_combout\) # (\JK5|Q_int~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re~0_combout\,
	datac => \JK5|Q_int~7_combout\,
	combout => \JK5|Q_int~0_combout\);

-- Location: FF_X26_Y14_N25
\JK5|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK5|Q_int~3_combout\,
	clrn => \JK5|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK5|Q_int~_emulated_q\);

-- Location: LCCOMB_X23_Y14_N18
\JK5|Q_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK5|Q_int~2_combout\ = (!\re~0_combout\ & ((\JK5|Q_int~7_combout\) # (\JK5|Q_int~1_combout\ $ (\JK5|Q_int~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK5|Q_int~7_combout\,
	datab => \JK5|Q_int~1_combout\,
	datac => \JK5|Q_int~_emulated_q\,
	datad => \re~0_combout\,
	combout => \JK5|Q_int~2_combout\);

-- Location: LCCOMB_X23_Y14_N16
\Incrementador_i|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Incrementador_i|Equal0~1_combout\ = (\JK2|Q_int~0_combout\ & (\JK1|Q_int~2_combout\ & (\JK0|Q_int~0_combout\ & \JK5|Q_int~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK2|Q_int~0_combout\,
	datab => \JK1|Q_int~2_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \JK5|Q_int~2_combout\,
	combout => \Incrementador_i|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Incrementador_i|i[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Incrementador_i|i[1]~2_combout\ = \Incrementador_i|i\(1) $ (((\Incrementador_i|i\(0) & (\Incrementador_i|Equal0~1_combout\ & \Incrementador_i|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Incrementador_i|i\(0),
	datab => \Incrementador_i|Equal0~1_combout\,
	datac => \Incrementador_i|i\(1),
	datad => \Incrementador_i|Equal0~0_combout\,
	combout => \Incrementador_i|i[1]~2_combout\);

-- Location: FF_X23_Y14_N15
\Incrementador_i|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~q\,
	d => \Incrementador_i|i[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Incrementador_i|i\(1));

-- Location: LCCOMB_X23_Y14_N22
\senal_verde_45s|carro~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal_verde_45s|carro~1_combout\ = (\JK4|Q_int~2_combout\ & ((\JK3|Q_int~2_combout\) # ((\JK2|Q_int~0_combout\ & \JK1|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK2|Q_int~0_combout\,
	datab => \JK3|Q_int~2_combout\,
	datac => \JK1|Q_int~2_combout\,
	datad => \JK4|Q_int~2_combout\,
	combout => \senal_verde_45s|carro~1_combout\);

-- Location: LCCOMB_X2_Y9_N20
\HCRS04_sens|i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|i~0_combout\ = (\HCRS04_sens|Sens|echo_count\(19)) # (!\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \HCRS04_sens|Sens|echo_count\(19),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~0_combout\,
	combout => \HCRS04_sens|i~0_combout\);

-- Location: LCCOMB_X2_Y9_N30
\HCRS04_sens|i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|i~1_combout\ = (!\HCRS04_sens|i\(0) & (!\HCRS04_sens|i~0_combout\ & ((\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\) # (!\HCRS04_sens|Sens|echo_count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~4_combout\,
	datab => \HCRS04_sens|Sens|echo_count\(14),
	datac => \HCRS04_sens|i\(0),
	datad => \HCRS04_sens|i~0_combout\,
	combout => \HCRS04_sens|i~1_combout\);

-- Location: FF_X2_Y9_N31
\HCRS04_sens|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|i~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|i\(0));

-- Location: LCCOMB_X2_Y9_N4
\HCRS04_sens|i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|i~2_combout\ = (\HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\ & (\HCRS04_sens|i\(0) $ (\HCRS04_sens|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|i\(0),
	datac => \HCRS04_sens|i\(1),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\,
	combout => \HCRS04_sens|i~2_combout\);

-- Location: FF_X2_Y9_N5
\HCRS04_sens|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|i\(1));

-- Location: LCCOMB_X2_Y9_N24
\HCRS04_sens|y_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \HCRS04_sens|y_i~0_combout\ = (\HCRS04_sens|i\(0) & (\HCRS04_sens|i\(1) & \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HCRS04_sens|i\(0),
	datac => \HCRS04_sens|i\(1),
	datad => \HCRS04_sens|Sens|Inst_distance_calculation|LessThan0~5_combout\,
	combout => \HCRS04_sens|y_i~0_combout\);

-- Location: FF_X2_Y9_N25
\HCRS04_sens|y_i\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \HCRS04_sens|CLOCK_1kHz|salida~clkctrl_outclk\,
	d => \HCRS04_sens|y_i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HCRS04_sens|y_i~q\);

-- Location: LCCOMB_X26_Y10_N14
\senal_verde_45s|carro~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal_verde_45s|carro~0_combout\ = (\senal_verde_45s|carro~q\) # ((\HCRS04_sens|y_i~q\ & ((\Incrementador_i|i\(0)) # (!\Incrementador_i|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Incrementador_i|i\(0),
	datab => \Incrementador_i|i\(1),
	datac => \senal_verde_45s|carro~q\,
	datad => \HCRS04_sens|y_i~q\,
	combout => \senal_verde_45s|carro~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\senal_verde_45s|carro~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \senal_verde_45s|carro~2_combout\ = (\senal_verde_45s|carro~1_combout\ & (\JK5|Q_int~2_combout\ & \senal_verde_45s|carro~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \senal_verde_45s|carro~1_combout\,
	datab => \JK5|Q_int~2_combout\,
	datac => \senal_verde_45s|carro~0_combout\,
	combout => \senal_verde_45s|carro~2_combout\);

-- Location: FF_X23_Y14_N3
\senal_verde_45s|carro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \senal_verde_45s|carro~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \senal_verde_45s|carro~q\);

-- Location: LCCOMB_X23_Y14_N10
gree : cycloneive_lcell_comb
-- Equation(s):
-- \gree~combout\ = (\Equal4~1_combout\ & (!\Incrementador_i|i\(0) & (\Incrementador_i|i\(1) & !\senal_verde_45s|carro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Incrementador_i|i\(0),
	datac => \Incrementador_i|i\(1),
	datad => \senal_verde_45s|carro~q\,
	combout => \gree~combout\);

-- Location: LCCOMB_X26_Y14_N6
\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\re~0_combout\) # (!\comb~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re~0_combout\,
	datac => \comb~2_combout\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X26_Y14_N16
\JK4|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK4|Q_int~1_combout\ = (!\gree~combout\ & ((\comb~4_combout\) # (\JK4|Q_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gree~combout\,
	datac => \comb~4_combout\,
	datad => \JK4|Q_int~1_combout\,
	combout => \JK4|Q_int~1_combout\);

-- Location: LCCOMB_X26_Y14_N26
\JK4|Q_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK4|Q_int~3_combout\ = \JK4|Q_int~1_combout\ $ (\JK4|Q_int~2_combout\ $ (((\JK3|Q_int~2_combout\ & \comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~2_combout\,
	datab => \JK4|Q_int~1_combout\,
	datac => \JK4|Q_int~2_combout\,
	datad => \comb~0_combout\,
	combout => \JK4|Q_int~3_combout\);

-- Location: LCCOMB_X26_Y14_N12
\JK4|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK4|Q_int~0_combout\ = (\comb~4_combout\) # (\gree~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~4_combout\,
	datad => \gree~combout\,
	combout => \JK4|Q_int~0_combout\);

-- Location: FF_X26_Y14_N27
\JK4|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK4|Q_int~3_combout\,
	clrn => \JK4|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK4|Q_int~_emulated_q\);

-- Location: LCCOMB_X23_Y14_N0
\JK4|Q_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK4|Q_int~2_combout\ = (!\gree~combout\ & ((\comb~4_combout\) # (\JK4|Q_int~1_combout\ $ (\JK4|Q_int~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gree~combout\,
	datab => \JK4|Q_int~1_combout\,
	datac => \comb~4_combout\,
	datad => \JK4|Q_int~_emulated_q\,
	combout => \JK4|Q_int~2_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Incrementador_i|i[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Incrementador_i|i[0]~3_combout\ = \Incrementador_i|i\(0) $ (((\JK3|Q_int~2_combout\ & (\JK4|Q_int~2_combout\ & \Incrementador_i|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~2_combout\,
	datab => \Incrementador_i|i\(0),
	datac => \JK4|Q_int~2_combout\,
	datad => \Incrementador_i|Equal0~1_combout\,
	combout => \Incrementador_i|i[0]~3_combout\);

-- Location: FF_X23_Y14_N27
\Incrementador_i|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	asdata => \Incrementador_i|i[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Incrementador_i|i\(0));

-- Location: LCCOMB_X23_Y14_N20
\re~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \re~0_combout\ = (\Equal4~1_combout\ & (!\Incrementador_i|i\(0) & ((\senal_verde_45s|carro~q\) # (!\Incrementador_i|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Incrementador_i|i\(0),
	datac => \Incrementador_i|i\(1),
	datad => \senal_verde_45s|carro~q\,
	combout => \re~0_combout\);

-- Location: LCCOMB_X26_Y14_N20
\JK5|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK5|Q_int~1_combout\ = (!\re~0_combout\ & ((\JK5|Q_int~7_combout\) # (\JK5|Q_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \re~0_combout\,
	datac => \JK5|Q_int~7_combout\,
	datad => \JK5|Q_int~1_combout\,
	combout => \JK5|Q_int~1_combout\);

-- Location: LCCOMB_X26_Y14_N0
\JK0|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK0|Q_int~1_combout\ = \JK5|Q_int~1_combout\ $ (!\JK0|Q_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK5|Q_int~1_combout\,
	datad => \JK0|Q_int~0_combout\,
	combout => \JK0|Q_int~1_combout\);

-- Location: FF_X26_Y14_N1
\JK0|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK0|Q_int~1_combout\,
	clrn => \JK5|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK0|Q_int~_emulated_q\);

-- Location: LCCOMB_X23_Y14_N8
\JK0|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK0|Q_int~0_combout\ = (!\re~0_combout\ & ((\JK5|Q_int~7_combout\) # (\JK5|Q_int~1_combout\ $ (\JK0|Q_int~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK5|Q_int~1_combout\,
	datab => \re~0_combout\,
	datac => \JK5|Q_int~7_combout\,
	datad => \JK0|Q_int~_emulated_q\,
	combout => \JK0|Q_int~0_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\JK3|Q_int~2_combout\ & (!\JK4|Q_int~2_combout\ & (!\JK2|Q_int~0_combout\ & !\JK5|Q_int~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~2_combout\,
	datab => \JK4|Q_int~2_combout\,
	datac => \JK2|Q_int~0_combout\,
	datad => \JK5|Q_int~2_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X25_Y14_N10
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\JK0|Q_int~0_combout\ & (\Equal4~0_combout\ & !\JK1|Q_int~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \JK0|Q_int~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \JK1|Q_int~2_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X23_Y14_N26
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Incrementador_i|i\(0) & (!\Equal4~1_combout\)) # (!\Incrementador_i|i\(0) & ((!\Incrementador_i|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Incrementador_i|i\(1),
	datac => \Incrementador_i|i\(0),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X23_Y14_N4
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\comb~1_combout\) # ((!\Incrementador_i|i\(0) & ((!\pulsador1|l~combout\) # (!\HCRS04_sens|yy_i~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \Incrementador_i|i\(0),
	datac => \HCRS04_sens|yy_i~q\,
	datad => \pulsador1|l~combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X26_Y14_N4
\JK3|Q_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK3|Q_int~7_combout\ = (!\comb~2_combout\ & !\comb~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~2_combout\,
	datad => \comb~3_combout\,
	combout => \JK3|Q_int~7_combout\);

-- Location: LCCOMB_X26_Y14_N10
\JK3|Q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK3|Q_int~1_combout\ = (!\comb~3_combout\ & ((\JK3|Q_int~7_combout\) # (\JK3|Q_int~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~7_combout\,
	datab => \comb~3_combout\,
	datad => \JK3|Q_int~1_combout\,
	combout => \JK3|Q_int~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\JK1|Q_int~2_combout\ & \JK0|Q_int~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK1|Q_int~2_combout\,
	datac => \JK0|Q_int~0_combout\,
	combout => \comb~5_combout\);

-- Location: LCCOMB_X25_Y14_N14
\JK3|Q_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK3|Q_int~3_combout\ = \JK3|Q_int~1_combout\ $ (\JK3|Q_int~2_combout\ $ (((\JK2|Q_int~0_combout\ & \comb~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK2|Q_int~0_combout\,
	datab => \JK3|Q_int~1_combout\,
	datac => \JK3|Q_int~2_combout\,
	datad => \comb~5_combout\,
	combout => \JK3|Q_int~3_combout\);

-- Location: FF_X25_Y14_N15
\JK3|Q_int~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_1Hz|salida~clkctrl_outclk\,
	d => \JK3|Q_int~3_combout\,
	clrn => \JK3|ALT_INV_Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \JK3|Q_int~_emulated_q\);

-- Location: LCCOMB_X23_Y14_N6
\JK3|Q_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \JK3|Q_int~2_combout\ = (!\comb~3_combout\ & ((\JK3|Q_int~7_combout\) # (\JK3|Q_int~1_combout\ $ (\JK3|Q_int~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~1_combout\,
	datab => \comb~3_combout\,
	datac => \JK3|Q_int~7_combout\,
	datad => \JK3|Q_int~_emulated_q\,
	combout => \JK3|Q_int~2_combout\);

-- Location: LCCOMB_X22_Y14_N18
\BCD|bcd[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|bcd[5]~0_combout\ = (\JK3|Q_int~2_combout\ & ((\JK4|Q_int~2_combout\ & ((\JK5|Q_int~2_combout\))) # (!\JK4|Q_int~2_combout\ & ((\JK2|Q_int~0_combout\) # (!\JK5|Q_int~2_combout\))))) # (!\JK3|Q_int~2_combout\ & ((\JK4|Q_int~2_combout\) # 
-- ((\JK2|Q_int~0_combout\ & !\JK5|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~2_combout\,
	datab => \JK4|Q_int~2_combout\,
	datac => \JK2|Q_int~0_combout\,
	datad => \JK5|Q_int~2_combout\,
	combout => \BCD|bcd[5]~0_combout\);

-- Location: LCCOMB_X24_Y14_N10
\BCD|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|temp~1_combout\ = (\JK5|Q_int~2_combout\ & ((\JK3|Q_int~2_combout\) # ((!\JK4|Q_int~2_combout\ & \JK2|Q_int~0_combout\)))) # (!\JK5|Q_int~2_combout\ & (((\JK4|Q_int~2_combout\ & !\JK2|Q_int~0_combout\)) # (!\JK3|Q_int~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK4|Q_int~2_combout\,
	datab => \JK5|Q_int~2_combout\,
	datac => \JK3|Q_int~2_combout\,
	datad => \JK2|Q_int~0_combout\,
	combout => \BCD|temp~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\BCD|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|temp~0_combout\ = (\JK4|Q_int~2_combout\ & (\JK2|Q_int~0_combout\ $ (((!\JK5|Q_int~2_combout\ & \JK3|Q_int~2_combout\))))) # (!\JK4|Q_int~2_combout\ & ((\JK5|Q_int~2_combout\ & ((\JK3|Q_int~2_combout\) # (!\JK2|Q_int~0_combout\))) # 
-- (!\JK5|Q_int~2_combout\ & ((\JK2|Q_int~0_combout\) # (!\JK3|Q_int~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK4|Q_int~2_combout\,
	datab => \JK5|Q_int~2_combout\,
	datac => \JK3|Q_int~2_combout\,
	datad => \JK2|Q_int~0_combout\,
	combout => \BCD|temp~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\BCD|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|temp~2_combout\ = (\JK4|Q_int~2_combout\ & (!\JK5|Q_int~2_combout\ & (\JK3|Q_int~2_combout\ & !\JK2|Q_int~0_combout\))) # (!\JK4|Q_int~2_combout\ & (\JK2|Q_int~0_combout\ & (\JK5|Q_int~2_combout\ $ (!\JK3|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK4|Q_int~2_combout\,
	datab => \JK5|Q_int~2_combout\,
	datac => \JK3|Q_int~2_combout\,
	datad => \JK2|Q_int~0_combout\,
	combout => \BCD|temp~2_combout\);

-- Location: LCCOMB_X24_Y14_N8
\BCD|bcd[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|bcd[4]~1_combout\ = \BCD|temp~2_combout\ $ (((\BCD|temp~1_combout\) # ((\BCD|temp~0_combout\ & \JK1|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|temp~1_combout\,
	datab => \BCD|temp~0_combout\,
	datac => \BCD|temp~2_combout\,
	datad => \JK1|Q_int~2_combout\,
	combout => \BCD|bcd[4]~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\S~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~5_combout\ = (\BCD|bcd[4]~1_combout\) # (\BCD|bcd[5]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|bcd[4]~1_combout\,
	datac => \BCD|bcd[5]~0_combout\,
	combout => \S~5_combout\);

-- Location: LCCOMB_X22_Y14_N30
\BCD|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|LessThan0~0_combout\ = (!\JK5|Q_int~2_combout\ & ((!\JK4|Q_int~2_combout\) # (!\JK3|Q_int~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK3|Q_int~2_combout\,
	datab => \JK4|Q_int~2_combout\,
	datad => \JK5|Q_int~2_combout\,
	combout => \BCD|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S[0]~0_combout\ = (\BCD|LessThan0~0_combout\ & ((\S~5_combout\))) # (!\BCD|LessThan0~0_combout\ & (!\BCD|bcd[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[5]~0_combout\,
	datab => \S~5_combout\,
	datad => \BCD|LessThan0~0_combout\,
	combout => \S[0]~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\BCD|bcd[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|bcd[2]~3_combout\ = (\JK1|Q_int~2_combout\ & ((\BCD|temp~2_combout\ & ((!\BCD|temp~0_combout\))) # (!\BCD|temp~2_combout\ & ((\BCD|temp~0_combout\) # (!\BCD|temp~1_combout\))))) # (!\JK1|Q_int~2_combout\ & (((\BCD|temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK1|Q_int~2_combout\,
	datab => \BCD|temp~1_combout\,
	datac => \BCD|temp~2_combout\,
	datad => \BCD|temp~0_combout\,
	combout => \BCD|bcd[2]~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\BCD|bcd[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|bcd[3]~4_combout\ = (\BCD|temp~1_combout\ & (\BCD|temp~2_combout\ & ((!\BCD|temp~0_combout\) # (!\JK1|Q_int~2_combout\)))) # (!\BCD|temp~1_combout\ & (((\JK1|Q_int~2_combout\ & \BCD|temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|temp~2_combout\,
	datab => \BCD|temp~1_combout\,
	datac => \JK1|Q_int~2_combout\,
	datad => \BCD|temp~0_combout\,
	combout => \BCD|bcd[3]~4_combout\);

-- Location: LCCOMB_X24_Y14_N20
\BCD|bcd[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD|bcd[1]~2_combout\ = (\BCD|temp~2_combout\ & (!\JK1|Q_int~2_combout\)) # (!\BCD|temp~2_combout\ & ((\JK1|Q_int~2_combout\ & ((\BCD|temp~1_combout\) # (\BCD|temp~0_combout\))) # (!\JK1|Q_int~2_combout\ & (!\BCD|temp~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|temp~2_combout\,
	datab => \JK1|Q_int~2_combout\,
	datac => \BCD|temp~1_combout\,
	datad => \BCD|temp~0_combout\,
	combout => \BCD|bcd[1]~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\seg7_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux6~0_combout\ = (\BCD|bcd[2]~3_combout\ & (\BCD|bcd[3]~4_combout\ $ (((!\BCD|bcd[1]~2_combout\))))) # (!\BCD|bcd[2]~3_combout\ & (!\BCD|bcd[3]~4_combout\ & ((\JK0|Q_int~0_combout\) # (\BCD|bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[2]~3_combout\,
	datab => \BCD|bcd[3]~4_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\digit_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_sel~0_combout\ = !\digit_sel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_sel~q\,
	combout => \digit_sel~0_combout\);

-- Location: FF_X22_Y14_N11
digit_sel : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \digit_sel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_sel~q\);

-- Location: FF_X22_Y14_N29
\S[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S[0]~0_combout\,
	asdata => \seg7_1|Mux6~0_combout\,
	sload => \ALT_INV_digit_sel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(0));

-- Location: LCCOMB_X25_Y14_N4
\S~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~6_combout\ = (\JK4|Q_int~2_combout\ & (\JK5|Q_int~2_combout\)) # (!\JK4|Q_int~2_combout\ & ((\JK5|Q_int~2_combout\ & (\JK2|Q_int~0_combout\ & \JK3|Q_int~2_combout\)) # (!\JK5|Q_int~2_combout\ & (!\JK2|Q_int~0_combout\ & !\JK3|Q_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK4|Q_int~2_combout\,
	datab => \JK5|Q_int~2_combout\,
	datac => \JK2|Q_int~0_combout\,
	datad => \JK3|Q_int~2_combout\,
	combout => \S~6_combout\);

-- Location: LCCOMB_X25_Y14_N28
\S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S[1]~1_combout\ = (\S~6_combout\ & ((\BCD|bcd[4]~1_combout\))) # (!\S~6_combout\ & (\BCD|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|LessThan0~0_combout\,
	datab => \S~6_combout\,
	datad => \BCD|bcd[4]~1_combout\,
	combout => \S[1]~1_combout\);

-- Location: LCCOMB_X25_Y14_N26
\seg7_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux5~0_combout\ = (\BCD|bcd[2]~3_combout\ & (\BCD|bcd[1]~2_combout\ & ((\BCD|bcd[3]~4_combout\) # (\JK0|Q_int~0_combout\)))) # (!\BCD|bcd[2]~3_combout\ & (!\BCD|bcd[3]~4_combout\ & ((\JK0|Q_int~0_combout\) # (\BCD|bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[2]~3_combout\,
	datab => \BCD|bcd[3]~4_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux5~0_combout\);

-- Location: FF_X25_Y14_N29
\S[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S[1]~1_combout\,
	asdata => \seg7_1|Mux5~0_combout\,
	sload => \ALT_INV_digit_sel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(1));

-- Location: LCCOMB_X22_Y14_N0
\S~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~7_combout\ = (\digit_sel~q\ & ((!\BCD|LessThan0~0_combout\) # (!\BCD|bcd[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD|bcd[5]~0_combout\,
	datac => \BCD|LessThan0~0_combout\,
	datad => \digit_sel~q\,
	combout => \S~7_combout\);

-- Location: LCCOMB_X25_Y14_N12
\seg7_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux4~0_combout\ = (\JK0|Q_int~0_combout\ & ((\BCD|bcd[1]~2_combout\ & (\BCD|bcd[2]~3_combout\)) # (!\BCD|bcd[1]~2_combout\ & ((!\BCD|bcd[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[2]~3_combout\,
	datab => \BCD|bcd[3]~4_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux4~0_combout\);

-- Location: LCCOMB_X25_Y14_N20
\S~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~8_combout\ = (\S~7_combout\ & ((\BCD|bcd[4]~1_combout\) # ((\seg7_1|Mux4~0_combout\ & !\digit_sel~q\)))) # (!\S~7_combout\ & (\seg7_1|Mux4~0_combout\ & (!\digit_sel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~7_combout\,
	datab => \seg7_1|Mux4~0_combout\,
	datac => \digit_sel~q\,
	datad => \BCD|bcd[4]~1_combout\,
	combout => \S~8_combout\);

-- Location: FF_X25_Y14_N21
\S[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(2));

-- Location: LCCOMB_X25_Y14_N0
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = (\JK5|Q_int~2_combout\) # (((\JK4|Q_int~2_combout\ & \JK3|Q_int~2_combout\)) # (!\BCD|bcd[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \JK4|Q_int~2_combout\,
	datab => \JK3|Q_int~2_combout\,
	datac => \JK5|Q_int~2_combout\,
	datad => \BCD|bcd[4]~1_combout\,
	combout => \S~15_combout\);

-- Location: LCCOMB_X25_Y14_N2
\S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S[3]~2_combout\ = (\S~6_combout\ & ((\BCD|bcd[4]~1_combout\))) # (!\S~6_combout\ & (\S~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~15_combout\,
	datab => \S~6_combout\,
	datad => \BCD|bcd[4]~1_combout\,
	combout => \S[3]~2_combout\);

-- Location: LCCOMB_X25_Y14_N18
\seg7_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux3~0_combout\ = (\BCD|bcd[1]~2_combout\ & (\BCD|bcd[2]~3_combout\ $ (((!\BCD|bcd[3]~4_combout\ & !\JK0|Q_int~0_combout\))))) # (!\BCD|bcd[1]~2_combout\ & (!\BCD|bcd[3]~4_combout\ & ((\BCD|bcd[2]~3_combout\) # (\JK0|Q_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[2]~3_combout\,
	datab => \BCD|bcd[3]~4_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux3~0_combout\);

-- Location: FF_X25_Y14_N3
\S[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S[3]~2_combout\,
	asdata => \seg7_1|Mux3~0_combout\,
	sload => \ALT_INV_digit_sel~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(3));

-- Location: LCCOMB_X22_Y14_N8
\seg7_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux2~0_combout\ = (\BCD|bcd[2]~3_combout\ & (!\BCD|bcd[1]~2_combout\ & ((\BCD|bcd[3]~4_combout\) # (\JK0|Q_int~0_combout\)))) # (!\BCD|bcd[2]~3_combout\ & (\BCD|bcd[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[3]~4_combout\,
	datab => \BCD|bcd[2]~3_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\S~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~9_combout\ = (\digit_sel~q\ & ((\BCD|LessThan0~0_combout\) # ((\BCD|bcd[5]~0_combout\) # (!\BCD|bcd[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|LessThan0~0_combout\,
	datab => \BCD|bcd[5]~0_combout\,
	datac => \BCD|bcd[4]~1_combout\,
	datad => \digit_sel~q\,
	combout => \S~9_combout\);

-- Location: LCCOMB_X22_Y14_N6
\S~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~10_combout\ = (\S~9_combout\) # ((!\seg7_1|Mux2~0_combout\ & !\digit_sel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7_1|Mux2~0_combout\,
	datab => \S~9_combout\,
	datad => \digit_sel~q\,
	combout => \S~10_combout\);

-- Location: FF_X22_Y14_N7
\S[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(4));

-- Location: LCCOMB_X25_Y14_N24
\S~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~11_combout\ = (\digit_sel~q\ & ((\BCD|bcd[4]~1_combout\ $ (!\BCD|bcd[5]~0_combout\)) # (!\BCD|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[4]~1_combout\,
	datab => \BCD|LessThan0~0_combout\,
	datac => \digit_sel~q\,
	datad => \BCD|bcd[5]~0_combout\,
	combout => \S~11_combout\);

-- Location: LCCOMB_X25_Y14_N22
\seg7_1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux1~0_combout\ = (\BCD|bcd[2]~3_combout\ & (\BCD|bcd[3]~4_combout\ & ((!\BCD|bcd[1]~2_combout\)))) # (!\BCD|bcd[2]~3_combout\ & ((\BCD|bcd[3]~4_combout\) # (\JK0|Q_int~0_combout\ $ (\BCD|bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[2]~3_combout\,
	datab => \BCD|bcd[3]~4_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y14_N30
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = (\S~11_combout\) # ((!\seg7_1|Mux1~0_combout\ & !\digit_sel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~11_combout\,
	datab => \seg7_1|Mux1~0_combout\,
	datac => \digit_sel~q\,
	combout => \S~12_combout\);

-- Location: FF_X25_Y14_N31
\S[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(5));

-- Location: LCCOMB_X22_Y14_N2
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = (\digit_sel~q\ & ((\BCD|LessThan0~0_combout\ $ (\BCD|bcd[4]~1_combout\)) # (!\BCD|bcd[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|LessThan0~0_combout\,
	datab => \BCD|bcd[4]~1_combout\,
	datac => \BCD|bcd[5]~0_combout\,
	datad => \digit_sel~q\,
	combout => \S~13_combout\);

-- Location: LCCOMB_X22_Y14_N12
\seg7_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seg7_1|Mux0~0_combout\ = (\BCD|bcd[1]~2_combout\ & (\BCD|bcd[2]~3_combout\ $ (((\BCD|bcd[3]~4_combout\) # (\JK0|Q_int~0_combout\))))) # (!\BCD|bcd[1]~2_combout\ & (\BCD|bcd[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD|bcd[3]~4_combout\,
	datab => \BCD|bcd[2]~3_combout\,
	datac => \JK0|Q_int~0_combout\,
	datad => \BCD|bcd[1]~2_combout\,
	combout => \seg7_1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y14_N16
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = (\S~13_combout\) # ((!\digit_sel~q\ & !\seg7_1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_sel~q\,
	datab => \S~13_combout\,
	datad => \seg7_1|Mux0~0_combout\,
	combout => \S~14_combout\);

-- Location: FF_X22_Y14_N17
\S[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \S~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S(6));

-- Location: LCCOMB_X22_Y14_N26
\gnd_1i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnd_1i~0_combout\ = !\digit_sel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digit_sel~q\,
	combout => \gnd_1i~0_combout\);

-- Location: FF_X22_Y14_N27
gnd_1i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \gnd_1i~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gnd_1i~q\);

-- Location: LCCOMB_X22_Y14_N24
\gnd_2i~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gnd_2i~feeder_combout\ = \digit_sel~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digit_sel~q\,
	combout => \gnd_2i~feeder_combout\);

-- Location: FF_X22_Y14_N25
gnd_2i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_10kHz|salida~clkctrl_outclk\,
	d => \gnd_2i~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gnd_2i~q\);

-- Location: LCCOMB_X26_Y10_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Incrementador_i|i\(0)) # (\Incrementador_i|i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Incrementador_i|i\(0),
	datac => \Incrementador_i|i\(1),
	combout => \Equal0~0_combout\);

ww_trigger <= \trigger~output_o\;

ww_S_o(0) <= \S_o[0]~output_o\;

ww_S_o(1) <= \S_o[1]~output_o\;

ww_S_o(2) <= \S_o[2]~output_o\;

ww_S_o(3) <= \S_o[3]~output_o\;

ww_S_o(4) <= \S_o[4]~output_o\;

ww_S_o(5) <= \S_o[5]~output_o\;

ww_S_o(6) <= \S_o[6]~output_o\;

ww_gnd_1 <= \gnd_1~output_o\;

ww_gnd_2 <= \gnd_2~output_o\;

ww_red <= \red~output_o\;

ww_green <= \green~output_o\;

ww_yellow <= \yellow~output_o\;

ww_press <= \press~output_o\;

ww_yt <= \yt~output_o\;

ww_red_peaton <= \red_peaton~output_o\;

ww_green_peaton <= \green_peaton~output_o\;
END structure;


