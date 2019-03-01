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
// Company: 
// Engineer: 
// 
// Design Name: 
// Module Name:    GrayCounter_System 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Instantiation of the GrayCounter_Nbits and GrayCounter_Pulse models
//
// We made this excersise drinking raki beacause so...
//
//////////////////////////////////////////////////////////////////////////////////
module GrayCounter_System(clk, rst, leds);
  parameter N = 8;
  parameter distance = 100000000; // How much for 1 Hz when clk period is 10 ns? //
  input clk, rst;
  output [N-1:0] leds;
  wire pulse;
    
  // Instantiation of the GrayCounter_Pulse 
  // Epae
  GrayCounter_Pulse Pulser_INST (
    .clk (clk),
    .rst (rst),
    .pulse (pulse)
  );
  
	 
  // Instantiation of the gray_Nbits 
  // Epae
  gray_Nbits Counter_INST (
    .clk ( clk ),
    .clk_en ( pulse ),
    .rst ( rst ),
    .gray_out ( leds )
  );


endmodule
