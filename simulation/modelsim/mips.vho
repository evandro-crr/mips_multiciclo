-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/06/2015 00:28:42"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	entradaA : IN std_logic_vector(7 DOWNTO 0);
	entradaB : IN std_logic_vector(7 DOWNTO 0);
	Operacao : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic_vector(7 DOWNTO 0);
	zero : OUT std_logic
	);
END ula;

-- Design Ports Information
-- Operacao[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[2]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[3]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[4]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[5]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[6]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida[7]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entradaB[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Operacao[2]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Operacao[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[7]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[7]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[6]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[6]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[5]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[5]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[4]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[4]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[3]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[2]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entradaB[1]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Operacao : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Operacao~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \entradaB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \entradaA~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_Operacao <= Operacao;
saida <= ww_saida;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X63_Y24_N2
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operacao~combout\(2),
	datad => \entradaB~combout\(1),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X63_Y24_N8
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operacao~combout\(2),
	datad => \entradaB~combout\(2),
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X62_Y24_N14
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operacao~combout\(2),
	datad => \entradaB~combout\(7),
	combout => \Add0~38_combout\);

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(0),
	combout => \entradaA~combout\(0));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(5),
	combout => \entradaA~combout\(5));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(7),
	combout => \entradaA~combout\(7));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(6),
	combout => \entradaA~combout\(6));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(5),
	combout => \entradaB~combout\(5));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(4),
	combout => \entradaB~combout\(4));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(3),
	combout => \entradaA~combout\(3));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(2),
	combout => \entradaA~combout\(2));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(1),
	combout => \entradaA~combout\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(0),
	combout => \entradaB~combout\(0));

-- Location: LCCOMB_X64_Y24_N14
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\entradaA~combout\(0) & \entradaB~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(0),
	datab => \entradaB~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X64_Y24_N16
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\entradaB~combout\(1) & (\entradaA~combout\(1) & !\LessThan0~1_cout\)) # (!\entradaB~combout\(1) & ((\entradaA~combout\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB~combout\(1),
	datab => \entradaA~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X64_Y24_N18
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\entradaB~combout\(2) & ((!\LessThan0~3_cout\) # (!\entradaA~combout\(2)))) # (!\entradaB~combout\(2) & (!\entradaA~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB~combout\(2),
	datab => \entradaA~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X64_Y24_N20
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\entradaB~combout\(3) & (\entradaA~combout\(3) & !\LessThan0~5_cout\)) # (!\entradaB~combout\(3) & ((\entradaA~combout\(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB~combout\(3),
	datab => \entradaA~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X64_Y24_N22
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\entradaA~combout\(4) & (\entradaB~combout\(4) & !\LessThan0~7_cout\)) # (!\entradaA~combout\(4) & ((\entradaB~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(4),
	datab => \entradaB~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X64_Y24_N24
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\entradaA~combout\(5) & ((!\LessThan0~9_cout\) # (!\entradaB~combout\(5)))) # (!\entradaA~combout\(5) & (!\entradaB~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(5),
	datab => \entradaB~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X64_Y24_N26
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\entradaB~combout\(6) & ((!\LessThan0~11_cout\) # (!\entradaA~combout\(6)))) # (!\entradaB~combout\(6) & (!\entradaA~combout\(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB~combout\(6),
	datab => \entradaA~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X64_Y24_N28
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\entradaB~combout\(7) & ((\LessThan0~13_cout\) # (!\entradaA~combout\(7)))) # (!\entradaB~combout\(7) & (!\entradaA~combout\(7) & \LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB~combout\(7),
	datab => \entradaA~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operacao[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Operacao(2),
	combout => \Operacao~combout\(2));

-- Location: LCCOMB_X64_Y24_N10
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Operacao~combout\(2) & (((\LessThan0~14_combout\)))) # (!\Operacao~combout\(2) & ((\entradaA~combout\(0)) # ((\entradaB~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(0),
	datab => \LessThan0~14_combout\,
	datac => \entradaB~combout\(0),
	datad => \Operacao~combout\(2),
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X64_Y24_N8
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \entradaB~combout\(0) $ (\Operacao~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB~combout\(0),
	datad => \Operacao~combout\(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X63_Y24_N10
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\Operacao~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(2),
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X63_Y24_N12
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\entradaA~combout\(0) & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\entradaA~combout\(0) & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\entradaA~combout\(0) & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\entradaA~combout\(0) & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operacao[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Operacao(0),
	combout => \Operacao~combout\(0));

-- Location: LCCOMB_X64_Y24_N4
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Operacao~combout\(0) & (\Add0~5_combout\)) # (!\Operacao~combout\(0) & ((\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datac => \Add0~3_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~6_combout\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(1),
	combout => \entradaB~combout\(1));

-- Location: LCCOMB_X63_Y24_N0
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (!\Operacao~combout\(2) & (\Operacao~combout\(0) & ((\entradaB~combout\(1)) # (\entradaA~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(2),
	datab => \entradaB~combout\(1),
	datac => \entradaA~combout\(1),
	datad => \Operacao~combout\(0),
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X63_Y24_N14
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\Add0~8_combout\ $ (\entradaA~combout\(1) $ (!\Add0~4\)))) # (GND)
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((\entradaA~combout\(1)) # (!\Add0~4\))) # (!\Add0~8_combout\ & (\entradaA~combout\(1) & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \entradaA~combout\(1),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X63_Y24_N4
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~7_combout\) # ((\Add0~9_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~7_combout\,
	datac => \Add0~9_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~11_combout\);

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(2),
	combout => \entradaB~combout\(2));

-- Location: LCCOMB_X63_Y24_N6
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (!\Operacao~combout\(2) & (\Operacao~combout\(0) & ((\entradaB~combout\(2)) # (\entradaA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(2),
	datab => \entradaB~combout\(2),
	datac => \entradaA~combout\(2),
	datad => \Operacao~combout\(0),
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X63_Y24_N16
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~13_combout\ & ((\entradaA~combout\(2) & (\Add0~10\ & VCC)) # (!\entradaA~combout\(2) & (!\Add0~10\)))) # (!\Add0~13_combout\ & ((\entradaA~combout\(2) & (!\Add0~10\)) # (!\entradaA~combout\(2) & ((\Add0~10\) # (GND)))))
-- \Add0~15\ = CARRY((\Add0~13_combout\ & (!\entradaA~combout\(2) & !\Add0~10\)) # (!\Add0~13_combout\ & ((!\Add0~10\) # (!\entradaA~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \entradaA~combout\(2),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X63_Y24_N28
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Add0~12_combout\) # ((\Add0~14_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \Add0~14_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~16_combout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(3),
	combout => \entradaB~combout\(3));

-- Location: LCCOMB_X62_Y24_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \entradaB~combout\(3) $ (\Operacao~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB~combout\(3),
	datad => \Operacao~combout\(2),
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X63_Y24_N18
\Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = ((\entradaA~combout\(3) $ (\Add0~18_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~20\ = CARRY((\entradaA~combout\(3) & ((\Add0~18_combout\) # (!\Add0~15\))) # (!\entradaA~combout\(3) & (\Add0~18_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(3),
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X62_Y24_N24
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Operacao~combout\(0) & (!\Operacao~combout\(2) & ((\entradaB~combout\(3)) # (\entradaA~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(0),
	datab => \Operacao~combout\(2),
	datac => \entradaB~combout\(3),
	datad => \entradaA~combout\(3),
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X62_Y24_N20
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~17_combout\) # ((\Add0~19_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~19_combout\,
	datac => \Add0~17_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~21_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaA(4),
	combout => \entradaA~combout\(4));

-- Location: LCCOMB_X64_Y24_N6
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\Operacao~combout\(0) & (!\Operacao~combout\(2) & ((\entradaA~combout\(4)) # (\entradaB~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(0),
	datab => \Operacao~combout\(2),
	datac => \entradaA~combout\(4),
	datad => \entradaB~combout\(4),
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X64_Y24_N0
\Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operacao~combout\(2),
	datad => \entradaB~combout\(4),
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X63_Y24_N20
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\entradaA~combout\(4) & ((\Add0~23_combout\ & (\Add0~20\ & VCC)) # (!\Add0~23_combout\ & (!\Add0~20\)))) # (!\entradaA~combout\(4) & ((\Add0~23_combout\ & (!\Add0~20\)) # (!\Add0~23_combout\ & ((\Add0~20\) # (GND)))))
-- \Add0~25\ = CARRY((\entradaA~combout\(4) & (!\Add0~23_combout\ & !\Add0~20\)) # (!\entradaA~combout\(4) & ((!\Add0~20\) # (!\Add0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(4),
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X64_Y24_N2
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\Add0~22_combout\) # ((\Add0~24_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datac => \Add0~24_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X64_Y24_N12
\Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (!\Operacao~combout\(2) & (\Operacao~combout\(0) & ((\entradaA~combout\(5)) # (\entradaB~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(5),
	datab => \Operacao~combout\(2),
	datac => \entradaB~combout\(5),
	datad => \Operacao~combout\(0),
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X63_Y24_N30
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operacao~combout\(2),
	datad => \entradaB~combout\(5),
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X63_Y24_N22
\Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = ((\entradaA~combout\(5) $ (\Add0~28_combout\ $ (!\Add0~25\)))) # (GND)
-- \Add0~30\ = CARRY((\entradaA~combout\(5) & ((\Add0~28_combout\) # (!\Add0~25\))) # (!\entradaA~combout\(5) & (\Add0~28_combout\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(5),
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X64_Y24_N30
\Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~27_combout\) # ((\Add0~29_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Add0~29_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~31_combout\);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(6),
	combout => \entradaB~combout\(6));

-- Location: LCCOMB_X62_Y24_N6
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\Operacao~combout\(0) & (!\Operacao~combout\(2) & ((\entradaB~combout\(6)) # (\entradaA~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(0),
	datab => \entradaB~combout\(6),
	datac => \entradaA~combout\(6),
	datad => \Operacao~combout\(2),
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X62_Y24_N16
\Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \Operacao~combout\(2) $ (\entradaB~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Operacao~combout\(2),
	datad => \entradaB~combout\(6),
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X63_Y24_N24
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\entradaA~combout\(6) & ((\Add0~33_combout\ & (\Add0~30\ & VCC)) # (!\Add0~33_combout\ & (!\Add0~30\)))) # (!\entradaA~combout\(6) & ((\Add0~33_combout\ & (!\Add0~30\)) # (!\Add0~33_combout\ & ((\Add0~30\) # (GND)))))
-- \Add0~35\ = CARRY((\entradaA~combout\(6) & (!\Add0~33_combout\ & !\Add0~30\)) # (!\entradaA~combout\(6) & ((!\Add0~30\) # (!\Add0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA~combout\(6),
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X62_Y24_N26
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\Add0~32_combout\) # ((\Add0~34_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~36_combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entradaB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entradaB(7),
	combout => \entradaB~combout\(7));

-- Location: LCCOMB_X62_Y24_N12
\Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\Operacao~combout\(0) & (!\Operacao~combout\(2) & ((\entradaA~combout\(7)) # (\entradaB~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacao~combout\(0),
	datab => \Operacao~combout\(2),
	datac => \entradaA~combout\(7),
	datad => \entradaB~combout\(7),
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X63_Y24_N26
\Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = \Add0~38_combout\ $ (\Add0~35\ $ (!\entradaA~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datad => \entradaA~combout\(7),
	cin => \Add0~35\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X62_Y24_N0
\Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~37_combout\) # ((\Add0~39_combout\ & !\Operacao~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~37_combout\,
	datac => \Add0~39_combout\,
	datad => \Operacao~combout\(0),
	combout => \Add0~41_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operacao[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Operacao(1));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(1));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(2));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(3));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(4));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(5));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(6));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida(7));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);
END structure;


