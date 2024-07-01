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
  double T, X;

  cin >> T >> X;

#ifdef DEBUG
  cout << T << ", " << X << endl;
#endif

  cout << T/X << endl;
  
  return 0;
}
