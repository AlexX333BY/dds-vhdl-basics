library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Q is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Q;

architecture Behavioral of Q is
   signal in12, in23: std_logic;
begin
   in12 <= in1 AND in2;
   in23 <= in3 AND NOT in2;
   Q <= in12 OR in23;
end Behavioral;
