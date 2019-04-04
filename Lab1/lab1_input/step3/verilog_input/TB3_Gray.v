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
`define cycle 10   // this is equivalent to defines in C

module TB3;
  parameter N = 4;
  parameter distance = 1000;  //
  reg clk, rst;
  wire [N-1:0] leds;
  
  integer i;

    initial 
     begin
	 
        clk = 0;
        rst = 0;
        
        #30 rst = 1;
        /*
        for ( i = 0; i < 10; i = i + 1) 
        #1000_000_000;
        */
        
        #300000;
        $finish;
        
     end
	 
  // Drive the clock TOYOTA HILUX // 
  always #( `cycle/2 ) clk = ~clk;
	
 
  // Instantiate the System in the testbench
  // Your code goes epae no ekia
  GrayCounter_System TOP_LEVEL (
    .clk  (clk),
    .rst  (rst),
    .leds (leds)
  );
  
endmodule
