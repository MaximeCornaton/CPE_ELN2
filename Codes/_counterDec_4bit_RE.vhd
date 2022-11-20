----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
-- 
-- Create Date:    14:49:47 02/28/2022 
-- Design Name: 
-- Module Name:    counterDec_4bit_RE - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counterDec_4bit_RE is
    Port ( R : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           TC : out  STD_LOGIC);
end counterDec_4bit_RE;

architecture Behavioral of counterDec_4bit_RE is

signal Q_int : unsigned(3 downto 0) := "0000";
signal TC_int : std_logic := '0';

begin

process(clk)
begin
	if R = '0' then 
		if rising_edge(clk) then 
			if CE = '1' then
				Q_int <= Q_int + 1;
				TC_int <= '0';
				if Q_int = "1001" then
					Q_int <= "0000";
					TC_int <= '1';
				end if;
			end if;
		end if;
		Q <= std_logic_vector(Q_int);
		TC <= TC_int;
	else
		TC <= '0';
		Q <= "0000";
	end if;

end process;

end Behavioral;

