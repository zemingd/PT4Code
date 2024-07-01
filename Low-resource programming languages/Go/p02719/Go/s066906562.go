#include <bits/stdc++.h>
#define rep(i, n) for (int i = 0; i < (n); ++i)
using namespace std;
typedef long long ll;
const int INF = 1 << 30;
const ll MOD = 1000000007;

int main() {
    ll n, k;
    cin >> n >> k;
    if (k == 1) {
        cout << 0 << endl;
        return 0;
    }

    ll ans = INF, pans;
    while (true) {
        if (abs(n - k) <= ans) {
            ans = abs(n - k);
            if (ans == pans) {
                break;
            }
            pans = ans;
        }
        n = abs(n - k);
    }
    cout << ans << endl;
    return 0;
}