/*	InputAntiBouncer module
*
*	University of Thessaly 
*	Electrical and Computer Engineering Department
*	CE430 Course
*
*	Patsianotakis Charalampos cpatsianotakis@uth.gr
*
*	Module to check for metastabilities and bouncing from external environment.
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

  always @(posedge change_value ) saved_value <= value;

  Digit_chooser Digit_chooserINSTANCE (
    .reset ( reset ),
    .clk ( clk ),
    .digit ( digit ),
    .change_value ( change_value )
  );

  LEDdecoder #(L) Lower_LEDdecoderINSTANCE (
  	.char( saved_value[L-1:0] ), 
  	.LED( L_LEDdecoded )
  );

  LEDdecoder #(U) Uper_LEDdecoderINSTANCE (
    .char( saved_value[N-1:4] ), 
    .LED( U_LEDdecoded )
  );

  assign AA = ( digit )? U_LEDdecoded[6] : L_LEDdecoded[6];
  assign AB = ( digit )? U_LEDdecoded[5] : L_LEDdecoded[5];
  assign AC = ( digit )? U_LEDdecoded[4] : L_LEDdecoded[4];
  assign AD = ( digit )? U_LEDdecoded[3] : L_LEDdecoded[3];
  assign AE = ( digit )? U_LEDdecoded[2] : L_LEDdecoded[2];
  assign AF = ( digit )? U_LEDdecoded[1] : L_LEDdecoded[1];
  assign AG = ( digit )? U_LEDdecoded[0] : L_LEDdecoded[0];
  assign  C = digit ;


endmodule
