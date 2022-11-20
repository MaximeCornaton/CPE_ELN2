----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
-- 
-- Create Date:    16:52:35 02/28/2022 
-- Design Name: 
-- Module Name:    chronometer - Behavioral 
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

entity chronometer is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           CE_1s : in  STD_LOGIC;
           WAIT_t : in  STD_LOGIC;
           sec_unit : out  STD_LOGIC_VECTOR (3 downto 0);
           sec_dec : out  STD_LOGIC_VECTOR (3 downto 0);
           min_unit : out  STD_LOGIC_VECTOR (3 downto 0);
           min_dec : out  STD_LOGIC_VECTOR (3 downto 0));
end chronometer;

architecture Behavioral of chronometer is

component counterDec_4bit_RE 
    Port ( R : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           TC : out  STD_LOGIC);
end component;

component counterSEN_4b_RE
	 Port ( R : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           TC : out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component register_1b_R
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

component equ45min
    Port ( min_dec : in  STD_LOGIC_VECTOR (3 downto 0);
           min_unit : in  STD_LOGIC_VECTOR (3 downto 0);
           equ : out  STD_LOGIC);
end component;


-- Signaux internes
signal start_reg : std_logic;
signal or_out : std_logic;
signal equ45 : std_logic; 
signal CE_time45min : std_logic;
signal CE_secDec : std_logic; 
signal CE_minUni : std_logic;
signal CE_minDec : std_logic;
signal min_unit_int : std_logic_vector(3 downto 0); 
signal min_dec_int : std_logic_vector(3 downto 0);


begin

U0 : or_out <= (START OR start_reg);

U1 : register_1b_R port map (
	clk => CLK,
	D => or_out,
	R => RESET,
	Q => start_reg
);

U2 : CE_time45min <= (CE_1s AND start_reg AND NOT equ45 AND NOT WAIT_t);

U3 : counterDec_4bit_RE port map (
	CE => CE_time45min,
	clk => CLK,
	R => RESET,
	Q => sec_unit,
	TC => CE_secDec
);

U4 : counterSEN_4b_RE port map (
	CE => CE_secDec,
	clk => CLK,
	R => RESET,
	Q => sec_dec,
	TC => CE_minUni
);

U5 : counterDec_4bit_RE port map (
	CE => CE_minUni,
	clk => CLK,
	R => RESET,
	Q => min_unit_int,
	TC => CE_minDec
);

U6 : counterSEN_4b_RE port map (
	CE => CE_minDec,
	clk => CLK,
	R => RESET,
	Q => min_dec_int,
	TC => open
);

U7 : equ45min port map (
	min_dec => min_dec_int,
	min_unit => min_unit_int,
	equ => equ45
);

U8 : min_unit <= min_unit_int;

U9 : min_dec <= min_dec_int;

end Behavioral;

