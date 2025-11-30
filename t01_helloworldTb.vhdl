--  Analyse: ghdl -a t01_helloworldTb.vhdl
--  Run    : ghdl -r t01_helloworldTb --stop-time=200n
entity T01_HelloWorldTB is
end entity;

architecture behav of T01_HelloWorldTB is
begin
    process
    begin
        report "Hello, world!";
        wait;
    end process;
end architecture;