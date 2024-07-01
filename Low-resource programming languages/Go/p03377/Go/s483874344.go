#include <bits/stdc++.h>
using namespace std;

int main() {
  int64_t a,b,x;
  cin >> a >> b >> x;
  if (a + b > x && a <= x){
    cout << "YES";
  }else {
      cout << "NO";
  }
}