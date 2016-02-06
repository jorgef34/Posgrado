----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:35 01/30/2016 
-- Design Name: 
-- Module Name:    ALU_mas_Micro - Behavioral 
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

entity ALU_mas_Micro is
    
	 Port ( clk : in  STD_LOGIC;
	 		  Operacion_ALU: out STD_LOGIC_VECTOR (1 downto 0);
			  signo_resultado: out STD_LOGIC;
			  Mantisa_resultado: out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_resultado: out  STD_LOGIC_VECTOR (7 downto 0);
			  s_1: out STD_LOGIC;
           M_1: out  STD_LOGIC_VECTOR (22 downto 0);
           E_1: out  STD_LOGIC_VECTOR (7 downto 0);			  
			  s_2: out STD_LOGIC;	 
           M_2: out  STD_LOGIC_VECTOR (22 downto 0);
           E_2: out  STD_LOGIC_VECTOR (7 downto 0)			  
	

	 );

end ALU_mas_Micro;

architecture Behavioral of ALU_mas_Micro is


component Sumador_IEEE is

    Port ( Mantisa_1 : in  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_1 : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_1_in: in STD_LOGIC;
           Mantisa_2 : in  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_2_in: in STD_LOGIC;
			  Operacion: in STD_LOGIC_VECTOR (1 downto 0);
           Mantisa_final: out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_final: out  STD_LOGIC_VECTOR (7 downto 0);			  
			  signo_final: out STD_LOGIC;
			  interrupcion_micro: out STD_LOGIC;
			  error_resta: out STD_LOGIC;
			  Infinito: out STD_LOGIC;
			  NaN: out STD_LOGIC			  
			  );

end component;

component kcpsm3_int_test is

    Port ( sig_1_out : out std_logic;
			  exp_1_out : out std_logic_vector(7 downto 0);
			  man_1_out : out  STD_LOGIC_VECTOR (22 downto 0);
			  sig_2_out : out std_logic;
			  exp_2_out : out std_logic_vector(7 downto 0);
			  man_2_out : out  STD_LOGIC_VECTOR (22 downto 0);
			  operacion_out: out  STD_LOGIC_VECTOR (1 downto 0);				 
			  Signo_UPF: in  STD_LOGIC;
			  Exponente_UPF : in  STD_LOGIC_VECTOR (7 downto 0);
			  Mantiza_UPF: in  STD_LOGIC_VECTOR (22 downto 0);	
			  interrupt_event : in std_logic;
           clk : in std_logic);

end component;



signal alu_micro_mantisa1: STD_LOGIC_VECTOR (22 downto 0);
signal alu_micro_exponente1: STD_LOGIC_VECTOR (7 downto 0);
signal alu_micro_signo1: STD_LOGIC;

signal alu_micro_mantisa2: STD_LOGIC_VECTOR (22 downto 0);
signal alu_micro_exponente2: STD_LOGIC_VECTOR (7 downto 0);
signal alu_micro_signo2: STD_LOGIC;

signal alu_micro_operacion: STD_LOGIC_VECTOR (1 downto 0);

signal alu_micro_mantisa_resultado: STD_LOGIC_VECTOR (22 downto 0);
signal alu_micro_exponente_resultado: STD_LOGIC_VECTOR (7 downto 0);
signal alu_micro_signo_resultado: STD_LOGIC;

signal alu_micro_signo_interrupcion: STD_LOGIC;


begin

ALU: Sumador_IEEE port map(

			  Mantisa_1         	=> alu_micro_mantisa1,                 -- : in  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_1      	=> alu_micro_exponente1,              -- : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_1_in            	=> alu_micro_signo1,              -- in STD_LOGIC;
           Mantisa_2         	=> alu_micro_mantisa2,                   -- : in  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_2       	=> alu_micro_exponente2,                   -- : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_2_in            	=> alu_micro_signo2,                    --: in STD_LOGIC;
			  Operacion         	=> alu_micro_operacion,               --: in STD_LOGIC_VECTOR (1 downto 0);
           Mantisa_final     	=> alu_micro_mantisa_resultado,          								 --: out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_final   	=> alu_micro_exponente_resultado,          --: out  STD_LOGIC_VECTOR (7 downto 0);			  
			  signo_final       	=> alu_micro_signo_resultado,          --: out STD_LOGIC;
			  interrupcion_micro => alu_micro_signo_interrupcion           --: out STD_LOGIC;
			 -- error_resta                     --: out STD_LOGIC;
			  --Infinito                        --: out STD_LOGIC;
			 -- NaN                              --: out STD_LOGIC	



);


Micro: kcpsm3_int_test port map(

			  sig_1_out				=> alu_micro_signo1,							-- : out std_logic;
			  exp_1_out				=> alu_micro_exponente1,								-- : out std_logic_vector(7 downto 0);
			  man_1_out				=> alu_micro_mantisa1,								-- : out  STD_LOGIC_VECTOR (22 downto 0);
			  sig_2_out				=> alu_micro_signo2,								-- : out std_logic;
			  exp_2_out			   => alu_micro_exponente2,								-- : out std_logic_vector(7 downto 0);
			  man_2_out				=> alu_micro_mantisa2, 								-- : out  STD_LOGIC_VECTOR (22 downto 0);
			  operacion_out		=> alu_micro_operacion,								--: out  STD_LOGIC_VECTOR (1 downto 0);				 
			  Signo_UPF				=> alu_micro_signo_resultado,								--: in  STD_LOGIC;
			  Exponente_UPF		=> alu_micro_exponente_resultado, 								-- : in  STD_LOGIC_VECTOR (7 downto 0);
			  Mantiza_UPF			=> alu_micro_mantisa_resultado, 								--: in  STD_LOGIC_VECTOR (22 downto 0);	
			  interrupt_event	 	=> alu_micro_signo_interrupcion,								-- : in std_logic;
           clk						=> clk												-- : in std_logic);




);


	 		  Operacion_ALU     		<= alu_micro_operacion;	
			  signo_resultado			<=	alu_micro_signo_resultado;							
			  Mantisa_resultado		<=	alu_micro_mantisa_resultado; 									
           Exponente_resultado	<=	alu_micro_exponente_resultado;						
			  s_1							<= alu_micro_signo1;
           M_1							<=	alu_micro_mantisa1;						
           E_1							<= alu_micro_exponente1;				  
			  s_2							<=	alu_micro_signo2;						 
           M_2							<=	alu_micro_mantisa2;								
           E_2							<=	alu_micro_exponente2;			


end Behavioral;

