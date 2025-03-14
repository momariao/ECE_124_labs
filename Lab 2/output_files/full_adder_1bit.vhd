library ieee;
use ieee.std_logic_1164.all;


--- Lab session: 204, Team Number: 1, Group Number: 6.
--- Maria Omer
--- Shamanthi Rajagopal

--- variables/inputs/outputs
entity full_adder_1bit is
port (
	Input_A   : in std_logic;
	Input_B   : in std_logic;
	Carry_In  : in std_logic;
	Sum       : out std_logic;
	Carry_Out : out std_logic

);

end full_adder_1bit;

architecture one_bit_logic of full_adder_1bit is 

begin 

--- full adder one bit logic

	Sum <= (Input_A xor Input_B) xor Carry_In;
	Carry_Out <= (Input_A and Input_B) or (Carry_In and (Input_A xor Input_B));

--- First apply the xor of input A and B then xor that output with the Carry in, which will be assigned to the Sum output variable.
--- Firsth apply the and of input A and B, which will be "output1" and at the same time, 
--- have the xor of Input A and B applied with an and with the carry_in for the "output2"
--- Finally or the "output1" "output2" and assign it to the carry_out output.
	
end one_bit_logic;

	