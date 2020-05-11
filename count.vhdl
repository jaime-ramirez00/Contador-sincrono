--Contador sincrono utilizando dos componentes 74f169
--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library IEEE;
use IEEE.numeric_bit.ALL;
entity count is
port(clk,cet,cep,load,sel: in bit;
d1, d2: in unsigned(3 downto 0); ct: out integer range 0 to 255);
end count;
architecture behavior of count is
component fourbit_bcd
port(clk, cet, cep, load, sel: in bit; d: in unsigned(3 downto 0); q: buffer unsigned(3 downto 0));
end component;
signal Q1, Q2: unsigned(3 downto 0);
begin
c1: fourbit_bcd port map (clk, cet, cep, load, sel, d1, Q1);
c2: fourbit_bcd port map (clk, cet, cep, load, sel, d2, Q2);
ct<=to_integer(Q2 & Q1);
end behavior;