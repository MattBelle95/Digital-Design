library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart is
    Port (reset_all     : in std_logic;
          --transmitter *********************************-------------
          data_in       : in std_logic_vector (7 downto 0);
          tx_clock      : in std_logic;
          start_sending : in std_logic;
          free_tx       : out std_logic;
          done_tx       : out std_logic;
          --receiver    *********************************-------------
          rx_clock : in std_logic;
          free_rx  : out std_logic;
          done_rx  : out std_logic;
          data_out : out std_logic_vector (7 downto 0)
           );
end uart;

architecture Behavioral of uart is

signal serial_line : std_logic;

component transmitter
    Port (tx_data  : in std_logic_vector (7 downto 0);
          clock    : in std_logic;
          reset    : in std_logic;
          start_tx : in std_logic;
          serial   : out std_logic;
          tx_free  : out std_logic;
          tx_done  : out std_logic
     );
end component;

component receiver
    Port (clock   : in std_logic;
          reset   : in std_logic;
          serial  : in std_logic;
          rx_free : out std_logic;
          rx_done : out std_logic;
          rx_data : out std_logic_vector (7 downto 0)
          );
end component;
begin
tx : transmitter port map(data_in,tx_clock,reset_all,start_sending,serial_line,free_tx,done_tx);
rx    : receiver port map(rx_clock,reset_all,serial_line,free_rx,done_rx,data_out);

end Behavioral;
