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
          reset    : in std_logic;
          start_tx : in std_logic;
          serial   : out std_logic;
          tx_free  : out std_logic;
          tx_done  : out std_logic
     );
end transmitter;

architecture Behavioral of transmitter is

signal data_buffer : std_logic_vector (7 downto 0);
constant idle        : integer := 0;
constant start_bit   : integer := 1;
constant data_bits   : integer := 2;
constant stop_bit    : integer := 3;
signal current_state : integer;
shared variable can_send : std_logic;
signal index : integer;

begin

process (clock,reset,start_tx) begin
    if (reset = '1') then
        serial <= '1';
        data_buffer <= "00000000";
        current_state <= idle;
        tx_free <= '1';
        tx_done <= '1';
        can_send := '0';
        index <= 0;
    elsif (clock'event and clock = '1') then
        case current_state is
            when idle =>
                tx_free <= '1';
                tx_done <= '0';
                serial <= '1';
                if (can_send = '1')then
                    data_buffer <= tx_data;
                    current_state <= start_bit;
                    serial <= '0';
                    can_send := '0';
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
                data_buffer <= "00000000";
                current_state <= idle;
            end case;
    end if;
end process;

start_transmitting : process(start_tx) begin
    if ((start_tx'event and start_tx = '1') and (current_state = idle))then
        can_send := '1';
    end if;
end process;
    
end Behavioral;
