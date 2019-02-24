module Digit_chooser ( reset, clk, digit, change_value );

	input reset;
	input clk;
	output reg digit;
	output reg change_value;

	parameter N = 8;
	parameter MAX_CTR_VALUE = 2000000; // How much periods is 20 ms for 1 ns period //

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
		 	 		digit = digit;	
		 	 		counter = counter + 1;

		 	 	end
		 		
		 	 end

		 end
	 end
	 
endmodule