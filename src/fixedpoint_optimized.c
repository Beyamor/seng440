#include <stdlib.h>
#include <math.h>
#include <stdio.h>

/*
 * 	Project specifications
 */
#define N 4

#define DEBUG 0

#define SCALE 4096
/*	2^12 = (4096 * 16)
 *	This value is multiplied with the input(max 2^15) in a 32-bit int, but 
 *	there was little accuracy difference between 2^12 and 2^14 for the scale
 *	(about +/- 0.2%) 
 */

#define FPI 12868 // 3.1415926 * 4096


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

#define POINT 0.8097483720555431 * SCALE
	if(angle < -POINT)
	{
		result = 1.52750736076 * SCALE + 0.972441388294 * angle;
	}
	else if (angle < 0) {

		result = SCALE + 0.25775860716 * angle;
	}

	else if (angle < POINT) {

		result = SCALE + -0.25775860716 * angle;
	}

	else if (angle < FPI) {

		result = 1.52750736076 * SCALE + -0.972441388294 * angle;
	}
#undef POINT
	return result;
}


short sin_fixed(short angle) {
	short result = 0;
#define POINT 0.8098181280798935 * SCALE
	if (angle < -POINT) {

		result = -0.595205321506 * SCALE + 0.257700296079 * angle;
	}
	else if (angle < POINT) {

		result = 0.972404092315 * angle;
	}

	else if (angle < FPI/2) {

		result = 0.595205321506 * SCALE + 0.257700296079 * angle;
	}

#undef POINT
	return result;
}


short atan_fixed(short y, short x)
{

	if(x == 0 && y == 0)
	{
		printf("This should never happen\n");
		return 0;
	}

	char isCot = y >= 0 ? x >= 0 ? y > x : y > -x : x >= 0 ? -y > x : -y > FPI/2;	

	short result = 0;

	//store angle in 32 bit to avoid truncation errors, shift up another scale factor (bitshift it later)
	int angle = isCot ? (SCALE * x)/y : (SCALE * y)/x;
	
	if(angle > (SCALE * 0.5) && angle <= (SCALE))
	{
		result = (short)(0.644f * (float)angle) + (0.142f * (float)SCALE);
	}
	else if(angle <= ((float)SCALE * 0.5f) && angle >= (-0.5f * (float)SCALE))
	{
		result = (short)(0.928f * (float)angle);
	}
	else if(angle < (-0.5f * (float)SCALE) && angle >= -(float)SCALE)
	{
		result = (short)(0.644f * (float)angle) - (0.142f * (float)SCALE);
	}


	if(isCot && angle < 0)
	{
		result += FPI;
	}

	if(isCot)
	{	
		result = (FPI/2) - result;
	}
//	printf("res: %d\n", result );
	return result;
}



/**
 *	Multiplies a 4x4 matrix with a 4x4 matrix, storing output in a 4x4 matrix
 */
void multMatrix4(  short m1[4][4], short m2[4][4], short target[4][4] ) {
	short i,j,k;

	//short target32[4][4];
	int temp32 = 0;
	for( i = 0; i < 4; i++)
	{
		for(j = 0; j < 4; j++)
		{
			target[i][j] = 0;
		}	
	}

	for( i = 0; i < 4; i++)
	{
		for( j = 0; j < 4; j++)
		{
			//finding target[i][j]
			for(k = 0; k <  4; k++)
			{
				temp32 = m1[i][k] * m2[k][j];
				target[i][j] += (short)(temp32 / SCALE);
			}
	
		}
	}


}


/**
 * 	Takes a square matrix and diagonalizes it
 */
void diagonalize( short matrix[N][N] ) {
	
	// Declare some chincey variables

	short iter = 0;

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

		
			short rotR[N][N] = {{SCALE,0,0,0},{0,SCALE,0,0},{0,0,SCALE,0},{0,0,0,SCALE}};
			short rotL[N][N] = {{SCALE,0,0,0},{0,SCALE,0,0},{0,0,SCALE,0},{0,0,0,SCALE}};
			
			// calculate rotation angle
			short	thetaSum = atan_fixed( (c+b), (d-a)); // Equals thetaL + thetaR
			short	thetaDif = atan_fixed( (c-b), (d+a)); // Equals thetaR - thetaL

			short	thetaL = (thetaSum - thetaDif) * (0.5);
			short	thetaR = (thetaSum + thetaDif) * (0.5);
			
			short cosL = cos_fixed(thetaL);
			short cosR = cos_fixed(thetaR);//remember to unscale when using old
			
			short sinL = sin_fixed(thetaL);
			short sinR = sin_fixed(thetaR);


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
			multMatrix4(med, rotR, matrix);

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
