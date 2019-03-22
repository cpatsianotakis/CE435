#include <stdio.h>
#include <stdlib.h>
#include "coremark.h"
#include "timer_util.h"
#include "xscutimer.h"
#include "xil_printf.h"

#define N 256

//#define xil_printf printf

int main()
{
	int whole, thousands;

	int array1[N][N];
	int array2[N][N];
	int res[N][N];

	int i,j,k;

	size_t time_result, time_result2, time_result3, time_result4;

	srand(173);

	//xil_printf("Array 1:\n\r");

	for ( i = 0; i < N; i++ )
	{

		for ( j = 0; j < N; j++ )
		{
			array1[i][j] = rand() % 100;
			array2[i][j] = rand() % 100;

			//xil_printf(" %6d ", array1[i][j]);

		}

		//xil_printf("\n\r");

	}

	//xil_printf("Array 2:\n\r");

	start_time();


	for ( i = 0; i < N + 1; i++ )
	{
		for ( j = 0; j < N + 1; j++ )
		{
			res[i][j] = 0; 

			//xil_printf(" %6d ", array2[i][j]);

			for ( k = 0; k < N; k++)
			{
				res[i][j] += array1[i][k] * array2 [k][j];
			}
		}

		//xil_printf("\n\r");

	}

	stop_time();
	time_result3 = get_time();

	whole = time_in_secs(time_result3);
	thousands = (time_in_secs(time_result3) - whole) * 1000;

	xil_printf("\n\n\r (257) Total time (horizontal) was: %lld\n\n\r", time_result3);
	xil_printf("\r (257) Total time in secs: %d.%03d secs\n\n\r", whole, thousands);



	start_time();

	for ( j = 0; j < N + 1; j++ )
	{
		for ( i = 0; i < N + 1; i++ )
		{
			res[i][j] = 0; 

			for ( k = 0; k < N; k++)
			{
				res[i][j] += array1[i][k] * array2 [k][j];
			}
		}

	}

	stop_time();
	time_result4 = get_time();


	whole = time_in_secs(time_result4);
	thousands = (time_in_secs(time_result4) - whole) * 1000;

	xil_printf("\n\n\r(257) Total time (vertical) was: %lld\n\n\r", time_result4);
	xil_printf("\r(257) time in secs: %d.%03d secs\n\n\r", whole, thousands);



	start_time();


	for ( i = 0; i < N; i++ )
	{
		for ( j = 0; j < N; j++ )
		{
			res[i][j] = 0; 

			//xil_printf(" %6d ", array2[i][j]);

			for ( k = 0; k < N; k++)
			{
				res[i][j] += array1[i][k] * array2 [k][j];
			}
		}

		//xil_printf("\n\r");

	}

	stop_time();
	time_result = get_time();

	whole = time_in_secs(time_result);
	thousands = (time_in_secs(time_result) - whole) * 1000;

	xil_printf("\n\n\rTotal time (horizontal) was: %lld\n\n\r", time_result);
	xil_printf("\rTotal time in secs: %d.%03d secs\n\n\r", whole, thousands);


	start_time();

	//xil_printf("Array 2:\n\r");

	for ( j = 0; j < N; j++ )
	{
		for ( i = 0; i < N; i++ )
		{
			res[i][j] = 0; 

		//	xil_printf(" %6d ", array2[i][j]);

			for ( k = 0; k < N; k++)
			{
				res[i][j] += array1[i][k] * array2 [k][j];
			}
		}

		//xil_printf("\n\r");

	}

	stop_time();
	time_result2 = get_time();

	//xil_printf("Result:\n\r");

	// for ( i = 0; i < N; i++ )
	// {

	// 	for ( j = 0; j < N; j++ )
	// 	{
	// 		xil_printf(" %6d ", res[i][j]);
	// 	}

	// 	xil_printf("\n\r");
	// }


	whole = time_in_secs(time_result2);
	thousands = (time_in_secs(time_result2) - whole) * 1000;

	xil_printf("\n\n\rTotal time (vertical) was: %lld\n\n\r", time_result2);
	xil_printf("\rtime in secs: %d.%03d secs\n\n\r", whole, thousands);



	return (0);

}
