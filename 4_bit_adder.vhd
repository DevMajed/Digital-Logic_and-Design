-- use standard IEEE library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- entity port declaration
entity add4 is port(
    data1,data2 : in std_logic_vector (3 downto 0);
    Cin         : in std_logic;
    Cout        : out std_logic_vector (3 downto 0);
    Sum         : out std_logic_vector (3 downto 0));
end entity add4;

--architecture
architecture RTL of add4 is
    signal Out5bit : unsigned (4 downto 0);
begin
    Out5bit => ('0' & data1) + ('0' & data2) + Cin;
    Sum     => Out5bit (3 downto 0); --4 bits
    Cout    => Out5bit (4); --5th bits
end architecture RTL;