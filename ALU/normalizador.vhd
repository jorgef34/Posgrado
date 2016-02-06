----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:17:53 01/06/2016 
-- Design Name: 
-- Module Name:    normalizador - Behavioral 
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

entity normalizador is
    Port ( mantisa_desnormalizada : in  STD_LOGIC_VECTOR (23 downto 0);
           mantisa_normalizada : out  STD_LOGIC_VECTOR (22 downto 0);
           exponente_in : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  cero_oper: in STD_LOGIC;
			  iguales_oper: in STD_LOGIC;
			  error: out STD_LOGIC);

end normalizador;

architecture Behavioral of normalizador is


signal mantisa_aux: UNSIGNED(23 downto 0);

begin


PROCESS ( mantisa_desnormalizada, exponente_in, mantisa_aux, cero_oper, iguales_oper )

variable contador_ceros: UNSIGNED(7 downto 0):="00000000";
variable flag: STD_LOGIC := '1';

		
		begin

	if iguales_oper = '1' then 
	
					mantisa_normalizada<= "00000000000000000000000";
					exponente_out <= "00000000";	
					error <= '0';
	
	else


			if cero_oper ='0' then

						contador_ceros := "00000000";
						flag := '1';

						for i in 23 downto 0 loop	
							
							if (mantisa_desnormalizada(i) = '1') then
						
								flag := '0';		

							elsif (flag = '1') then
					
								contador_ceros := contador_ceros + "00000001";

							end if;

						end loop;


						if ( unsigned(contador_ceros) < unsigned(exponente_in)) then
			
							mantisa_aux <= unsigned( mantisa_desnormalizada) SLL (to_integer(contador_ceros)); --aca esta igluido el 1 de la normalizacion
							mantisa_normalizada<= std_logic_vector(mantisa_aux(22 downto 0));	--extraigo la mantisa real
							exponente_out <= exponente_in - std_logic_vector(contador_ceros);
							error <= '0';
					

						elsif (unsigned(contador_ceros) > unsigned(exponente_in)) then
			
		  
							mantisa_normalizada<= "11111111111111111111111";
							exponente_out <= "11111111";	
							error <= '1';

						else
						
							mantisa_normalizada<= "00000000000000000000000";
							exponente_out <= "00000000";	
							error <= '0';
				
						end if;

			else

					mantisa_normalizada <= mantisa_desnormalizada(22 downto 0) ;
					exponente_out  <= exponente_in;
					error <= '0';

			end if;


	end if;

		
	END PROCESS;
	

end Behavioral;

