/*  GrayCounter_System module
*
* Top level module of RTL of the project. Counts a N bits value in Gray Code
* and displays it in a stream of leds and also the hex value in a 7-segment display.
*
* In order to go to the next value, a button must be pressed. While this button is
* pressed, the speed of the exchanges, increases.
*
*/

module GrayCounter_System(clk, button1, button2, leds);
  parameter N = 8;
  input clk, button1, button2;
  output [N-1:0] leds;
  wire pulse, button_state, button_posedge ;
  wire rst, button;
    
  // Instantiation of the GrayCounter_Pulse 
  // Here
  debouncer_state debouncer_state_INST (
    .reset( rst ),
    .clk( clk ),
    .noisy( button ),
    .clean( button_state )
  );

  translator translator_INST(
    .in_button1 (button1),
    .in_button2 (button2),
    .sys_button (button),
    .sys_reset  (reset)
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


  // Instantiation of the gray_Nbits 
  // Epae
  gray_Nbits Counter_INST (
    .clk ( clk ),
    .clk_en ( pulse ),
    .rst ( rst ),
    .gray_out ( leds )
  );


endmodule
