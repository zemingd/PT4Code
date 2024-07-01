#include <bits/stdc++.h>
#define rep(i,n) for (int i = 0; i < (n); ++i)
#define out(a) cout<<a<<" "
#define sz(x) int(x.size())
using namespace std;
typedef long long ll;

int ctoi(const char c)
{
    switch (c)
    {
    case '0':
        return 0;
    case '1':
        return 1;
    case '2':
        return 2;
    case '3':
        return 3;
    case '4':
        return 4;
    case '5':
        return 5;
    case '6':
        return 6;
    case '7':
        return 7;
    case '8':
        return 8;
    case '9':
        return 9;
    default:
        return -1;
    }
}

int main() {
    string s;
    int n,mod;
    mod=1000000007;
    cin >> s;
    n=s.size();
    vector<vector<int>> dp(100005,vector<int>(13));
    dp[0][0]=1;
    for (int i=1;i<=n;i++){
        if (s[i-1]=='?'){
            rep(j,13)rep(k,10){
                dp[i][(j*10+k)%13]+=dp[i-1][j];
                dp[i][(j*10+k)%13]%=mod;
            }
        }else{
            int num=ctoi(s[i-1]);
            rep(j,13){
                dp[i][(j*10+num)%13]+=dp[i-1][j];
                dp[i][(j*10+num)%13]%=mod;
            }
        }
    }
cout << dp[n][5] << endl;
return 0;
}