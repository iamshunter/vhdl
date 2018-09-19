library ieee;
use ieee.std_logic_1164.all;

entity IntToPulse is
   port (
      i_Interrupt : in  std_logic;
      i_Clock     : in  std_logic;
      o_One       : out std_logic;
      o_Two       : out std_logic);
end entity IntToPulse;

architecture RTL of IntToPulse is

signal counter:  integer:=1;
signal outClock: std_logic:= '1';

begin

   o_One <= i_Interrupt;
   
   process(i_Clock)
   begin
      if(i_Clock'event and i_Clock='1') then
         counter <=counter+1;
         if (counter > 25000) then
            outClock <= NOT outClock;
            counter <= 1;
         end if;
      end if;
      o_Two <= outClock;
end process;
   
end architecture RTL;
