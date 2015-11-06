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

entity operacaoULA is 
   port(
		funct: in std_logic_vector(5 downto 0);
      ULAOp: in std_logic_vector(1 downto 0);
      Operacao: out std_logic_vector(2 downto 0)
   );
end entity;

architecture comportamental of operacaoULA is
begin
	
	Operacao <= "010" when ULAOp = "00" else		-- lw sw
					"110" when ULAOp = "01" else		-- beq
					"111" when funct(3) = '1' else	-- slt
					"001" when funct(0) = '1' else	-- or
					"110" when funct(1) = '1' else	-- sub
					"010" when funct(2) = '0' else	-- add
					"000";									-- and
									
	
end architecture;
