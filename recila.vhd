library IEEE;
use ieee.std_logic_1164.all;
entity recicla is
	port
	(
	-- entradas
	balanza	: in  STD_LOGIC_VECTOR (3 downto 0);
	vidrio: in std_logic;
	papel: in std_logic;
	organico: in std_logic;
	-- salidas
	--binario	 : inout  STD_LOGIC_VECTOR (3 downto 0)
	reposo: out std_logic;
	cargando: out std_logic;
	vaciar: out std_logic;
	cilindro: out std_logic;
	);
	
end recicla;
architecture behavioral  of recicla is 
begin

	
condiciones: process (vidrio,papel,organico,balanza)
begin
	if balanza= "0000" then
	reposo	<=	'1';
	cargando<=	'0';
	vaciar	<= 	'0';
	cilindro<= 	'0';
	elsif balanza= "1010" and vidrio ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	elsif balanza= "0101" and papel ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	elsif balanza= "0101" and organico ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	else
	reposo	<=	'0';
	cargando<=	'1';
	vaciar	<= 	'0';
	cilindro<= 	'0';
	end if;
	end process;
	
	
	
				  
end architecture;

