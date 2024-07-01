#include <iostream>
using namespace std;
int main (void) {
    string s;

    cin >> s;

    cout << s[0] << s.length() - 2 << s[s.length() - 1] << endl;
    
    return 0;
}