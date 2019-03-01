//////////////////////////////////////////////////////////////////////////
// University      : University of Thessaly
// Department      : Electrical & Computer Engineering
// Course          : CE435 - Embedded Systems
// ----------------------------------------------------------------------
// -----------[Team's Data]----------------------------------------------
// Full Names       : Panagiotis Anastasiadis | Charalampos Patsianotakis        
// E-Mails          : paanastasiadis@uth.gr   | cpatsianotakis@uth.gr
//////////////////////////////////////////////////////////////////////////

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

module TB7;
  parameter N = 8;
  reg clk, rst, button;
  integer EndOfSimulation;  
  integer i, j;

  wire [N-1:0] leds;

  wire  Display_C, Display_AA, Display_AB, Display_AC, Display_AD, Display_AE, Display_AF, Display_AG;

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
     
      for ( j = 0 ; j < 10; j = j + 1)
       begin

          for ( i = 0; i < 2; i = i + 1)
             #2000000000;
          button = 0;

          for ( i = 0; i < 10; i = i + 1)
             #2000000000;
          button = 1;
       end

       
      $finish;
    end

  always @(posedge TOP_LEVEL.DigitLEDdriver_INST.change_value )
   begin
    $display("=================================\n");
    $display("Binary value: %b\n", leds );
    $display("==Displayer values==\n");
    $display("C: %b\n", Display_C);
    $display("AA: %b\n", Display_AA);
    $display("AB: %b\n", Display_AB);
    $display("AC: %b\n", Display_AC);
    $display("AD: %b\n", Display_AD);
    $display("AE: %b\n", Display_AE);
    $display("AF: %b\n", Display_AF);
    $display("AG: %b\n", Display_AG);
    $display("\n\n");
   end
	 
  // Always statement to drive the clock goes here
  always #( `cycle  / 2 ) clk = ~clk;
	
   // Instantiation of the gray_Nbits goes here
  GrayCounter_System TOP_LEVEL (
    .clk ( clk ),
    .rst ( rst ),
    .button ( button ),
    .leds ( leds ),
    .Display_C  ( Display_C ),
    .Display_AA ( Display_AA ),
    .Display_AB ( Display_AB ),
    .Display_AC ( Display_AC ),
    .Display_AD ( Display_AD ),
    .Display_AE ( Display_AE ),
    .Display_AF ( Display_AF ),
    .Display_AG ( Display_AG )
  );
  
endmodule
