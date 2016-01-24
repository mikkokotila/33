#include <iostream>

using namespace std;

int mSequenceArray[100] = {0};
int mRange = 100;

int main(){

	// initialize mSequenceArray
	for ( int i = 0; i < mRange; i++ ){
		mSequenceArray[i] = i * i * i;
	}

	// for loops for a, b & c
	for ( int i = 0; i < mRange; i++ ){
		for ( int j = 0; j < mRange; j++ ){
			for ( int k = 0; k < mRange; k++ ){
				int a = mSequenceArray[i];
				int b = mSequenceArray[j];
				int c = mSequenceArray[k];

				printf("%d\n", a + b + c);
				printf("%d\n", a + b - c);
				printf("%d\n", a - b + c);
				printf("%d\n", a - b - c);
			}
		}
	}
	return 0;
}
