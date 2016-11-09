----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:34:10 11/09/2016 
-- Design Name: 
-- Module Name:    states - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity states is

clk:IN std_logic;
rst_n:IN std_logic;
X:IN std_logic;
Z:OUT std_logic;
end states;

ARCHITECTURE funcional OF states IS
TYPE mis_estados(s0,s1,s2)
SIGNAL estado: mis_estados
PROCESS (clk,rst_n)
BEGIN
	IF(rst_n='0') THEN
	estado<= s0;
	ELSIF (clk'EVENT and clk ='1') THEN
		CASE estado IS
			when s0=> 
				IF x='1' THEN
				estado<=s1;
				ELSE
				estado<=s0;
				END IF;
			when s1=> 
				
				estado<=s2;
				
			when s2=> 
				IF x='1' THEN
				estado<=s2;
				ELSE
				estado<=s0;
				END IF;
		end CASE;
	END IF;
	end PROCESS;  
end funcional;

