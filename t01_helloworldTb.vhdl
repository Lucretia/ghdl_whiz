--  Analyse: ghdl -a t01_helloworldTb.vhdl
--  Run    : ghdl -r t01_helloworldTb --stop-time=200ns
entity T01_HelloWorldTB is
end entity;

architecture sim of T01_HelloWorldTB is
begin
    process
    begin
        report "Hello, world!";
        wait;
    end process;
end architecture;