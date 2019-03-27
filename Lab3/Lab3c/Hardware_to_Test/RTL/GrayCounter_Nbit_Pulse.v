/*  GrayCounter_Nbit_Pulse module
*
* This module is generates the pulse, in order to change the GrayCounter value
* 
* It is implemented with a counter, which increases its value until it is equal
* with the value of a distance reg. If it is equal it gives a pulse signal for 1 clk
* period (and of course the counter gets the zero value). This can also happen, if the
* button_posedge is activated.
*
* Each time the pulse signal is activated, the distance value is discreased. There are
* 3 special values which make 2 fields the distance value is in. The INIT_DISTANCE, the 
* MID_DISTANCE and the FINAL_DISTANCE.  The first field is the [INIT_DISTANCE, MID_DISTANCE),
* where at each pulse generation, the distance is divided by 2 (<<1). When the distance value
* gets to the second field, in order to reduce the tempo is is dicreased, the distance is 
* subtracted by itself by the MINIMIZE_DISTANCE value. When it arrives at the FINAL_DISTANCE
* value, it stop to get minimized (the pulse is generated at max speed).
*
* Everything explained above is applyed when the button_state signal is activated. Whereas,
* the distance value is stack at INIT_DISTANCE and the counter is frozen. 
*
*/

module GrayCounter_Pulse( clk, rst, button_state, button_posedge, pulse);
                             

//parameter INIT_DISTANCE     = 1000000; // TEST //
  parameter INIT_DISTANCE     = 100000000; // 1 sec pulse //
  parameter FINAL_DISTANCE    = 500000;
  parameter MINIMIZE_DISTANCE = 500000;
  parameter MID_DISTANCE      = 12500000;
  
  input clk;
  input rst;
  input button_state;
  input button_posedge;
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
  			if ( counter == distance || button_posedge == 1'b1 )
  			  begin
              pulse = 1'b1;
              counter = 0;

              if ( button_state == 1'b1 )
               begin

                if ( distance > MID_DISTANCE ) 
                  distance = distance >> 1;

                else if ( distance > FINAL_DISTANCE )
                    distance = distance - MINIMIZE_DISTANCE;

               end

              else
                distance = INIT_DISTANCE;

          end
        else
          begin

            if ( button_state == 1'b1 )
             begin

            	pulse = 1'b0;
            	counter = counter + 1;
             end

            else 
              distance = INIT_DISTANCE;

          end
              
      end
	 end

			  
endmodule
