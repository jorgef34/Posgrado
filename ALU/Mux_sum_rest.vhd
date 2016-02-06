----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:13 01/07/2016 
-- Design Name: 
-- Module Name:    Mux_sum_rest - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_sum_rest is
    Port ( Mantisa_desp : in  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max : in  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max : in  STD_LOGIC_VECTOR (7 downto 0);
           selec_op : in  STD_LOGIC_VECTOR (1 downto 0);
           Mantisa_desp_sum : out  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max_sum : out  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max_sum : out  STD_LOGIC_VECTOR (7 downto 0);
			  Mantisa_desp_rest : out  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max_rest : out  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max_rest : out  STD_LOGIC_VECTOR (7 downto 0));
			  
			  
end Mux_sum_rest;

architecture Behavioral of Mux_sum_rest is

begin

	Mantisa_desp_sum 		<= Mantisa_desp when selec_op ="00";  -- para sumar
	Mantisa_max_sum		<= Mantisa_max when selec_op ="00";
	Exp_max_sum 			<= Exp_max  when selec_op ="00";

 	Mantisa_desp_rest 	<= Mantisa_desp when selec_op ="01"; -- para restar
	Mantisa_max_rest		<= Mantisa_max when selec_op ="01";
	Exp_max_rest 			<= Exp_max when selec_op ="01";
	
	end Behavioral;



--	Mantisa_desp_sum 		<= Mantisa_desp when (selec_op ="00" and signo_max = '0');  -- para sumar
--	Mantisa_max_sum		<= Mantisa_max when (selec_op ="00" and signo_max = '0');
--	Exp_max_sum 			<= Exp_max  when (selec_op ="00" and signo_max = '0');
--	
--	
--	Mantisa_desp_rest 	<= Mantisa_desp when (selec_op ="00"and signo_max = '1'); -- para restar
--	Mantisa_max_rest		<= Mantisa_max when (selec_op ="00"and signo_max = '1');
--	Exp_max_rest 			<= Exp_max when (selec_op ="0"and signo_max = '1');
--	
--	
--	Mantisa_desp_rest 		<= Mantisa_desp when (selec_op ="01" and signo_max = '0');  -- para sumar
--	Mantisa_max_rest		<= Mantisa_max when (selec_op ="01" and signo_max = '0');
--	Exp_max_rest 			<= Exp_max  when (selec_op ="01" and signo_max = '0');
--	
--	
--
-- 	Mantisa_desp_rest 	<= Mantisa_desp when (selec_op ="01"and signo_max = '1'); -- para restar
--	Mantisa_max_rest		<= Mantisa_max when (selec_op ="01"and signo_max = '1');
--	Exp_max_rest 			<= Exp_max when (selec_op ="01"and signo_max = '1');
	
