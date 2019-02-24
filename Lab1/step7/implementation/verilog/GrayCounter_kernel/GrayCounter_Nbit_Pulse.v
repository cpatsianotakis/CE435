`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// This is the code that generates a pulse for a single cycle every "distance"
// cycles. Note that "distance" * clock period = 1 sec
//////////////////////////////////////////////////////////////////////////////////
module GrayCounter_Pulse( clk, rst, button, pulse);
                             

  parameter INIT_DISTANCE     = 100000000; // 1 sec pulse //
  parameter FINAL_DISTANCE    = 5000001;
  parameter MINIMIZE_DISTANCE = 5000000;
  
  input clk;
  input rst;
  input button;
  output reg pulse;
  
  reg [26:0] counter;
  reg [26:0] distance;

  
  
  always @(posedge clk, posedge rst)
    begin
      if (rst == 1'b1) 
    	  begin
      		 // Code for asynchronous reset goes epae //
           pulse = 0;
      		 counter = 0;
           distance = INIT_DISTANCE;

    	  end
		  
        else
		  begin
			// And for regular functionality goes epae //
  			if ( counter == distance )
  			  begin
              pulse = 1'b1;
              counter = 0;

              if ( button == 1'b1 )

                if ( distance > FINAL_DISTANCE )
                  distance = distance - MINIMIZE_DISTANCE;
                else
                  distance = distance;
                
              else
                distance = INIT_DISTANCE;

          end
        else
            begin

              pulse = 1'b0;
              counter = counter + 1;

              if ( button == 1'b1 )
                distance = distance;
              else
                distance = INIT_DISTANCE;

            end
              
      end
	 end

			  
endmodule
