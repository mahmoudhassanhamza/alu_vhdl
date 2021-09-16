
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
entity alu_tb is 
end alu_tb;

architecture behave of alu_tb is 


component alu is 
    generic (N : integer := 3 ) ;
  port
  (
    a, b        : in  std_logic_vector( N-1 downto 0);
    op          : in  std_logic_vector( 2 downto 0);
    sum         : out std_logic_vector( N-1 downto 0);
    z_f,n_f,o_f : out std_logic
  );
  
end component; 
    constant N : integer := 3;
    signal a, b        :   std_logic_vector( N-1 downto 0);
    signal op          :   std_logic_vector( 2 downto 0);
    signal sum         :   std_logic_vector( N-1 downto 0);
    signal z_f,n_f,o_f :   std_logic;
    type int_array is array(integer range<>) of integer; 
    constant value : int_array := (0,1,2);
begin
  DUT : alu 
  port map (a,  b, op , sum, z_f, n_f, o_f);
    process
    begin   
  a <= conv_std_logic_vector(-1,3);
  b <= conv_std_logic_vector(-4,3);
  op <= "000";
  wait for 10 ns;
  op <= "001";
  wait for 10 ns;
  op <= "010";
  wait for 10 ns;
  op <= "011";
  wait for 10 ns;
   op <= "100";
  wait for 10 ns;
   op <= "101";
  wait for 10 ns;
   op <= "110";
  wait for 10 ns;
   op <= "111";
  wait for 10 ns;
  
end process;
  
end behave;





