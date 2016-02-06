----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:13 12/26/2015 
-- Design Name: 
-- Module Name:    resultado - Behavioral 
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

entity resultado is
    Port ( Mantisa_in : in  STD_LOGIC_VECTOR (23 downto 0);
           Exponente_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  Acarreo_in: in STD_LOGIC;
           Mantisa_final : out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_final : out  STD_LOGIC_VECTOR (7 downto 0));			  
end resultado;

architecture Behavioral of resultado is

--signal mantisa_aux: UNSIGNED(23 downto 0);

begin

	PROCESS (Mantisa_in, Exponente_in, Acarreo_in)
		
		begin

		IF (Acarreo_in = '1') THEN	
		
	
		Mantisa_final   <=	Mantisa_in (23 downto 1); 		
		Exponente_final <= Exponente_in + "00000001";

		ELSIF (Acarreo_in = '0') THEN

		Mantisa_final   <= Mantisa_in (22 downto 0) ;
		Exponente_final <= Exponente_in;
		
		
		END IF;

		END PROCESS;

end Behavioral;

