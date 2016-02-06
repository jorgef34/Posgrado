----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:52:03 12/27/2015 
-- Design Name: 
-- Module Name:    Sumador_IEEE - Behavioral 
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

entity Sumador_IEEE is
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
			  
end Sumador_IEEE;

architecture Behavioral of Sumador_IEEE is



component seleccionador is

    Port ( A_in : in  STD_LOGIC_VECTOR (22 downto 0);
           B_in : in  STD_LOGIC_VECTOR (22 downto 0);
           a1 : in  STD_LOGIC_VECTOR (7 downto 0);
           b1 : in  STD_LOGIC_VECTOR (7 downto 0);
			 -- iguales_r: in STD_LOGIC;
			  --s2: in STD_LOGIC;
           e_max : out  STD_LOGIC_VECTOR (7 downto 0);
           e_dif : out  STD_LOGIC_VECTOR (7 downto 0);
           A_max : out  STD_LOGIC_VECTOR (23 downto 0);
           B_despl : out  STD_LOGIC_VECTOR (23 downto 0);
			  --s_out: out STD_LOGIC;
			  NaN_out: out STD_LOGIC;
			  Infinito_out: out STD_LOGIC);

end component;


component desplazador is

		Port ( desplazador_in : in   std_logic_vector (23 downto 0);
				 numero_de_despl : in  std_logic_vector (7 downto 0);
             despazador_out : out  std_logic_vector (23 downto 0));

end component;

component Mux_sum_rest is

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

end component;



component Sumador is

    Port ( --habilitar : in  STD_LOGIC;
            X : in  STD_LOGIC_VECTOR (23 downto 0);
           Y : in  STD_LOGIC_VECTOR(23 downto 0);
           S : out  STD_LOGIC_VECTOR (23 downto 0);
       C_out : out  STD_LOGIC);

end component; 

component Restador is

    Port (  --habilitar : in  STD_LOGIC;
			  X : in  STD_LOGIC_VECTOR (23 downto 0);
           Y : in  STD_LOGIC_VECTOR (23 downto 0);
           R : out  STD_LOGIC_VECTOR (23 downto 0));
			 -- C_out_r : out  STD_LOGIC);
			  
end component;

component normalizador is

    Port ( mantisa_desnormalizada : in  STD_LOGIC_VECTOR (23 downto 0);
           mantisa_normalizada : out  STD_LOGIC_VECTOR (22 downto 0);
           exponente_in : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  cero_oper: in STD_LOGIC;
			  iguales_oper: in STD_LOGIC;
			  error: out STD_LOGIC);


end component;

component resultado is

    Port ( Mantisa_in : in  STD_LOGIC_VECTOR (23 downto 0);
           Exponente_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  Acarreo_in: in STD_LOGIC;
           Mantisa_final : out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_final : out  STD_LOGIC_VECTOR (7 downto 0));
			  
			  
end component;


component signo is

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
			  
end component;

component salida_alu is

    Port ( operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           exponente_suma : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_suma : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_resta : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_resta : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente : out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa : out  STD_LOGIC_VECTOR (22 downto 0);
			  interrupcion_alu: out STD_LOGIC);
			  
end component;


signal selc_despl_Mdesp: STD_LOGIC_VECTOR(23 downto 0);--
signal selc_despl_dif: STD_LOGIC_VECTOR(7 downto 0);--
signal selc_mux_emax: STD_LOGIC_VECTOR(7 downto 0); --
signal selc_mux_Mmax: STD_LOGIC_VECTOR(23 downto 0);--
signal despl_mux_Mdesp: STD_LOGIC_VECTOR(23 downto 0);

signal mux_sum_Mmax: STD_LOGIC_VECTOR(23 downto 0);
signal mux_sum_Mdesp: STD_LOGIC_VECTOR(23 downto 0);
signal mux_resul_E: STD_LOGIC_VECTOR(7 downto 0);


signal mux_rest_Mmax: STD_LOGIC_VECTOR(23 downto 0);
signal mux_rest_Mdesp: STD_LOGIC_VECTOR(23 downto 0);
signal mux_norm_E: STD_LOGIC_VECTOR(7 downto 0);

signal sum_resul_M: STD_LOGIC_VECTOR(23 downto 0);
signal sum_resul_C: STD_LOGIC;

signal rest_norm_M: STD_LOGIC_VECTOR(23 downto 0);

signal sig_mux_oper: STD_LOGIC_VECTOR(1 downto 0);
signal iguales_sig_normal: STD_LOGIC;
signal cero_selec_normal: STD_LOGIC;

signal Mantisa_resta: STD_LOGIC_VECTOR(22 downto 0);
signal Exponente_resta: STD_LOGIC_VECTOR(7 downto 0);
signal Mantisa_suma: STD_LOGIC_VECTOR(22 downto 0);
signal Exponente_suma: STD_LOGIC_VECTOR(7 downto 0);

begin

c0: seleccionador port map(

			  	A_in    	=>  	Mantisa_1,           		  --: in  STD_LOGIC_VECTOR (22 downto 0);
				B_in    	=>  	Mantisa_2,           		  --: in  STD_LOGIC_VECTOR (22 downto 0);
				a1     	=>  	Exponente_1,        			  --: in  STD_LOGIC_VECTOR (7 downto 0);
				b1      	=>  	Exponente_2,        			    --: in  STD_LOGIC_VECTOR (7 downto 0);
		  	--   iguales_r =>	sig_selec_iguales,											--: in STD_LOGIC;
--			 	s2			=>	 	sig_selec_s2,											--: in STD_LOGI
				e_max   	=>  	selc_mux_emax,        				  -- : out  STD_LOGIC_VECTOR (7 downto 0);
				e_dif   	=>  	selc_despl_dif,       			 --: out  STD_LOGIC_VECTOR (7 downto 0);
				A_max   	=>  	selc_mux_Mmax,        		  -- : out  STD_LOGIC_VECTOR (23 downto 0);
				B_despl 	=>  	selc_despl_Mdesp,           -- : out  STD_LOGIC_VECTOR (23 downto 0));
--				s_out		=> 	signo_final,									--: out STD_LOGIC;			  
				Infinito_out	=>		Infinito,							--: out STD_LOGIC;
			   NaN_out 	=>		NaN								--: out STD_LOGIC;


);


c1: desplazador port map(
			 desplazador_in  => selc_despl_Mdesp,            --: in   std_logic_vector (23 downto 0);
			 numero_de_despl => selc_despl_dif,          -- : in  std_logic_vector (7 downto 0);
          despazador_out  => despl_mux_Mdesp        --: out  std_logic_vector (23 downto 0));
);



c2: Mux_sum_rest port map(
			  Mantisa_desp 		=> 	despl_mux_Mdesp,											--: in  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max			=> 	selc_mux_Mmax,					--: in  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max 				=> 	selc_mux_emax,								--: in  STD_LOGIC_VECTOR (7 downto 0);
           selec_op 				=> 	sig_mux_oper,											--: in  STD_LOGIC_VECTOR (1 downto 0);
           Mantisa_desp_sum 	=> 	mux_sum_Mdesp,			-- : out  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max_sum 	=> 	mux_sum_Mmax,			-- : out  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max_sum			=> 	mux_resul_E,											 --: out  STD_LOGIC_VECTOR (7 downto 0);
			  Mantisa_desp_rest 	=>		mux_rest_Mdesp,			-- : out  STD_LOGIC_VECTOR (23 downto 0);
           Mantisa_max_rest	=> 	mux_rest_Mmax,									-- : out  STD_LOGIC_VECTOR (23 downto 0);
           Exp_max_rest 		=> 	mux_norm_E										--: out  STD_LOGIC_VECTOR (7 downto 0));
);

c3: Sumador port map(

				X 		=>	mux_sum_Mdesp,									--: in  STD_LOGIC_VECTOR (23 downto 0);
				Y 		=>	mux_sum_Mmax,										--: in  STD_LOGIC_VECTOR(23 downto 0);
				S 		=>	sum_resul_M,										--: out  STD_LOGIC_VECTOR (23 downto 0);
				C_out => sum_resul_C										--: out  STD_LOGIC
);


c4: resultado port map(

			  Mantisa_in      =>  sum_resul_M,                        --: in  STD_LOGIC_VECTOR (23 downto 0);
           Exponente_in    =>  mux_resul_E,                       --: in  STD_LOGIC_VECTOR (7 downto 0);
			  Acarreo_in      =>  sum_resul_C,                       --: in STD_LOGIC;
           Mantisa_final   =>  Mantisa_suma,                       --: out  STD_LOGIC_VECTOR (22 downto 0);
           Exponente_final =>  Exponente_suma                     --: out  STD_LOGIC_VECTOR (7 downto 0));

);


c5: Restador port map(

			  X	=>		mux_rest_Mdesp,							--: in  STD_LOGIC_VECTOR (23 downto 0);
           Y	=> 	mux_rest_Mmax,								--: in  STD_LOGIC_VECTOR (23 downto 0);
           R 	=>		rest_norm_M									--: out  STD_LOGIC_VECTOR (23 downto 0));

);

c6: normalizador port map(

			  mantisa_desnormalizada	=>	rest_norm_M,					-- : in  STD_LOGIC_VECTOR (23 downto 0);
           mantisa_normalizada		=>	Mantisa_resta,					-- : out  STD_LOGIC_VECTOR (22 downto 0);
           exponente_in					=>	mux_norm_E,						 --: in  STD_LOGIC_VECTOR (7 downto 0);
           exponente_out				=>	Exponente_resta,
			  cero_oper 					=> cero_selec_normal,
			  iguales_oper             => iguales_sig_normal,                                      --: in STD_LOGIC;			
			  error							=>	error_resta										--out STD_LOGIC
);

c7:signo  port map(


			  M_1					=> Mantisa_1, 								-- : in  STD_LOGIC_VECTOR (22 downto 0);
           E_1					=> Exponente_1, 							-- : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_1					=>	s_1_in,									--: in STD_LOGIC;
           M_2					=>	Mantisa_2,								-- : in  STD_LOGIC_VECTOR (22 downto 0);
           E_2					=> Exponente_2,							-- : in  STD_LOGIC_VECTOR (7 downto 0);
			  s_2					=>	s_2_in,									--: in STD_LOGIC;        
   		  operacion			=>	Operacion,
			  cero            =>  cero_selec_normal,                                 --: out  STD_LOGIC;
			  iguales	      => iguales_sig_normal, 
			  signo_out			=> signo_final,							--: out  STD_LOGIC;													
			  operacion_out	=>	sig_mux_oper							--: out  STD_LOGIC_VECTOR (1 downto 0));


);

c8: salida_alu  port map(

			  operacion				 => sig_mux_oper,				-- : in  STD_LOGIC_VECTOR (1 downto 0);
           exponente_suma		 => Exponente_suma,										-- : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_suma			 => Mantisa_suma,										-- : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_resta		 => Exponente_resta, 										-- : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_resta		 => Mantisa_resta,										-- : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente				 => Exponente_final,										-- : out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa				 => Mantisa_final,				-- : out  STD_LOGIC_VECTOR (22 downto 0);
			  interrupcion_alu	 => interrupcion_micro									--: out STD_LOGIC);
			  
);			  

end Behavioral;


