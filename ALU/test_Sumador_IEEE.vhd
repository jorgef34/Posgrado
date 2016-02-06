--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:41:19 12/27/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_Sumador_IEEE.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador_IEEE
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
 
ENTITY test_Sumador_IEEE IS
END test_Sumador_IEEE;
 
 
ARCHITECTURE behavior OF test_Sumador_IEEE IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador_IEEE
    PORT(
         Mantisa_1 : IN  std_logic_vector(22 downto 0);
         Exponente_1 : IN  std_logic_vector(7 downto 0);
         Mantisa_2 : IN  std_logic_vector(22 downto 0);
         Exponente_2 : IN  std_logic_vector(7 downto 0);
         Mantisa_suma : OUT  std_logic_vector(22 downto 0);
         Exponente_suma : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Mantisa_1 : std_logic_vector(22 downto 0) := (others => '0');
   signal Exponente_1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Mantisa_2 : std_logic_vector(22 downto 0) := (others => '0');
   signal Exponente_2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Mantisa_suma : std_logic_vector(22 downto 0);
   signal Exponente_suma : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador_IEEE PORT MAP (
          Mantisa_1 => Mantisa_1,
          Exponente_1 => Exponente_1,
          Mantisa_2 => Mantisa_2,
          Exponente_2 => Exponente_2,
          Mantisa_suma => Mantisa_suma,
          Exponente_suma => Exponente_suma
        );

   -- Clock process definitions
   clock_process :process
   begin
	
	
	      Mantisa_1    	<= "00000000000000000000000";
         Exponente_1 	<= "10000000";
         Mantisa_2   	<=	"00000000000000000000000";
         Exponente_2 	<= "00000000"; 


		wait for clock_period/2;
		
			
	      Mantisa_1    	<= "00000000000000000000000";
         Exponente_1 	<= "10000000";
         Mantisa_2   	<=	"00000000000000000000000";
         Exponente_2 	<= "00000000"; 

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
