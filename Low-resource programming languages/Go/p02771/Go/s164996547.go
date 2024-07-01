#include <iostream>
#include <vector>
#include <map>
#include <set>
#include <utility>
#include <algorithm>

int main()
{
	int A, B, C;
	std::cin >> A >> B >> C;

	std::set<int> values;
	values.insert(A);
	values.insert(B);
	values.insert(C);

	if (values.size() == 2) {
		std::cout << "Yes";
	}
	else {
		std::cout << "No";
	}
	
	return 0;
}