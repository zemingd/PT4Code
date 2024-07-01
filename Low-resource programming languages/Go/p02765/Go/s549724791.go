#include<bits/stdc++.h>
using namespace std;
using i64 = int_fast64_t;
#define rep(i, N) for(int (i) = 0; (i) < (N); (i)++)
#define all(v) (v).begin(), (v).end()
#define eb emplace_back

int main(){
    int N, R;
    cin >> N >> R;
    if(N >= 10) cout << R << endl;
    else cout << R + 100*(10 - N) << endl;
}