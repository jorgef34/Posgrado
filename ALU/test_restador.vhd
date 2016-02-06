--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:51:39 01/05/2016
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_restador.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Restador
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
 
ENTITY test_restador IS
END test_restador;
 
ARCHITECTURE behavior OF test_restador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Restador
    PORT(
         X : IN  std_logic_vector(23 downto 0);
         Y : IN  std_logic_vector(23 downto 0);
         R : OUT  std_logic_vector(23 downto 0);
         C_out_r : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(23 downto 0) := (others => '0');
   signal Y : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(23 downto 0);
   signal C_out_r : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Restador PORT MAP (
          X => X,
          Y => Y,
          R => R,
          C_out_r => C_out_r
        );

   -- Clock process definitions
   clock_process :process
   begin
		--clock <= '0';
		
		Y<= "100000000000001110000000";
		X<= "000000000000000000001000";
		
		
		wait for clock_period/2;
		
		Y<= "000000000000000000000000";
		X<= "100000000000000000000000";
		
		
		
		--clock <= '1';
		
		
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
