-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "07/16/2024 15:11:14"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic;
	sim_sm_clk : BUFFER std_logic;
	sim_blink_signal : BUFFER std_logic;
	sim_ns_green : BUFFER std_logic;
	sim_ns_amber : BUFFER std_logic;
	sim_ns_red : BUFFER std_logic;
	sim_ew_green : BUFFER std_logic;
	sim_ew_amber : BUFFER std_logic;
	sim_ew_red : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL ww_sim_sm_clk : std_logic;
SIGNAL ww_sim_blink_signal : std_logic;
SIGNAL ww_sim_ns_green : std_logic;
SIGNAL ww_sim_ns_amber : std_logic;
SIGNAL ww_sim_ns_red : std_logic;
SIGNAL ww_sim_ew_green : std_logic;
SIGNAL ww_sim_ew_amber : std_logic;
SIGNAL ww_sim_ew_red : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sim_sm_clk~output_o\ : std_logic;
SIGNAL \sim_blink_signal~output_o\ : std_logic;
SIGNAL \sim_ns_green~output_o\ : std_logic;
SIGNAL \sim_ns_amber~output_o\ : std_logic;
SIGNAL \sim_ns_red~output_o\ : std_logic;
SIGNAL \sim_ew_green~output_o\ : std_logic;
SIGNAL \sim_ew_amber~output_o\ : std_logic;
SIGNAL \sim_ew_red~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \INST0|pb_n_filtered[0]~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST0|rst_n_filtered~0_combout\ : std_logic;
SIGNAL \INST3|sreg~0_combout\ : std_logic;
SIGNAL \INST6|sreg~0_combout\ : std_logic;
SIGNAL \INST7|input_logic~0_combout\ : std_logic;
SIGNAL \INST7|dout~q\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \INST0|pb_n_filtered[1]~1_combout\ : std_logic;
SIGNAL \INST4|sreg~0_combout\ : std_logic;
SIGNAL \INST5|input_logic~0_combout\ : std_logic;
SIGNAL \INST5|dout~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[0]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \INST2|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \INST2|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \INST2|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \INST2|clk_reg_extend~0_combout\ : std_logic;
SIGNAL \INST2|clk_reg_extend~1_combout\ : std_logic;
SIGNAL \INST2|sm_clken~combout\ : std_logic;
SIGNAL \INST8|current_state~48_combout\ : std_logic;
SIGNAL \INST8|current_state.S15~q\ : std_logic;
SIGNAL \INST8|current_state~45_combout\ : std_logic;
SIGNAL \INST8|current_state.S0~q\ : std_logic;
SIGNAL \INST8|next_state.S1~0_combout\ : std_logic;
SIGNAL \INST8|current_state~35_combout\ : std_logic;
SIGNAL \INST8|current_state.S1~q\ : std_logic;
SIGNAL \INST8|next_state.S2~0_combout\ : std_logic;
SIGNAL \INST8|current_state.S2~q\ : std_logic;
SIGNAL \INST8|current_state~34_combout\ : std_logic;
SIGNAL \INST8|current_state.S3~q\ : std_logic;
SIGNAL \INST8|current_state~36_combout\ : std_logic;
SIGNAL \INST8|current_state.S4~q\ : std_logic;
SIGNAL \INST8|current_state~37_combout\ : std_logic;
SIGNAL \INST8|current_state.S5~q\ : std_logic;
SIGNAL \INST8|WideOr6~0_combout\ : std_logic;
SIGNAL \INST8|current_state~41_combout\ : std_logic;
SIGNAL \INST8|current_state~42_combout\ : std_logic;
SIGNAL \INST8|current_state.S6~q\ : std_logic;
SIGNAL \INST8|current_state~47_combout\ : std_logic;
SIGNAL \INST8|current_state.S7~q\ : std_logic;
SIGNAL \INST8|current_state~46_combout\ : std_logic;
SIGNAL \INST8|current_state.S8~q\ : std_logic;
SIGNAL \INST8|next_state.S9~0_combout\ : std_logic;
SIGNAL \INST8|current_state.S9~q\ : std_logic;
SIGNAL \INST8|next_state.S10~0_combout\ : std_logic;
SIGNAL \INST8|current_state.S10~q\ : std_logic;
SIGNAL \INST8|current_state~38_combout\ : std_logic;
SIGNAL \INST8|current_state.S11~q\ : std_logic;
SIGNAL \INST8|current_state~39_combout\ : std_logic;
SIGNAL \INST8|current_state.S12~q\ : std_logic;
SIGNAL \INST8|current_state~40_combout\ : std_logic;
SIGNAL \INST8|current_state.S13~q\ : std_logic;
SIGNAL \INST8|WideOr7~1_combout\ : std_logic;
SIGNAL \INST8|current_state~43_combout\ : std_logic;
SIGNAL \INST8|current_state~44_combout\ : std_logic;
SIGNAL \INST8|current_state.S14~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST9|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \INST8|ns_amber~0_combout\ : std_logic;
SIGNAL \INST9|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \INST8|WideOr4~0_combout\ : std_logic;
SIGNAL \INST8|WideOr3~0_combout\ : std_logic;
SIGNAL \INST8|WideOr9~0_combout\ : std_logic;
SIGNAL \INST8|WideOr8~0_combout\ : std_logic;
SIGNAL \INST8|WideOr9~combout\ : std_logic;
SIGNAL \INST8|WideOr8~1_combout\ : std_logic;
SIGNAL \INST8|WideOr8~combout\ : std_logic;
SIGNAL \INST8|WideOr7~0_combout\ : std_logic;
SIGNAL \INST8|WideOr7~combout\ : std_logic;
SIGNAL \INST8|WideOr6~combout\ : std_logic;
SIGNAL \INST9|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST2|blink_sig~0_combout\ : std_logic;
SIGNAL \INST2|blink_sig~q\ : std_logic;
SIGNAL \INST8|Selector3~2_combout\ : std_logic;
SIGNAL \INST8|Selector2~2_combout\ : std_logic;
SIGNAL \INST9|DOUT[3]~1_combout\ : std_logic;
SIGNAL \INST8|ew_amber~combout\ : std_logic;
SIGNAL \INST0|sreg4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST3|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST6|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST4|sreg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST2|clk_reg_extend\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \INST0|sreg0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST0|sreg1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST8|ALT_INV_ns_amber~0_combout\ : std_logic;
SIGNAL \INST8|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \INST8|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \INST8|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \INST8|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \INST8|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \INST9|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
sim_sm_clk <= ww_sim_sm_clk;
sim_blink_signal <= ww_sim_blink_signal;
sim_ns_green <= ww_sim_ns_green;
sim_ns_amber <= ww_sim_ns_amber;
sim_ns_red <= ww_sim_ns_red;
sim_ew_green <= ww_sim_ew_green;
sim_ew_amber <= ww_sim_ew_amber;
sim_ew_red <= ww_sim_ew_red;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\INST8|ALT_INV_ns_amber~0_combout\ <= NOT \INST8|ns_amber~0_combout\;
\INST8|ALT_INV_WideOr6~combout\ <= NOT \INST8|WideOr6~combout\;
\INST8|ALT_INV_WideOr7~combout\ <= NOT \INST8|WideOr7~combout\;
\INST8|ALT_INV_WideOr8~combout\ <= NOT \INST8|WideOr8~combout\;
\INST8|ALT_INV_WideOr9~combout\ <= NOT \INST8|WideOr9~combout\;
\INST8|ALT_INV_WideOr4~0_combout\ <= NOT \INST8|WideOr4~0_combout\;
\INST9|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST9|clk_proc:COUNT[10]~q\;

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST9|DOUT_TEMP[6]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST7|dout~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|dout~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr9~combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr8~combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|DOUT[3]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\sim_sm_clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2|sm_clken~combout\,
	devoe => ww_devoe,
	o => \sim_sm_clk~output_o\);

\sim_blink_signal~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST2|blink_sig~q\,
	devoe => ww_devoe,
	o => \sim_blink_signal~output_o\);

\sim_ns_green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|Selector3~2_combout\,
	devoe => ww_devoe,
	o => \sim_ns_green~output_o\);

\sim_ns_amber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_ns_amber~0_combout\,
	devoe => ww_devoe,
	o => \sim_ns_amber~output_o\);

\sim_ns_red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \sim_ns_red~output_o\);

\sim_ew_green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|Selector2~2_combout\,
	devoe => ww_devoe,
	o => \sim_ew_green~output_o\);

\sim_ew_amber~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|ew_amber~combout\,
	devoe => ww_devoe,
	o => \sim_ew_amber~output_o\);

\sim_ew_red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8|WideOr6~combout\,
	devoe => ww_devoe,
	o => \sim_ew_red~output_o\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\INST0|sreg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(0));

\INST0|sreg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(1));

\INST0|sreg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(2));

\INST0|sreg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg0\(3));

\INST0|pb_n_filtered[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[0]~0_combout\ = (!\INST0|sreg0\(1) & (!\INST0|sreg0\(2) & !\INST0|sreg0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg0\(1),
	datab => \INST0|sreg0\(2),
	datac => \INST0|sreg0\(3),
	combout => \INST0|pb_n_filtered[0]~0_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\INST0|sreg4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(0));

\INST0|sreg4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(1));

\INST0|sreg4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(2));

\INST0|sreg4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg4\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg4\(3));

\INST0|rst_n_filtered~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|rst_n_filtered~0_combout\ = (!\INST0|sreg4\(1) & (!\INST0|sreg4\(2) & !\INST0|sreg4\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg4\(1),
	datab => \INST0|sreg4\(2),
	datac => \INST0|sreg4\(3),
	combout => \INST0|rst_n_filtered~0_combout\);

\INST3|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|rst_n_filtered~0_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|sreg\(0));

\INST3|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|sreg~0_combout\ = (\INST3|sreg\(0) & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|sreg\(0),
	datad => \INST3|sreg\(1),
	combout => \INST3|sreg~0_combout\);

\INST3|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST3|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|sreg\(1));

\INST6|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|pb_n_filtered[0]~0_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(0));

\INST6|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|sreg~0_combout\ = (\INST6|sreg\(0) & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|sreg\(0),
	datad => \INST3|sreg\(1),
	combout => \INST6|sreg~0_combout\);

\INST6|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST6|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|sreg\(1));

\INST7|input_logic~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|input_logic~0_combout\ = (!\INST8|current_state.S6~q\ & (!\INST3|sreg\(1) & ((\INST7|dout~q\) # (\INST6|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|dout~q\,
	datab => \INST6|sreg\(1),
	datac => \INST8|current_state.S6~q\,
	datad => \INST3|sreg\(1),
	combout => \INST7|input_logic~0_combout\);

\INST7|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST7|input_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|dout~q\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\INST0|sreg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \pb_n[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(0));

\INST0|sreg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(1));

\INST0|sreg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(2));

\INST0|sreg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|sreg1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST0|sreg1\(3));

\INST0|pb_n_filtered[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST0|pb_n_filtered[1]~1_combout\ = (!\INST0|sreg1\(1) & (!\INST0|sreg1\(2) & !\INST0|sreg1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST0|sreg1\(1),
	datab => \INST0|sreg1\(2),
	datac => \INST0|sreg1\(3),
	combout => \INST0|pb_n_filtered[1]~1_combout\);

\INST4|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST0|pb_n_filtered[1]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(0));

\INST4|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|sreg~0_combout\ = (\INST4|sreg\(0) & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|sreg\(0),
	datad => \INST3|sreg\(1),
	combout => \INST4|sreg~0_combout\);

\INST4|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST4|sreg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|sreg\(1));

\INST5|input_logic~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|input_logic~0_combout\ = (!\INST8|current_state.S14~q\ & (!\INST3|sreg\(1) & ((\INST5|dout~q\) # (\INST4|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|dout~q\,
	datab => \INST4|sreg\(1),
	datac => \INST8|current_state.S14~q\,
	datad => \INST3|sreg\(1),
	combout => \INST5|input_logic~0_combout\);

\INST5|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST5|input_logic~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|dout~q\);

\INST2|clk_divider:counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[0]~1_combout\ = \INST2|clk_divider:counter[0]~q\ $ (VCC)
-- \INST2|clk_divider:counter[0]~2\ = CARRY(\INST2|clk_divider:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[0]~q\,
	datad => VCC,
	combout => \INST2|clk_divider:counter[0]~1_combout\,
	cout => \INST2|clk_divider:counter[0]~2\);

\INST2|clk_divider:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_divider:counter[0]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[0]~q\);

\INST2|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[1]~1_combout\ = (\INST2|clk_divider:counter[1]~q\ & (!\INST2|clk_divider:counter[0]~2\)) # (!\INST2|clk_divider:counter[1]~q\ & ((\INST2|clk_divider:counter[0]~2\) # (GND)))
-- \INST2|clk_divider:counter[1]~2\ = CARRY((!\INST2|clk_divider:counter[0]~2\) # (!\INST2|clk_divider:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[1]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[0]~2\,
	combout => \INST2|clk_divider:counter[1]~1_combout\,
	cout => \INST2|clk_divider:counter[1]~2\);

\INST2|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_divider:counter[1]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[1]~q\);

\INST2|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[2]~1_combout\ = (\INST2|clk_divider:counter[2]~q\ & (\INST2|clk_divider:counter[1]~2\ $ (GND))) # (!\INST2|clk_divider:counter[2]~q\ & (!\INST2|clk_divider:counter[1]~2\ & VCC))
-- \INST2|clk_divider:counter[2]~2\ = CARRY((\INST2|clk_divider:counter[2]~q\ & !\INST2|clk_divider:counter[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[1]~2\,
	combout => \INST2|clk_divider:counter[2]~1_combout\,
	cout => \INST2|clk_divider:counter[2]~2\);

\INST2|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_divider:counter[2]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[2]~q\);

\INST2|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[3]~1_combout\ = (\INST2|clk_divider:counter[3]~q\ & (!\INST2|clk_divider:counter[2]~2\)) # (!\INST2|clk_divider:counter[3]~q\ & ((\INST2|clk_divider:counter[2]~2\) # (GND)))
-- \INST2|clk_divider:counter[3]~2\ = CARRY((!\INST2|clk_divider:counter[2]~2\) # (!\INST2|clk_divider:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \INST2|clk_divider:counter[2]~2\,
	combout => \INST2|clk_divider:counter[3]~1_combout\,
	cout => \INST2|clk_divider:counter[3]~2\);

\INST2|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_divider:counter[3]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[3]~q\);

\INST2|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_divider:counter[4]~1_combout\ = \INST2|clk_divider:counter[4]~q\ $ (!\INST2|clk_divider:counter[3]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[4]~q\,
	cin => \INST2|clk_divider:counter[3]~2\,
	combout => \INST2|clk_divider:counter[4]~1_combout\);

\INST2|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_divider:counter[4]~1_combout\,
	sclr => \INST3|sreg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_divider:counter[4]~q\);

\INST2|clk_reg_extend~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_reg_extend~0_combout\ = (\INST2|clk_divider:counter[4]~q\ & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[4]~q\,
	datad => \INST3|sreg\(1),
	combout => \INST2|clk_reg_extend~0_combout\);

\INST2|clk_reg_extend[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_reg_extend~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_reg_extend\(0));

\INST2|clk_reg_extend~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|clk_reg_extend~1_combout\ = (\INST2|clk_reg_extend\(0) & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_reg_extend\(0),
	datad => \INST3|sreg\(1),
	combout => \INST2|clk_reg_extend~1_combout\);

\INST2|clk_reg_extend[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|clk_reg_extend~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|clk_reg_extend\(1));

\INST2|sm_clken\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|sm_clken~combout\ = (\INST2|clk_reg_extend\(0) & !\INST2|clk_reg_extend\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_reg_extend\(0),
	datad => \INST2|clk_reg_extend\(1),
	combout => \INST2|sm_clken~combout\);

\INST8|current_state~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~48_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S14~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S14~q\,
	datab => \INST8|current_state.S15~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~48_combout\);

\INST8|current_state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S15~q\);

\INST8|current_state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~45_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (!\INST8|current_state.S15~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|sreg\(1),
	datab => \INST8|current_state.S15~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST8|current_state.S0~q\,
	combout => \INST8|current_state~45_combout\);

\INST8|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S0~q\);

\INST8|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|next_state.S1~0_combout\ = (!\INST8|current_state.S0~q\ & ((\INST7|dout~q\) # (!\INST5|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|dout~q\,
	datac => \INST5|dout~q\,
	datad => \INST8|current_state.S0~q\,
	combout => \INST8|next_state.S1~0_combout\);

\INST8|current_state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~35_combout\ = (\INST3|sreg\(1)) # ((\INST2|clk_reg_extend\(0) & !\INST2|clk_reg_extend\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|sreg\(1),
	datab => \INST2|clk_reg_extend\(0),
	datad => \INST2|clk_reg_extend\(1),
	combout => \INST8|current_state~35_combout\);

\INST8|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|next_state.S1~0_combout\,
	sclr => \INST3|sreg\(1),
	ena => \INST8|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S1~q\);

\INST8|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|next_state.S2~0_combout\ = (\INST8|current_state.S1~q\ & ((\INST7|dout~q\) # (!\INST5|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S1~q\,
	datab => \INST7|dout~q\,
	datad => \INST5|dout~q\,
	combout => \INST8|next_state.S2~0_combout\);

\INST8|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|next_state.S2~0_combout\,
	sclr => \INST3|sreg\(1),
	ena => \INST8|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S2~q\);

\INST8|current_state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~34_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S2~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S2~q\,
	datab => \INST8|current_state.S3~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~34_combout\);

\INST8|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S3~q\);

\INST8|current_state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~36_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S3~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S3~q\,
	datab => \INST8|current_state.S4~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~36_combout\);

\INST8|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S4~q\);

\INST8|current_state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~37_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S4~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S4~q\,
	datab => \INST8|current_state.S5~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~37_combout\);

\INST8|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S5~q\);

\INST8|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr6~0_combout\ = (\INST8|current_state.S0~q\ & !\INST8|current_state.S1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S0~q\,
	datad => \INST8|current_state.S1~q\,
	combout => \INST8|WideOr6~0_combout\);

\INST8|current_state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~41_combout\ = (\INST8|current_state.S5~q\) # ((\INST5|dout~q\ & (!\INST7|dout~q\ & !\INST8|WideOr6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S5~q\,
	datab => \INST5|dout~q\,
	datac => \INST7|dout~q\,
	datad => \INST8|WideOr6~0_combout\,
	combout => \INST8|current_state~41_combout\);

\INST8|current_state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~42_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state~41_combout\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state~41_combout\,
	datab => \INST8|current_state.S6~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~42_combout\);

\INST8|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S6~q\);

\INST8|current_state~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~47_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S6~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S7~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S6~q\,
	datab => \INST8|current_state.S7~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~47_combout\);

\INST8|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S7~q\);

\INST8|current_state~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~46_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S7~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S7~q\,
	datab => \INST8|current_state.S8~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~46_combout\);

\INST8|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S8~q\);

\INST8|next_state.S9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|next_state.S9~0_combout\ = (\INST8|current_state.S8~q\ & ((\INST5|dout~q\) # (!\INST7|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S8~q\,
	datab => \INST5|dout~q\,
	datad => \INST7|dout~q\,
	combout => \INST8|next_state.S9~0_combout\);

\INST8|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|next_state.S9~0_combout\,
	sclr => \INST3|sreg\(1),
	ena => \INST8|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S9~q\);

\INST8|next_state.S10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|next_state.S10~0_combout\ = (\INST8|current_state.S9~q\ & ((\INST5|dout~q\) # (!\INST7|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S9~q\,
	datab => \INST5|dout~q\,
	datad => \INST7|dout~q\,
	combout => \INST8|next_state.S10~0_combout\);

\INST8|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|next_state.S10~0_combout\,
	sclr => \INST3|sreg\(1),
	ena => \INST8|current_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S10~q\);

\INST8|current_state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~38_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S10~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S10~q\,
	datab => \INST8|current_state.S11~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~38_combout\);

\INST8|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S11~q\);

\INST8|current_state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~39_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S11~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S11~q\,
	datab => \INST8|current_state.S12~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~39_combout\);

\INST8|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S12~q\);

\INST8|current_state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~40_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state.S12~q\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S13~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S12~q\,
	datab => \INST8|current_state.S13~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~40_combout\);

\INST8|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S13~q\);

\INST8|WideOr7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr7~1_combout\ = (!\INST8|current_state.S8~q\ & !\INST8|current_state.S9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST8|current_state.S8~q\,
	datad => \INST8|current_state.S9~q\,
	combout => \INST8|WideOr7~1_combout\);

\INST8|current_state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~43_combout\ = (\INST8|current_state.S13~q\) # ((\INST7|dout~q\ & (!\INST5|dout~q\ & !\INST8|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S13~q\,
	datab => \INST7|dout~q\,
	datac => \INST5|dout~q\,
	datad => \INST8|WideOr7~1_combout\,
	combout => \INST8|current_state~43_combout\);

\INST8|current_state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|current_state~44_combout\ = (!\INST3|sreg\(1) & ((\INST2|sm_clken~combout\ & (\INST8|current_state~43_combout\)) # (!\INST2|sm_clken~combout\ & ((\INST8|current_state.S14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state~43_combout\,
	datab => \INST8|current_state.S14~q\,
	datac => \INST2|sm_clken~combout\,
	datad => \INST3|sreg\(1),
	combout => \INST8|current_state~44_combout\);

\INST8|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST8|current_state~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.S14~q\);

\INST9|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[0]~0_combout\ = !\INST9|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[0]~q\,
	combout => \INST9|clk_proc:COUNT[0]~0_combout\);

\INST9|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[0]~q\);

\INST9|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[1]~1_combout\ = (\INST9|clk_proc:COUNT[1]~q\ & (\INST9|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\INST9|clk_proc:COUNT[1]~q\ & (\INST9|clk_proc:COUNT[0]~q\ & VCC))
-- \INST9|clk_proc:COUNT[1]~2\ = CARRY((\INST9|clk_proc:COUNT[1]~q\ & \INST9|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[1]~q\,
	datab => \INST9|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \INST9|clk_proc:COUNT[1]~1_combout\,
	cout => \INST9|clk_proc:COUNT[1]~2\);

\INST9|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[1]~q\);

\INST9|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[2]~1_combout\ = (\INST9|clk_proc:COUNT[2]~q\ & (!\INST9|clk_proc:COUNT[1]~2\)) # (!\INST9|clk_proc:COUNT[2]~q\ & ((\INST9|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST9|clk_proc:COUNT[2]~2\ = CARRY((!\INST9|clk_proc:COUNT[1]~2\) # (!\INST9|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[1]~2\,
	combout => \INST9|clk_proc:COUNT[2]~1_combout\,
	cout => \INST9|clk_proc:COUNT[2]~2\);

\INST9|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[2]~q\);

\INST9|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[3]~1_combout\ = (\INST9|clk_proc:COUNT[3]~q\ & (\INST9|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST9|clk_proc:COUNT[3]~q\ & (!\INST9|clk_proc:COUNT[2]~2\ & VCC))
-- \INST9|clk_proc:COUNT[3]~2\ = CARRY((\INST9|clk_proc:COUNT[3]~q\ & !\INST9|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[2]~2\,
	combout => \INST9|clk_proc:COUNT[3]~1_combout\,
	cout => \INST9|clk_proc:COUNT[3]~2\);

\INST9|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[3]~q\);

\INST9|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[4]~1_combout\ = (\INST9|clk_proc:COUNT[4]~q\ & (!\INST9|clk_proc:COUNT[3]~2\)) # (!\INST9|clk_proc:COUNT[4]~q\ & ((\INST9|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST9|clk_proc:COUNT[4]~2\ = CARRY((!\INST9|clk_proc:COUNT[3]~2\) # (!\INST9|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[3]~2\,
	combout => \INST9|clk_proc:COUNT[4]~1_combout\,
	cout => \INST9|clk_proc:COUNT[4]~2\);

\INST9|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[4]~q\);

\INST9|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[5]~1_combout\ = (\INST9|clk_proc:COUNT[5]~q\ & (\INST9|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST9|clk_proc:COUNT[5]~q\ & (!\INST9|clk_proc:COUNT[4]~2\ & VCC))
-- \INST9|clk_proc:COUNT[5]~2\ = CARRY((\INST9|clk_proc:COUNT[5]~q\ & !\INST9|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[4]~2\,
	combout => \INST9|clk_proc:COUNT[5]~1_combout\,
	cout => \INST9|clk_proc:COUNT[5]~2\);

\INST9|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[5]~q\);

\INST9|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[6]~1_combout\ = (\INST9|clk_proc:COUNT[6]~q\ & (!\INST9|clk_proc:COUNT[5]~2\)) # (!\INST9|clk_proc:COUNT[6]~q\ & ((\INST9|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST9|clk_proc:COUNT[6]~2\ = CARRY((!\INST9|clk_proc:COUNT[5]~2\) # (!\INST9|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[5]~2\,
	combout => \INST9|clk_proc:COUNT[6]~1_combout\,
	cout => \INST9|clk_proc:COUNT[6]~2\);

\INST9|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[6]~q\);

\INST9|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[7]~1_combout\ = (\INST9|clk_proc:COUNT[7]~q\ & (\INST9|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST9|clk_proc:COUNT[7]~q\ & (!\INST9|clk_proc:COUNT[6]~2\ & VCC))
-- \INST9|clk_proc:COUNT[7]~2\ = CARRY((\INST9|clk_proc:COUNT[7]~q\ & !\INST9|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[6]~2\,
	combout => \INST9|clk_proc:COUNT[7]~1_combout\,
	cout => \INST9|clk_proc:COUNT[7]~2\);

\INST9|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[7]~q\);

\INST9|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[8]~1_combout\ = (\INST9|clk_proc:COUNT[8]~q\ & (!\INST9|clk_proc:COUNT[7]~2\)) # (!\INST9|clk_proc:COUNT[8]~q\ & ((\INST9|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST9|clk_proc:COUNT[8]~2\ = CARRY((!\INST9|clk_proc:COUNT[7]~2\) # (!\INST9|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[7]~2\,
	combout => \INST9|clk_proc:COUNT[8]~1_combout\,
	cout => \INST9|clk_proc:COUNT[8]~2\);

\INST9|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[8]~q\);

\INST9|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[9]~1_combout\ = (\INST9|clk_proc:COUNT[9]~q\ & (\INST9|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST9|clk_proc:COUNT[9]~q\ & (!\INST9|clk_proc:COUNT[8]~2\ & VCC))
-- \INST9|clk_proc:COUNT[9]~2\ = CARRY((\INST9|clk_proc:COUNT[9]~q\ & !\INST9|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST9|clk_proc:COUNT[8]~2\,
	combout => \INST9|clk_proc:COUNT[9]~1_combout\,
	cout => \INST9|clk_proc:COUNT[9]~2\);

\INST9|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[9]~q\);

\INST9|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|clk_proc:COUNT[10]~1_combout\ = \INST9|clk_proc:COUNT[10]~q\ $ (\INST9|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|clk_proc:COUNT[10]~q\,
	cin => \INST9|clk_proc:COUNT[9]~2\,
	combout => \INST9|clk_proc:COUNT[10]~1_combout\);

\INST9|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST9|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|clk_proc:COUNT[10]~q\);

\INST8|ns_amber~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|ns_amber~0_combout\ = (!\INST8|current_state.S6~q\ & !\INST8|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST8|current_state.S6~q\,
	datad => \INST8|current_state.S7~q\,
	combout => \INST8|ns_amber~0_combout\);

\INST9|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|DOUT_TEMP[6]~0_combout\ = (\INST9|clk_proc:COUNT[10]~q\ & (((!\INST8|ns_amber~0_combout\)))) # (!\INST9|clk_proc:COUNT[10]~q\ & ((\INST8|current_state.S14~q\) # ((\INST8|current_state.S15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S14~q\,
	datab => \INST8|current_state.S15~q\,
	datac => \INST9|clk_proc:COUNT[10]~q\,
	datad => \INST8|ns_amber~0_combout\,
	combout => \INST9|DOUT_TEMP[6]~0_combout\);

\INST8|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr4~0_combout\ = (!\INST8|current_state.S3~q\ & (!\INST8|current_state.S2~q\ & (!\INST8|current_state.S4~q\ & !\INST8|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S3~q\,
	datab => \INST8|current_state.S2~q\,
	datac => \INST8|current_state.S4~q\,
	datad => \INST8|current_state.S5~q\,
	combout => \INST8|WideOr4~0_combout\);

\INST8|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr3~0_combout\ = (\INST8|current_state.S11~q\) # ((\INST8|current_state.S10~q\) # ((\INST8|current_state.S12~q\) # (\INST8|current_state.S13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S11~q\,
	datab => \INST8|current_state.S10~q\,
	datac => \INST8|current_state.S12~q\,
	datad => \INST8|current_state.S13~q\,
	combout => \INST8|WideOr3~0_combout\);

\INST8|WideOr9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr9~0_combout\ = (\INST8|current_state.S2~q\) # ((\INST8|current_state.S10~q\) # ((\INST8|current_state.S6~q\) # (\INST8|current_state.S14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S2~q\,
	datab => \INST8|current_state.S10~q\,
	datac => \INST8|current_state.S6~q\,
	datad => \INST8|current_state.S14~q\,
	combout => \INST8|WideOr9~0_combout\);

\INST8|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr8~0_combout\ = (\INST8|current_state.S0~q\ & (!\INST8|current_state.S4~q\ & (!\INST8|current_state.S12~q\ & !\INST8|current_state.S8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S0~q\,
	datab => \INST8|current_state.S4~q\,
	datac => \INST8|current_state.S12~q\,
	datad => \INST8|current_state.S8~q\,
	combout => \INST8|WideOr8~0_combout\);

\INST8|WideOr9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr9~combout\ = (\INST8|WideOr9~0_combout\) # (!\INST8|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|WideOr9~0_combout\,
	datad => \INST8|WideOr8~0_combout\,
	combout => \INST8|WideOr9~combout\);

\INST8|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr8~1_combout\ = (\INST8|current_state.S5~q\) # ((\INST8|current_state.S13~q\) # ((\INST8|current_state.S1~q\) # (\INST8|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S5~q\,
	datab => \INST8|current_state.S13~q\,
	datac => \INST8|current_state.S1~q\,
	datad => \INST8|current_state.S9~q\,
	combout => \INST8|WideOr8~1_combout\);

\INST8|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr8~combout\ = (\INST8|WideOr8~1_combout\) # (!\INST8|WideOr8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|WideOr8~1_combout\,
	datad => \INST8|WideOr8~0_combout\,
	combout => \INST8|WideOr8~combout\);

\INST8|WideOr7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr7~0_combout\ = (\INST8|current_state.S11~q\) # ((\INST8|current_state.S10~q\) # ((\INST8|current_state.S1~q\) # (!\INST8|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S11~q\,
	datab => \INST8|current_state.S10~q\,
	datac => \INST8|current_state.S1~q\,
	datad => \INST8|current_state.S0~q\,
	combout => \INST8|WideOr7~0_combout\);

\INST8|WideOr7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr7~combout\ = (\INST8|current_state.S3~q\) # ((\INST8|current_state.S2~q\) # ((\INST8|WideOr7~0_combout\) # (!\INST8|WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S3~q\,
	datab => \INST8|current_state.S2~q\,
	datac => \INST8|WideOr7~0_combout\,
	datad => \INST8|WideOr7~1_combout\,
	combout => \INST8|WideOr7~combout\);

\INST8|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|WideOr6~combout\ = (\INST8|current_state.S6~q\) # ((\INST8|current_state.S7~q\) # ((!\INST8|WideOr6~0_combout\) # (!\INST8|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S6~q\,
	datab => \INST8|current_state.S7~q\,
	datac => \INST8|WideOr4~0_combout\,
	datad => \INST8|WideOr6~0_combout\,
	combout => \INST8|WideOr6~combout\);

\INST9|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|DOUT[0]~0_combout\ = \INST9|clk_proc:COUNT[10]~q\ $ ((((!\INST8|ns_amber~0_combout\) # (!\INST8|WideOr6~0_combout\)) # (!\INST8|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|WideOr4~0_combout\,
	datab => \INST8|WideOr6~0_combout\,
	datac => \INST8|ns_amber~0_combout\,
	datad => \INST9|clk_proc:COUNT[10]~q\,
	combout => \INST9|DOUT[0]~0_combout\);

\INST2|blink_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|blink_sig~0_combout\ = (\INST2|clk_divider:counter[2]~q\ & !\INST3|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|clk_divider:counter[2]~q\,
	datad => \INST3|sreg\(1),
	combout => \INST2|blink_sig~0_combout\);

\INST2|blink_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \INST2|blink_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|blink_sig~q\);

\INST8|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Selector3~2_combout\ = ((\INST2|blink_sig~q\ & ((\INST8|current_state.S1~q\) # (!\INST8|current_state.S0~q\)))) # (!\INST8|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S0~q\,
	datab => \INST8|current_state.S1~q\,
	datac => \INST2|blink_sig~q\,
	datad => \INST8|WideOr4~0_combout\,
	combout => \INST8|Selector3~2_combout\);

\INST8|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Selector2~2_combout\ = (\INST8|WideOr3~0_combout\) # ((\INST2|blink_sig~q\ & ((\INST8|current_state.S8~q\) # (\INST8|current_state.S9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S8~q\,
	datab => \INST8|current_state.S9~q\,
	datac => \INST8|WideOr3~0_combout\,
	datad => \INST2|blink_sig~q\,
	combout => \INST8|Selector2~2_combout\);

\INST9|DOUT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|DOUT[3]~1_combout\ = (\INST9|clk_proc:COUNT[10]~q\ & (\INST8|Selector3~2_combout\)) # (!\INST9|clk_proc:COUNT[10]~q\ & ((\INST8|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|Selector3~2_combout\,
	datab => \INST8|Selector2~2_combout\,
	datad => \INST9|clk_proc:COUNT[10]~q\,
	combout => \INST9|DOUT[3]~1_combout\);

\INST8|ew_amber\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|ew_amber~combout\ = (\INST8|current_state.S14~q\) # (\INST8|current_state.S15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST8|current_state.S14~q\,
	datab => \INST8|current_state.S15~q\,
	combout => \INST8|ew_amber~combout\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;

ww_sim_sm_clk <= \sim_sm_clk~output_o\;

ww_sim_blink_signal <= \sim_blink_signal~output_o\;

ww_sim_ns_green <= \sim_ns_green~output_o\;

ww_sim_ns_amber <= \sim_ns_amber~output_o\;

ww_sim_ns_red <= \sim_ns_red~output_o\;

ww_sim_ew_green <= \sim_ew_green~output_o\;

ww_sim_ew_amber <= \sim_ew_amber~output_o\;

ww_sim_ew_red <= \sim_ew_red~output_o\;
END structure;


