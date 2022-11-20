----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
-- 
-- Create Date:    14:32:13 02/14/2022 
-- Design Name: 
-- Module Name:    transcoder_7segs - Behavioral 
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

entity transcoder_7segs is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (6 downto 0));
end transcoder_7segs;

architecture Behavioral of transcoder_7segs is

begin
O <= "0000001" when A = "0000" else
	"1001111" when A = "0001" else
	"0010010" when A = "0010" else
	"0000110" when A = "0011" else
	"1001100" when A = "0100" else
	"0100100" when A = "0101" else
	"0100000" when A = "0110" else
	"0001111" when A = "0111" else
	"0000000" when A = "1000" else
	"0000100" when A = "1001" else
	"0001000" when A = "1010" else
	"1100000" when A = "1011" else
	"0110001" when A = "1100" else
	"1000010" when A = "1101" else
	"0110000" when A = "1110" else
	"0111000" when A = "1111";

end Behavioral;

