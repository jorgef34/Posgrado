----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:36:16 12/26/2015 
-- Design Name: 
-- Module Name:    seleccionador - Behavioral 
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
use ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seleccionador is
    Port ( A_in : in  STD_LOGIC_VECTOR (22 downto 0);
           B_in : in  STD_LOGIC_VECTOR (22 downto 0);
           a1 : in  STD_LOGIC_VECTOR (7 downto 0);
           b1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  --s2: in STD_LOGIC;
           e_max : out  STD_LOGIC_VECTOR (7 downto 0);
           e_dif : out  STD_LOGIC_VECTOR (7 downto 0);
           A_max : out  STD_LOGIC_VECTOR (23 downto 0);
           B_despl : out  STD_LOGIC_VECTOR (23 downto 0);
			  --s_out: out STD_LOGIC;
			  NaN_out: out STD_LOGIC;
			  Infinito_out: out STD_LOGIC);

end seleccionador;


architecture Behavioral of seleccionador is

begin

	PROCESS (A_in, B_in, a1, b1)


	begin
	
			
		if((a1="00000000")and(b1="00000000")and (A_in="00000000000000000000000")and(B_in="00000000000000000000000")) then		
		A_max   <= '0' & A_in;
		B_despl <= '0' & B_in;
		e_max   <= "00000000";
		e_dif   <= "00000000";
		--s_out <= '0';
		
				
		elsif( (a1="11111111")and (A_in="00000000000000000000000")) or ((b1="11111111") and(B_in="00000000000000000000000")) then		
		A_max         <= '0' & A_in;
		B_despl       <= '0' & B_in;
		e_max         <= "00000000";
		e_dif         <= "00000000";
		Infinito_out  <='1';
		--s_out <= '0';
	
		
		elsif( (a1="11111111")and (A_in="00000100000000000000000")) or ((b1="11111111") and(B_in="00000100000000000000000")) then		
		A_max   <= '0' & A_in;
		B_despl <= '0' & B_in;
		e_max   <= "00000000";
		e_dif   <= "00000000";
		NaN_out <= '1';
		--s_out <= '0';


	
		elsif((a1="11111111")and (A_in="00100010001001010101010")) or ((b1="11111111") and(B_in="00100010001001010101010")) then		
		A_max    <= '0' & A_in;
		B_despl  <= '0' & B_in;
		e_max    <= "00000000";
		e_dif    <= "00000000";
		NaN_out  <= '1';
		--s_out <= '0';
	
			
		elsif((a1="00000000")and(A_in="00000000000000000000000")) then			
		e_dif   <=	std_logic_vector(unsigned(b1) - unsigned(a1));	
		A_max   <= '0' & B_in;
		B_despl <= '0' & A_in;---------aca antes erra 1 pero afecta a la suma 
		e_max   <= b1;
		--s_out <= s2;
		Infinito_out  <='0';
		NaN_out  <= '0';

		elsif((b1="00000000")and(B_in="00000000000000000000000")) then			
		e_dif   <= std_logic_vector(unsigned(a1) - unsigned(b1));
		A_max   <= '0' & A_in;
		B_despl <= '0' & B_in;
		e_max   <= a1;	
		--s_out <= s1;
		Infinito_out  <='0';
		NaN_out  <= '0';
		
	

		elsif (a1>b1) then		
		e_dif   <= std_logic_vector(unsigned(a1) - unsigned(b1));
		A_max   <= '1' & A_in;
		B_despl <= '1' & B_in;
		e_max   <= a1;
		--s_out <= s1;
		Infinito_out  <='0';
		NaN_out  <= '0';
		
		elsif (a1<b1) then
		e_dif   <=	std_logic_vector(unsigned(b1) - unsigned(a1));	
		A_max   <= '1' & B_in;
		B_despl <= '1' & A_in;
		e_max   <= b1;
		--s_out <= s2;
		Infinito_out  <='0';
		NaN_out  <= '0';
				
		elsif ((a1=b1) and (A_in > B_in)) then		
		A_max   <= '1' & A_in;
		B_despl <= '1' & B_in;
		e_max   <= a1;
		e_dif   <="00000000";
		--s_out <= s1;
		Infinito_out  <='0';
		NaN_out  <= '0';
		
		elsif ((a1=b1) and (A_in < B_in)) then	 -- falta analizar igualdad de mantisas y expoenentes
		A_max   <= '1' & A_in;
		B_despl <= '1' & B_in;
		e_max   <= b1;
		e_dif   <="00000000";
		--s_out <= s2;
		Infinito_out  <='0';
		NaN_out  <= '0';
			
					
		end if;
							
		
	END PROCESS;

end Behavioral;

