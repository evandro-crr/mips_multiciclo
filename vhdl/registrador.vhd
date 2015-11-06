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

entity registrador is
   generic(largura: natural := 8);
   port(
      clock, reset: in std_logic;
      en: in std_logic;
      d: in std_logic_vector(largura-1 downto 0); 
      q: out std_logic_vector(largura-1 downto 0)
   );
end entity;

architecture comportamental of registrador is
	signal next_state, actual_state : std_logic_vector(largura -1 downto 0);
begin
	process(clock,reset)
	begin
		if reset = '1' then
			actual_state <= (others => '0');
		elsif rising_edge(clock) then
			actual_state <= next_state;
		end if;
	end process;
	
	process(d,en)
	begin
		next_state <= actual_state;
		if en = '1' then
			next_state <= d;
		end if;
	end process;
	
	q <= actual_state;
end architecture;
