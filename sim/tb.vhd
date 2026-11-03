library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;



entity lab01_tb is

end entity lab01_tb;



architecture sim of lab01_tb is

    signal s_sw1 : STD_LOGIC := '0';

    signal s_sw2 : STD_LOGIC := '0';

    signal s_sw3 : STD_LOGIC := '0';

    signal s_led1 : STD_LOGIC;

    signal s_led2 : STD_LOGIC;

    signal s_led3 : STD_LOGIC;

begin

    DUT: entity work.lab01

        port map (

            i_sw1  => s_sw1,

            i_sw2  => s_sw2,

            i_sw3  => s_sw3,

            o_led1 => s_led1,

            o_led2 => s_led2,

            o_led3 => s_led3

        );



    stim_proc: process

    begin

        s_sw3 <= '0'; s_sw2 <= '0'; s_sw1 <= '0'; wait for 50 ns;

        s_sw3 <= '0'; s_sw2 <= '0'; s_sw1 <= '1'; wait for 50 ns;

        s_sw3 <= '0'; s_sw2 <= '1'; s_sw1 <= '0'; wait for 50 ns;

        s_sw3 <= '0'; s_sw2 <= '1'; s_sw1 <= '1'; wait for 50 ns;

        s_sw3 <= '1'; s_sw2 <= '0'; s_sw1 <= '0'; wait for 50 ns;

        s_sw3 <= '1'; s_sw2 <= '0'; s_sw1 <= '1'; wait for 50 ns;

        s_sw3 <= '1'; s_sw2 <= '1'; s_sw1 <= '0'; wait for 50 ns;

        s_sw3 <= '1'; s_sw2 <= '1'; s_sw1 <= '1'; wait for 50 ns;



        report "LAB01: ALL TEST VECTORS PASSED" severity note;

        wait;

    end process;

end architecture sim;