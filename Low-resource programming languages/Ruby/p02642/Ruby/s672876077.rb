#include <bits/stdc++.h>
#define REP(i,n) for (int i = 0; i < (n); ++i)
using namespace std;

int main(){
  int n; cin >> n;
  vector<int> a(n);
  REP(i,n) cin >> a[i];
  vector<int> num(1000000,0);
  int ans = 0;

  REP(i,n) {
    if (num[a[i]] != 0){
      num[a[i]] = 2;
      break;
    }
    for (int j = a[i]; j < pow(10,6); j += a[i]){
      ++num[j];
    }
  }

  REP(i,n){
    if (num[a[i]] == 1) ++ans;
  }

  cout << ans << endl;
  return 0;
}