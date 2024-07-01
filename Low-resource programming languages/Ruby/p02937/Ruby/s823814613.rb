#include <bits/stdc++.h>

using namespace std;
typedef long long ll;
typedef pair<int,int> P;
const int INF = INT_MAX;
const ll LINF = LLONG_MAX;
const ll MOD = 1e9+7;

template <class T>ostream &operator<<(ostream &o,const vector<T>&v)
{o<<"[";for(int i=0;i<(int)v.size();i++)o<<(i>0?", ":"")<<v[i];o<<"]";return o;}
template <class T, class U>ostream &operator<<(ostream &o, const pair<T, U>&p)
{o<<"{"<<p.first<<", "<<p.second<<"}";return o;}
template <class T, class U>ostream &operator<<(ostream &o, const map<T, U>&obj)
{o<<"{";for(auto itr=obj.begin();itr!=obj.end();++itr)o<<(itr!=obj.begin()?", ":"")<<*itr;o<<"}";return o;}

int main(){
  cin.tie(0);
  ios::sync_with_stdio(false);
  
  string s,t;
  cin >> s >> t;
  vector<vector<int>> pos(26);
  ll ss = s.size(), ts = t.size();

  for(int i=0; i<ss; i++){
    pos[s[i]-'a'].push_back(i);
  }
  ll ans = -1;
  for(int i=0; i<ts; i++){
    int c = t[i]-'a';
    ll next, cur = ans % ss;
    if(pos[c].empty()){
      cout << -1 << endl;
      return 0;
    }
    auto it = upper_bound(pos[c].begin(), pos[c].end(), cur);
    if(it == pos[c].end()){
      next = (ans/ss + 1) * ss + pos[c][0];
    }else{
      next = (ans/ss) * ss + (*it);
    }
    ans = next;
  }
  cout << ans+1 << endl;

  return 0;
}
