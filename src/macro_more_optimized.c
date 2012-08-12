#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <time.h>

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
void printMatrix( int matrix[N][N] ) {

	int i = 0,
	      j = 0;
	
	for ( i = 0; i < N; ++i ) {
		for ( j = 0; j < N; ++j ) {
			printf( "%s%d%s", matrix[i][j] < 0?"":" ", matrix[i][j], (j<N-1)? ",\t":"\n" );
		}
	}
}


#define cos_fixed(a,result) \
	angle = a; \
 \
	if(angle < -POINT) \
	{ \
		result = COS_OFFSET + ((COS_OUT_MULT * angle) >> SCALE_BITS);   \
	} \
	else if (angle < 0) { \
 \
		result = SCALE + ((COS_IN_MULT * angle) >> SCALE_BITS); \
	} \
 \
	else if (angle < POINT) { \
 \
		result = SCALE -((COS_IN_MULT * angle) >> SCALE_BITS); \
	} \
 \
	else if (angle < PI) { \
 \
		result = COS_OFFSET - ((COS_OUT_MULT * angle) >> SCALE_BITS);  \
	}


#define sin_fixed(a,result) \
	angle = a; \
	if (angle < -POINT) { \
 \
		result = SIN_OFFSET + ((SIN_OUT_MULT * angle) >> SCALE_BITS); \
	} \
	else if (angle < POINT) { \
 \
		result = (SIN_IN_MULT * angle) >> SCALE_BITS; \
	} \
 \
	else if (angle < PI_OVER_2) { \
 \
		result = -SIN_OFFSET + ((SIN_OUT_MULT * angle) >> SCALE_BITS); \
	}

#define atan_fixed(y,x,result) \
	if(x == 0 && y == 0) \
	{ \
		printf("This should never happen\n"); \
		result = 0; \
	} \
 \
	isCot = y >= 0 ? x >= 0 ? y > x : y > -x : x >= 0 ? -y > x : -y > -x;	 \
 \
	result = 0; \
 \
	/* store angle in 32 bit to avoid truncation errors, shift up another scale factor (bitshift it later)*/ \
	angle = isCot ? (x << SCALE_BITS) / y : (y << SCALE_BITS) / x; \
	 \
	if(angle > SCALE_OVER_2 && angle <= (SCALE)) \
	{ \
		result = ((TAN_OUT_MULT * angle) >> SCALE_BITS) + TAN_OFFSET; \
	} \
	else if(angle <= SCALE_OVER_2 && angle >= -SCALE_OVER_2)  \
	{ \
		result = (TAN_IN_MULT * angle) >> SCALE_BITS; \
	} \
	else if(angle < -SCALE_OVER_2 && angle >= -SCALE) \
	{ \
		result = ((TAN_OUT_MULT * angle) >> SCALE_BITS) - TAN_OFFSET; \
	} \
 \
 \
	if(isCot && angle < 0) \
	{ \
		result += PI; \
	} \
 \
	if(isCot) \
	{	 \
		result = (PI_OVER_2) - result; \
	}

#define MULTIPLICATION_STEP_INITIALIZATION(i,j) \
	targetIndex = i*N + j; \
	target[targetIndex] = 0;

#define MULTIPLICATION_STEP(i,j,k) \
	temp32 = m1[i*N + k] * m2[k*N + j]; \
	target[targetIndex] += (int)(temp32 >> SCALE_BITS); /* bitshift 12 is the same as division by scale */

#define MULTIPLICATION_STEPS_FOR_IJ(i,j) \
	MULTIPLICATION_STEP_INITIALIZATION(i,j) \
	MULTIPLICATION_STEP(i,j,0) \
	MULTIPLICATION_STEP(i,j,1) \
	MULTIPLICATION_STEP(i,j,2) \
	MULTIPLICATION_STEP(i,j,3)

#define MULTIPLICATION_STEPS_FOR_I(i) \
	MULTIPLICATION_STEPS_FOR_IJ(i,0) \
	MULTIPLICATION_STEPS_FOR_IJ(i,1) \
	MULTIPLICATION_STEPS_FOR_IJ(i,2) \
	MULTIPLICATION_STEPS_FOR_IJ(i,3)

#define MULTIPLICATION_STEPS() \
	MULTIPLICATION_STEPS_FOR_I(0) \
	MULTIPLICATION_STEPS_FOR_I(1) \
	MULTIPLICATION_STEPS_FOR_I(2) \
	MULTIPLICATION_STEPS_FOR_I(3)

/**
 *	Multiplies a 4x4 matrix with a 4x4 matrix, storing output in a 4x4 matrix
 */
void multMatrix4( int *restrict m1, int *restrict m2, int *restrict target ) {

	int temp32 = 0, targetIndex = 0;

	MULTIPLICATION_STEPS()
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
	atan_fixed((c+b), (d-a), thetaSum); /* Equals thetaL + thetaR */ \
	atan_fixed((c-b), (d+a), thetaDif); /* Equals thetaR - thetaL */ \
	\
	thetaL = (thetaSum - thetaDif) >> 1; /* division by 2 */ \
	thetaR = (thetaSum + thetaDif) >> 1; \
	\
	cos_fixed(thetaL, cosL); \
	cos_fixed(thetaR, cosR); \
	sin_fixed(thetaL, sinL); \
	sin_fixed(thetaR, sinR); \
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
	multMatrix4( (int*)rotL, (int*)matrix, (int*)med); \
	multMatrix4( (int*)med, (int*)rotR, (int*)matrix);

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
void diagonalize( int matrix[N][N] ) {

	//sima method
	//i {0,2,0,1,0,1}
	//j {1,3,2,3,3,2}
	int ia[16] = {1,0,1,0,0,2};
	int ja[16] = {2,3,3,2,1,3};
	
	//found by testing permutations, matches wolframalpha
	//int ia[16] = {1,0,1,0,2,0};
	//int ja[16] = {2,3,3,2,3,1};
	
	int	temp32;
	
	int	i = 0,
		j = 0,
		a = 0,
		b = 0,
		c = 0,
		d = 0,
		angle = 0,
		thetaSum = 0,
		thetaDif = 0,
		thetaL = 0,
		thetaR = 0,
		cosL = 0,
		cosR = 0,
		sinL = 0,
		sinR = 0,
		result = 0,
		isCot = 0,
		targetIndex = 0,
		rotR[N][N],
		rotL[N][N],
		med[N][N];

	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
	DIAGONALIZATION_CYCLE()
}

int main() {

	int i = 0;
	time_t startTime = clock();

	for (i = 0; i < 100000; ++i) {

		int m[N][N]	= {{	512,	1024,	1536,	512	}, 
				   {	1024,	1536,	512,	1024	},
				   {	1536,	512,	1024,	1536	},
				   {	512,	1024,	1536,	2048	}};

		diagonalize( m );
	}

	printf("elapsed time: %lf\n", ((double)clock() - startTime)/CLOCKS_PER_SEC);

	return 0;
}
