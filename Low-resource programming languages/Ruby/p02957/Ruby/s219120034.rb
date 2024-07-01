#include <iostream>
using namespace std;
int main(void){
    // Your code here!
    int a, b;
    cin >> a >> b;
    if((a+ b) % 2 == 0){
        cout << (a+ b) / 2 << endl;
    }
    else {
        cout << "IMPOSSIBLE" << endl;

    }
}
