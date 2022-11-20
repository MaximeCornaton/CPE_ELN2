--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:54 02/14/2022
-- Design Name:   
-- Module Name:   C:/CPE_USERS/TPELEC_3ETI/GR_C/ELN2/SCORING/EQUIPE_6/chronoscore_phase1/transcoder_7segs_tb.vhd
-- Project Name:  chronoscore_phase1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: transcoder_7segs
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
 
ENTITY transcoder_7segs_tb IS
END transcoder_7segs_tb;
 
ARCHITECTURE behavior OF transcoder_7segs_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT transcoder_7segs
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         O : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: transcoder_7segs PORT MAP (
          A => A,
          O => O
        );

 

	stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
		wait for 10 ns;
		A <= "0000";
		wait for 10 ns;	
		A <= "0001";
		wait for 10 ns;	
		A <= "0010";
		wait for 10 ns;	
		A <= "0011";
		wait for 10 ns;	
		A <= "0100";
		wait for 10 ns;	
		A <= "0101";
		wait for 10 ns;	
		A <= "0110";
		wait for 10 ns;	
		A <= "0111";
		wait for 10 ns;	
		A <= "1000";
		wait for 10 ns;	
		A <= "1001";
		wait for 10 ns;	
		A <= "1010";
		wait for 10 ns;	
		A <= "1011";
		wait for 10 ns;	
		A <= "1100";
		wait for 10 ns;	
		A <= "1101";
		wait for 10 ns;	
		A <= "1110";
		wait for 10 ns;
		A <= "1111";	

      

      -- insert stimulus here 

      wait;
   end process;

END;
