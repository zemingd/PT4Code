#include <bits/stdc++.h>

using namespace std;

int main() {
	int n, m;
	cin >> n >> m;
	
	vector<vector<int>> islands(n + 1);
	for (int i = 0; i <= n; i++) {
		islands[i] = {i};
	}

	vector<int> as = {};
	vector<int> bs = {};

	int a, b;
	for (int i=0; i < m; i++) {
		cin >> a >> b;
		as.push_back(a);
		bs.push_back(b);
	}

	long long count = n * (n - 1) / 2;

	vector<long long> result = {count};

	for (int i = m-1;i >= 1; i--) {
		vector<int> temp_a = islands[as[i]];
		vector<int> temp_b = islands[bs[i]];

		int temp_a_size = temp_a.size();
		int temp_b_size = temp_b.size();

		if (find(temp_a.begin(), temp_a.end(), bs[i]) == temp_a.end()) {
			temp_a.insert(temp_a.end(), temp_b.begin(), temp_b.end());

			for (int i = 0; i < temp_a.size(); i++) {
				islands[temp_a[i]] = temp_a;
			}

			count -= temp_a_size * temp_b_size;
		}

		result.push_back(count);
	}

	for (int i = result.size() - 1; i >= 0; i--) {
		cout << result[i] << endl;
	}
}
