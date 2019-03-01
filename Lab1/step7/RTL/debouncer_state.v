/*	debouncer_state module
*
*	This module filters the mechanic input of a button to what the
*	design waited for. What is meant, is that the button, as it has mechanic
*	particions, the input given is not clearly 1 or 0, but has some oscillations.
*
*	This is filltered, by recongizing them (they have not static value), and rejecting
*	them. When the value is permanently at 1, then it gives output the 1 signal.
*
*/
module debouncer_state #(parameter DELAY=1000000)   // .01 sec with a 100 Mhz clock
	             (input reset, clk, noisy, output reg clean);
	              

   reg [19:0] count;

   always @ (posedge clk or posedge reset)
     if(reset == 1)
       begin
     	count <= 0;
     	clean <= 0; 		
	   end

	 else
	   begin

	   	if ( noisy == 0 )
	   	 begin
	   		clean <= 0;
	   		count <= 0;
	   	 end
	   	else 

		   	if ( count == DELAY ) 
		   	 begin
		   	 	clean <= 1;
		   	 	count <= DELAY;
		   	 end  		
		   	else 
		   	 begin
		   	 	clean <= 0;
		   	 	count <= count + 1;		
		   	 end

	   end
      
endmodule
