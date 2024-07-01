#include <iostream>
#include <map>
#include <vector>
#include <algorithm>
#include <cmath>
#include <stack>
#include <queue>

using namespace std;
#define int long long
#define double long double
#define fst first
#define snd second
#define fr(s,n,i) for(int i=s;i<n;i++)
#define times(n) for(int i=0;i<n;i++)
#define fr_(s,n,i) for(int i=s;i>=n;i--)
#define srt(v) sort(v.begin(), v.end());
#define upr(v, aim, ind) int ind; ind=(int)distance(v.begin(), upper_bound(v.begin(),v.end(), aim))
#define sz(v) (int)v.size()
#define ers(v, i) v.erase(v.begin() + i)
#define last(v) v[sz(v) - 1]
#define swp(v, i, j) int buf = v[j]; v[j] = v[i]; v[i] = buf
#define shout(a) cout << a << endl
#define dshout(a) printf("%.16Lf\n", a)
#define pr pair<int, int>
#define vi vector<int>
#define vp vector<pair<int, int>>
#define vd vector<double>
#define vdd vector<vd>
#define mx(a, b) a = max(a, b)
#define mn(a, b) a = min(a, b)
#define mulM(a,b,c) a = a * b % c
#define squM(a,b) a = a * a % b
#define mpr(a,b) make_pair(a,b)
#define iinp(a) int a; cin >> a
#define sinp(a) string a; cin >> a
#define dinp(a) double a; cin >> a
#define ios() ios_base::sync_with_stdio(0);cin.tie(0)

int MOD = 1000000007;
int INF = ~(1LL << 63);

int powM(int base, int exp){
    int ret = 1;
    int buf = base;
    while(exp > 0){
        if(exp & 1){
            ret *= buf;
        }
        squM(buf, MOD);
        exp >>= 1;
    }
    return ret;
}
int combM(int a, int b){
    if(b == 0){
        return 1;
    }
    if(a-b < b){
        return combM(a, a-b);
    }
    int ans = 1;
    fr(1,b+1,i){
        ans *= a + 1 - i;
        ans /= i;
    }
    return ans;
}
void solve();
signed main() {
    ios();
    solve();
    return 0;
}

int calc(int num, int l, int r){
    if(r < 0){
        return calc(num, abs(r), abs(l));
    }
    if(l > 0){
        return (r+l)*num/2;
    }
    return calc(abs(l), 1, l) + calc(r, 1, r);
}

struct Task{
    int place, time;
    bool operator>(const Task & an) const{
        return time > an.time;
    }
};






void solve(){
    iinp(H);iinp(W);
    int h,w;
    cin >> h >> w;

    shout(H * W - h * W - w * H + h * w);
}
