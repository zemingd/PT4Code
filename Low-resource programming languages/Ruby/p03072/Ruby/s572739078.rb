#include <iostream>
#include <time.h>
#include <math.h>
#include <map>
#include <algorithm>


using namespace std;
int main()
{
	int N, cnt = 1, H[30], tmp;
	cin >> N;

	cin >> H[0];
	tmp = H[0];
	for (int i = 1; i < N; i++) {
		cin >> H[i];
		if (tmp <= H[i]) {
			tmp = H[i];
			cnt++;
		}
	}

	printf("%d", cnt);

}