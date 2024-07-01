#include<iostream>
#include<vector>
#include<string>
#include<algorithm>
#include <cmath>

using namespace std;
const long long INF = (long long) (1e18)+1;

int main() {
  long long n, m;
  cin >> n >> m;
  vector<long long> nums(n);
  long long ans = 0;
  long long sum = 0;
  for(int i=0; i<n; i++) {
    cin >> nums[i];
    sum += nums[i];
  }
  // cout << "?" << endl;
  double minmun = sum/(4*m);
  for(int i=0; i<n; i++) {
    if (nums[i] >= minmun) ans++;
  }
  // cout << ans << endl;
  if (ans >= m) {
    cout << "Yes" << endl;  
  } else {
    cout << "No" << endl;
  }
  
  return 0;
  
}