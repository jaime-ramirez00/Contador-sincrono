--Jaime Ramirez Stanford
--A00825248
--Laboratorio de sistemas digitales
library IEEE;
use IEEE.numeric_bit.all;

entity fourbit_tb is
end fourbit_tb;
architecture behavior of fourbit_tb is 
    component fourbit
port(clk, cet, cep, load, sel: in bit; d: in unsigned(3 downto 0); tc: out bit; q: buffer unsigned(3 downto 0));
     end component;
   signal clk : bit := '0';
   signal cet, cep, load, sel, tc: bit;
   signal d, q: unsigned(3 downto 0);
begin
   uut: fourbit port map (
          clk => clk,
	  cet=>cet, 
	  cep=>cep,
	  load=>load,
	  sel=>sel,
	  d=>d,
	  tc=>tc,
	  q=>q
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
             clk<='0'; cet<='1'; cep<='1'; d<="1110"; load<='1';
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