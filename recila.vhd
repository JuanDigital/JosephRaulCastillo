library IEEE;
use ieee.std_logic_1144.all;
entity recicla is
	port
	(
	-- entradas
	balanza	: in  STD_LOGIC_VECTOR (3 downto 0);
	vidrio: in std_logic;
	papel: in std_logic;
	organico: in std_logic;
	-- salidas
	binario	 : inout  STD_LOGIC_VECTOR (3 downto 0)
	reposo: out std_logic;
	cargando: out std_logic;
	vaciar: in std_logic;
	cilindro: in std_logic;
	);
	
end recicla;
architecture behavior  of recicla is 
begin
	with balanza select
				--binario		--bcd
		binario<= "0000" when "0000"--0
				  "0001" when "0001"--1
				  "0010" when "0010"--2
				  "0011" when "0011"--3
				  "0100" when "0100"--4
				  "0101" when "0101"--5
				  "0110" when "0110"--6
				  "0111" when "0111"--7
				  "1000" when "1000"--8
				  "1001" when "1001"--9
				  "1010" when "1010"--A
				  "1011" when "1011"--B
				  "1100" when "1100"--C
process (vidrio,papel,organico,binario)
begin
	if binario= "0000" then
	reposo	<=	'1';
	cargando<=	'0';
	vaciar	<= 	'0';
	cilindro<= 	'0';
	elsif binario= "1010" and vidrio ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	elsif binario= "0101" and papel ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	elsif binario= "0101" and organico ='1' then
	reposo	<=	'0';
	cargando<=	'0';
	vaciar	<= 	'1';
	cilindro<= 	'1';
	else
	reposo	<=	'0';
	cargando<=	'1';
	vaciar	<= 	'0';
	cilindro<= 	'0';
	end if
	end process
	
	
	
				  
end behavior;

