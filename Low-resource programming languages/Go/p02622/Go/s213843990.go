#include<bits/stdc++.h>
using namespace std;
#define int           long long
#define	pb            push_back
#define all(a)        (a).begin(),(a).end()
#define sz(x)         (int)x.size()
#define F             first
#define S             second
#define endl          "\n"
#define inf           1000000007
#define FOR(i, a, b)  for(int i=a; i<b; i++)
#define bigboi        1e18
mt19937 RNG(chrono::steady_clock::now().time_since_epoch().count()); 
#define SHUF(v) shuffle(aint(v), RNG);
// Use mt19937_64 for 64 bit random numbers. 

long long binpow(long long a, long long b) {
    long long res = 1;
    while (b > 0) {
        if (b & 1)
            res = res * a;
        a = a * a;
        b >>= 1;
    }
    return res;
}
int ceil(int a, int b){
	return (a+b-1)/b;
}

void solve(){
	string s, t;
	cin>>s>>t;
	int res=0;
	FOR(i, 0, sz(s)){
		res+=(s[i]!=t[i]);
	}
	cout<<res<<endl;
}

signed main(){
    ios::sync_with_stdio(false);
    cin.tie(0);     
    int t=1;
    //cin>>t;
    FOR(i, 1, t+1){ 
        //cout<<"Case #"<<i<<": ";
        solve();
    }
    cerr << "\nTime elapsed: " << 1000 * clock() / CLOCKS_PER_SEC << "ms\n";
    return 0;
 
}

