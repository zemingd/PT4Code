#include<iostream>
#include<regex>

using namespace std;

int main(){
  int n;
  int count = 0;
  cin >> n;

  const regex neg("[124689]");
  const regex pos("3(57|75)|5(37|73)|7(35|53)");

  for (int i = 1; i < n; i++) {
    if (! regex_search(to_string(i), neg)) {
        if (regex_search(to_string(i), pos)) {
          count += 1;
        }
    }
  }

  cout << count << endl;
}