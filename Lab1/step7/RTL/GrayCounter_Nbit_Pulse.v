`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// This is the code that generates a pulse for a single cycle every "distance"
// cycles. Note that "distance" * clock period = 1 sec
//////////////////////////////////////////////////////////////////////////////////
module GrayCounter_Pulse( clk, rst, button, pulse);
                             

//parameter INIT_DISTANCE     = 1000000; // TEST //
  parameter INIT_DISTANCE     = 100000000; // 1 sec pulse //
  parameter FINAL_DISTANCE    = 500000;
  parameter MINIMIZE_DISTANCE = 500000;
  parameter MID_DISTANCE      = 12500000;
  
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

              if ( button == 1'b1 ) begin

                if ( distance > MID_DISTANCE ) 
                
                  distance = distance >> 1;

				        else if ( distance > FINAL_DISTANCE )
				          distance = distance - MINIMIZE_DISTANCE;
                else
                  distance = distance;
              end
              else
                distance = INIT_DISTANCE;

          end
        else
            begin

              if ( button == 1'b1 ) begin
                distance = distance;

              	pulse = 1'b0;
              	counter = counter + 1;
              end
              else 
               begin
                distance = INIT_DISTANCE;

               end
            end
              
      end
	 end

			  
endmodule
