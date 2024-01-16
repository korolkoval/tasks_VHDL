library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is	

	generic(
		N: natural := 3 -- битность сравниваемых чисел
	);

   port(
        a : in std_logic_vector(N - 1 downto 0) := (others => '0');
		  b : in std_logic_vector(N - 1 downto 0) := (others => '0');
        gt: out std_logic
   );
	
end;
	
architecture rlt of comparator is

begin 
	gt <= '1' when a >= b else
			'0' when a < b;
end;