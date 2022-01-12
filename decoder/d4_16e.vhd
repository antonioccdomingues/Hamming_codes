LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY d4_16e IS
	PORT(	A : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
			E : IN STD_LOGIC;
			D : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
END d4_16e;


architecture Behavioral of d4_16e is
begin
process (A, E)
begin

if (E='0') then
  D <= "0000000000000000";
 else
  case A is

       when "0000" =>
           D <= "0000000000000001";
       when "0001" =>

           D <= "0000000000000010";
       when "0010" =>
           D <= "0000000000000100";

       when "0011" =>
           D <= "0000000000001000";
       when "0100" =>

           D <= "0000000000010000";
       when "0101" =>
           D <= "0000000000100000";

       when "0110" =>
           D <= "0000000001000000";
       when "0111" =>

           D <= "0000000010000000";
       when "1000" =>
           D <= "0000000100000000";

       when "1001" =>
           D <= "0000001000000000";
       when "1010" =>

           D <= "0000010000000000";
       when "1011" =>
           D <= "0000100000000000";

       when "1100" =>
           D <= "0001000000000000";
       when "1101" =>

           D <= "0010000000000000";
       when "1110" =>
           D <= "0100000000000000";

       when "1111" =>
           D <= "1000000000000000";
  when others =>

   D <= "0000000000000000";
  end case;
 end if;

end process;
end Behavioral;