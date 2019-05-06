#include "xparameters.h"
#include "accelerator.h"
#include "stdlib.h"
#include "xil_io.h"

int *accelerator_driver ( int size, int *x_vector )
{
	const int MAX_SIZE = 256;
	const int ENABLER = 0xFFFFFFFD;
	const int TRIGGER = 0xFFFFFFFF;

	int *y_vector;
	int i, j = 0;

	if (  size > MAX_SIZE )
		return NULL;

	y_vector = malloc ( sizeof(int) * size );
	
	xil_printf("PAEI NA PAREI TA KWLODEDOMENA\r\n");
	 ACCELERATOR_mWriteReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 0, ENABLER);
	 ACCELERATOR_mWriteReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 0, size);
	 xil_printf("OXI AKOMA, MONO MEGE8OS PHRE H MALAKIA\r\n");
	for ( i = 0; i < size; i++ )
	{
		 ACCELERATOR_mWriteReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 0, x_vector[i]);
	}
	 ACCELERATOR_mWriteReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 0, TRIGGER);
	 xil_printf("META APO MIA WRA GAMW TO SPITI TOU TA PHRE\r\n");

	while(1)
	{
		if (  ACCELERATOR_mReadReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 1) != 0)
		{
			xil_printf("IN READ: Got here in for %d time!\r\n", j++);
			for ( i = 0; i < size; i ++)
			{
				y_vector[i] =  ACCELERATOR_mReadReg(XPAR_ACCELERATOR_0_S_AXI_BASEADDR, 0);
			}

			break;
		}
	}

	return y_vector;
}

int main (void) {

    int *x_vector, *y_vector;
    int size = 64;
    int i = 0;

    x_vector = malloc ( sizeof(int) * size );

    for ( i = 0; i < size; i++)
    	x_vector[i] = i;

    xil_printf("MPHKE!\r\n");
    y_vector = accelerator_driver ( size, x_vector );

    for ( i = 0; i < size; i++)
        	xil_printf("GAMW TO SPITI SOU GIA ERGASIA y = %d\r\n", y_vector[i] );

    return 0;
}


