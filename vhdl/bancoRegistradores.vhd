----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradores is 
   generic(
      largura: natural := 8;
      bitsRegSerLido: natural := 2
   );
   port(
      clock, reset: in std_logic;
      EscReg: in std_logic;
      RegSerLido1, RegSerLido2, RegSerEscrito: in std_logic_vector(bitsRegSerLido-1 downto 0);
      DadoEscrita: in std_logic_vector(largura-1 downto 0);      
      DadoLido1, DadoLido2: out std_logic_vector(largura-1 downto 0)
   );
end entity;

architecture comportamental of bancoRegistradores is
	type registrador is array(0 to 2**bitsRegSerLido-1) of std_logic_vector(largura-1 downto 0);
	signal actual_state, next_state : registrador;
begin
	process(clock,reset)
	begin
		if reset = '1' then
			clear: for i in actual_state'range loop
				actual_state(i) <= (others => '0');
			end loop clear;
		elsif rising_edge(clock) then
			actual_state <= next_state;
		end if;
	end process;
	
	process(EscReg, DadoEscrita, RegSerEscrito)
	begin
		next_state <= actual_state;
		if EscReg = '1' then
			next_state(to_integer(unsigned(RegSerEscrito))) <= DadoEscrita;
		end if;
	end process;
	
	DadoLido1 <= actual_state(to_integer(unsigned(RegSerLido1)));
	DadoLido2 <= actual_state(to_integer(unsigned(RegSerLido2)));
	
end architecture;