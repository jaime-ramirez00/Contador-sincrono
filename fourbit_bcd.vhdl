--Adaptacion del componente del 74f169 para contador de 00 a 99
--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library ieee;
use ieee.numeric_bit.all;
entity fourbit_bcd is
port(clk, cet, cep, load, sel: in bit; d: in unsigned(3 downto 0);q: buffer unsigned(3 downto 0));
end fourbit_bcd;
architecture behavior of fourbit_bcd is
begin
process(clk)
begin
if(clk'event and clk='1') then
if(load='1') then q<=d;
elsif(cet ='1' and cep='1' and sel='0') then
if q="0000" then q<="1001";
else
q<=q-1; end if;
elsif(cet='1' and cep='1' and sel='1') then
if q="1001" then q<="0000";
else
q<=q+1; end if;
end if;
end if;
end process;
end behavior;