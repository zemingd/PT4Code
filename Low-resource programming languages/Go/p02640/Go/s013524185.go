#include <bits/stdc++.h> 

using namespace std;

typedef long long ll;

#define REP(i,p,q) for(ll i = p; i < q; i++)

int main(void){
    ll x,y;
    cin >> x >> y;
    bool isExsist = false;
    REP(i,1,100){
        if(i > x) break;
        if(2*i + 4*(x - i) == y){
            isExsist = true;
            break;
        }
    }
    cout << (isExsist ? "Yes" : "No") << endl;
}