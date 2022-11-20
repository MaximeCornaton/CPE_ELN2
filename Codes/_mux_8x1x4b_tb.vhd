--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Cornaton_Sayaque
--
-- Create Date:   15:54:45 02/14/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_C/ELN2/SCORING/EQUIPE_6/chronoscore_phase1/mux_8x1x4b_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_8x1x4b
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
 
ENTITY mux_8x1x4b_tb IS
END mux_8x1x4b_tb;
 
ARCHITECTURE behavior OF mux_8x1x4b_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_8x1x4b
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         C : IN  std_logic_vector(3 downto 0);
         D : IN  std_logic_vector(3 downto 0);
         E : IN  std_logic_vector(3 downto 0);
         F : IN  std_logic_vector(3 downto 0);
         G : IN  std_logic_vector(3 downto 0);
         H : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         O : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '1');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(3 downto 0) := (others => '0');
   signal D : std_logic_vector(3 downto 0) := (others => '1');
   signal E : std_logic_vector(3 downto 0) := (others => '0');
   signal F : std_logic_vector(3 downto 0) := (others => '0');
   signal G : std_logic_vector(3 downto 0) := (others => '1');
   signal H : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0);

 	--Outputs
   signal O : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_8x1x4b PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          E => E,
          F => F,
          G => G,
          H => H,
          sel => sel,
          O => O
        );



   -- Stimulus process
   stim_proc: process
   begin		
		sel <= "000";
		wait for 10 ns;
		sel <= "001";
		wait for 10 ns;
		sel <= "010";
		wait for 10 ns;
		sel <= "011";
		wait for 10 ns;
		sel <= "100";
		wait for 10 ns;
		sel <= "101";
		wait for 10 ns;
		sel <= "110";
		wait for 10 ns;
		sel <= "111";

      wait;
   end process;

END;
