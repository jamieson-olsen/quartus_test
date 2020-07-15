library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity test is
generic( MyVar : integer := 17 ); -- this is passed in from the tcl build script
port (
	cout   :out std_logic_vector (7 downto 0); -- Output of the counter
    clock  :in  std_logic;                     -- Input clock
    reset  :in  std_logic                      -- Input reset
);
end entity;
 
architecture test_arch of test is

signal count_reg :std_logic_vector (7 downto 0);

begin

process (clock) begin
	if (rising_edge(clock)) then
		if (reset = '1') then
			count_reg <= std_logic_vector(to_unsigned(MyVar,count_reg'length));
		else
			count_reg <= std_logic_vector(unsigned(count_reg) + 1);
        end if;
    end if;
 end process;
 
 cout <= count_reg;
 
 end architecture test_arch;