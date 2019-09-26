library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer412 is
    Port ( A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z1 : out  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end Multiplexer412;

architecture Behavioral of Multiplexer412 is

begin
   Z1 <= A1 when S = '0' else B1;
   Z2 <= A2 when S = '0' else B2;
end Behavioral;
