library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity frequency_generator is 
	generic (baud_rate : integer := 9600);
	port (main_clock : in std_logic;
		  tx_clock   : out std_logic;
		  rx_clock   : out std_logic
		  );
end frequency_generator;

architecture freq_gen of frequency_generator is 

constant clock_length : integer := 50000000 / baud_rate;
shared variable tx_counts : integer := 0;
shared variable rx_counts : integer := 0;
signal tx_clock_buffer : std_logic := '0';
signal rx_clock_buffer : std_logic := '0';

begin

tx_clock_generator : process (main_clock) begin
	if (main_clock'event and main_clock = '1') then
		if (tx_counts < clock_length - 1) then
			tx_counts := tx_counts + 1;
		else
			tx_counts := 0;
			tx_clock_buffer <= not tx_clock_buffer;
		end if;
	end if;
end process tx_clock_generator;

rx_clock_generator : process (main_clock) begin
	if (main_clock'event and main_clock = '1') then
		if (rx_counts < (clock_length / 16) - 1) then
			rx_counts := rx_counts + 1;
		else
			rx_counts := 0;
			rx_clock_buffer <= not rx_clock_buffer;
		end if;
	end if;
end process rx_clock_generator;

tx_clock <= tx_clock_buffer;
rx_clock <= rx_clock_buffer;

end freq_gen;