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

entity ula is 
   generic(largura: natural := 8);
   port(
      entradaA, entradaB: in std_logic_vector(largura-1 downto 0);
      Operacao: in std_logic_vector(2 downto 0);
      saida: out std_logic_vector(largura-1 downto 0);
      zero: out std_logic
   );
end entity;

architecture comportamental of ula is
	signal addSub, orAnd, slt, sltOrAnd : std_logic_vector(largura -1 downto 0);
begin
	addSub <=	std_logic_vector(unsigned(entradaA) + unsigned(entradaB)) when Operacao(2) = '0' else
					std_logic_vector(unsigned(entradaA) - unsigned(entradaB));
	orAnd <=	entradaA and entradaB when Operacao(0) = '0' else
				entradaA or entradaB;
	slt <=	(0 => '1', others => '0') when unsigned(entradaA) < unsigned(entradaB) else
				(others => '0');
	sltOrAnd <= slt when Operacao(2) = '1' else
					orAnd;
	saida <=	sltOrAnd when Operacao(0) = '1' else
				addSub;
	zero <= 	'1' when unsigned(entradaA) = unsigned(entradaB) else
				'0';
				
end architecture;
