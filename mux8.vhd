library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- используем для строки 25 (to_integer)

entity mux8 is	
	
	generic(
		N: natural := 3 -- битность данных на входе и выходе
	);

   port(
		d   : in std_logic_vector((N * 8) - 1 downto 0) := (others => '0');
      sel : in std_logic_vector(2 downto 0) := (others => '0');
      y   : out std_logic_vector(N - 1 downto 0)
	);

end;
	
architecture rtl of mux8 is

	signal sel_int : natural range 0 to 2**(sel'length)-1;

begin
 
	sel_int <= to_integer(unsigned(sel));

	y <= d(d'high - (N * (7 - sel_int)) downto d'high - (N * (7 - sel_int) + (N - 1)));

--	чтобы избавиться от "магического числа" 7 можно переписать эту строку как:
--
-- y <= d(d'high - (N * (sel'length - sel_int)) downto d'high - (N * (sel'length - sel_int) + (N - 1)));

end;