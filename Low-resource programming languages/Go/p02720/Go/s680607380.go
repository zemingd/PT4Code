#include<bits/stdc++.h>
using namespace std;
#define rep(i,n) for(int i=0; i<(n); i++)
#define pb push_back
#define all(v) (v).begin(),(v).end()
#define fi first
#define se second
#define sz(x) ((int)(x).size())
using ll=long long;
typedef pair<int,int> pii;
typedef pair<ll,ll> pll;
#define MOD  1000000007
const ll INF=1e18;
template<class T>void show(vector<T>v){for (int i = 0; i < v.size(); i++){cerr<<v[i]<<" ";}cerr<<endl;}
template<class T> inline bool chmax(T& a, T b) { if (a < b) { a = b; return 1; } return 0; }
template<class T> inline bool chmin(T& a, T b) { if (a > b){ a = b; return 1; } return 0; }

vector<ll> ans;

void dfs(ll n) {
  if (n > 3234566667) return;
  ans.pb(n);
  ll d = n % 10;
  if (d != 0) dfs(n * 10 + d - 1);
  if (d != 9) dfs(n * 10 + d + 1);
  dfs(n * 10 + d);
}

int main(int argc, char const *argv[]) {
  ll k; cin >> k;
  rep(i, 9) dfs(i + 1);
  sort(all(ans));
  cout << ans[k-1] << endl;
  return 0;
}
