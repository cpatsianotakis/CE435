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
  wire pulse;
    
  // Instantiation of the GrayCounter_Pulse 
  // Here
	debounce debounce_INST ( .reset( rst ), .clk( clk ), .noisy( button ), .clean( pulse ) );


  // Instantiation of the gray_Nbits 
  // Epae
  gray_Nbits Counter_INST (
    .clk ( clk ),
    .clk_en ( pulse ),
    .rst ( rst ),
    .gray_out ( leds )
  );


endmodule
