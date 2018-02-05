library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity VGA is
generic (width_x  : integer := 20;
         length_y : integer := 20);
    Port (x0,y0,x1,y1 : in integer;
          clk, reset, start_drawing, read_rom : std_logic;
          address : in integer;
          data_out : out STD_LOGIC_VECTOR(0 to length_y)
           );
end VGA;

architecture Behavioral of VGA is

component draw_line
    generic (width_x  : integer := 20;
             length_y : integer := 20);
    Port (x0  : in integer range 0 to width_x;
          y0  : in integer range 0 to length_y;
          x1  : in integer range 0 to width_x;
          y1  : in integer range 0 to length_y;
          clk : in std_logic;
          reset : in std_logic;
          start_drawing : in std_logic;
          x : buffer integer range 0 to width_x;
          y : buffer integer range 0 to length_y;
          fill_rom : out std_logic
          );
end component;

component rom
generic (width_x  : integer := 20;
         length_y : integer := 20);
port (clk      : in STD_LOGIC;
      reset    : in std_logic;
      x,y      : in integer range 0 to (width_x + length_y);
      fill_rom : in std_logic;
      read_rom : in std_logic;
      address  : in INTEGER RANGE 0 to width_x;
      data_out : out STD_LOGIC_VECTOR(0 to length_y));
end component;

signal x,y : integer;
signal fill_rom : std_logic;

begin

draw_line0 : draw_line port map(x0, y0, x1, y1, clk, reset, start_drawing, x, y, fill_rom);
rom0 : rom port map(clk, reset, x, y, fill_rom, read_rom, address, data_out);

end Behavioral;
