----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
-- 
-- Create Date:    15:18:19 02/28/2022 
-- Design Name: 
-- Module Name:    XOR_2b - Behavioral 
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

entity XOR_2b is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           O : out  STD_LOGIC);
end XOR_2b;

architecture Behavioral of XOR_2b is

begin

O <= '1' when (A = '1' and B = '0') or (A='0' and B='1') else '0';

end Behavioral;

