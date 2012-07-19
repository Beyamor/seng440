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
}


void update(unsigned int * diagMap, double (*matrix)[4], int x, int y)
{
	if(fabs(matrix[x][y]) < 0.000001)
		{
			*diagMap |= BIT(x,y);
		}
		else
		{
			*diagMap &= ~BIT(x,y);
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
		int	L = MIN(maxI,maxJ),
			H = MAX(maxI,maxJ);

		//also get the values which are valid indices but are not L or H
		int 	Lprime = -1, 
			Hprime = -1;

		//iterate through 0-3 setting the lower one which is not L or H to L' and the higher to H'
		int i;
		for(i = 0; i < 4; i++)
		{
			if(i != L && i != H)
			{
				if(Lprime == -1)
				{
					Lprime = i;
					continue;
				}
				else
				{
					Hprime = i;
					break;
				}
			}
		}



		double	a = matrix[L][L],
			c = matrix[L][H],
			b = matrix[H][L],
			d = matrix[H][H];

		
			
		// calculate rotation angle
		double	thetaSum = atan2( c+b, d-a ), // Equals thetaL + thetaR
				thetaDif = atan2( c-b, d+a ), // Equals thetaR - thetaL
				thetaL = (thetaSum - thetaDif) * 0.5,
				thetaR = (thetaSum + thetaDif) * 0.5;


		double	subMainIntermediary[2][2],
		      	subMainTransformed[2][2],
			subHorTransformed[2][2],
			subVertTransformed[2][2];

		// rotate the thing
		double 	leftRotationTranspose[2][2] =	{{	cos(thetaL),	sin(thetaL)	},
							 {	-sin(thetaL),	cos(thetaL)	}}, // Left Rotation Transpose

		      	rightRotation[2][2] =		{{	cos(thetaR),	-sin(thetaR)	},
							 {	sin(thetaR),	cos(thetaR)	}},  // Right Rotation

		      	subMain[2][2] =			{{	a,		c		},
							 {	b,		d		}}, // Subset of the full S matrix

			subHorMain[2][2] = 		{{	matrix[Lprime][L],	matrix[Lprime][H]	},
							 {	matrix[Hprime][L],	matrix[Hprime][H]	}},

			subVertMain[2][2] =		{{	matrix[L][Lprime],	matrix[L][Hprime]	},
							 {	matrix[H][Lprime],	matrix[H][Hprime]	}};
			

		//multiply main twice
		multMatrix2( leftRotationTranspose, subMain, subMainIntermediary );
		multMatrix2( subMainIntermediary, rightRotation, subMainTransformed );

		//multiply horizontal by left
		multMatrix2( leftRotationTranspose, subHorMain, subHorTransformed );

		//multiply vertical by right
		multMatrix2( subVertMain, rightRotation, subVertTransformed );

		// stick the updated values back in the matrix
		//main (the original set)
		matrix[L][L] = subMainTransformed[0][0];		// a
		matrix[L][H] = subMainTransformed[0][1];		// c
		matrix[H][L] = subMainTransformed[1][0];		// b
		matrix[H][H] = subMainTransformed[1][1];		// d

		//horizontal values
		matrix[Lprime][L] = subHorTransformed[0][0];
		matrix[Lprime][H] = subHorTransformed[0][1];
		matrix[Hprime][L] = subHorTransformed[1][0];
		matrix[Hprime][H] = subHorTransformed[1][1];
		
		//vertical values
		matrix[L][Lprime] = subVertTransformed[0][0];
		matrix[L][Hprime] = subVertTransformed[0][1];
		matrix[H][Lprime] = subVertTransformed[1][0];
		matrix[H][Hprime] = subVertTransformed[1][1];
		
		//update everything
		update(&diagMap, matrix, L,H);
		update(&diagMap, matrix, H,L);
		update(&diagMap, matrix, Lprime,L);
		update(&diagMap, matrix, Lprime,H);
		update(&diagMap, matrix, Hprime,L);
		update(&diagMap, matrix, Hprime,H);
		update(&diagMap, matrix, L,Lprime);
		update(&diagMap, matrix, L,Hprime);
		update(&diagMap, matrix, H,Lprime);
		update(&diagMap, matrix, H,Hprime);

		printMatrix(matrix);
		printf("\n%x\n\n", diagMap );


	}
}

int main() {

/*	double m[N][N]	= {{	1,	2,	3,	1	}, // this is the first COLUMN, not row.
			   {	2,	3,	1,	2	},
			   {	3,	1,	2,	3	},
			   {	1,	2,	3,	4	}};
*/

	double m[N][N] = {{ 1, 5, 9, 13},{2,6,10,14},{3,7,11,15},{4,8,12,16}};

	printMatrix( m );
	printf("\r\n->\r\n\r\n");

	diagonalize( m );
	printMatrix( m );


	return 0;
}
