----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2021 04:56:33 PM
-- Design Name: 
-- Module Name: tb1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb1 is
--  Port ( );
end tb1;

architecture Behavioral of tb1 is
component design_1_wrapper is
  port (
    sys_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_wrapper;
  
  signal clk_i : std_logic ;
  signal rst : std_logic ;
  signal out_led : std_logic_vector (3 downto 0) := (others =>'0');
constant CLK_period : time := 10 ns;  

begin
 uut: entity work.design_1_wrapper PORT map (
  sys_clk => clk_i,
  reset => rst,
  LED => out_led
  );
  
  clk_process: process
  begin
    clk_i <= '0';
    wait for CLK_period/2;
    clk_i <= '1';
    wait for CLK_period/2;
  end process;
  
  stim_process: process
  begin
    --wait for 5000 ns;
    --out_LED <= "1111" ;
    end process;

end Behavioral;
