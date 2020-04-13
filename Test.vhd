library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity Test is
port (
	cout   :out std_logic_vector (7 downto 0); -- Output of the counter
    clock  :in  std_logic;                     -- Input clock
    reset  :in  std_logic                      -- Input reset
);
end entity;
 
architecture Test_Arch of Test is

signal count_reg :std_logic_vector (7 downto 0);

begin

process (clock) begin
	if (rising_edge(clock)) then
		if (reset = '1') then
			count_reg <= (others=>'0');
		else
			count_reg <= count_reg + 1;
        end if;
    end if;
 end process;
 
 cout <= count_reg;
 
 end architecture Test_Arch;