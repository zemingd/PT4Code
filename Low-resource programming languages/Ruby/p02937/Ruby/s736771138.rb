#include <bits/stdc++.h>
#define int long long
using namespace std;

signed main() {
    string s, t;
    cin >> s >> t;

    const int inf = 1e18;
    map<char, set<int>> m;
    for (int i = 0; i < s.size(); i++) {
        m[s[i]].insert(i);
    }
    for (auto& e : m) e.second.insert(inf);

    int ans = 0;
    int last = -1;
    for (char c : t) {
        const set<int>& se = m[c];
        if (se.empty()) {
            cout << -1 << endl;
            return 0;
        }
        int idx = *se.upper_bound(last);
        if (idx == inf) idx = *se.begin();
        if (idx <= last) ans += s.size();
        last = idx;
    }
    ans += last + 1;
    cout << ans << endl;
}
