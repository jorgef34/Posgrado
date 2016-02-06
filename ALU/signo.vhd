----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:21 12/20/2015 
-- Design Name: 
-- Module Name:    signo - Behavioral 
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

entity signo is
    Port ( M_1 : in  STD_LOGIC_VECTOR (22 downto 0);
           E_1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_1: in STD_LOGIC;
           M_2 : in  STD_LOGIC_VECTOR (22 downto 0);
           E_2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_2: in STD_LOGIC;        
		  	  operacion: in  STD_LOGIC_VECTOR (1 downto 0);
           cero: out  STD_LOGIC;
           iguales: out  STD_LOGIC;       
			  signo_out: out  STD_LOGIC;
			  operacion_out: out  STD_LOGIC_VECTOR (1 downto 0));
			
end signo;

architecture Behavioral of signo is

begin


	PROCESS (s_1, E_1, M_1, s_2, E_2, M_2, operacion)


	begin


	
		if( (s_1 ='0') and (s_2 ='0') and operacion ="00" ) then		--suma s_2 + (s_1)

		operacion_out	<= 	"00";
		signo_out		<= 	'0';
				
		elsif((s_1 ='1') and (s_2 ='1') and operacion ="00") then  --suma -s_2 + (-s_1)

		operacion_out	<= 	"00";
		signo_out		<= 	'1';


		elsif((s_1 ='0') and (s_2 ='1') and operacion ="00") then   --suma -s_2 + (s_1)     

		operacion_out	<= 	"01";
		
			if (E_1= "00000000" and M_1= "00000000000000000000000")  then
				
					signo_out  <= '1';
					cero <= '1';
					
			elsif (E_2= "00000000" and M_2= "00000000000000000000000") then
			
					signo_out  <= '0';
					cero <= '1';
					
			else

						if  (E_2 > E_1) then				
						
							signo_out	<=	'1';
							cero <= '0';
						
						elsif (E_2 < E_1) then	
							
							signo_out  <= '0';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 > M_1) then
						
							signo_out  <= '1';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 < M_1) then
						
							signo_out  <= '0';
							cero <= '0';
							
						elsif (E_2 = E_1) and (M_2 = M_1) then
						
							signo_out  <= '0';
							iguales <='1';
							cero <= '0';
							
						end if;
				
				end if;
				

		elsif((s_1 ='1') and (s_2 ='0') and operacion ="00") then   --suma s_2 + (-s_1)    

		operacion_out	<= 	"01";
		
		   if (E_1= "00000000" and M_1= "00000000000000000000000")  then
				
					signo_out  <= '0';
					cero <= '1';
					
			elsif (E_2= "00000000" and M_2= "00000000000000000000000") then
			
					signo_out  <= '1';
					cero <= '1';
					
			else
				
						if  (E_2 > E_1) then				
						
							signo_out	<=	'0';
							cero <= '0';
						
						elsif (E_2 < E_1) then	
							
							signo_out  <= '1';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 > M_1) then
						
							signo_out  <= '0';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 < M_1) then
						
							signo_out  <= '1';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 = M_1) then
						
							signo_out  <= '0';					
							iguales <='1';
							cero <= '0';				
							
						end if;
				
				end if;
		

		elsif( (s_1 ='0') and (s_2 ='0') and operacion ="01" ) then		--resta  s_2 - s_1 oooojo  

		operacion_out	<= 	"01";
        
		  if (E_1= "00000000" and M_1= "00000000000000000000000")  then
				
					signo_out  <= '0';
					cero <= '1';
					
			elsif (E_2= "00000000" and M_2= "00000000000000000000000") then
			
					signo_out  <= '1';
					cero <= '1';
			
			else
				
						if  (E_2 > E_1) then				
						
							signo_out	<=	'0';
							cero <= '0';
						
						elsif (E_2 < E_1) then	
							
							signo_out  <= '1';
							cero <= '0';
						
						elsif (E_2 = E_1) and (M_2 > M_1) then
						
							signo_out <= '0';
							cero <= '0';
				
						elsif (E_2 = E_1) and (M_2 < M_1) then
						
							signo_out <= '1';
							cero <= '0';
				
						elsif (E_2 = E_1) and (M_2 = M_1) then
						
							signo_out  <= '0';
							iguales <='1';
							cero <= '0';
				
						end if;	
					
				end if;
				
		elsif((s_1 ='1') and (s_2 ='1') and operacion ="01") then  --resta  -s_2 - (-s_1)

		operacion_out	<= 	"01";
		
			if (E_1= "00000000" and M_1= "00000000000000000000000")  then
				
					signo_out  <= '1';
					cero <= '1';
					
			elsif (E_2= "00000000" and M_2= "00000000000000000000000") then
			
					signo_out  <= '0';
					cero <= '1';
					
			else

					if  (E_2 > E_1) then				
					
						signo_out	<=	'1';
						cero <= '0';
					
					elsif (E_2 < E_1) then	
						
						signo_out  <= '0';
						cero <= '0';
					elsif (E_2 = E_1) and (M_2 > M_1) then
					
						signo_out  <= '1';
						cero <= '0';					
					
					elsif (E_2 = E_1) and (M_2 < M_1) then
					
						signo_out  <= '0';
						cero <= '0';					
					
					elsif (E_2 = E_1) and (M_2 = M_1) then
					
						signo_out  <= '0';
						iguales <='1';
						cero <= '0';					
						
						
					end if;
					
				end if;

		elsif((s_1 ='0') and (s_2 ='1') and operacion ="01") then   --resta  -s_2 - (s_1)     

		operacion_out	<= 	"00";
		signo_out		<= 	'1';

		elsif((s_1 ='1') and (s_2 ='0') and operacion ="01") then    --resta  s_2 - (-s_1)        

		operacion_out	<= 	"00";
		signo_out		<= 	'0';

	
	
		end if;	
	
									
		
	END PROCESS;

end Behavioral;

