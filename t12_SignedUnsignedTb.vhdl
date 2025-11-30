--  Analyse: ghdl -a t12_SignedUnsignedTb.vhdl
--  Run    : ghdl -r t12_SignedUnsignedTb --vcd=./t12_SignedUnsignedTb.vcd --stop-time=2600ns
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T12_SignedUnsignedTb is
end entity;

architecture sim of T12_SignedUnsignedTb is
    signal UnsCnt : unsigned (7 downto 0) := (others => '0');
    signal SgnCnt : signed (7 downto 0)   := (others => '0');

    signal Uns4   : unsigned (3 downto 0) := "1000";
    signal Sig4   : signed   (3 downto 0) := "1000";

    signal Uns8 : unsigned (7 downto 0) := (others => '0');
    signal Sgn8 : signed (7 downto 0)   := (others => '0');
    begin
    process
    begin
        wait for 10 ns;

        UnsCnt <= UnsCnt + 1;
        SgnCnt <= SgnCnt + 1;

        Uns8 <= Uns8 + Uns4;
        Sgn8 <= Sgn8 + Sig4;
    end process;
end architecture;
