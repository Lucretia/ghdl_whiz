--  Analyse: ghdl -a t11_StdLogicVectorTb.vhdl
--  Run    : ghdl -r t11_StdLogicVectorTb --vcd=./t11_StdLogicVectorTb.vcd
library ieee;
use ieee.std_logic_1164.all;

entity T11_StdLogicVectorTb is
end entity;

architecture behav of T11_StdLogicVectorTb   is
    signal Slv1 : std_logic_vector(7 downto 0);
    signal Slv2 : std_logic_vector(7 downto 0) := (others => '0');
    signal Slv3 : std_logic_vector(7 downto 0) := (others => '1');
    signal Slv4 : std_logic_vector(7 downto 0) := X"AA";
    signal Slv5 : std_logic_vector(0 to 7) := "10101010";
    signal Slv6 : std_logic_vector(7 downto 0) := "00000001";
begin
    process
    begin
        wait for 10 ns;

        for I in 7 downto 1 loop
            Slv6 (I) <= Slv6 (I - 1);
        end loop;

        Slv6 (0) <= Slv6 (7);
    end process;
end architecture;
