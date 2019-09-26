LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Multiplexer412FunctionalModelling IS
END Multiplexer412FunctionalModelling;
 
ARCHITECTURE behavior OF Multiplexer412FunctionalModelling IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplexer412
    PORT(
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         B1 : IN  std_logic;
         B2 : IN  std_logic;
         S : IN  std_logic;
         Z1 : OUT  std_logic;
         Z2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal B1 : std_logic := '0';
   signal B2 : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z1 : std_logic;
   signal Z2 : std_logic;
 
   constant clock_period : time := 10 ns;
   constant A1_clock_divisor : integer := 2 ** 0;
   constant A2_clock_divisor : integer := 2 ** 1;
   constant B1_clock_divisor : integer := 2 ** 2;
   constant B2_clock_divisor : integer := 2 ** 3;
   constant S_clock_divisor : integer := 2 ** 4;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplexer412 PORT MAP (
          A1 => A1,
          A2 => A2,
          B1 => B1,
          B2 => B2,
          S => S,
          Z1 => Z1,
          Z2 => Z2
        );

   A1_process :process
   begin
      A1 <= '0';
      wait for clock_period/A1_clock_divisor;
      A1 <= '1';
      wait for clock_period/A1_clock_divisor;
   end process;
   
   A2_process :process
   begin
      A2 <= '0';
      wait for clock_period/A2_clock_divisor;
      A2 <= '1';
      wait for clock_period/A2_clock_divisor;
   end process;
   
   B1_process :process
   begin
      B1 <= '0';
      wait for clock_period/B1_clock_divisor;
      B1 <= '1';
      wait for clock_period/B1_clock_divisor;
   end process;
   
   B2_process :process
   begin
      B2 <= '0';
      wait for clock_period/B2_clock_divisor;
      B2 <= '1';
      wait for clock_period/B2_clock_divisor;
   end process;
   
   S_process :process
   begin
      S <= '0';
      wait for clock_period/S_clock_divisor;
      S <= '1';
      wait for clock_period/S_clock_divisor;
   end process;

END;
