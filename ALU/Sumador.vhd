
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:17 12/23/2015 
-- Design Name: 
-- Module Name:    Sumador - Behavioral 
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

entity Sumador is
    Port ( --Ci : in  STD_LOGIC;
            X : in  STD_LOGIC_VECTOR (23 downto 0);
           Y : in  STD_LOGIC_VECTOR(23 downto 0);
           S : out  STD_LOGIC_VECTOR (23 downto 0);
       C_out : out  STD_LOGIC);
end Sumador;

architecture Behavioral of Sumador is

signal num_out_S: UNSIGNED(24 downto 0);
--signal c_aux: UNSIGNED(1 downto 0);

begin

	num_out_S    <= '0' & unsigned(X) + unsigned(Y);
	C_out        <= num_out_S(24);
	S            <= std_logic_vector (num_out_S (23 downto 0));


end Behavioral;

