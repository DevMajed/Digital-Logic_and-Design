-- use standard IEEE library
library ieee;
use ieee.std_logic_1164.all;

--entity
entity gates is port (
    A,B : in std_logic;
    vA,vB : in std_logic_vector (3 downto 0);
    Z,X,Y,W : out std_logic;
    vX,vY : out std_logic_vector (3 downto 0));
end entity gates;

--architecture
architecture RTL of gates is
begin
    W <= A and B; --AND
    X <= A nor B; --NOR
    Y <= A xor B; --XOR
    Z <= A xnor B; --XNOR
    vX <= vA and vB; --vector bitwise AND
    vY <= vA or vB; --vector bitwise OR
end architecture RTL;