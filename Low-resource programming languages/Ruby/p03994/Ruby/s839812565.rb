#include <bits/stdc++.h>

#define rep(i, n) for(int i = 0; i<(n); i++)
#define chmax(x, y) x = max(x, y)
#define chmin(x, y) x = min(x, y)
using namespace std;
using ll = long long;

int need_cnt(char c) {
    if(c == 'a') return 0;
    return 26 - (c - 'a');
}

char rot(char c, int k) {
    int n = ((c - 'a') + k) % 26;
    return (char) n + 97;
}

int main() {
    string s;
    int K;
    cin >> s >> K;
    string ans;
    rep(i, s.size()) {
        char c = s[i];

        if (i == s.size() - 1) {
            ans += rot(c, K);
        } else {
            int cnt = need_cnt(c);
            if (cnt <= K) {
                K -= cnt;
                ans += rot(c, cnt);
            } else {
                ans += c;
            }
        }
    }

    cout << ans << endl;
}