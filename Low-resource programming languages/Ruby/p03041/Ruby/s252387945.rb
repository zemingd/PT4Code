#include <bits/stdc++.h>
using namespace std;

typedef long long ll;
#define REP(i, n) for(ll i = 0 ; i < n; i++)

//#define DEBUG(fmt, ...)
#define DEBUG(fmt, ...) fprintf(stderr, fmt "\n", ##__VA_ARGS__)

int main(){
    ll N;
    ll K;
    string S;

    cin >> N >> K;
    cin >> S;

    S[K-1] = S[K-1] + ('a' - 'A');

    cout << S << endl;
}
