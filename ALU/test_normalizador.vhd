--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:07 01/06/2016
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_normalizador.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: normalizador
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
 
ENTITY test_normalizador IS
END test_normalizador;
 
ARCHITECTURE behavior OF test_normalizador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT normalizador
    PORT(
         mantisa_desnormalizada : IN  std_logic_vector(23 downto 0);
         mantisa_normalizada : OUT  std_logic_vector(22 downto 0);
         exponente_in : IN  std_logic_vector(7 downto 0);
         exponente_out : OUT  std_logic_vector(7 downto 0);
         error : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_desnormalizada : std_logic_vector(23 downto 0) := (others => '0');
   signal exponente_in : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal mantisa_normalizada : std_logic_vector(22 downto 0);
   signal exponente_out : std_logic_vector(7 downto 0);
   signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: normalizador PORT MAP (
          mantisa_desnormalizada => mantisa_desnormalizada,
          mantisa_normalizada => mantisa_normalizada,
          exponente_in => exponente_in,
          exponente_out => exponente_out,
          error => error
        );

   -- Clock process definitions
   clock_process :process
   begin
	

	      mantisa_desnormalizada    	<= "000000011111111101010111";
         exponente_in 	<= "00001011";


		wait for clock_period/2;

	      mantisa_desnormalizada    	<= "001111111001111111011111";
	    --mantisa_desnormalizada    	<= "010000000000000000000000";
         exponente_in 	<= "00000111";

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
