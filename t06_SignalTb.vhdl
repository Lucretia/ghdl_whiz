--  Analyse: ghdl -a t06_SignalTb.vhdl
--  Run    : ghdl -r t06_SignalTb
entity T06_SignalTb is
end entity;

architecture behav of T06_SignalTb is
    signal MySignal : Integer := 0;
begin
    process
        variable MyVariable : Integer := 0;
    begin
        report "*** Process Start ***";

        MyVariable := MyVariable + 1;
        MySignal   <= MySignal + 1;

        report "MyVariable: " & Integer'Image (MyVariable) &
            ", MySignal: " & Integer'Image (MySignal);

        MyVariable := MyVariable + 1;
        MySignal   <= MySignal + 1;

        report "MyVariable: " & Integer'Image (MyVariable) &
            ", MySignal: " & Integer'Image (MySignal);

        wait for 10 ns;

        report "MyVariable: " & Integer'Image (MyVariable) &
            ", MySignal: " & Integer'Image (MySignal);
    end process;
end architecture;