
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


entity Decodificador is
    Port ( out_port : in  STD_LOGIC_VECTOR (7 downto 0);
           port_id : in  STD_LOGIC_VECTOR (7 downto 0);
			  write_strobe: in  STD_LOGIC;
			  clk : in std_logic;
			  --habilitar: in  STD_LOGIC;
			  operacion: out  STD_LOGIC_VECTOR (1 downto 0);
           sig_1 : out  STD_LOGIC;
           exp_1 : out  STD_LOGIC_VECTOR (7 downto 0);
           man_1 : out  STD_LOGIC_VECTOR (22 downto 0);			  
           sig_2 : out  STD_LOGIC;
           exp_2 : out  STD_LOGIC_VECTOR (7 downto 0);
           man_2 : out  STD_LOGIC_VECTOR (22 downto 0));
			  
end Decodificador;

architecture Behavioral of Decodificador is


signal operador_aux_1: STD_LOGIC_VECTOR (31 downto 0);
signal operador_aux_2: STD_LOGIC_VECTOR (31 downto 0);

begin



 IO_registers: process (clk, write_strobe, out_port, port_id, operador_aux_1, operador_aux_2)
  
  begin
  
-- if clk'event and clk='1' then
  
			if write_strobe ='1' then

				--operador_aux_1	<= "00000000000000000000000000000000";
				--operador_aux_2	<= "00000000000000000000000000000000";				

			--else 

				case port_id (2 downto 0) is
				
					when "000" =>
				
					operador_aux_1(7 downto 0) <=  out_port;		

					when "001" =>
			
					operador_aux_1(15 downto 8) <=  out_port;

					when "010" =>
			
					operador_aux_1(23 downto 16) <=  out_port;			
			
					when "011" =>
			
					operador_aux_1(31 downto 24) <=  out_port;
		
					when "100" =>
				
					operador_aux_2(7 downto 0) <=  out_port;		

					when "101" =>
			
					operador_aux_2(15 downto 8) <=  out_port;

					when "110" =>
			
					operador_aux_2(23 downto 16) <=  out_port;			
			
					when "111" =>
			
					operador_aux_2(31 downto 24) <=  out_port;
		
					when  others  => 
					
					operador_aux_1	<= "00000000000000000000000000000000";
					operador_aux_2	<= "00000000000000000000000000000000";	
				
				end case;
			
			   if (port_id (3 downto 0) = "1000") then          --- uso este pin para identificar la interrupcion
				 --if port_id (3) = '0' then 
					sig_1 <= operador_aux_1(31);
					exp_1 <= operador_aux_1(30 downto 23);
					man_1 <= operador_aux_1(22 downto 0);

					sig_2 <= operador_aux_2(31);
					exp_2 <= operador_aux_2(30 downto 23);
					man_2 <= operador_aux_2(22 downto 0);
					
					operacion <= "00"; -- sumar
					
				elsif (port_id (4 downto 0) = "10000") then				
				
					sig_1 <= operador_aux_1(31);
					exp_1 <= operador_aux_1(30 downto 23);
					man_1 <= operador_aux_1(22 downto 0);

					sig_2 <= operador_aux_2(31);
					exp_2 <= operador_aux_2(30 downto 23);
					man_2 <= operador_aux_2(22 downto 0);
										
					operacion <= "01"; 		--restar
			

			end if;
			
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
--
--	
--
--			sig_1 <= operador_aux_1(31) when habilitar ='1';
--			exp_1 <= operador_aux_1(30 downto 23) when habilitar ='1';
--			man_1 <= operador_aux_1(22 downto 0)when habilitar ='1';
--
--			sig_2 <= operador_aux_2(31) when habilitar ='1';
--			exp_2 <= operador_aux_2(30 downto 23) when habilitar ='1';
--			man_2 <= operador_aux_2(22 downto 0)when habilitar ='1';


--	if 	habilitar ='1' then
--  
--					sig_1 <= operador_aux_1(31);
--					exp_1 <= operador_aux_1(30 downto 23);
--					man_1 <= operador_aux_1(22 downto 0);
--
--					sig_2 <= operador_aux_2(31);
--					exp_2 <= operador_aux_2(30 downto 23);
--					man_2 <= operador_aux_2(22 downto 0);
--					
--					operacion <= "00"; -- sumar
--		
--			else
--	
--					sig_1 <= '0';
--					exp_1 <= "00000000";
--					man_1 <= "00000000000000000000000";
--					
--					sig_2 <= '0';
--					exp_2 <= "00000000";
--					man_2 <= "00000000000000000000000";
--					
--					operacion <= "01"; 		--restar
--		end if;

end Behavioral;
