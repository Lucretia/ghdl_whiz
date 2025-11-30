--  Analyse: ghdl -a t05_WhileLoopTb.vhdl
--  Run    : ghdl -r t05_WhileLoopTb --stop-time=200n
entity T05_WhileLoopTB is
end entity;

architecture behav of T05_WhileLoopTB is
begin
    process
        variable I : Integer := 0;
    begin
        while I < 10 loop
            report "I: " & Integer'Image (I);

            I := I + 2;
        end loop;

        wait;
    end process;
end architecture;