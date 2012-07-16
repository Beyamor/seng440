#include <stdlib.h>
#include <math.h>
#include <stdio.h>

#define N 2
typedef char bool;
#define true 1
#define false 0

/**
 * 	Takes a square matrix
 * 	The function prints the contents of the matrix
 */

void printMatrix( double matrix[N][N] ) {
	int i = 0,
	    j = 0;
	
	for ( i = 0; i < N; ++i ) {
		for ( j = 0; j < N; ++j ) {
			printf( "%f%s", matrix[i][j], (j<N-1)? ", ":"\n" );
		}
	}
}

void printMatrix2( double matrix[2][2] ) {

	int i = 0,
	    j = 0;
	
	for ( i = 0; i < 2; ++i ) {

		for ( j = 0; j < 2; ++j ) {

			printf( "%f%s", matrix[i][j], (j<2-1)? ", ":"\n" );
		}
	}

	printf("\n");
}

/**
 * 	Multiplies two 2x2 matrices, storing the result in a third
 */
void multMatrix( double m1[2][2], double m2[2][2], double target[2][2] ) {

	int i, j, k;

	for ( i = 0; i < 2; ++i ) {
		for ( j = 0; j < 2; ++j ) {

			target[i][j] = 0;
			for ( k = 0; k < 2; ++k ) {
				target[i][j] += m1[i][k] * m2[k][j];
			}
		}
	}
}

/**
 * 	Takes a square matrix and diagonalizes it
 */
void diagonalize( double S[N][N] ) {
	
	// declare some chincey variables
	int i = 0,
	    j = 0;

	bool diagonalized = false,
	     printedOut = false;

	int count = 0;

	for (;;) {
		count++;
		// check to see whether we're diagonalized
		diagonalized = true;

		for ( i = 0; i < N; ++i ) {
			for ( j = 0; j < N; ++j ) {

				// diagonalized if all off-diagonals are zero
				if ( i != j )
				{
					diagonalized &= ( fabs(S[i][j]) < 0.01 );
				}
			}
		}

		if (diagonalized)
		{
			printf("\n\n%d \n", count);
			break;
		}

		// find the indicies of the largest off-diagonal
		int maxI = 0, maxJ = 1; // gotta start somewhere

		for ( i = 0; i < N; ++i ) {
			for ( j = 0; j < N; ++j ) {

				if ( i != j && fabs(S[i][j]) > fabs(S[maxI][maxJ]) ) {

					maxI = i < j ? i : j;
					maxJ = i < j ? j : i;
				}
			}
		}

		
		// great. awesome. let's use those values.
		double	ma = S[maxI][maxI],
			mc = S[maxI][maxJ],//b
			mb = S[maxJ][maxI],//c
			md = S[maxJ][maxJ];

		// calculate rotation angle
		double	thetaSum = atan2( mc+mb, md-ma ),
			thetaDif = atan2( mc-mb, md+ma ),
			thetaL = (thetaSum - thetaDif) * 0.5,
			thetaR = (thetaSum + thetaDif) * 0.5;

		// rotate the thing
		double rotLT[2][2] = {{cos(thetaL), -sin(thetaL)}, {sin(thetaL), cos(thetaL)}},
		      rotR[2][2] = {{cos(thetaR), sin(thetaR)}, {-sin(thetaR), cos(thetaR)}},
		      s[2][2] = {{ma,mb},{mc,md}};

		double sPrime[2][2],
		      sDoublePrime[2][2];

		multMatrix( rotLT, s, sPrime );
		multMatrix( sPrime, rotR, sDoublePrime );

		// stick the updated values back in the matrix
		S[maxI][maxI] = sDoublePrime[0][0];
		S[maxI][maxJ] = sDoublePrime[0][1];
		S[maxJ][maxI] = sDoublePrime[1][0];
		S[maxJ][maxJ] = sDoublePrime[1][1];
	}
}

int main() {

	double m[N][N]	= {{	1,	2	},
			   {	3,	4	}};


	printMatrix( m );
	printf("\r\n->\r\n\r\n");


	diagonalize( m );
	printMatrix( m );

	/*
	 *	-0.37228	0
	 *	0		5.37228
	 */

	return 0;
}
