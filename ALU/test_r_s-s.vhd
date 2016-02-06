--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:22:40 01/11/2016
-- Design Name:   
-- Module Name:   C:/FPGA/PracticoFinal/test_r_s-s.vhd
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
 
ENTITY test_r_s_s IS
END test_r_s_s;
 
ARCHITECTURE behavior OF test_r_s_s IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador_IEEE
    PORT(
         Mantisa_1 : IN  std_logic_vector(22 downto 0);
         Exponente_1 : IN  std_logic_vector(7 downto 0);
         s_1_in : IN  std_logic;
         Mantisa_2 : IN  std_logic_vector(22 downto 0);
         Exponente_2 : IN  std_logic_vector(7 downto 0);
         s_2_in : IN  std_logic;
         Operacion : IN  std_logic_vector(1 downto 0);
         Mantisa_suma : OUT  std_logic_vector(22 downto 0);
         Exponente_suma : OUT  std_logic_vector(7 downto 0);
         Mantisa_resta : OUT  std_logic_vector(22 downto 0);
         Exponente_resta : OUT  std_logic_vector(7 downto 0);
         signo_final : OUT  std_logic;
         error_resta : OUT  std_logic;
         Infinito : OUT  std_logic;
         NaN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Mantisa_1 : std_logic_vector(22 downto 0) := (others => '0');
   signal Exponente_1 : std_logic_vector(7 downto 0) := (others => '0');
   signal s_1_in : std_logic := '0';
   signal Mantisa_2 : std_logic_vector(22 downto 0) := (others => '0');
   signal Exponente_2 : std_logic_vector(7 downto 0) := (others => '0');
   signal s_2_in : std_logic := '0';
   signal Operacion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Mantisa_suma : std_logic_vector(22 downto 0);
   signal Exponente_suma : std_logic_vector(7 downto 0);
   signal Mantisa_resta : std_logic_vector(22 downto 0);
   signal Exponente_resta : std_logic_vector(7 downto 0);
   signal signo_final : std_logic;
   signal error_resta : std_logic;
   signal Infinito : std_logic;
   signal NaN : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador_IEEE PORT MAP (
          Mantisa_1 => Mantisa_1,
          Exponente_1 => Exponente_1,
          s_1_in => s_1_in,
          Mantisa_2 => Mantisa_2,
          Exponente_2 => Exponente_2,
          s_2_in => s_2_in,
          Operacion => Operacion,
          Mantisa_suma => Mantisa_suma,
          Exponente_suma => Exponente_suma,
          Mantisa_resta => Mantisa_resta,
          Exponente_resta => Exponente_resta,
          signo_final => signo_final,
          error_resta => error_resta,
          Infinito => Infinito,
          NaN => NaN
        );

   -- Clock process definitions
   clock_process :process
   begin
		--<clock> <= '0';
		
--	Mantisa_2	 	<= "00111100000000000000000"; --19,75
--	Exponente_2 	<= "10000011";
	
	Mantisa_2 		<= "00000101100000000000000"; --523       la resta es s2-s1
	Exponente_2 	<= "10001000";

--	Mantisa_2 		<= "00000000000000000000000"; --0       la resta es s
--	Exponente_2 	<= "00000000";
	
	Mantisa_1	 	<= "00111100000000000000000"; --19,75
	Exponente_1 	<= "10000011";
	
--	Mantisa_1 		<= "00000101100000000000000"; --523       la resta es s2-s1
--	Exponente_1 	<= "10001000";
	
--	Mantisa_1 		<= "00000000000000000000000"; --0       la resta es s2-s1
--	Exponente_1 	<= "00000000";
	
	Operacion		<= "01";									



	s_2_in			<='1';
	s_1_in			<='1';

	wait for clock_period/2;
		
		
		--<clock> <= '1';
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
