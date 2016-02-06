--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:07:15 12/26/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_resultado.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: resultado
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
 
ENTITY test_resultado IS
END test_resultado;
 
ARCHITECTURE behavior OF test_resultado IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT resultado
    PORT(
         Mantisa_in : IN  std_logic_vector(23 downto 0);
         Exponente_in : IN  std_logic_vector(7 downto 0);
         Acarreo_in : IN  std_logic;
         Mantisa_final : OUT  std_logic_vector(22 downto 0);
         Exponente_final : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Mantisa_in : std_logic_vector(23 downto 0) := (others => '0');
   signal Exponente_in : std_logic_vector(7 downto 0) := (others => '0');
   signal Acarreo_in : std_logic := '0';

 	--Outputs
   signal Mantisa_final : std_logic_vector(22 downto 0);
   signal Exponente_final : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: resultado PORT MAP (
          Mantisa_in => Mantisa_in,
          Exponente_in => Exponente_in,
          Acarreo_in => Acarreo_in,
          Mantisa_final => Mantisa_final,
          Exponente_final => Exponente_final
        );

   -- Clock process definitions
   clock_process :process
   begin


	Mantisa_in  <="110000000000000000000001";
	Exponente_in  <="00000001";
	Acarreo_in  <='0';		

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
