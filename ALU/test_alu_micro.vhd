--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:01:10 01/30/2016
-- Design Name:   
-- Module Name:   C:/FPGA/ALU/test_alu_micro.vhd
-- Project Name:  PracticoFinal
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_mas_Micro
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
 
ENTITY test_alu_micro IS
END test_alu_micro;
 
ARCHITECTURE behavior OF test_alu_micro IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_mas_Micro
    PORT(
         clk : IN  std_logic;
         Operacion_ALU : OUT  std_logic_vector(1 downto 0);
         signo_resultado : OUT  std_logic;
         Mantisa_resultado : OUT  std_logic_vector(22 downto 0);
         Exponente_resultado : OUT  std_logic_vector(7 downto 0);
         s_1 : OUT  std_logic;
         M_1 : OUT  std_logic_vector(22 downto 0);
         E_1 : OUT  std_logic_vector(7 downto 0);
         s_2 : OUT  std_logic;
         M_2 : OUT  std_logic_vector(22 downto 0);
         E_2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal Operacion_ALU : std_logic_vector(1 downto 0);
   signal signo_resultado : std_logic;
   signal Mantisa_resultado : std_logic_vector(22 downto 0);
   signal Exponente_resultado : std_logic_vector(7 downto 0);
   signal s_1 : std_logic;
   signal M_1 : std_logic_vector(22 downto 0);
   signal E_1 : std_logic_vector(7 downto 0);
   signal s_2 : std_logic;
   signal M_2 : std_logic_vector(22 downto 0);
   signal E_2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_mas_Micro PORT MAP (
          clk => clk,
          Operacion_ALU => Operacion_ALU,
          signo_resultado => signo_resultado,
          Mantisa_resultado => Mantisa_resultado,
          Exponente_resultado => Exponente_resultado,
          s_1 => s_1,
          M_1 => M_1,
          E_1 => E_1,
          s_2 => s_2,
          M_2 => M_2,
          E_2 => E_2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
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
