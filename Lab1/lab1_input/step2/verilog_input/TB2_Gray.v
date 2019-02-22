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

module TB2;
  parameter N = 5;
  reg clk, rst, clk_en;
  reg [3:0] leds;
  integer EndOfSimulation;  
  integer i;

  wire [N-1:0] gray_out;

  parameter ONE = 1'b1; 
							 
  // Initial statement for signal initialization (reset, clk, EndOfSimulation)
   initial 
     begin

      clk = 0;

      #2;
      rst = 0;

      #48;
      rst = 1;
      $display ("\nStarted simulation for %d bits...\n\n", N);

      for ( i = 0; i < 100; i = i + 1)
       begin
         
         clk_en = 1;

         #10;
         clk_en = 0;
         $display ("%b", gray_out );

         #70;
       end

       
      $finish;
    end
	 
  // Always statement to drive the clock goes here
  always #( `cycle  / 2 ) clk = ~clk;
	
   // Instantiation of the gray_Nbits goes here
  gray_Nbits TOP_LEVEL (.clk ( clk ),
                        .clk_en ( clk_en ),
                        .rst ( rst ),
                        .gray_out ( gray_out )
  );
  
endmodule
