library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity counter_vhdl is 

	port (clk ,reset : in std_logic;
		  led        : out std_logic
		  );

end counter_vhdl;

architecture Behavioral of counter_vhdl is 

constant clock_length : integer := 50000000;
signal counts : std_logic_vector (27 downto 0);

begin

process (clk,reset) begin
	if (reset = '1') then
		led <= '0';
		counts <= (others => '0');
	elsif (rising_edge(clk)) then
		counts <= counts + 1;
	else
		led <= '0';
		counts <= (others => '0');
	end if;
end process;

end Behavioral;