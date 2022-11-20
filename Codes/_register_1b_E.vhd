----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:26 02/28/2022 
-- Design Name: 
-- Module Name:    register_1b_E - Behavioral 
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

entity register_1b_E is
    Port ( CE : in  STD_LOGIC;
           D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end register_1b_E;

architecture Behavioral of register_1b_E is
signal Q_int : STD_LOGIC :='0';
begin
register_CE_D_clk: process(clk)
                   begin
						 if CE='1' then
						   if rising_edge(clk) then 
							  Q_int<=D;
							end if;
						 end if;
                   end process;
Q<=Q_int;
end Behavioral;

