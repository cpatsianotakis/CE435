#include "xparameters.h"
#include "xgpio.h"
#include "gray_counter_ip.h"
//====================================================

int main (void) 
{

   XGpio dip, push;
   int i, psb_check, dip_check, led_val;
	
   xil_printf("-- Start of the Program --\r\n");
  
   XGpio_Initialize(&dip, XPAR_SW_8BIT_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push, XPAR_BTNS_5BIT_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&push, 1, 0xffffffff);
	

   while (1)
   {
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  xil_printf("Push Buttons Status %x\r\n", psb_check);
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  xil_printf("DIP Switch Status %x\r\n", dip_check);

	  if ( psb_check == 1 )
	  	GRAY_COUNTER_IP_mWriteReg(XPAR_GRAY_COUNTER_IP_S_AXI_BASEADDR, 0, 2);
	  if ( psb_check == 2 )
	  	GRAY_COUNTER_IP_mWriteReg(XPAR_GRAY_COUNTER_IP_S_AXI_BASEADDR, 0, 0);
	  if ( psb_check == 3 )
	  	GRAY_COUNTER_IP_mWriteReg(XPAR_GRAY_COUNTER_IP_S_AXI_BASEADDR, 0, 1);
	  
	  // output dip switches value on LED_ip device
	  led_val =  GRAY_COUNTER_IP_mReadReg(XPAR_GRAY_COUNTER_IP_S_AXI_BASEADDR, 0);
	  xil_printf("LED Status %x\r\n", led_val);

	  for (i=0; i<9999999; i++);
   }
}
