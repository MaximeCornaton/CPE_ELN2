----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
-- 
-- Create Date:    16:57:39 02/14/2022 
-- Design Name: 
-- Module Name:    counter_2b_E - Behavioral 
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

entity counter_3b_E is
    Port ( CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end counter_3b_E;

architecture Behavioral of counter_3b_E is

signal Q_int:UNSIGNED(2 downto 0):="000";



begin
counter : process(clk)
  begin
    if(rising_edge(clk) and CE = '1') then
      Q_int <= Q_int + 1;
    end if;
	Q <= STD_LOGIC_VECTOR(Q_int);
  end process;


end Behavioral;

