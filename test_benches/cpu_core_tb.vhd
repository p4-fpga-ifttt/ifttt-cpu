LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity cpu_core_tb is
end cpu_core_tb;

ARCHITECTURE behavior OF cpu_core_tb IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT cpu_core 
		 Port ( 	i_CORE_CLK : in  STD_LOGIC;
					i_CORE_RESET : in  STD_LOGIC;
					i_CORE_HALT : in  STD_LOGIC;
					o_DATA : out STD_LOGIC_VECTOR(7 downto 0);
					o_STATE : out STD_LOGIC_VECTOR(6 downto 0)
				);
	end COMPONENT;
	
	-- Inputs
   signal i_clk : std_logic := '0';
	signal i_reset : std_logic := '0';
	
	-- Outputs 
	signal o_DATA  : STD_LOGIC_VECTOR(7 downto 0);
	signal o_STATE  : STD_LOGIC_VECTOR(6 downto 0); 
	-- Clock period definitions
   constant c_clk_period : time := 10 ns;
	
begin
	
	-- Instantiate the Unit Under Test (UUT)
	uut: cpu_core PORT MAP (
          i_CORE_CLK => i_CLK,
          i_CORE_RESET => i_reset,
			 i_CORE_HALT => '0',
			 o_DATA  => o_DATA, 
			 o_STATE => o_STATE
        );
	-- Clock process definitions
   clk_process :process
   begin
		i_clk <= '0';
		wait for c_clk_period/2;
		i_clk <= '1';
		wait for c_clk_period/2;
   end process;
	
	-- Stimulus process
	stimu_process :process
   begin
		i_RESET <= '1';
		wait for c_clk_period*10;
		i_RESET <= '0';
	   wait;
   end process;
	
end;