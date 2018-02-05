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
    Port (--receiver from pc ****************************-------------
          pc_to_receiver_line : in std_logic;
          --transmitter to pc ***************************-------------
		  transmitter_to_pc_line : out std_logic;
          --clock divider (frequency generator)**********-------------
          main_clock : in std_logic--the main clock 50MHz
          );
end uart;

architecture Behavioral of uart is

signal serial_line : std_logic;

component transmitter
    Port (tx_data  : in std_logic_vector (7 downto 0);
          clock    : in std_logic;
          start_tx : in std_logic;
          serial   : out std_logic
     );
end component;

component receiver
    Port (clock   : in std_logic;
          serial  : in std_logic;
          rx_data : out std_logic_vector (7 downto 0);
          rx_done : out std_logic
          );
end component;

component frequency_generator 
	generic (baud_rate : integer := 9600);
	port (main_clock : in std_logic;
		  tx_clock   : out std_logic;
		  rx_clock   : out std_logic
		  );
end component;

signal first_receiver_done : std_logic;
signal first_receiver_data : std_logic_vector (7 downto 0);
signal tx_clock : std_logic;
signal rx_clock : std_logic;
signal second_receiver_data : std_logic_vector (7 downto 0);
signal second_receiver_done : std_logic;

begin

set_frequency : frequency_generator generic map (9600) port map (main_clock , tx_clock , rx_clock);

rx_pc : receiver    port map(rx_clock , pc_to_receiver_line , first_receiver_data , first_receiver_done);
tx    : transmitter port map(first_receiver_data , tx_clock , first_receiver_done , serial_line);
rx    : receiver    port map(rx_clock , serial_line , second_receiver_data , second_receiver_done);
tx_pc : transmitter port map(second_receiver_data , tx_clock , second_receiver_done , transmitter_to_pc_line);

end Behavioral;
