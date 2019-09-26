library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Multiplexer;

architecture Behavioral of Multiplexer is

begin
    Z<=A when S='0' else B;
end Behavioral;
