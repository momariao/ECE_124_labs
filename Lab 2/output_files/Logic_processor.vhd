library ieee;
use ieee.std_logic_1164.all;


--- Lab session: 204, Team Number: 1, Group Number: 6.
--- Maria Omer
--- Shamanthi Rajagopal

--- variables/inputs/outputs
entity Logic_processor is
port (
	logic_in0, logic_in1 : in std_logic_vector(3 downto 0);
	logic_select         : in std_logic_vector(1 downto 0);
	logic_out            : out std_logic_vector(3 downto 0)
);

end Logic_processor;

architecture LogicProccessor of Logic_processor is 

begin 

-- for the multiplexing of four hex input busses
--- Logic proccessor logic

with logic_select(1 downto 0) select
logic_out <= (logic_in0 AND logic_in1) when "00",
			  (logic_in0 OR logic_in1) when "01",
			  (logic_in0 XOR logic_in1) when "10",
			  (logic_in0 XNOR logic_in1) when "11";

--- when logic select is 00, the logic 0 and logic 1 inputs will be have AND applied, and the result will be outputed to the logic_out.
--- when logic select is 01, the logic 0 and logic 1 inputs will be have OR applied, and the result will be outputed to the logic_out.
--- when logic select is 10, the logic 0 and logic 1 inputs will be have XOR applied, and the result will be outputed to the logic_out.
--- when logic select is 11, the logic 0 and logic 1 inputs will be have XNOR applied, and the result will be outputed to the logic_out.
	
end LogicProccessor;
	