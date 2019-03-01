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
// Create Date:    18:50:26 02/04/2010 
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
//////////////////////////////////////////////////////////////////////////////////
module GrayCounter_System(clk, rst, button, leds);
  parameter N = 8;
  input clk, rst, button;
  output [N-1:0] leds;
  wire pulse, clean_button;
    
  // Instantiation of the GrayCounter_Pulse 
  // Here
	debounce debounce_INST (
    .reset( rst ),
    .clk( clk ),
    .noisy( button ),
    .clean( clean_button )
  );

  GrayCounter_Pulse pulser_INST (
    .clk ( clk ),
    .rst ( rst ),
    .button ( clean_button ),
    .pulse ( pulse )
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
