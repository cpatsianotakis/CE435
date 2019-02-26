 /*                                -
 -----------------------------------------------------------------------------
 -----------------------------------------------------------------------------
 -- File           : TB1_Gray.v
 -----------------------------------------------------------------------------
 -- Description    : Verilog testbench for Gray_4bits
 -- --------------------------------------------------------------------------
 -- --------------------------------------------------------------------------
 */
 
`timescale 1ns/1ps
`define cycle 10

module TB6;
  parameter N = 8;
  reg clk, rst, button;
  integer EndOfSimulation;  
  integer i;

  wire [N-1:0] leds;

  parameter ONE = 1'b1; 
							 
  // Initial statement for signal initialization (reset, clk, EndOfSimulation)
   initial 
     begin

      clk = 0;

      #2;
      rst = 1;

      #48;
      rst = 0;
      $display ("\nStarted simulation for %d bits...\n\n", N);

         
      button = 1;

      #10;
      button = 0;

      #10;
      button = 1;

      #20;
      button = 0;

      #10;
      button = 1;
     

      for ( i = 0; i < 10; i = i + 1)
         #2000000000;
      button = 0;

     
      #7000000000;

      button = 1;

       
      $finish;
    end
	 
  // Always statement to drive the clock goes here
  always #( `cycle  / 2 ) clk = ~clk;
	
   // Instantiation of the gray_Nbits goes here
  GrayCounter_System TOP_LEVEL (.clk ( clk ),
                        .rst ( rst ),
                        .button ( button ),
                        .leds ( leds )
  );
  
endmodule
