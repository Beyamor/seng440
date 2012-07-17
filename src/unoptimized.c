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

#define BIT(x,y) (0x01 << (N*x) + y)

const char* byte_to_binary( int x )
{
    static char b[15] = {0};
       int z; int y =0;
    for (z=32768,y=0; z>0; z>>=1,y++)
    {
        b[y] = ( ((x & z) == z) ? 49 : 48);
    }

    return b;
}


/**
 * 	Takes a square matrix
 * 	The function prints the contents of the matrix
 */
void printMatrix( double matrix[N][N] ) {

	int i = 0,
	    j = 0;
	
	for ( i = 0; i < N; ++i ) {
		for ( j = 0; j < N; ++j ) {
			//(j,i) because column-first
			printf( "%s%f%s", matrix[j][i] < 0?"":" ", matrix[j][i], (j<N-1)? ",\t":"\n" );
		}
	}
}

/**
 *	Multiplies a 2x2 matrix with a 1x2 matrix, storing output in a 1x2 matrix
 */
void multMatrix( double m1[2][2], double m2[2], double target[2] ) {

	target[0] = m1[0][0] * m2[0] + m1[1][0] * m2[1];
	target[1] = m1[0][1] * m2[0] + m1[1][1] * m2[1];
}

/**
 * 	Multiplies two 2x2 matrices, storing the result in a third
 */
void multMatrix2( double m1[2][2], double m2[2][2], double target[2][2] ) {
	multMatrix( m1, m2[0], target[0]);
	multMatrix( m1, m2[1], target[1]);


/*
	int i, j, k;

	for ( i = 0; i < 2; ++i ) {
		for ( j = 0; j < 2; ++j ) {

			target[i][j] = 0;
			for ( k = 0; k < 2; ++k ) {
				target[i][j] += m1[i][k] * m2[k][j];
			}
		}
	}*/
}


/**
 * 	Takes a square matrix and diagonalizes it
 */
void diagonalize( double matrix[N][N] ) {
	
	// Declare some chincey variables
	int i = 0,
	    j = 0;

	bool diagonalized = false;

	unsigned int diagMap = 0xFFFF8421;//all diagonal elements initialize to 1, first four bytes also (bitwise negation casts to int)	

	int c = 0;

	for (;;) {
		// Check to see whether we're diagonalized
		if(!~diagMap)
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
		double 	leftRotationTranspose[2][2] =	{{	cos(thetaL),	sin(thetaL)	},
							 {	-sin(thetaL),	cos(thetaL)	}}, // Left Rotation Transpose

		      	rightRotation[2][2] =		{{	cos(thetaR),	-sin(thetaR)	},
							 {	sin(thetaR),	cos(thetaR)	}},  // Right Rotation

		      	sub[2][2] =			{{	a,		c		},
							 {	b,		d		}}; // Subset of the full S matrix

		double	subIntermediary[2][2],
		      	subTransformed[2][2];

		multMatrix2( leftRotationTranspose, sub, subIntermediary );
		multMatrix2( subIntermediary, rightRotation, subTransformed );

		// stick the updated values back in the matrix
		matrix[lowerIndex][lowerIndex] = subTransformed[0][0];		// a
		matrix[lowerIndex][higherIndex] = subTransformed[0][1];		// b
		matrix[higherIndex][lowerIndex] = subTransformed[1][0];		// c
		matrix[higherIndex][higherIndex] = subTransformed[1][1];	// d
		
		if(fabs(matrix[lowerIndex][higherIndex]) < 0.001)
		{
			diagMap |= BIT(lowerIndex,higherIndex);
		}
		else
		{
			diagMap &= ~BIT(lowerIndex, higherIndex);
		}		

		if(fabs(matrix[higherIndex][lowerIndex]) < 0.001)
		{
			diagMap |= BIT(higherIndex,lowerIndex);
		}
		else
		{
			diagMap &= ~BIT(higherIndex, lowerIndex);
		}


	}
}

int main() {

	double m[N][N]	= {{	1,	2,	3,	2	}, // this is the first COLUMN, not row.
			   {	2,	3,	1,	2	},
			   {	3,	1,	2,	3	},
			   {	1,	2,	3,	4	}};

	printMatrix( m );
	printf("\r\n->\r\n\r\n");

	diagonalize( m );
	printMatrix( m );


	return 0;
}
