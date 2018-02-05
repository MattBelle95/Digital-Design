
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity try1 is
    Port (x : in integer range 0 to 255;
          a,b,c : buffer integer range 0 to 9
          );
end try1;

architecture Behavioral of try1 is

signal s1 : integer range 0 to 99;

begin

a <= x / 100;
s1 <= x mod 100;
b <= s1 / 10;
c <= x mod 10;

end Behavioral;
