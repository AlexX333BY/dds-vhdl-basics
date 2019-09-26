library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Or4;

architecture Behavioral of Or4 is

begin
   Z <= A or B or C or D;
end Behavioral;
