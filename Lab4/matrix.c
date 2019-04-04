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

	int array[N][N];
	int x_vector[N];
	int y_vector[N];

	int i,j,k;

	// Initialize the array with random values //
	srand(173);
	for ( i = 0; i < N; i++ )
	{
		for ( j = 0; j < N; j++ )
		{
			array[i][j] = rand() % 100;

		}

		x_vector[i] = rand() % 100;
		y_vector[i] = 0;
	}

	// Make X*X vector //
	for ( i = 0; i < N; i++ )
	{

		x_vector[i] = x_vector[i] * x_vector[i];
	}




	for ( i = 0; i < N + 1; i++ )
	{
		for ( j = 0; j < N + 1; j++ )
		{
			y_vector[i] += array[i][j] * x_vector[j];
		}
	}


	return (0);

}
