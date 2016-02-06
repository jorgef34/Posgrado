--
-- Interrupt test for KCPSM3 
--
-- Ken Chapman - Xilinx Ltd - June 2003
--
--
------------------------------------------------------------------------------------
--
-- Library declarations
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
------------------------------------------------------------------------------------
--
--
entity kcpsm3_int_test is
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
    end kcpsm3_int_test;
--
------------------------------------------------------------------------------------
--
-- Start of test achitecture
--
architecture Behavioral of kcpsm3_int_test is
--
------------------------------------------------------------------------------------
--
-- declaration of KCPSM3
--
  component kcpsm3 
    Port (      address : out std_logic_vector(9 downto 0);
            instruction : in std_logic_vector(17 downto 0);
                port_id : out std_logic_vector(7 downto 0);
           write_strobe : out std_logic;
               out_port : out std_logic_vector(7 downto 0);
            read_strobe : out std_logic;
                in_port : in std_logic_vector(7 downto 0);
              interrupt : in std_logic;
          interrupt_ack : out std_logic;
                  reset : in std_logic;
                    clk : in std_logic);
    end component;
--
-- declaration of program ROM
--
  component int_test 
  
    Port (      address : in std_logic_vector(9 downto 0);
            instruction : out std_logic_vector(17 downto 0);
                    clk : in std_logic);
    end component;
	 
	 
  component  Decodificador 

    Port ( out_port : in  STD_LOGIC_VECTOR (7 downto 0);
           port_id : in  STD_LOGIC_VECTOR (7 downto 0);
			  write_strobe: in  STD_LOGIC;
			  clk : in std_logic;
			 -- habilitar: in  STD_LOGIC;
			  operacion: out  STD_LOGIC_VECTOR (1 downto 0);
           sig_1 : out  STD_LOGIC;
           exp_1 : out  STD_LOGIC_VECTOR (7 downto 0);
           man_1 : out  STD_LOGIC_VECTOR (22 downto 0);			  
           sig_2 : out  STD_LOGIC;
           exp_2 : out  STD_LOGIC_VECTOR (7 downto 0);
           man_2 : out  STD_LOGIC_VECTOR (22 downto 0));
			  
    end component;
	 
	 
	component  mux_in
		
		    Port ( Signo_resultado: in  STD_LOGIC;
           Exponente_resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Mantiza_resultado: in  STD_LOGIC_VECTOR (22 downto 0);			  
           port_id : in  STD_LOGIC_VECTOR (7 downto 0);
           leer : in  STD_LOGIC;
			  clk : in std_logic;
			  port_mux_out : out  STD_LOGIC_VECTOR (7 downto 0));

			  
    end component;
	 
	 
	 
--
------------------------------------------------------------------------------------
--
-- Signals used to connect KCPSM3 to program ROM and I/O logic
--
signal address       : std_logic_vector(9 downto 0);
signal instruction   : std_logic_vector(17 downto 0);
signal port_id       : std_logic_vector(7 downto 0);
signal out_port      : std_logic_vector(7 downto 0);
signal in_port       : std_logic_vector(7 downto 0);
signal write_strobe  : std_logic;
signal read_strobe   : std_logic;
signal interrupt     : std_logic :='0';
signal interrupt_ack : std_logic;
signal reset         : std_logic;

signal read_strobe_pico_mux   : std_logic;

---




------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Start of circuit description
--
begin

  -- Inserting KCPSM3 and the program memory

  processor: kcpsm3
    port map(      address => address,
               instruction => instruction,
                   port_id => port_id,
              write_strobe => write_strobe,
                  out_port => out_port,
               read_strobe => read_strobe_pico_mux,
                   in_port => in_port,
                 interrupt => interrupt,
             interrupt_ack => interrupt_ack,
                     reset => reset,
                       clk => clk);
 
  program: int_test
    port map(      address => address,
               instruction => instruction,
                       clk => clk);
						
						
	
decode: Decodificador port map(

			  out_port			=>		out_port,                    
           port_id    		=>    port_id,                  
			  write_strobe 	=>    write_strobe,
			  clk             =>    clk,
			 -- habilitar			=>		interrupt_event,
			  operacion       =>    operacion_out,
           sig_1         	=>    sig_1_out,               
           exp_1           =>    exp_1_out,            
           man_1           =>    man_1_out,    			  
           sig_2           =>    sig_2_out, 
           exp_2           =>    exp_2_out,   
           man_2           =>    man_2_out
			  
);


mux: mux_in port map(
			
			  Signo_resultado		   =>	 Signo_UPF,												--: in  STD_LOGIC;
           Exponente_resultado   =>	 Exponente_UPF,   											-- : in  STD_LOGIC_VECTOR (7 downto 0);
           Mantiza_resultado		=>	 Mantiza_UPF,										--: in  STD_LOGIC_VECTOR (22 downto 0);			  
           port_id 							=>  port_id,										--: in  STD_LOGIC_VECTOR (7 downto 0);
           leer 								=>	 read_strobe_pico_mux,
			  clk            					=>  clk,			  														--: in  STD_LOGIC;
			  port_mux_out 					=>	 in_port											--: out  STD_LOGIC_VECTOR (7 downto 0));
);


reset <= '0';
--in_port<="00000011";
  
 -- --read_out

  


interrupt_control: process(clk)

  begin

    if clk'event and clk='1' then
      if interrupt_ack='1' then
        interrupt <= '0';
       elsif interrupt_event='1' then
        interrupt <= '1';
       else
        interrupt <= interrupt;
      end if;
    end if; 

  end process interrupt_control;
--
end Behavioral;

------------------------------------------------------------------------------------
--
-- END OF FILE KCPSM3_INT_TEST.VHD
--
------------------------------------------------------------------------------------

