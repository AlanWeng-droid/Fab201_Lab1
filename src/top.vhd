library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lab01 is
    port (
        i_sw1  : in  STD_LOGIC;
        i_sw2  : in  STD_LOGIC;
        i_sw3  : in  STD_LOGIC;
        o_led1 : out STD_LOGIC;
        o_led2 : out STD_LOGIC;
        o_led3 : out STD_LOGIC
    );
end entity lab01;

architecture rtl of lab01 is
begin
    o_led1 <= i_sw1;
    o_led2 <= i_sw2;
    o_led3 <= i_sw3;
end architecture rtl;
