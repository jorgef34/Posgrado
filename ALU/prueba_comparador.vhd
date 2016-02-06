--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:19:15 12/20/2015
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/prueba_comparador.vhd
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
 
ENTITY prueba_comparador IS
END prueba_comparador;
 
ARCHITECTURE behavior OF prueba_comparador IS 
 
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
 
   constant clk_period : time := 10 ns;
 
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
		clk_process :process
   begin
		--clk <= '0';
		p<= "11110111";
		q<= "10010010";
		a<= "00000000000000000000000";
		b<= "00000000000000000000000";
		wait for clk_period/2;
		p<= "10101010";
		q<= "11111111";
		a<= "00000000000000000000000";
		b<= "00000000000000000000000";
		--clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
