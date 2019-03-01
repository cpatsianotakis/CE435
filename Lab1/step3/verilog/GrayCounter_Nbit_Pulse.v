//////////////////////////////////////////////////////////////////////////
// University      : University of Thessaly
// Department      : Electrical & Computer Engineering
// Course          : CE435 - Embedded Systems
// ----------------------------------------------------------------------
// -----------[Team's Data]----------------------------------------------
// Full Names       : Panagiotis Anastasiadis | Charalampos Patsianotakis        
// E-Mails          : paanastasiadis@uth.gr   | cpatsianotakis@uth.gr
//////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// This is the code that generates a pulse for a single cycle every "distance"
// cycles. Note that "distance" * clock period = 1 sec
//////////////////////////////////////////////////////////////////////////////////
module GrayCounter_Pulse( clk, rst, pulse);
  
  parameter distance = 99; // Temp distance for simulate in order not to crache the system //
 // parameter distance = 100000000; // How much for 1 Hz when clock period is 10 ns? //
  
  input clk;
  input rst;
  output reg pulse;
  
  reg [26:0] counter;

  
  
  always @(posedge clk, negedge rst)
    begin
        if (rst == 1'b0) 
		  begin
			 // Code for asynchronous reset goes epae //
			 counter = 0;
			 
		  end
		  
        else
		  begin
			// And for regular functionality goes epae //
			if ( counter == distance )
			  begin
                pulse = 1'b1;
                counter = 0;
              end
            else
              begin
                pulse = 1'b0;
                counter = counter + 1;
              end
            
          end
	 end
			  
endmodule
