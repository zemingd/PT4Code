#include<bits/stdc++.h>
using namespace std;

typedef long long ll;
typedef pair<int,int> P;

#define p_ary(ary,a,b) do { cout << "["; for (int count = (a);count < (b);++count) cout << ary[count] << ((b)-1 == count ? "" : ", "); cout << "]\n"; } while(0)
#define p_map(map,it) do {cout << "{";for (auto (it) = map.begin();;++(it)) {if ((it) == map.end()) {cout << "}\n";break;}else cout << "" << (it)->first << "=>" << (it)->second << ", ";}}while(0)

int main() {
    int n;
    cin >> n;
    vector<int> p(n);
    for (int i = 0;i < n;++i) cin >> p[i];
    int ans = 0,mn = 1e9;
    for (int i = 0;i < n;++i) {
        if (p[i] < mn) ans++;
        mn = min(mn,p[i]);
    }
    cout << ans << endl;
}