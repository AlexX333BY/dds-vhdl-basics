LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Or4FunctionalModelling IS
END Or4FunctionalModelling;
 
ARCHITECTURE behavior OF Or4FunctionalModelling IS 
 
    COMPONENT Or4
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

   --Outputs
   signal Z : std_logic;
 
   constant clock_period : time := 10 ns;
   constant A_clock_divisor : integer := 2 ** 0;
   constant B_clock_divisor : integer := 2 ** 1;
   constant C_clock_divisor : integer := 2 ** 2;
   constant D_clock_divisor : integer := 2 ** 3;
 
BEGIN
 
   -- Instantiate the Unit Under Test (UUT)
   uut: Or4 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          Z => Z
        );

   A_process :process
   begin
      A <= '0';
      wait for clock_period/A_clock_divisor;
      A <= '1';
      wait for clock_period/A_clock_divisor;
   end process;
   
   B_process :process
   begin
      B <= '0';
      wait for clock_period/B_clock_divisor;
      B <= '1';
      wait for clock_period/B_clock_divisor;
   end process;
   
   C_process :process
   begin
      C <= '0';
      wait for clock_period/C_clock_divisor;
      C <= '1';
      wait for clock_period/C_clock_divisor;
   end process;
   
   D_process :process
   begin
      D <= '0';
      wait for clock_period/D_clock_divisor;
      D <= '1';
      wait for clock_period/D_clock_divisor;
   end process;

END;
