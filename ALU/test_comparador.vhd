--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:57:21 12/23/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_comparador.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: comparador
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
 
ENTITY test_comparador IS
END test_comparador;
 
ARCHITECTURE behavior OF test_comparador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT comparador
    PORT(
         p : IN  std_logic_vector(7 downto 0);
         q : IN  std_logic_vector(7 downto 0);
         a : IN  std_logic_vector(22 downto 0);
         b : IN  std_logic_vector(22 downto 0);
         Z : OUT  std_logic;
         R : OUT  std_logic_vector(7 downto 0);
         T : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal p : std_logic_vector(7 downto 0) := (others => '0');
   signal q : std_logic_vector(7 downto 0) := (others => '0');
   signal a : std_logic_vector(22 downto 0) := (others => '0');
   signal b : std_logic_vector(22 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic;
   signal R : std_logic_vector(7 downto 0);
   signal T : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: comparador PORT MAP (
          p => p,
          q => q,
          a => a,
          b => b,
          Z => Z,
          R => R,
          T => T
        );

   -- Clock process definitions
   clock_process :process
   begin
		--clock <= '0';
		p<= "11111111";
		q<= "01010110";
		
		wait for clock_period/3;
		--clock <= '1';

		p<= "11101111";
		q<= "01000110";

		wait for clock_period/3;
		
				p<= "11101111";
		q<= "01000110";

		wait for clock_period/3;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
