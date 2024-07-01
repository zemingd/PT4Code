#include <bits/stdc++.h>

using namespace std;
typedef long long ll;

#define INF (long long)(1e9+7)
#define REP(i,n) for(ll i = 0; i < n; i++)
#define REP1(i,n) for(ll i = 1; i <= n; i++)

int k[20], s[20][20], p[20];

int main(void)
{
    int n, m;
    cin >> n >> m;
    REP(i, m) {
        cin >> k[i];
        REP(j, k[i]) {
            cin >> s[i][j];
            s[i][j] --;
        }
    }
    REP(i, m) cin >> p[i];
    ll cnt = 0;
    for(int sw = 0; sw < (1<<n); sw++) {
//        cout << "sw:" << sw << endl;
        bool all=true;
        REP(i, m) {
            int on = 0;
            REP(j, k[i]) {
                if(sw & (1 << s[i][j])) on ++;
            }
            if(on % 2 != p[i]) all = false;
        }
        if(all) cnt ++; 
//        cout << "cnt:" << cnt << endl;
    }
    cout << cnt << endl;
}
