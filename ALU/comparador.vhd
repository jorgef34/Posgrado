----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:51:38 12/20/2015 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador is
    Port ( e1 : in  STD_LOGIC_VECTOR (7 downto 0);
           e2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  A_in : in  STD_LOGIC_VECTOR (22 downto 0);
		     B_in : in  STD_LOGIC_VECTOR (22 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
           T : out  STD_LOGIC_VECTOR (7 downto 0));
			  A : out  STD_LOGIC_VECTOR (23 downto 0);
		     B : out  STD_LOGIC_VECTOR (23 downto 0);  
end comparador;


architecture Behavioral of comparador is

signal dif_exp_aux: STD_LOGIC_VECTOR(7 downto 0);
signal z_int: STD_LOGIC;


begin

--	z_int <=	'0' when p<q else
--				'1' when p>q else
--				'0' when a<b else
--				'1';
		
dif_exp_aux <= conv_std_logic_vector((conv_integer(p)- conv_integer(q)),8) when z_int = '1' else 
					conv_std_logic_vector((conv_integer(q)- conv_integer(p)),8);

R <= p when z_int = '1' else q;
--Z <= z_int;
T <= dif_exp_aux; --when ((conv_integer(dif_exp_aux))<23) else X"FF";

end Behavioral;

