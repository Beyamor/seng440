#include <stdlib.h>
#include <math.h>
#include <stdio.h>

/*
 * 	Project specifications
 */
#define N 4

/**
 * 	Boolean logic
 */
typedef char bool;
#define true 1
#define false 0

/**
 * 	Helper math macros
 */
#define MIN(x,y) (x<y?x:y)
#define MAX(x,y) (x>y?x:y)

/**
 * 	Takes a square matrix
 * 	The function prints the contents of the matrix
 */
void printMatrix( double matrix[N][N] ) {

	int i = 0,
	    j = 0;
	
	for ( i = 0; i < N; ++i ) {
		for ( j = 0; j < N; ++j ) {
			printf( "%s%f%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );
		}
	}
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
void diagonalize( double matrix[N][N] ) {
	
	// Declare some chincey variables
	int i = 0,
	    j = 0;

	bool diagonalized = false;

	for (;;) {
		// Check to see whether we're diagonalized
		diagonalized = true;

		for ( i = 0; i < N; ++i ) {
			for ( j = 0; j < N; ++j ) {
				
				// Diagonalized if all off-diagonals are zero
				if ( i != j )
					diagonalized &= ( fabs(matrix[i][j]) < 0.001 ); // comparing floats by threshold
			}
		}

		if ( diagonalized )
			break;

		// find the indicies of the largest off-diagonal
		// TODO: better scanning method
		int maxI = 1, maxJ = 0; // gotta start somewhere

		for ( i = 0; i < N; ++i ) {
			for ( j = 0; j < N; ++j ) {

				if ( i != j && fabs(matrix[i][j]) > fabs(matrix[maxI][maxJ]) ) {

					maxI = i;
					maxJ = j;
				}
			}
		}

		// great. awesome. let's use those values.
		int	lowerIndex = MIN(maxI,maxJ),
			higherIndex = MAX(maxI,maxJ);

		double	a = matrix[lowerIndex][lowerIndex],
			b = matrix[lowerIndex][higherIndex],
			c = matrix[higherIndex][lowerIndex],
			d = matrix[higherIndex][higherIndex];
			
		// calculate rotation angle
		double	thetaSum = atan2( c+b, d-a ), // Equals thetaL + thetaR
				thetaDif = atan2( c-b, d+a ), // Equals thetaR - thetaL
				thetaL = (thetaSum - thetaDif) * 0.5,
				thetaR = (thetaSum + thetaDif) * 0.5;

		// rotate the thing
		double 	leftRotationTranspose[2][2] =	{{	cos(thetaL),	-sin(thetaL)	},
							 {	sin(thetaL),	cos(thetaL)	}}, // Left Rotation Transpose

		      	rightRotation[2][2] =		{{	cos(thetaR),	sin(thetaR)	},
							 {	-sin(thetaR),	cos(thetaR)	}},  // Right Rotation

		      	sub[2][2] =			{{	a,		b		},
							 {	c,		d		}}; // Subset of the full S matrix

		double	subIntermediary[2][2],
		      	subTransformed[2][2];

		multMatrix( leftRotationTranspose, sub, subIntermediary );
		multMatrix( subIntermediary, rightRotation, subTransformed );

		// stick the updated values back in the matrix
		matrix[lowerIndex][lowerIndex] = subTransformed[0][0];		// a
		matrix[lowerIndex][higherIndex] = subTransformed[0][1];		// b
		matrix[higherIndex][lowerIndex] = subTransformed[1][0];		// c
		matrix[higherIndex][higherIndex] = subTransformed[1][1];	// d
	}
}

int main() {

	double m[N][N]	= {{	1,	2,	3,	1	},
			   {	2,	3,	1,	2	},
			   {	3,	1,	2,	3	},
			   {	1,	2,	3,	4	}};

	printMatrix( m );
	printf("\r\n->\r\n\r\n");

	diagonalize( m );
	printMatrix( m );

	return 0;
}
