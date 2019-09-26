LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MultiplexerFunctionalModelling IS
END MultiplexerFunctionalModelling;
 
ARCHITECTURE behavior OF MultiplexerFunctionalModelling IS 
 
    COMPONENT Multiplexer
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexer PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

   A_process :process
   begin
      A <= '0';
      wait for clock_period;
      A <= '1';
      wait for clock_period;
   end process;
   
   B_process :process
   begin
      B <= '0';
      wait for clock_period/2;
      B <= '1';
      wait for clock_period/2;
   end process;
   
   S_process :process
   begin
      S <= '0';
      wait for clock_period/4;
      S <= '1';
      wait for clock_period/4;
   end process;

END;
