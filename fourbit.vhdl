--Componente de 4 bits conforme al contador 74f169
--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library ieee;
use ieee.numeric_bit.all;
entity fourbit is
port(clk, cet, cep, load, sel: in bit; d: in unsigned(3 downto 0); tc: out bit; q: buffer unsigned(3 downto 0));
end fourbit;
architecture behavior of fourbit is
signal ter_c : unsigned(4 downto 0);
begin
process(clk)
begin
if(clk'event and clk='1') then
if(load='1') then q<=d;
elsif(cet ='1' and cep='1' and sel='0') then
if q="0000" then q<="1111";
else
q<=q-1; end if;
elsif(cet='1' and cep='1' and sel='1') then
if q="1111" then q<="0000";
else
q<=q+1; end if;
end if;
end if;
end process;
ter_c<=sel & q;
with ter_c select
tc<='1' when "00000", '1' when "11111",'0' when others;
end behavior;

