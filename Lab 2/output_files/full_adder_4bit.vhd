library ieee;
use ieee.std_logic_1164.all;
--- Lab session: 204, Team Number: 1, Group Number: 6. --- Maria Omer, Shamanthi Rajagopal

--- variables/inputs/outputs
entity full_adder_4bit is port (
	Input_A      : in std_logic_vector(3 downto 0);
	Input_B      : in std_logic_vector(3 downto 0);
	---Input_A   : in std_logic;
	---Input_B   : out std_logic;
	Carry_In  : in std_logic;
	Sum       : out std_logic_vector(3 downto 0);
	Carry_Out : out std_logic

);

end full_adder_4bit;

architecture four_bit_logic of full_adder_4bit is 

--- borrows logic from full adder 1 bit and daisy chains it

	component full_adder_1bit port (
		Input_A   : in std_logic;
		Input_B   : in std_logic;
		Carry_In  : in std_logic;
		Sum       : out std_logic;
		Carry_Out : out std_logic
		); 
	
	end component;

--- carry signal that will be used within the daisy chain

		signal Carry : std_logic_vector(2 downto 0);
		
begin
--- each instance line is a daisy chain of the full_adder_1bit. (Basically does the full_adder1bit logic 4 times, 
--- with the previous output as the new input when needed for the carry).

	INST1: full_adder_1bit port map (Input_A(0), Input_B(0), Carry_In, Sum(0), Carry(0));
	INST2: full_adder_1bit port map (Input_A(1), Input_B(1), Carry(0), Sum(1), Carry(1));
	INST3: full_adder_1bit port map (Input_A(2), Input_B(2), Carry(1), Sum(2), Carry(2));
	INST4: full_adder_1bit port map (Input_A(3), Input_B(3), Carry(2), Sum(3), Carry_Out);
	

end four_bit_logic;