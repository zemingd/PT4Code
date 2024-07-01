#include<bits/stdc++.h>
using namespace std;
using ll = long long;
 ll GCD(ll x,ll y){
    
    if(x < y){
        const ll a = x;
        x = y;
        y = a;
    }
    ll b = 100000;
        while(b){
            b = x % y;
            x = y;
            y = b;
            if(b == 0) break;
        }
    return x;
}

ll LCM(ll x,ll y){
    ll g = GCD(x,y);
    return x / g * y;
}

int main(){
    ll n,m;
    cin >> n >> m;
    vector<ll> a(n);
    for(ll i = 0; i < n; i++){
        cin >> a[i];
    }
    sort(a.begin(),a.end());
    ll mi = a[0];
    ll ma = a[n - 1];
    ll k = LCM(a[0],a[1]);
    for(ll i = 2; i < n; i++){
        k = LCM(k,a[2]);
    }
    ll cnt = 0;
    for(ll i = 1;; i += 2){
        if(k > m)
        break;
        cnt++;
        k *= i;
    }
    cout << cnt << endl;
}