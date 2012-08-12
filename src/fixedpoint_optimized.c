#include <stdlib.h>
#include <math.h>
#include <stdio.h>

/*
 * 	Project specifications
 */
#define N 4

#define SCALE 		 4096
#define SCALE_OVER_2 	 2048
#define SCALE_BITS	 12
/*	2^12 = (4096 * 16)
 *	This value is multiplied with the input(max 2^15) in a 32-bit int, but 
 *	there was little accuracy difference between 2^12 and 2^14 for the scale
 *	(about +/- 0.2%) 
 */

#define PI 		 12868 
#define PI_OVER_2 	 6434

#define POINT 		 3317 

#define COS_OFFSET 	 6257 
#define SIN_OFFSET 	-2438
#define TAN_OFFSET	 582

#define SIN_OUT_MULT	 1056
#define SIN_IN_MULT	 3983

#define TAN_OUT_MULT	 2638
#define TAN_IN_MULT	 3801

#define COS_OUT_MULT	 3983
#define COS_IN_MULT	 1056


/**
 * 	Takes a square matrix
 * 	The function prints the contents of the matrix
 */
void printMatrix( short matrix[N][N] ) {

	short i = 0,
	      j = 0;
	
	for ( i = 0; i < N; ++i ) {
		for ( j = 0; j < N; ++j ) {
			printf( "%s%d%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );
		}
	}
}


short cos_fixed(short angle){
	short result = 0;

	if(angle < -POINT)
	{
		result = COS_OFFSET + ((COS_OUT_MULT * angle) >> SCALE_BITS);  
	}
	else if (angle < 0) {

		result = SCALE + ((COS_IN_MULT * angle) >> SCALE_BITS);
	}

	else if (angle < POINT) {

		result = SCALE -((COS_IN_MULT * angle) >> SCALE_BITS);
	}

	else if (angle < PI) {

		result = COS_OFFSET - ((COS_OUT_MULT * angle) >> SCALE_BITS); 
	}
	return result;
}


short sin_fixed(short angle) {
	int result = 0;
	if (angle < -POINT) {

		result = SIN_OFFSET + ((SIN_OUT_MULT * angle) >> SCALE_BITS);
	}
	else if (angle < POINT) {

		result = (SIN_IN_MULT * angle) >> SCALE_BITS;
	}

	else if (angle < PI_OVER_2) {

		result = -SIN_OFFSET + ((SIN_OUT_MULT * angle) >> SCALE_BITS);
	}

	return (short)result;
}


short atan_fixed(short y, short x)
{
	if(x == 0 && y == 0)
	{
		printf("This should never happen\n");
		return 0;
	}

	char isCot = y >= 0 ? x >= 0 ? y > x : y > -x : x >= 0 ? -y > x : -y > -x;	

	short result = 0;

	//store angle in 32 bit to avoid truncation errors, shift up another scale factor (bitshift it later)
	int angle = isCot ? (x << SCALE_BITS) / y : (y << SCALE_BITS) / x;
	
	if(angle > SCALE_OVER_2 && angle <= (SCALE))
	{
		result = ((TAN_OUT_MULT * angle) >> SCALE_BITS) + TAN_OFFSET;
	}
	else if(angle <= SCALE_OVER_2 && angle >= -SCALE_OVER_2) 
	{
		result = (TAN_IN_MULT * angle) >> SCALE_BITS;
	}
	else if(angle < -SCALE_OVER_2 && angle >= -SCALE)
	{
		result = ((TAN_OUT_MULT * angle) >> SCALE_BITS) - TAN_OFFSET;
	}


	if(isCot && angle < 0)
	{
		result += PI;
	}

	if(isCot)
	{	
		result = (PI_OVER_2) - result;
	}
	return result;
}



/**
 *	Multiplies a 4x4 matrix with a 4x4 matrix, storing output in a 4x4 matrix
 */
void multMatrix4( short m1[N][N], short m2[N][N], short target[N][N] ) {
	short i,j,k;

	int temp32 = 0;
	for( i = 0; i < N; i++)
	{
		for(j = 0; j < N; j++)
		{
			target[i][j] = 0;
		}	
	}

	for( i = 0; i < N; i++)
	{
		for( j = 0; j < N; j++)
		{
			for(k = 0; k < N; k++)
			{
				temp32 = m1[i][k] * m2[k][j];
				target[i][j] += (short)(temp32 >> SCALE_BITS); //bitshift 12 is the same as division by scale
			}
		}
	}
}


/**
 * 	Takes a square matrix and diagonalizes it
 */
void diagonalize( short matrix[N][N] ) {

	short iter;
	short repeat;
	
	//sima method
	//i {0,2,0,1,0,1}
	//j {1,3,2,3,3,2}
	short ia[16] = {1,0,1,0,0,2};
	short ja[16] = {2,3,3,2,1,3};
	
	//found by testing permutations, matches wolframalpha
	//short ia[16] = {1,0,1,0,2,0};
	//short ja[16] = {2,3,3,2,3,1};


	for(repeat = 0; repeat < 3; repeat++)
	{
		for ( iter = 0; iter < 6; iter++) 
		{
			short i = ia[iter];
			short j = ja[iter];

			short	a = matrix[i][i],
				b = matrix[i][j],
				c = matrix[j][i],
				d = matrix[j][j];
			
			// calculate rotation angle
			short	thetaSum = atan_fixed( (c+b), (d-a)); // Equals thetaL + thetaR
			short	thetaDif = atan_fixed( (c-b), (d+a)); // Equals thetaR - thetaL

			short	thetaL = (thetaSum - thetaDif) >> 1;//division by 2
			short	thetaR = (thetaSum + thetaDif) >> 1;
			
			short cosL = cos_fixed(thetaL);
			short cosR = cos_fixed(thetaR);
			short sinL = sin_fixed(thetaL);
			short sinR = sin_fixed(thetaR);


			short rotR[N][N] = {{SCALE,0,0,0},{0,SCALE,0,0},{0,0,SCALE,0},{0,0,0,SCALE}};
			short rotL[N][N] = {{SCALE,0,0,0},{0,SCALE,0,0},{0,0,SCALE,0},{0,0,0,SCALE}};

			rotL[i][i] =  cosL;	//rotation'
			rotL[i][j] = -sinL;
			rotL[j][i] =  sinL;
			rotL[j][j] =  cosL;

			rotR[i][i] =  cosR;	//rotation
			rotR[i][j] =  sinR;
			rotR[j][i] = -sinR;
			rotR[j][j] =  cosR;

			short med[N][N] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};

			multMatrix4( rotL, matrix, med);
			multMatrix4( med, rotR, matrix);
		}
	}
}

int main() {

	short m[N][N]	= {{	512,	1024,	1536,	512	}, 
			   {	1024,	1536,	512,	1024	},
			   {	1536,	512,	1024,	1536	},
			   {	512,	1024,	1536,	2048	}};

	printMatrix( m );
	printf("\r\n->\r\n\r\n");
	
	diagonalize( m );
	printMatrix( m );

	return 0;
}
