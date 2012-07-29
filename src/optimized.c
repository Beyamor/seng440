#include <stdlib.h>
#include <math.h>
#include <stdio.h>

/*
 * 	Project specifications
 */
#define N 4
#define PI 3.1415926

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
			printf( "%s%f%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );
		}
	}
}




/**
 *	Multiplies a 4x4 matrix with a 4x4 matrix, storing output in a 4x4 matrix
 */
void multMatrix4( double m1[4][4], double m2[4][4], double target[4][4] ) {
	int i,j,k;


	for(i = 0; i < 4; i++)
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
				target[i][j] += m1[i][k] * m2[k][j];
			}
	
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
	
	if(fabs(y) > fabs(x)) return (PI/2 - result);
	return result;
}

/**
 * 	Takes a square matrix and diagonalizes it
 */
void diagonalize( double matrix[N][N] ) {
	
	// Declare some chincey variables

	int iter = 0;

	int repeat;
	
	//sima method
	//int ia[16] = {0,2,0,1,0,1};
	//int ja[16] = {1,3,2,3,3,2};

	
	//found by testing permutations, matches wolframalpha
	int ia[16] = {1,0,1,0,2,0};
	int ja[16] = {2,3,3,2,3,1};

	for(repeat = 0; repeat < 10; repeat++)
	{
		for ( iter = 0; iter < 6; iter++) 
		{
		
			int i = ia[iter];
			int j = ja[iter];


			double	a = matrix[i][i],
				b = matrix[i][j],
				c = matrix[j][i],
				d = matrix[j][j];

		
			
			// calculate rotation angle
			double	thetaSum = atan_new( (c+b) , (d-a) ), // Equals thetaL + thetaR
					thetaDif = atan_new( (c-b) , (d+a) ), // Equals thetaR - thetaL
					thetaL = (thetaSum - thetaDif) * 0.5,
					thetaR = (thetaSum + thetaDif) * 0.5;

			
			double rotR[N][N] = {{1,0,0,0},{0,1,0,0},{0,0,1,0},{0,0,0,1}};
			double rotL[N][N] = {{1,0,0,0},{0,1,0,0},{0,0,1,0},{0,0,0,1}};


			rotL[i][i] = cos_new(thetaL);	//rotation'
			rotL[i][j] = -sin_new(thetaL);
			rotL[j][i] = sin_new(thetaL);
			rotL[j][j] = cos_new(thetaL);

			rotR[i][i] = cos_new(thetaR);	//rotation
			rotR[i][j] = sin_new(thetaR);
			rotR[j][i] = -sin_new(thetaR);
			rotR[j][j] = cos_new(thetaR);


			double med[N][N] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};
			double res[N][N] = {{0,0,0,0},{0,0,0,0},{0,0,0,0},{0,0,0,0}};


			multMatrix4( rotL, matrix, med);
			multMatrix4(med, rotR, matrix);


		}

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
