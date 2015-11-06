----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
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

entity blocoOperativo is 
   port(
      clock, reset: in std_logic;
      PCEscCond, PCEsc, IouD, LerMem, EscMem, MemParaReg, IREsc, RegDst, EscReg, ULAFonteA: in std_logic;
      ULAFonteB, ULAOp, FontePC: in std_logic_vector(1 downto 0);
      opcode: out std_logic_vector(5 downto 0)
   );
end entity;

architecture estrutural of blocoOperativo is
component registrador is
   generic(largura: natural := 8);
   port(
      clock, reset: in std_logic;
      en: in std_logic;
      d: in std_logic_vector(largura-1 downto 0); 
      q: out std_logic_vector(largura-1 downto 0)
   );
end component;

component multiplexador2x1 is 
   generic(largura: natural := 8);
   port(
      entrada0, entrada1: in std_logic_vector(largura-1 downto 0);
      selecao: in std_logic;
      saida: out std_logic_vector(largura-1 downto 0)
   );
end component;

component memoria is 
   generic(
      larguraMemoria: natural := 8;
      larguraDado: natural := 16;
      bitsEndereco: natural := 4
   );
   port(
      clock, reset: in std_logic;
      EscMem: in std_logic;
      Endereco: in std_logic_vector(2**bitsEndereco-1 downto 0);
      DadoSerEscrito: in std_logic_vector(larguraDado-1 downto 0);
      DadoMem: out std_logic_vector(larguraDado-1 downto 0)
   );
end component;

component bancoRegistradores is 
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
end component;
	signal cPC, zero : std_logic;
	signal sU, D, m2, I, sMem, mPC, sB, sPC, m3, dA, dB, sA, sB : std_logic_vector(31 downto 0);
	signal m1 : std_logic_vector(4 downto 0);
begin
	B: registrador generic map (32)
						port map( clock, reset, '1',dB, sB);
	A: registrador generic map (32)
						port map( clock, reset, '1',dA, sA);
	REG: bancoRegistradores generic map(32, 5)
									port map(clock, reset, EscReg, I(25 downto 21), I(20 downto 16), m1, m2, dA, dB);
	MUX2: multiplexador2x1 	generic map (32)
									port map (sU, D, MemParaReg, m2);
	MUX1: multiplexador2x1 	generic map(5)
									port map(I(20 downto 16), I(15 downto 11), RegDst, m1);
	RDM: registrador 	generic map(32)
							port map (clock, reset, '1', sMem, D);
	RI: registrador 	generic map(32)
							port map (clock, reset, IREsc, sMem, I);
	Mem: memoria 	generic map (32,32,32)
						port map (clock, reset, EscMem, mPC, sB, sMem);
	MUXPC: multiplexador2x1 	generic map (32)
										port map(sPC,sU,IouD,mPC);
	cPC <= (zero and PCEscCond) or PCesc;
	PC: registrador 	generic map(32)
							port map (clock, reset, cPC, m3, sPC);
end architecture;