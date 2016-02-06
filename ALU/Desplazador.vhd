----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:49 12/23/2015 
-- Design Name: 
-- Module Name:    desplazador - Behavioral 
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

entity desplazador is
    Port ( desplazador_in : in   std_logic_vector (23 downto 0);
           numero_de_despl : in  std_logic_vector (7 downto 0);
           despazador_out : out  std_logic_vector (23 downto 0));
end desplazador;

architecture Behavioral of desplazador is

signal num_desp_aux: UNSIGNED(7 downto 0);
signal num_out_aux: UNSIGNED(23 downto 0);



begin

	PROCESS (desplazador_in, numero_de_despl, num_desp_aux, num_out_aux )
		
		begin

		IF numero_de_despl  <= "0000010111" THEN	--	solo si la diferencia es menor o igual a 23
		num_desp_aux        <= unsigned( numero_de_despl);		
		num_out_aux         <= unsigned (desplazador_in) SRL (to_integer(num_desp_aux));		
		despazador_out      <= std_logic_vector(num_out_aux);

		ELSE
		
		despazador_out	<= desplazador_in ;
		
		END IF;
		
	END PROCESS;
	

end Behavioral;
