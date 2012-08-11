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

		result = SIN_OFFSET + ((SIN_OUT_MULT * angle) >> SCALE_BITS);
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
void multMatrix4( short *restrict m1, short *restrict m2, short *restrict target ) {
	short i,j,k;

	int temp32 = 0;

	for( i = 0; i < N; i++)
	{
		for( j = 0; j < N; j++)
		{
			target[i*N + j] = 0;
			for(k = 0; k < N; k++)
			{
				temp32 = m1[i*N + k] * m2[k*N + j];
				target[i*N + j] += (short)(temp32 >> SCALE_BITS); //bitshift 12 is the same as division by scale
			}
		}
	}
}

#define SET_AS_IDENTITY(m) \
	m[0][0] = SCALE; m[0][1] = 0; m[0][2] = 0; m[0][3] = 0; \
	m[1][0] = 0; m[1][1] = SCALE; m[1][2] = 0; m[1][3] = 0; \
	m[2][0] = 0; m[2][1] = 0; m[2][2] = SCALE; m[2][3] = 0; \
	m[3][0] = 0; m[3][1] = 0; m[3][2] = 0; m[3][3] = SCALE;

#define DIAGONALIZATION_ITERATION(iter)\
	i = ia[iter]; \
	j = ja[iter]; \
	\
	a = matrix[i][i]; \
	b = matrix[i][j]; \
	c = matrix[j][i]; \
	d = matrix[j][j]; \
	\
	/* calculate rotation angle */ \
	thetaSum = atan_fixed( (c+b), (d-a)); /* Equals thetaL + thetaR */ \
	thetaDif = atan_fixed( (c-b), (d+a)); /* Equals thetaR - thetaL */ \
	\
	thetaL = (thetaSum - thetaDif) >> 1; /* division by 2 */ \
	thetaR = (thetaSum + thetaDif) >> 1; \
	\
	cosL = cos_fixed(thetaL); \
	cosR = cos_fixed(thetaR); \
	sinL = sin_fixed(thetaL); \
	sinR = sin_fixed(thetaR); \
	\
	\
	SET_AS_IDENTITY(rotR)\
	SET_AS_IDENTITY(rotL)\
	\
	rotL[i][i] =  cosL; /* rotation' */ \
	rotL[i][j] = -sinL; \
	rotL[j][i] =  sinL; \
	rotL[j][j] =  cosL; \
	\
	rotR[i][i] =  cosR; /* rotation */ \
	rotR[i][j] =  sinR; \
	rotR[j][i] = -sinR; \
	rotR[j][j] =  cosR; \
	\
	multMatrix4( (short*)rotL, (short*)matrix, (short*)med); \
	multMatrix4( (short*)med, (short*)rotR, (short*)matrix);

#define DIAGONALIZATION_CYCLE() \
	DIAGONALIZATION_ITERATION(0) \
	DIAGONALIZATION_ITERATION(1) \
	DIAGONALIZATION_ITERATION(2) \
	DIAGONALIZATION_ITERATION(3) \
	DIAGONALIZATION_ITERATION(4) \
	DIAGONALIZATION_ITERATION(5)

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
	
	short	i = 0,
		j = 0,
		a = 0,
		b = 0,
		c = 0,
		d = 0,
		thetaSum = 0,
		thetaDif = 0,
		thetaL = 0,
		thetaR = 0,
		cosL = 0,
		cosR = 0,
		sinL = 0,
		sinR = 0,
		rotR[N][N],
		rotL[N][N],
		med[N][N];

	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
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
