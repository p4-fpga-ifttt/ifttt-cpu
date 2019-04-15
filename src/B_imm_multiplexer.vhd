library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity B_imm_multiplexer is 
	Port (	i_CLK : in STD_LOGIC;
				i_B_imm_sel : in STD_LOGIC;
				i_DATA_B : in STD_LOGIC_VECTOR(7 downto 0);
				i_DATA_Imm : in STD_LOGIC_VECTOR(7 downto 0);
				o_DATA : out STD_LOGIC_VECTOR(7 downto 0)
		);
end B_imm_multiplexer;


architecture Behavioral of B_imm_multiplexer is

Begin

	process (i_CLK)
	begin
		if (rising_edge(i_CLK)) then
			if (i_B_imm_sel = '1') then
				o_DATA <= i_DATA_Imm;
			else 
				o_DATA <= i_DATA_B;
			end if;
		end if;
	end process;
	
end Behavioral;