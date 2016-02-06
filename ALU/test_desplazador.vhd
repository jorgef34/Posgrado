--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:14 12/26/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_desplazador.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: desplazador
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
 
ENTITY test_desplazador IS
END test_desplazador;
 
ARCHITECTURE behavior OF test_desplazador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT desplazador
    PORT(
         desplazador_in : IN  std_logic_vector(23 downto 0);
         numero_de_despl : IN  std_logic_vector(7 downto 0);
         despazador_out : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal desplazador_in : std_logic_vector(23 downto 0) := (others => '0');
   signal numero_de_despl : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal despazador_out : std_logic_vector(23 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: desplazador PORT MAP (
          desplazador_in => desplazador_in,
          numero_de_despl => numero_de_despl,
          despazador_out => despazador_out
        );

   -- Clock process definitions
   clock_process :process
   begin

	   desplazador_in <= "100000000000000000000010";
		numero_de_despl <= "00000000";

		
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
