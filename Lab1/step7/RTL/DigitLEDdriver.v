/*	DigitLEDdriver module
*
*	  This module is the top level module, of the Pmod SSD 7-Segment Driver, in order
*   to display the hex-value of a binary input value. 
*/


module DigitLEDdriver(reset, clk, value,  C, AA, AB, AC, AD, AE, AF, AG);

  parameter N = 8;
  parameter U = 4;
  parameter L = 4;

  input reset;
  input clk;
  input [N-1:0] value;
  output C;
  output AA, AB, AC, AD, AE, AF, AG;

  wire change_value;
  wire digit;

  reg [N-1:0] saved_value;
  wire [6:0] U_LEDdecoded;
  wire [6:0] L_LEDdecoded;

  // Hold the prev value of input, until the 10 ms passed //
  always @(posedge change_value ) saved_value <= value;

  Digit_chooser Digit_chooserINSTANCE (
    .reset ( reset ),
    .clk ( clk ),
    .digit ( digit ),
    .change_value ( change_value )
  );

  // Decoder for right digit of displayer //
  LEDdecoder #(L) Lower_LEDdecoderINSTANCE (
  	.char( saved_value[L-1:0] ), 
  	.LED( L_LEDdecoded )
  );

  // Decoder for left digit of displayer //
  LEDdecoder #(U) Uper_LEDdecoderINSTANCE (
    .char( saved_value[N-1:4] ), 
    .LED( U_LEDdecoded )
  );


  // Get correct output of decoder, related with the choosed digit //
  assign AA = ( digit )? ~U_LEDdecoded[6] : ~L_LEDdecoded[6];
  assign AB = ( digit )? ~U_LEDdecoded[5] : ~L_LEDdecoded[5];
  assign AC = ( digit )? ~U_LEDdecoded[4] : ~L_LEDdecoded[4];
  assign AD = ( digit )? ~U_LEDdecoded[3] : ~L_LEDdecoded[3];
  assign AE = ( digit )? ~U_LEDdecoded[2] : ~L_LEDdecoded[2];
  assign AF = ( digit )? ~U_LEDdecoded[1] : ~L_LEDdecoded[1];
  assign AG = ( digit )? ~U_LEDdecoded[0] : ~L_LEDdecoded[0];
  assign  C = digit ;


endmodule
