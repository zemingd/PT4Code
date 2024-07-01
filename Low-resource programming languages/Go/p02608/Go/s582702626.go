#include <bits/stdc++.h>

using namespace std;
using llong = long long;
using ldbl = long double;
using lpair = pair<llong, llong>;

#define ALL(x) x.begin(), x.end()

constexpr llong mod = 1e9+7;
constexpr llong inf = mod * mod;

int main() {
  llong N;
  cin >> N;

  for (llong i = 1; i <= N; ++i) {
    llong cnt = 0;
    for (llong x = 1; x <= 1000; x++) {
      for (llong y = x; y <= 1000; y++) {
        for (llong z = y; z <= 1000; z++) {
          llong sum = x*x + y*y + z*z + x*y + x*z + y*z - i;
          if (sum == 0) {
            if (x == y && y == z) {
              cnt += 1;
            }
            else if (x == y || y == z || x == z) {
              cnt += 3;
            }
            else {
              cnt += 6;
            }
          }
          if (sum > i) {
            break;
          }
        }
      }
    }

    cout << cnt << endl;
  }

  return 0;
}