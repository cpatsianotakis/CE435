// Switch Debounce Module
// use your system clock for the clock input
// to produce a synchronous, debounced output
module debouncer_posedge
	             (input reset, clk, input_status, output reg clean);
	              
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
