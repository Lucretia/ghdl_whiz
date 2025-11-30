--  Analyse: ghdl -a t04_ForLoopTb.vhdl
--  Run    : ghdl -r t04_ForLoopTb --stop-time=200ns
entity T04_ForLoopTB is
end entity;

architecture sim of T04_ForLoopTB is
begin
    process
    begin
        for I in 1 to 10 loop
            report "I: " & Integer'Image (I);
        end loop;

        wait;
    end process;
end architecture;