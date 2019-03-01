/* signal_posedge Module
* 
*	This module detects the positive edge of the input_status
*	and holds at 1 for 1 clock period the clean output
*/

module signal_posedge (input reset, clk, input_status, output reg clean);
	              
   reg new;


	   always @(posedge clk or posedge reset)
	   begin
	   	if ( reset ) 
	   	 begin
	   		
	   		new <= 1;
	   		clean <= 0;
	   		
	   	 end
	   	else 
	   	 if ( input_status == 0 ) 
	   	  begin
	   		new <= 1;
	   		clean <= 0;
	   	  end

	   	 else 
	   	  begin
		   	 if ( new == 1 )
		   	  begin
		   	 	new <= 0;
		   	 	clean <= 1;
		   	  end

		   	 else 
		   	  begin
		   	 	new <= 0;
		   	 	clean <= 0;
		   	  end
		  end
	   end
      
endmodule
