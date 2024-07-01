#include <bits/stdc++.h>
typedef long long int ll;
#define FOR(i, a, b) for (ll i = (signed)(a); i < (b); ++i)
#define REP(i, n) FOR(i, 0, n)
#define EREP(i, n) for (int i = (n)-1; i >= 0; --i)
#define MOD 1000000007
#define pb push_back
#define INF 93193111451418101
#define MIN -93193111451418101
#define EPS 1e-11
#define tp(a, b, c) make_tuple(a, b, c)
#define lb(a, b) lower_bound((a).begin(), (a).end(), (b))
#define ub(a, b) upper_bound((a).begin(), (a).end(), (b))
#define bitcnt(a) (ll) __builtin_popcount((a))
using namespace std;
typedef pair<ll, ll> P;
typedef tuple<ll, ll, ll> T;
template <typename T> void fill_all(T &arr, const T &v) { arr = v; }
template <typename T, typename ARR> void fill_all(ARR &arr, const T &v) {
  for (auto &i : arr) {
    fill_all(i, v);
  }
}
//------------------変数-----------------------//
//-------------------関数----------------------//

int main() {
  ll a, b;
  cin >> a >> b;
  REP(i, a) {
    char c;
    cin >> c;
    if (c - '0' >= 0 && c - '0' <= 9) {

    } else {
      cout << "No" << endl;
      return 0;
    }
  }
  char cc;
  cin >> cc;
  if (cc != '-') {
    cout << "No" << endl;
    return 0;
  }
  REP(i, b) {
    char c;
    cin >> c;
    if (c - '0' >= 0 && c - '0' <= 9) {

    } else {
      cout << "No" << endl;
      return 0;
    }
  }
  cout << "Yes" << endl;
}
