library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity receiver is
    Port (clock   : in std_logic;
          reset   : in std_logic;
          serial  : in std_logic;
          rx_free : out std_logic;
          rx_done : out std_logic;
          rx_data : out std_logic_vector (7 downto 0)
          );
end receiver;

architecture Behavioral of receiver is

signal data_buffer : std_logic_vector (7 downto 0);
constant idle        : integer := 0;
constant start_bit   : integer := 1;
constant data_bits   : integer := 2;
constant stop_bit    : integer := 3;
shared variable current_state : integer;
constant clocks_per_bit : integer := 4;
shared variable index : integer;
shared variable clock_counts : integer;

begin

process (clock,reset,serial) begin

    if (reset = '1') then
        rx_free <= '1';
        rx_done <= '0';
        rx_data <= "00000000";
        data_buffer <= "00000000";
        current_state := idle;
        index := 0;
        clock_counts := 0;
    elsif (clock'event and clock = '1') then
        case current_state is
            when idle =>
                rx_free <= '1';
                rx_done <= '0';
                index := 0;
                clock_counts := 0;
            when start_bit =>
                rx_free <= '0';
                if (clock_counts < (clocks_per_bit / 2))then
                    clock_counts := clock_counts + 1;
                elsif (serial = '0') then
                    current_state := data_bits;
                    clock_counts := 0;
                else
                    current_state := idle;
                end if;
            when data_bits =>
                if (clock_counts < clocks_per_bit - 1)then
                    clock_counts := clock_counts + 1;
                else
                    data_buffer(index) <= serial;
                    index := index + 1;
                    clock_counts := 0;
                end if;
                
                if (index > 7) then
                    current_state := stop_bit;
                    index := 0;
                    clock_counts := 0;
                end if;
            when stop_bit =>
                if (clock_counts < clocks_per_bit - 1)then
                    clock_counts := clock_counts + 1;
                else
                    current_state := idle;
                    clock_counts := 0;
                    rx_free <= '1';
                    rx_data <= data_buffer;
                    if (serial = '1') then
                        rx_done <= '1';
                    else
                        rx_done <= '0';
                    end if;
                end if;
            when others =>
                current_state := idle;
                rx_data <= "00000000";
                data_buffer <= "00000000";
            end case;
    end if;
        
end process;

detect_start_bit : process (serial) begin
    if (serial'event and serial = '0' and current_state = idle) then
        current_state := start_bit;
    end if;
end process detect_start_bit;

end Behavioral;
