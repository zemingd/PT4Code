#include <bits/stdc++.h>
using namespace std;
 
int main() {
  int n, m;
  cin >> n >> m;
  
  vector<int> cities(n);
  
  for (int i = 0; i < m; i++) {
    int a, b;
    cin >> a >> b;
    cities.at(a - 1) = cities.at(a - 1) + 1;
    cities.at(b - 1) = cities.at(b - 1) + 1;
  }
    
  for (int i = 0; i < n - 1; i++) {
    cout << cities.at(i) << endl;
  }
}