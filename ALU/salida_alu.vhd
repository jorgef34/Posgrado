----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:09 01/30/2016 
-- Design Name: 
-- Module Name:    salida_alu - Behavioral 
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

entity salida_alu is

    Port ( operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           exponente_suma : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_suma : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_resta : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_resta : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente : out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa : out  STD_LOGIC_VECTOR (22 downto 0);
			  interrupcion_alu: out STD_LOGIC);

end salida_alu;

architecture Behavioral of salida_alu is


begin

	PROCESS( operacion,exponente_suma, mantisa_suma,exponente_resta , mantisa_resta )

	begin
	
	if operacion ="00" then  ---el suma
	
	 exponente        <= exponente_suma;
	 mantisa			   <= mantisa_suma;
    interrupcion_alu <= '1';
	 
	 elsif operacion ="01" then -----es resta
	 
	 exponente        <= exponente_resta;
	 mantisa			   <=  mantisa_resta;
    interrupcion_alu <= '1';
	 
	 else
	 
	 exponente        <= "00000000";
	 mantisa			   <= "00000000000000000000000";
    interrupcion_alu <= '0';
	 
	 end if;
	 

	END PROCESS;

end Behavioral;

