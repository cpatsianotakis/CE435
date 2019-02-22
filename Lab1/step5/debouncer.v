// Switch Debounce Module
// use your system clock for the clock input
// to produce a synchronous, debounced output
module debounce #(parameter DELAY=1000000)   // .01 sec with a 100 Mhz clock
	             (input reset, clk, noisy, output reg clean);
	              

   reg [19:0] count;
   reg new;

   reg input_status;

   always @ (posedge clk or posedge reset)
     if(reset == 1)
       begin
     	count <= 0;
     	input_status <= 0; 		
	   end

	 else
	   begin

	   	if ( noisy == 0 )
	   	 begin
	   		input_status <= 0;
	   		count <= 0;
	   	 end
	   	else 

		   	if ( count == DELAY ) 
		   	 begin
		   	 	input_status <= 1;
		   	 	count <= DELAY;
		   	 end  		
		   	else 
		   	 begin
		   	 	input_status <= 0;
		   	 	count <= count + 1;		
		   	 end

	   end

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