----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:07 01/04/2016 
-- Design Name: 
-- Module Name:    Restador - Behavioral 
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
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Restador is
    Port (  --habilitar : in  STD_LOGIC;
			  X : in  STD_LOGIC_VECTOR (23 downto 0);
           Y : in  STD_LOGIC_VECTOR (23 downto 0);
           R : out  STD_LOGIC_VECTOR (23 downto 0));
			  --C_out_r : out  STD_LOGIC);
end Restador;

architecture Behavioral of Restador is

signal num_out_R: UNSIGNED(23 downto 0);
--signal c_aux: UNSIGNED(1 downto 0);

begin

	num_out_R    <= unsigned(Y) - unsigned(X);
--	C_out_r      <= num_out_R(24);                     -- detector de rebose de resta
	R            <= std_logic_vector (num_out_R);
	


end Behavioral;

