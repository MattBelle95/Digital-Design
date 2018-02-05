library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity transmitter is
    Port (tx_data  : in std_logic_vector (7 downto 0);
          clock    : in std_logic;
          start_tx : in std_logic;
          serial   : out std_logic
     );
end transmitter;

architecture Behavioral of transmitter is

signal data_buffer : std_logic_vector (7 downto 0);
constant idle        : integer := 0;
constant start_bit   : integer := 1;
constant data_bits   : integer := 2;
constant stop_bit    : integer := 3;
signal current_state : integer;
signal index : integer;
signal tx_free  : std_logic;
signal tx_done  : std_logic;
signal can_send : std_logic;

begin

main : process (clock,start_tx) begin
    if (clock'event and clock = '1') then
        case current_state is
            when idle =>
                tx_free <= '1';
                tx_done <= '0';
                serial <= '1';
                if (can_send = '1')then
                    data_buffer <= tx_data;
                    current_state <= start_bit;
                    serial <= '0';
                end if;
            when start_bit =>
                tx_free <= '0';
                tx_done <= '0';
                current_state <= data_bits;
                serial <= data_buffer(0);
                index <= 1;
            when data_bits =>
                if (index <= 7) then
                    serial <= data_buffer(index);
                    index <= index + 1;
                else
                    serial <= '1';
                    current_state <= stop_bit;
                end if;
            when stop_bit =>
                serial <= '1';
                current_state <= idle;
                tx_free <= '1';
                tx_done <= '1';
            when others =>
                serial <= '1';
				data_buffer <= "00000000";
				current_state <= idle;
				tx_free <= '1';
				tx_done <= '1';
				index <= 0;
            end case;
    end if;
end process main;


starting : process(start_tx,current_state)begin

	if (start_tx = '1')then
		can_send <= '1';
	else
		can_send <= '0';
	end if;

end process starting;

end Behavioral;
