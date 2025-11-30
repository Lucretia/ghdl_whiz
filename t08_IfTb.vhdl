--  Analyse: ghdl -a t08_IfTb.vhdl
--  Run    : ghdl -r t08_IfTb --stop-time=200n
entity T08_IfTb is
end entity;

architecture behav of T08_IfTb is
    signal CountUp   : Integer := 0;
    signal CountDown : Integer := 10;
begin
    process
    begin
        CountUp   <= CountUp + 1;
        CountDown <= CountDown - 1;

        wait for 10 ns;
    end process;

    process
    begin
        if CountUp > CountDown then
            report "CountUp is larger.";
        elsif CountDown > CountUp then
            report "CountDown is larger.";
        else
            report "They are equal.";
        end if;

        wait on CountUp, CountDown;
    end process;
end architecture;
