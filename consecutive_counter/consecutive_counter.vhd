
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity consecutive_counter is
    Port (clk , a      : in std_logic;
          zeros , ones : buffer std_logic_vector(3 downto 0) := (others => '0')
          );
end consecutive_counter;

architecture Behavioral of consecutive_counter is 
begin
process (clk , a , ones , zeros) begin

    if(clk'event and clk = '1') then -- rising_edge(clk)
        case a is
            when '1' =>
                ones <= ones + 1;
                zeros <= (others => '0');
            when others =>
                zeros <= zeros + 1;
                ones <= (others => '0');
        end case;
    end if;
end process;
end Behavioral;
