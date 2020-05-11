--Testbench del contador de 8 bits
--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library IEEE;
use IEEE.numeric_bit.all;

entity count_tb is
end count_tb;
architecture behavior of count_tb is 
    component count
port(clk, cet, cep, load, sel: in bit; d1, d2: in unsigned(3 downto 0); ct: out integer range 0 to 255);
     end component;
   signal clk : bit := '0';
   signal cet, cep, load, sel: bit;
   signal ct: integer range 0 to 255;
   signal d1, d2: unsigned(3 downto 0);
begin
   uut: count port map (
          clk => clk,
	  cet=>cet, 
	  cep=>cep,
	  load=>load,
	  sel=>sel,
	  d1=>d1,
	  d2=>d2,
          ct=>ct
        );
 clk_process :process
        begin
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
	     clk<='0'; sel<='1'; cet<='1'; cep<='1';
	     wait for 10 ns;
	     clk<='1';
             wait for 10 ns;
             clk <= '0';
             wait for 10 ns;
             clk <= '1';
             wait for 10 ns;
             clk <='0'; cet<='0';
             wait for 10 ns;
             clk <='1';
             wait for 10 ns;
             clk<='0'; cep<='0';
             wait for 10 ns;
             clk<='1';
             wait for 10 ns;
             clk<='0'; cet<='1'; cep<='1'; d1<="0110"; d2<="0000"; load<='1';
             wait for 10 ns;
             clk<='1';
             wait for 10 ns;
             clk<='0'; load<='0';
             wait for 10 ns;
             clk<='1'; 
             wait for 10 ns;
             clk<='0'; 
             wait for 10 ns;
             clk<='1';
             wait for 10 ns;
             clk<='1'; sel<='0'; 
             wait for 10 ns;
             clk<='0';
             wait for 10 ns;
             clk<='1'; 
             wait for 10 ns;
             clk<='0'; 
             wait for 10 ns;
             clk<='1';
             wait for 10 ns;
             clk<='0'; 
             wait for 10 ns;
        end process;
end;