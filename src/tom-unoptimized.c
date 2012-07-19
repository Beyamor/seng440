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
#define SET(map,i,j) {map |= BIT(i,j);}
#define UNSET(map,i,j) {map &= ~BIT(i,j);}
#define UPDATE_MAP(map,matrix,i,j) {if (fabs(matrix[i][j]) < 0.000001){ SET(map,i,j);} else {UNSET(map,i,j);}}

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
void mult2x2by1x2( double m1[2][2], double m2[2], double target[2] ) {

	target[0] = m1[0][0] * m2[0] + m1[1][0] * m2[1];
	target[1] = m1[0][1] * m2[0] + m1[1][1] * m2[1];
}

/**
 * 	Multiplies two 2x2 matrices, storing the result in a third
 */
void mult2x2by2x2( double m1[2][2], double m2[2][2], double target[2][2] ) {
	mult2x2by1x2( m1, m2[0], target[0]);
	mult2x2by1x2( m1, m2[1], target[1]);
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

		mult2x2by2x2( leftRotationTranspose, sub, subIntermediary );
		mult2x2by2x2( subIntermediary, rightRotation, subTransformed );

		// stick the updated values back in the matrix
		matrix[lowerIndex][lowerIndex] = subTransformed[0][0];		// a
		matrix[lowerIndex][higherIndex] = subTransformed[0][1];		// b
		matrix[higherIndex][lowerIndex] = subTransformed[1][0];		// c
		matrix[higherIndex][higherIndex] = subTransformed[1][1];	// d

		UPDATE_MAP(diagMap,matrix,lowerIndex,higherIndex);
		UPDATE_MAP(diagMap,matrix,higherIndex,lowerIndex);

		// swell. okay, that's the good stuff. need to propagate to rest of the matrix
		int	unresolvedIndex1;

		// fuck. should do this better
		if (lowerIndex != 0 && higherIndex != 0 ) unresolvedIndex1 = 0;
		else if (lowerIndex != 1 && higherIndex != 1) unresolvedIndex1 = 1;
		else unresolvedIndex1 = 2;
		
		int	unresolvedIndex2 = 6 - maxI - maxJ - unresolvedIndex1;
		
		// starting with the other column entries, rotate right
		double	unresolvedColumns[2][2]	= {{	matrix[unresolvedIndex1][lowerIndex],	matrix[unresolvedIndex1][higherIndex]	},
						   {	matrix[unresolvedIndex2][lowerIndex],	matrix[unresolvedIndex2][higherIndex]	}},

			unresolvedColumnsTransformed[2][2];

		mult2x2by2x2( unresolvedColumns, rightRotation, unresolvedColumnsTransformed );

		matrix[unresolvedIndex1][lowerIndex] = unresolvedColumnsTransformed[0][0];
		matrix[unresolvedIndex1][higherIndex] = unresolvedColumnsTransformed[0][1];
		matrix[unresolvedIndex2][lowerIndex] = unresolvedColumnsTransformed[1][0];
		matrix[unresolvedIndex2][higherIndex] = unresolvedColumnsTransformed[1][1];

		UPDATE_MAP(diagMap,matrix,unresolvedIndex1,lowerIndex);
		UPDATE_MAP(diagMap,matrix,unresolvedIndex1,higherIndex);
		UPDATE_MAP(diagMap,matrix,unresolvedIndex2,lowerIndex);
		UPDATE_MAP(diagMap,matrix,unresolvedIndex2,higherIndex);

		// and rotate the other rows left
		double	unresolvedRows[2][2] = {{	matrix[lowerIndex][unresolvedIndex1],	matrix[lowerIndex][unresolvedIndex2]	},
						{	matrix[higherIndex][unresolvedIndex1],	matrix[higherIndex][unresolvedIndex2]	}},

			unresolvedRowsTransformed[2][2];

		mult2x2by2x2( leftRotationTranspose, unresolvedRows, unresolvedRowsTransformed );

		matrix[lowerIndex][unresolvedIndex1] = unresolvedRowsTransformed[0][0];
		matrix[higherIndex][unresolvedIndex1] = unresolvedRowsTransformed[1][0];
		matrix[lowerIndex][unresolvedIndex2] = unresolvedRowsTransformed[0][1];
		matrix[higherIndex][unresolvedIndex2] = unresolvedRowsTransformed[1][1];
	
		UPDATE_MAP(diagMap,matrix,lowerIndex,unresolvedIndex1);
		UPDATE_MAP(diagMap,matrix,higherIndex,unresolvedIndex1);
		UPDATE_MAP(diagMap,matrix,lowerIndex,unresolvedIndex2);
		UPDATE_MAP(diagMap,matrix,higherIndex,unresolvedIndex2);
	}
}

int main() {

	double m[N][N]	= {{	1,	2,	3,	1	}, // this is the first COLUMN, not row.
			   {	2,	3,	1,	2	},
			   {	3,	1,	2,	3	},
			   {	1,	2,	3,	4	}};

	printMatrix( m );
	printf("\r\n->\r\n\r\n");

	diagonalize( m );
	printMatrix( m );


	return 0;
}
