#include <bits/stdc++.h>
using namespace std;

int main() {
  char c[3];cin>>c;
  bool ans = c[0] != c[1] && c[1] != c[2] && c[0] != c[2];
  cout << (ans ? "Yes" : "No") << endl;
}
