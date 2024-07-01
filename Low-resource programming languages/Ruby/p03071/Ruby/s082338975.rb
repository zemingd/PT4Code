#include <iostream> 
#include <stdio.h>
#include <string>
using namespace std;

int main() {
	int a,b,sum(0);
	cin>>a>>b;
	if (a - b >= 2) {
		sum = a + a - 1;
	} else if (a - b == 1 || a - b == -1 || a == b) {
		sum = a + b;
	} else {
		sum = b + b - 1; 
	} 
	cout << sum;
    return 0;
 }