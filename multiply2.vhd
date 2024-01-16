library ieee;
use ieee.std_logic_1164.all;

entity multiply2 is	

   generic(
		N: natural := 4
	);
	
   port(
		x: in std_logic_vector(N-1 downto 0);
		a: in std_logic;
		y: out std_logic_vector(N-1 downto 0)
   );

end;
	 
architecture rtl of multiply2 is

	signal zero: std_logic_vector(N-1 downto 0) := (others => '0');
	
begin 

 	y <= x when a = '1' else
		  zero;
		  
end rtl;