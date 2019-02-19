 /*
 -----------------------------------------------------------------------------
 -- File           : Gray_Nbits_RTL.v
 -----------------------------------------------------------------------------
 */ 

module gray_Nbits (clk, clk_en, rst, gray_out);
  parameter N = 4;
  parameter SIZE =(N+1);
  parameter Zeros = {SIZE{1'b0}};
  // Place the definition of wires and regs here

  input clk;
  input clk_en;
  input rst;
  output [N:0] gray_out;

  integer i, j;

  reg [N : 0] state;
  reg [N : 0] toggle;

  reg [N:0] is_to_toggle;


  reg aux;
  
  // The state of the Gray counter
  always @(posedge clk, negedge rst)
    begin
	     if (rst == 1'b0)
		    // Initialize state with 1000..00
		    state[0] = 1;
		    for ( i = 1; i < N; i = i + 1)
		    	state[i] = 0;

		    aux = 0;
		     
	     else
		    // Main part of code

		    if ( clk_en )
		     begin
		     	
		     	aux = !aux;
		     	for ( i = 0; i < N; i = i + 1 )
		     	 begin
		     	 	
		     	 	if ( toggle [i] == 1)
		     	 	 begin
		     	 	 	state[i] = !state[i];
		     	 	 end
		     	 end
		     end
	 end
  
  
  // The combinational logic produces the toggle[N:0] signals
  always @(state) 
    begin     

    	if ( aux == 1)
        	toggle[0] <=  1'b1;
        else
        	toggle[0] <=  1'b0;

        if ( toggle[0] == 1 && state[0] == 1)
        	toggle[1] <= 1;
        else
        	toggle[1] <= 0;

        for (i=2; i<N; i=i+1) 
	   	 begin	
            
	   	 	if ( state[i-1] == 1 )
	   	 		is_to_toggle[i-1] = 1;
	   	 	else
	   	 		is_to_toggle[i-1] = 1;

	   	 	for (j=i-2; j > 0; j=j+1)
	   	 	 begin
	   	 	 	
	   	 	 	if ( state[j] = 0 )
	   	 	 	 	is_to_toggle[j] = is_to_toggle[j+1];
	   	 	 	else
	   	 	 		is_to_toggle[j] = 0;
	   	 	 	end
	   	 	 end

	   	 	toggle[i] = is_to_toggle[0];

         end 
	  
    assign gray_out=state[N:1];
	 
endmodule
