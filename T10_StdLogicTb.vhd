
Library ieee;
use ieee.std_logic_1164.all;


entity T10_StdLogicTb is
end entity;


    architecture sim of T10_StdLogicTb is
        signal Signal1 : std_logic := '0';
        signal Signal2 : std_logic;
        signal Signal3 : std_logic;
        begin
            process is
                begin
            wait for 10ns;
            Signal1 <= not Signal1;
            end process;
    process is
        begin
            Signal2 <= 'Z';
            Signal3 <= '0';
            wait;
    end  process;
        process (Signal1)is
            begin
                if Signal1= '0' then
                    Signal2 <= 'Z';
                    Signal3 <= 'Z';
                else
                    signal2 <= '1';
                    signal3 <= '1';
                end if;
        end process;

    end architecture;


