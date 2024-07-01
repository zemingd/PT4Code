#include <bits/stdc++.h>
using namespace std;
 
int main() {
  int n;
  cin >> n;
  
  vector<int> buttons(n);

  for (int i = 0; i < n; i++) {
    int a;
    cin >> a;
    buttons.at(i) = a;
  }

  bool ok = false;
  int cnt = 0;
  int pos = 0;
  while (true) {
    int nextPos = buttons.at(pos);
    cnt++;
    if (nextPos == 2) {
      ok = true;
      break;
    }
    if (nextPos - 1 == pos) {
      break;
    }
      
    pos = nextPos - 1;
  }
      
  if (ok) {
    cout << cnt << endl;
  } else {
    cout << -1 << endl;
  }
}