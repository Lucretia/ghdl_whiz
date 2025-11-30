--  Analyse: ghdl -a t15_Mux.vhdl
--  Analyse: ghdl -a t15_PortMapTb.vhdl
--  Run    : ghdl -r t15_PortMapTb --vcd=./t15_PortMapTb.vcd --stop-time=100ns
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity T15_PortMapTb is
end entity;

architecture sim of T15_PortMapTb is
    signal Sig1 : unsigned (7 downto 0) := X"AA";
    signal Sig2 : unsigned (7 downto 0) := X"BB";
    signal Sig3 : unsigned (7 downto 0) := X"CC";
    signal Sig4 : unsigned (7 downto 0) := X"DD";

    signal Sel  : unsigned (1 downto 0) := (others => '0');

    signal Output : unsigned (7 downto 0);
begin
    --  An instance of the T15_Mux with architecture rtl.
    i_Mux1 : entity work.T15_Mux (rtl) port map (
        --  T15_Mux port => Local signal.
        Sel    => Sel,
        Sig1   => Sig1,
        Sig2   => Sig2,
        Sig3   => Sig3,
        Sig4   => Sig4,
        Output => Output
    );

    --  Testbench process.
    process
    begin
        wait for 10 ns;
        Sel <= Sel + 1;
        wait for 10 ns;
        Sel <= Sel + 1;
        wait for 10 ns;
        Sel <= Sel + 1;
        wait for 10 ns;
        Sel <= Sel + 1;
        wait for 10 ns;
        Sel <= "UU";
        wait;
    end process;
end architecture;
