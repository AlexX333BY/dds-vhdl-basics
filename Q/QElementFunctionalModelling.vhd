LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY QElementFunctionalModelling IS
END QElementFunctionalModelling;
 
ARCHITECTURE behavior OF QElementFunctionalModelling IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QElement
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
 
   constant clock_period : time := 10 ns;
   constant in1_clock_divisor : integer := 2 ** 0;
   constant in2_clock_divisor : integer := 2 ** 1;
   constant in3_clock_divisor : integer := 2 ** 2;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QElement PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          Q => Q
        );

   in1_process :process
   begin
      in1 <= '0';
      wait for clock_period/in1_clock_divisor;
      in1 <= '1';
      wait for clock_period/in1_clock_divisor;
   end process;
   
   in2_process :process
   begin
      in2 <= '0';
      wait for clock_period/in2_clock_divisor;
      in2 <= '1';
      wait for clock_period/in2_clock_divisor;
   end process;
   
   in3_process :process
   begin
      in3 <= '0';
      wait for clock_period/in3_clock_divisor;
      in3 <= '1';
      wait for clock_period/in3_clock_divisor;
   end process;

END;
