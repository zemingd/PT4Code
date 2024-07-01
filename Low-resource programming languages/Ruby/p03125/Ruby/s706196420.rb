#include <iostream>
#include <map>
#include <vector>
#include <algorithm>
#include <cmath>
#include <stack>
#include <queue>

using namespace std;
#define int long long

#define fr(s,n,i) for(int i=s;i<n;i++)
#define fr_(s,n,i) for(int i=s;i>=n;i--)

int MOD = 1000000007;

void solve();

signed main() {
    solve();
    return 0;
}

void solve(){
    int a,b;
    cin >> a >> b;
    if(b%a){
        cout << b-a;
    } else {
        cout << a-b;
    }
    cout << endl;
}
