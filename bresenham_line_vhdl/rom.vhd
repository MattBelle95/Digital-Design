------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
library work;
 ------------------------------------------------------------------
ENTITY rom IS
generic (width_x  : integer := 20;
         length_y : integer := 20);
PORT (clk      : IN STD_LOGIC;
      reset    : in std_logic;
      x,y      : in integer range 0 to (width_x + length_y);
      fill_rom : in std_logic;
      read_rom : in std_logic;
      address  : IN INTEGER RANGE 0 to width_x;
      data_out : OUT STD_LOGIC_VECTOR(0 to length_y));
END rom;
------------------------------------------------------------------
ARCHITECTURE rom OF rom IS

subtype tmp is std_logic_vector(0 to length_y);
type memory is array (natural range <>) of tmp;

signal myrom : memory (0 to width_x);
 
BEGIN
 
 
 PROCESS (clk)
 BEGIN IF (clk'EVENT AND clk='1') THEN
 
    if (reset = '1')then
        for i in width_x downto 0 loop
            myrom(i) <= (others => '0');
            data_out <= (others => '0');
        end loop;
    elsif (fill_rom = '1')then
        myrom(x)(y) <= '1';
    elsif (read_rom = '1')then
        data_out <= myrom(address);
    elsif (fill_rom = '1' and read_rom = '1')then
        myrom(x)(y) <= '1';
        data_out <= myrom(address);
    end if;
 
 
 END IF;
 END PROCESS;
 
 
 END rom;