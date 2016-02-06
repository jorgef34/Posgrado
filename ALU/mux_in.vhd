--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_in is
    Port ( Signo_resultado: in  STD_LOGIC;
           Exponente_resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Mantiza_resultado: in  STD_LOGIC_VECTOR (22 downto 0);			  
           port_id : in  STD_LOGIC_VECTOR (7 downto 0);
           leer : in  STD_LOGIC;
			  clk : in std_logic;
			  port_mux_out : out  STD_LOGIC_VECTOR (7 downto 0));
end mux_in;

architecture Behavioral of mux_in is

--signal operador_aux_1: STD_LOGIC_VECTOR (7 downto 0);
--signal operador_aux_2: STD_LOGIC_VECTOR (7 downto 0);
--signal operador_aux_3: STD_LOGIC_VECTOR (7 downto 0);
--signal operador_aux_4: STD_LOGIC_VECTOR (7 downto 0);

begin

IO_registers: process (leer, port_id)
  
  begin
  
  --if clk'event and clk='1' then
  
			if leer ='1' then 

				case port_id (1 downto 0) is
				
					when "00" =>
				
					 port_mux_out <= Signo_resultado &  Exponente_resultado( 7 downto 1) ;
					 -- port_mux_out <= "11111111";
					  

					when "01" =>
			
					port_mux_out <=  Exponente_resultado(0) & Mantiza_resultado (22 downto 16 ); 
										  --port_mux_out <= "11111111";

					when "10" =>
			
					port_mux_out <= Mantiza_resultado (15 downto 8); 
					 					  --port_mux_out <= "11111111";
			
					when "11" =>
			
					port_mux_out <= Mantiza_resultado (7 downto 0);
										  --port_mux_out <= "11111111";
				
					when  others  => 
					
					port_mux_out <= "00000000";
				
				end case;
			
			end if;
				
--end if;
				
	

  end process IO_registers;
--  
  
--			operador_aux_1(7 downto 0)		 <=  out_port when (port_id = "000" and write_strobe = '1') ;
--			operador_aux_1(15 downto 8)	 <=  out_port when (port_id = "001" and write_strobe = '1') ;
--			operador_aux_1(23 downto 16)	 <=  out_port when (port_id = "010" and write_strobe = '1') ;
--			operador_aux_1(31 downto 24)	 <=  out_port when (port_id = "011" and write_strobe = '1') ;
--
--			operador_aux_2(7 downto 0)		 <=  out_port when (port_id = "100" and write_strobe = '1') ;
--			operador_aux_2(15 downto 8)	 <=  out_port when (port_id = "101" and write_strobe = '1') ;
--			operador_aux_2(23 downto 16)	 <=  out_port when (port_id = "110" and write_strobe = '1') ;
--			operador_aux_2(31 downto 24)	 <=  out_port when (port_id = "111" and write_strobe = '1') ;


end Behavioral;

