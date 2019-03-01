/*	Digit_chooser module
*
*	This module is actually a counter which changes the value of "digit" output
*	every 10 ms. Also at this time, gets the change_value signal ON for
*	1 clk period. 
*
*	Its functionality is made actually to control the CAT input of 
*	Pmod SSD 7-Segment Display, which represents which of the 2 digits
*	is going to be displayed. The change_value signal is to enable flip-flops
*	which hold the binary value to be displayed (in hex mode). The reason of 
*	excistanse of these flip-flops is actually because the digits of the displayer
*	should not been changed while the duration of the 10 ms.
*
*/

module Digit_chooser ( reset, clk, digit, change_value );

	input reset;
	input clk;
	output reg digit;
	output reg change_value;

	parameter N = 8;
	parameter MAX_CTR_VALUE = 1000000; // How much periods is 10 ms for 10 ns period //

	reg [20:0] counter;

	always @(posedge clk or posedge reset)
	 begin
		if ( reset )
		 begin
			
			change_value = 0;
			digit = 0;
			counter = 0;
			
		 end
		else
		 begin
			
			/* 	If N <= 4, the second digit of the displayer is not going to be changed
			*	as a result, it is stack at 0, and the only functionality is to change to
			*	change_value value (every 10 ms)
			*/
		 	if ( N <= 4 )
		 	 begin
		 	 	
		 	 	digit = 0;

		 	 	if ( counter == MAX_CTR_VALUE )
		 	 	 begin
		 	 	 	
		 	 	 	change_value = 1;
		 	 	 	counter = 0;

		 	 	 end
		 	 	else
		 	 	 begin
		 	 		
		 	 		change_value = 0;
		 	 		counter = counter + 1;
		 	 	end


		 	 end
		 	else
		 	 begin


		 	 	if ( counter == MAX_CTR_VALUE )
		 	 	 begin
		 	 	 	
		 	 	 	change_value = 1;
		 	 	 	digit = ~digit;
		 	 	 	counter = 0;

		 	 	 end
		 	 	else
		 	 	 begin
		 	 		
		 	 		change_value = 0;
		 	 		counter = counter + 1;

		 	 	end
		 		
		 	 end

		 end
	 end
	 
endmodule