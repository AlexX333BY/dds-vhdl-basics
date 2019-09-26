library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity QnQElement is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end QnQElement;

architecture Behavioral of QnQElement is
   signal in12, in23, in123: std_logic;
begin
   in12 <= in1 and in2;
   in23 <= in3 and not in2;
   in123 <= in12 or in23;
   Q <= in123;
   nQ <= not in123;
end Behavioral;
