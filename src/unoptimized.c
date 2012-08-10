#include <stdlib.h>
#include <math.h>
#include <stdio.h>

/*
 * 	Project specifications
 */
#define N 4

#define SCALE 4096
/*	2^12 = 4096
 *	This value is multiplied with the input(max 2^15) in a 32-bit int, but 
 *	there was little accuracy difference between 2^12 and 2^14 for the scale
 *	(about +/- 0.2%) 
 */


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


double cos_new(double angle) {

	float	angleSquared = angle*angle;

	return 1 - angleSquared/2 + angleSquared/24;
}

double sin_new(double angle) {

	float	angleSquared = angle*angle,
		angleCubed = angle*angleSquared;

	return angle - angleCubed/6 + angleSquared*angleCubed/120;
}

double atan_new(double angle){
	double result = 0;
	if(angle > 0.5 && angle <= 1.0){
		result = 0.644*angle + 0.142;
	}
	else if(angle <= 0.5 && angle >= -0.5){
		result = 0.928*angle;
	}
	else if(angle < -0.5 && angle >= -1.0){
		result = 0.644*angle - 0.142;
	}
	return result;
}



/**
 *	Multiplies a 4x4 matrix with a 4x4 matrix, storing output in a 4x4 matrix
 */
void multMatrix4( short m1[4][4], short m2[4][4], short target[4][4] ) {
	short i,j,k;

	short target32[4][4];

	for( i = 0; i < 4; i++)
	{
		for(j = 0; j < 4; j++)
		{
			target32[i][j] = 0;
		}	
	}

	for( i = 0; i < 4; i++)
	{
		for( j = 0; j < 4; j++)
		{
			//finding target[i][j]
			for(k = 0; k <  4; k++)
			{
				target32[i][j] += m1[i][k] * m2[k][j];
				target[i][j] = (short)(target32[i][j] / SCALE);
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

	
	//found by testing permutations, matches wolframalpha
	short ia[16] = {1,0,1,0,2,0};
	short ja[16] = {2,3,3,2,3,1};


	for(repeat = 0; repeat < 6; repeat++)
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
			double	thetaSum = atan( (c+b) / (double)(d-a) ), // Equals thetaL + thetaR
					thetaDif = atan( (c-b)  / (double)(d+a) ), // Equals thetaR - thetaL
					thetaL = (thetaSum - thetaDif) * 0.5,
					thetaR = (thetaSum + thetaDif) * 0.5;

			


			rotL[i][i] = (short)((double)SCALE *  cos(thetaL));	//rotation'
			rotL[i][j] = (short)((double)SCALE * -sin(thetaL));
			rotL[j][i] = (short)((double)SCALE *  sin(thetaL));
			rotL[j][j] = (short)((double)SCALE *  cos(thetaL));

			rotR[i][i] = (short)((double)SCALE *  cos(thetaR));	//rotation
			rotR[i][j] = (short)((double)SCALE *  sin(thetaR));
			rotR[j][i] = (short)((double)SCALE * -sin(thetaR));
			rotR[j][j] = (short)((double)SCALE *  cos(thetaR));


			short med[N][N] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};


			multMatrix4( rotL, matrix, med);
			multMatrix4(med, rotR, matrix);
			
			printMatrix(rotR);
			printf("\n\n");

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
