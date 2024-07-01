#include<bits/stdc++.h>
using namespace std;

typedef long long ll;
typedef pair<int,int> P;

#define p_ary(ary,a,b,i) do { cout << "["; for (int (i) = (a);(i) < (b);++(i)) cout << ary[(i)] << ((b)-1 == (i) ? "" : ", "); cout << "]\n"; } while(0)
#define p_map(map,it) do {cout << "{";for (auto (it) = map.begin();;++(it)) {if ((it) == map.end()) {cout << "}\n";break;}else cout << "" << (it)->first << "=>" << (it)->second << ", ";}}while(0)

int main() {
    string s,t;
    cin >> s >> t;
    int n = s.size(),m = t.size();
    vector<int> x[26];
    for (int i = 0;i < n;++i) x[s[i]-'a'].push_back(i);
    int ans = 0,p = 0;
    for (int i = 0;i < m;++i) {
        int c = t[i]-'a';
        if (x[c].empty()) {
            cout << "-1" << endl;
            return 0;
        }
        auto it = lower_bound(x[c].begin(),x[c].end(),p);
        if (it == x[c].end()) {
            ans++;
            p = x[c][0];
        } else {
            p = *it;
        }
    }
    cout << (ll)ans*n+p+1 << endl;
    return 0;
}