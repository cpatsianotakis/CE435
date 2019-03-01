//////////////////////////////////////////////////////////////////////////
// University      : University of Thessaly
// Department      : Electrical & Computer Engineering
// Course          : CE435 - Embedded Systems
// ----------------------------------------------------------------------
// -----------[Team's Data]----------------------------------------------
// Full Names       : Panagiotis Anastasiadis | Charalampos Patsianotakis        
// E-Mails          : paanastasiadis@uth.gr   | cpatsianotakis@uth.gr
//////////////////////////////////////////////////////////////////////////

/*  GrayCounter_System module
*
* Top level module of RTL of the project. Counts a N bits value in Gray Code
* and displays it in a stream of leds and also the hex value in a 7-segment display.
*
* In order to go to the next value, a button must be pressed. While this button is
* pressed, the speed of the exchanges, increases.
*
*/

module GrayCounter_System(clk, rst, button, leds, Display_C, Display_AA, Display_AB, Display_AC, Display_AD, Display_AE, Display_AF, Display_AG);
  parameter N = 8;
  input clk, rst, button;
  output [N-1:0] leds;
  output Display_C, Display_AA, Display_AB, Display_AC, Display_AD, Display_AE, Display_AF, Display_AG;
  wire pulse, button_state, button_posedge ;
    
  // Instantiation of the GrayCounter_Pulse 
  // Here
  debouncer_state debouncer_state_INST (
    .reset( rst ),
    .clk( clk ),
    .noisy( button ),
    .clean( button_state )
  );
  
  signal_posedge signal_posedge_INST (
    .reset ( rst ),
    .clk ( clk ),
    .input_status ( button_state ),
    .clean ( button_posedge )
  );
  
  

  GrayCounter_Pulse pulser_INST (
    .clk ( clk ),
    .rst ( rst ),
    .button_state ( button_state ),
    .button_posedge ( button_posedge ),
    .pulse ( pulse )
  );

  DigitLEDdriver #(8,4,4) DigitLEDdriver_INST (
    .reset ( rst ),
    .clk ( clk ),
    .value ( leds ),
    .C  (Display_C),
    .AA (Display_AA),
    .AB (Display_AB),
    .AC (Display_AC),
    .AD (Display_AD),
    .AE (Display_AE),
    .AF (Display_AF),
    .AG (Display_AG)
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
