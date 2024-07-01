#include<iostream>
using namespace std;

int main()
{
	char a[3];
	cin >> a[3];
	for (int i = 0; i < 3; i++)
	{
		switch (a[i])
		{
		case 1:a[i] = 9;
			break;
		case 9:a[i] = 1;
			break;
		default:break;
		}
	}
	cout << a[3];
	return 0;
}