--  Analyse: ghdl -a t03_LoopTb.vhdl
--  Run    : ghdl -r t03_LoopTb --stop-time=200ns
entity T03_LoopTB is
end entity;

architecture behav of T03_LoopTB is
begin
    process
    begin
        report "Hello!";

        loop
            report "Peekaboo";
            -- wait for 10 ns;
            exit;
        end loop;

        report "Bye!";
        wait;
    end process;
end architecture;