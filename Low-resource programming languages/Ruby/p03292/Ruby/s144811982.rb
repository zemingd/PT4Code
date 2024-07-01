#include <iostream>
#include <math.h>
#include <algorithm>


using namespace std;
int main()
{
	int A[4], cnt = 0;

	cin >> A[0] >> A[1] >> A[2];

	sort(A, A + 3);


	cnt += A[1] - A[0];
	cnt += A[2] - A[1];

	printf("%d", cnt);

	return 0;

}