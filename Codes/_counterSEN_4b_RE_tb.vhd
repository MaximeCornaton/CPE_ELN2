--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
--
-- Create Date:   14:19:53 02/28/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_C/ELN2/SCORING/EQUIPE_6/chronoscore_phase2/counterSEN_4b_RE_tb.vhd
-- Project Name:  chronoscore_phase2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counterSEN_4b_RE
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY counterSEN_4b_RE_tb IS
END counterSEN_4b_RE_tb;
 
ARCHITECTURE behavior OF counterSEN_4b_RE_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT counterSEN_4b_RE
    PORT(
         R : IN  std_logic;
         CE : IN  std_logic;
         clk : IN  std_logic;
         TC : OUT  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal R : std_logic := '0';
   signal CE : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal TC : std_logic;
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counterSEN_4b_RE PORT MAP (
          R => R,
          CE => CE,
          clk => clk,
          TC => TC,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
      wait for clk_period*10;
		R <= '0', '1' after 200ns;
		CE <= '1', '0' after 150ns, '1' after 250ns;
      wait;
   end process;

END;
