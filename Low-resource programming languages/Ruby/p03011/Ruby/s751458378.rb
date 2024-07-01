#include<bits/stdc++.h>
using namespace std;
int p,q,r;

int main(){
    cin >> p >> q >> r;
    
    cout << p + q + r - max(p,max(q,r)) << endl;
}