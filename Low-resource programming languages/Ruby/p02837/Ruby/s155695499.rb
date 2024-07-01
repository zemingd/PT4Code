#include <bits/stdc++.h>
#define rep(i, n) for (int i = 0; i < (n); i++)
using namespace std;

int main() {
  int n; cin >> n;
  vector<vector<int>> x(n), y(n);
  rep(i,n) {
    int a; cin >> a;
    x[i].resize(a);
    y[i].resize(a);
    rep(j,a) {
      cin >> x[i][j] >> y[i][j];
      x[i][j]--;
    }
  }
  int ans = 0;
  rep(bit,1<<n) {
    vector<bool> honest(n);
    rep(i,n) honest[i] = bit >> i & 1;
    bool ok = true;
    rep(i,n) if (honest[i]) {
      rep(j,x[i].size()) {
        if (honest[x[i][j]] && y[i][j] == 0) ok = false; 
        if (!honest[x[i][j]] && y[i][j] == 1) ok = false; 
      }
    }
    if (ok) ans = max(ans, __builtin_popcount(bit));
  }
  cout << ans << endl;
}