Library ieee;
Use ieee.std_logic_1164.all;

Entity dff_with_rst is
	port ( d,c,rst: 	In	Std_logic;
		q		:	Out	Std_logic 
	);
end dff_with_rst;

Architecture dff_bhv of dff_with_rst is
begin
process(d,c,rst)
begin
if (rst='0') then
q <= rst;
elsif c' event and c='1' then
q <= d;
end if;
end process;
end Architecture;
--rst asancron taghadom nesbat be clk balatar ast.
--aval rst check mishe bad clk.rst baraye zamani ke mamolan
--etefaghe nahaste dar system etefagh oftade.