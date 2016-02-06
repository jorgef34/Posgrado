--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:04:07 12/26/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_seleccionador.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seleccionador
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
 
ENTITY test_seleccionador IS
END test_seleccionador;
 
ARCHITECTURE behavior OF test_seleccionador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seleccionador
    PORT(
         A_in : IN  std_logic_vector(22 downto 0);
         B_in : IN  std_logic_vector(22 downto 0);
         a1 : IN  std_logic_vector(7 downto 0);
         b1 : IN  std_logic_vector(7 downto 0);
         e_max : OUT  std_logic_vector(7 downto 0);
         e_dif : OUT  std_logic_vector(7 downto 0);
         A_max : OUT  std_logic_vector(23 downto 0);
         B_despl : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_in : std_logic_vector(22 downto 0) := (others => '0');
   signal B_in : std_logic_vector(22 downto 0) := (others => '0');
   signal a1 : std_logic_vector(7 downto 0) := (others => '0');
   signal b1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal e_max : std_logic_vector(7 downto 0);
   signal e_dif : std_logic_vector(7 downto 0);
   signal A_max : std_logic_vector(23 downto 0);
   signal B_despl : std_logic_vector(23 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seleccionador PORT MAP (
          A_in => A_in,
          B_in => B_in,
          a1 => a1,
          b1 => b1,
          e_max => e_max,
          e_dif => e_dif,
          A_max => A_max,
          B_despl => B_despl
        );

   -- Clock process definitions
   clock_process :process
   begin
	
		A_in <= "00000000000000000000001";
		B_in <= "00000000000000000000010";
		a1 <= "00000001";
		b1 <= "00000001";
		
		wait for clock_period/2;


		wait for clock_period/2;
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
