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

entity memoria is 
   generic(
      larguraMemoria: natural := 8;
      larguraDado: natural := 16;
      bitsEndereco: natural := 4
   );
   port(
      clock, reset: in std_logic;
      EscMem: in std_logic;
      Endereco: in std_logic_vector(bitsEndereco-1 downto 0);
      DadoSerEscrito: in std_logic_vector(larguraDado-1 downto 0);
      DadoMem: out std_logic_vector(larguraDado-1 downto 0)
   );
end entity;

architecture comportamental of memoria is
	type memoria is array(0 to 2**bitsEndereco-1) of std_logic_vector(larguraDado-1 downto 0);
	signal next_state, actual_state : memoria;
begin
	process(clock,reset)
	begin
		if reset = '1' then
			clean: for i in actual_state'range loop
				actual_state(i) <= (others => '0');
			end loop clean;
		elsif rising_edge(clock) then
			actual_state <= next_state;
		end if;
	end process;
	
	process(EscMem,Endereco,DadoSerEscrito)
	begin
		next_state <= actual_state;
		if escMem = '1' then
			next_state(to_integer(unsigned(Endereco))) <= DadoSerEscrito;
		end if;
	end process;
	
	DadoMem <= actual_state(to_integer(unsigned(Endereco)));
end architecture;
