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

  reg [N : 0] state;
  reg [N : 0] toggle;

    integer i;


  // The state of the Gray counter
  always @(posedge clk or negedge rst)
    begin
	     if (rst == 1'b0) begin
		    // Initialize state with 1000..00
           	state[0] = 1;
           	for ( i = 1; i < N; i = i + 1)
		    	     state[i] = 0;
         end
	     else begin
         // Main part of code
         if ( clk_en ) begin
           for (i = 0; i < N; i = i + 1) 
            begin
             if ( toggle[i] == 1'b1) 
                state[i] = ~state[i];
             else 
              state[i] = state[i];
            end
          end
        end
		   
	 end
  
  
  // The combinational logic produces the toggle[N:0] signals
  always @(state) 
    begin     
        toggle[0] <=  1'b1;
        toggle[1] <= state[0];

        for (i=2; i<N; i=i+1) 
  	     begin	
              // Here goes your code
            if ( state[i-1] == 1'b1 && state[i-2:0] == 0 )
              toggle[i] = 1'b1;
            else
              toggle[i] = 1'b0;  
         end 

        if ( state[N-2:0] == 0 )
          toggle[N] = 1'b1;
        else
          toggle[N] = 1'b0; 

    end
	  
    assign gray_out=state[N:1];
	 
endmodule
