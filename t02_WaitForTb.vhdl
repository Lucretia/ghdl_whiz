--  Analyse: ghdl -a t02_WaitForTb.vhdl
--  Run    : ghdl -r t02_WaitForTb --stop-time=200n
entity T02_WaitForTB is
end entity;

architecture behav of T02_WaitForTB is
begin
    process
    begin
        --  This is the start of the process "thread"

        report "Peekaboo";
        wait for 10 ns;

        --  The process will loop back to the start from here.
    end process;
end architecture;