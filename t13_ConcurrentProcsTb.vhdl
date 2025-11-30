--  Analyse: ghdl -a t13_ConcurrentProcsTb.vhdl
--  Run    : ghdl -r t13_ConcurrentProcsTb --vcd=./t13_ConcurrentProcsTb.vcd --stop-time=100ns
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T13_ConcurrentProcsTb is
end entity;

architecture behav of T13_ConcurrentProcsTb is
    signal Uns  : unsigned (5 downto 0) := (others => '0');
    signal Mul1 : unsigned (7 downto 0);
    signal Mul2 : unsigned (7 downto 0);
    signal Mul3 : unsigned (7 downto 0);
begin
    process
    begin
        Uns <= Uns + 1;

        wait for 10 ns;
    end process;

    --  Process multiplying Uns by 4.
    process
    begin
        Mul1 <= Uns & "00";

        wait on Uns;
    end process;

    --  Process multiplying Uns by 2.
    process (Uns) is
    begin
        Mul2 <= Uns & "00";
    end process;

    --  Equivalent process using a concurrent statement.
    Mul3 <= Uns & "00";
end architecture;
