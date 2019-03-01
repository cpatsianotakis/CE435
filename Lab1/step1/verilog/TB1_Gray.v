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

module TB1();
  
  reg clk = 0; 
  reg rst, clk_en;
  wire [3:0] leds;
  integer EndOfSimulation;  
  integer i;

  parameter ONE = 1'b1; 
							 
  // Initial statement for signal initialization (reset, clk, EndOfSimulation)
   initial 
     begin
      
      #2;
      rst = 1;

      #28;
      rst = 0;

      for ( i = 0; i < 100; i = i + 1)
       begin
         
         clk_en = 1;

         #10 clk_en = 0;

         //#90;
       end

       
	    $finish;
    end
	 
  // Always statement to drive the clock goes here
  always #2 clk = ~clk;
	
   // Instantiation of the gray_4bits 
  gray_4bits DUT(.clk(clk), .clk_en(ONE), .rst(rst), .gray_out(leds));   
  
endmodule
