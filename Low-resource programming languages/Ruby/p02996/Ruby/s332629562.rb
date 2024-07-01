#include <iostream>
#include <vector>
#include <map>
#include <unordered_map>
#include <queue>
#include <set>
#include <algorithm>
#include <string>
#include <math.h>
#include <limits.h>
#include <stack>
#include <complex>
#include <stdlib.h>
#include <stdio.h>
#include <functional>
#include <cfloat>
#include <math.h>
     
     
#define fs first
#define sc second
     
using namespace std;
     
     
typedef long long ll;
typedef pair<ll, ll> P;
     
     
int main(){
  ll N;

  cin >> N;

  vector<P> lst;

#ifdef DEBUG
  cout << "N=" << N << endl;
#endif

  map<ll, ll> dict;
  ll key;
  ll val;
  for(int i = 0; i < N; ++i){
    cin >> val >> key;
    if(dict.count(key) == 0){
      dict[key] = val;
    } else {
      dict[key] += val;
    }
  }

  vector<P> vec;
  for(const auto& [key, val] : dict ){
    //cout << "key=" << key << ", value=" << val << endl;
    vec.emplace_back(P(key, val));
  }
  sort(vec.begin(), vec.end());
  
  string res = "Yes";
  ll margin = 0;
  for(auto x:vec){
    //cout << "key=" << x.fs << ", value=" << x.sc << endl;
    if(x.sc > x.fs + margin){
      res = "No";
      break;
    }
  }

  cout << res << endl;
  
  return 0;
}
