#include <iostream>
#include <string>
#include <algorithm>
#include <vector>
#include <queue>
using namespace std;

int main () {
  int n, k;
  string s;
  cin >> n >> k;
  cin >> s;

  if (s[k-1] == 'A') {
    s[k-1] = 'a';
  } else if(s[k-1] == 'B') {
    s[k-1] = 'b';
  } else if(s[k-1] == 'C') {
    s[k-1] = 'c';
  }

  cout << s << endl;
}
