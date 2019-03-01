//////////////////////////////////////////////////////////////////////////
// University      : University of Thessaly
// Department      : Electrical & Computer Engineering
// Course          : CE435 - Embedded Systems
// ----------------------------------------------------------------------
// -----------[Team's Data]----------------------------------------------
// Full Names       : Panagiotis Anastasiadis | Charalampos Patsianotakis        
// E-Mails          : paanastasiadis@uth.gr   | cpatsianotakis@uth.gr
//////////////////////////////////////////////////////////////////////////

// Switch Debounce Module
// use your system clock for the clock input
// to produce a synchronous, debounced output

module debounce #(parameter DELAY=1000000)   // .01 sec with a 100 Mhz clock
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