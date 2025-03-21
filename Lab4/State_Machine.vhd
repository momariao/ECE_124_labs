-- Members: Shamanthi Rajagopal and Maria Omer || Lab 4 || Section 204 || Group 6 ||
-- Import packages
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Defines the state machine entity, which is the traffic light logic with moore-machine
Entity State_Machine IS Port
(
 clk_input, reset, sm_clk, blink_signal, ns_request, ew_request		: IN std_logic;
 -- input for clock, reset, enable, blinking signal, and pedestrian requests
 
 ns_green, ns_amber, ns_red, ew_green, ew_amber, ew_red					: OUT std_logic;
-- Output for red, yellow/amber, green traffic lights (1 - active,0 - not active), for both North-south and east-west direction

 ns_crossing, ew_crossing															: OUT std_logic; -- Output bits for crossing time
 fourbit_state_num																	: OUT std_logic_vector(3 downto 0); -- Output logic vector to represent states as binary
 ns_clear, ew_clear																	: OUT std_logic -- Output to clear pedestrian requests (bits)
 );
END ENTITY;
 
-- Define the Logic for traffic light with moore machine
 Architecture SM of State_Machine is
 
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15);   -- list all 16 STATE_NAMES values
 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES

 BEGIN
 
 -------------------------------------------------------------------------------
 --State Machine:
 -------------------------------------------------------------------------------
 
Register_Section: PROCESS (clk_input)  					-- this process updates with a clock
BEGIN
	IF(rising_edge(clk_input)) THEN 							-- only happens at rising-edge of clock
		IF (reset = '1') THEN        							-- if reset is 1 (active), reset state to the inital state (S0)
			current_state <= S0;		  
		ELSIF (reset = '0' and sm_clk = '1') THEN	  		-- if reset is 0 (not active) and the state machine is enabled, have current state be set to next state
			current_state <= next_State;  
		END IF;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS, update values based on current state
Transition_Section: PROCESS (current_state) 

BEGIN

-- Cases to define actions for transitions between states depending on variable values and order
  CASE current_state IS 			

-- Advances in order (chronological) or skips to S6 (east-west amber state) if there is a EW request activated and NS is not requested by pedestrian
        WHEN S0 =>		
				IF(ew_request='1' and  ns_request = '0') THEN
					next_state <= S6;
				ELSE
					next_state <= S1;
				END IF;
-- Advances in order (chronological) or skips to S6 (east-west amber state) if there is a EW request activated and NS is not requested by pedestrian
         WHEN S1 =>		
				IF(ew_request='1' and  ns_request = '0') THEN
					next_state <= S6;
				ELSE
					next_state <= S2;
				END IF;

-- Assign the next states in order
         WHEN S2 =>
						next_state <= S3;
         WHEN S3 =>	
						next_state <= S4;       
			WHEN S4 =>	
						next_state <= S5;         
			WHEN S5 =>	
						next_state <= S6;         
			WHEN S6 =>	
						next_state <= S7;         
			WHEN S7 =>			
						next_state <= S8;

-- Advances in order (chronological) or skips to S14 (north-southn amber state) if there is a NS request activated and EW is not requested by pedestrian			
         WHEN S8 =>		
				IF(ew_request='0' and  ns_request = '1') THEN
					next_state <= S14;
				ELSE
					next_state <= S9;
				END IF;

-- Advances in order (chronological) or skips to S14 (north-southn amber state) if there is a NS request activated and EW is not requested by pedestrian
         WHEN S9 =>		
				IF(ew_request='0' and  ns_request = '1') THEN
					next_state <= S14;
				ELSE
					next_state <= S10;
				END IF;

-- Assign the next states in order
				WHEN S10 =>
							next_state <= S11;
				WHEN S11 =>	
							next_state <= S12;       
				WHEN S12 =>	
							next_state <= S13;         
				WHEN S13 =>	
							next_state <= S14;         
				WHEN S14 =>	
							next_state <= S15;         
							
-- when it reaches S15, next state goes to S0 (inital state)						
				WHEN S15 =>
               next_state <= S0;
	  END CASE;
 END PROCESS;
 

-- DECODER SECTION, updates with resepect to the changes in the current state

Decoder_Section: PROCESS (current_state) 

BEGIN

--  Cases to define output based on states (in all cases below EW signals assigned then NS)
     CASE current_state IS

-- Assigns blinking green signal for NS and red for EW	  
         WHEN S0 | s1 =>		
								ew_clear <= '0';
								ew_green <= '0';
								ew_amber <= '0';
								ew_red <= '1';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= blink_signal;
								ns_amber <= '0';
								ns_red <= '0';
								ns_crossing <= '0';
								
-- Assigns solid green signal for NS, with crossing signal active and red for EW	
         WHEN S2 | s3 | S4 | S5 =>		
								ew_clear <= '0';
								ew_green <= '0';
								ew_amber <= '0';
								ew_red <= '1';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= '1';
								ns_amber <= '0';
								ns_red <= '0';
								ns_crossing <= '1';

-- Assigns amber signal for NS and red for EW, and activates NS request clear	
         WHEN S6 =>		
								ew_clear <= '0';
								ew_green <= '0';
								ew_amber <= '0';
								ew_red <= '1';
								ew_crossing <= '0';
								
								ns_clear <= '1';
								ns_green <= '0';
								ns_amber <= '1';
								ns_red <= '0';
								ns_crossing <= '0';
								
-- Assigns amber signal NS, and red for EW	
         WHEN S7 =>		
								ew_clear <= '0';
								ew_green <= '0';
								ew_amber <= '0';
								ew_red <= '1';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= '0';
								ns_amber <= '1';
								ns_red <= '0';
								ns_crossing <= '0';
								
-- Assigns red signal for NS, and blinking green for EW	
         WHEN S8 | s9 =>		
								ew_clear <= '0';
								ew_green <= blink_signal;
								ew_amber <= '0';
								ew_red <= '0';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= '0';
								ns_amber <= '0';
								ns_red <= '1';
								ns_crossing <= '0';
								
-- Assigns red for NS, and green for EW with crossing signal active 
         WHEN S10 | s11 | s12 | s13	=>		
								ew_clear <= '0';
								ew_green <= '1';
								ew_amber <= '0';
								ew_red <= '0';
								ew_crossing <= '1';
								
								ns_clear <= '0';
								ns_green <= '0';
								ns_amber <= '0';
								ns_red <= '1';
								ns_crossing <= '0';
								
-- Assigns red signal for NS and amber for EW and activates EW request clear		         
			WHEN S14 =>		
								ew_clear <= '1';
								ew_green <= '0';
								ew_amber <= '1';
								ew_red <= '0';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= '0';
								ns_amber <= '0';
								ns_red <= '1';
								ns_crossing <= '0';		

-- Assigns red signal for NS and amber for EW         
			WHEN S15 =>		
								ew_clear <= '0';
								ew_green <= '0';
								ew_amber <= '1';
								ew_red <= '0';
								ew_crossing <= '0';
								
								ns_clear <= '0';
								ns_green <= '0';
								ns_amber <= '0';
								ns_red <= '1';
								ns_crossing <= '0';			
							

	  END CASE;
	  
-- Cases which assigns equivalent binary representation for each state for the fourbit_state_number output
	  CASE current_state IS
	  
				WHEN S0 =>
							fourbit_state_num <= "0000";
				WHEN S1 =>
							fourbit_state_num <= "0001";
				WHEN S2 =>
							fourbit_state_num <= "0010";
				WHEN S3 =>
							fourbit_state_num <= "0011";							
				WHEN S4 =>
							fourbit_state_num <= "0100";	  
				WHEN S5 =>
							fourbit_state_num <= "0101";
				WHEN S6 =>
							fourbit_state_num <= "0110";
				WHEN S7 =>
							fourbit_state_num <= "0111";
				WHEN S8 =>
							fourbit_state_num <= "1000";
				WHEN S9 =>
							fourbit_state_num <= "1001";
				WHEN S10 =>
							fourbit_state_num <= "1010";
				WHEN S11 =>
							fourbit_state_num <= "1011";
				WHEN S12 =>
							fourbit_state_num <= "1100";
				WHEN S13 =>
							fourbit_state_num <= "1101";
				WHEN S14 =>
							fourbit_state_num <= "1110";		
				WHEN S15 =>
							fourbit_state_num <= "1111";			
				END CASE;
 END PROCESS;

 END ARCHITECTURE SM;

