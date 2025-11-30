--  Analyse: ghdl -a t07_WaitOnUntilTb.vhdl
--  Run    : ghdl -r t07_WaitOnUntilTb
entity T07_WaitOnUntilTb is
end entity;

architecture behav of T07_WaitOnUntilTb is
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
        wait on CountUp, CountDown;

        report "CountUp: " & Integer'Image (CountUp) &
            ", CountDown: " & Integer'Image (CountDown);
    end process;

    process
    begin
        wait until CountUp = CountDown;

        report "Jackpot!";
    end process;
end architecture;