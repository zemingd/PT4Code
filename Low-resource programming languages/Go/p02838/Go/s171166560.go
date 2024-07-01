#include <bits/stdc++.h>
using namespace std;
#define int long long
#define PI 3.141592653589793
#define rep(i, n) for (int i = 0; i < (n); i++)
#define rrep(i, n, k) for (int i = (n); i >= (k); i--);
#define all(x) (x).begin(), (x).end()
template<class T> istream &operator>>(istream&is,vector<T>&v){for(auto &elemnt:v)is>>elemnt;return is;}
template<class T,class U> istream &operator>>(istream&is,pair<T,U>&p){is>>p.first>>p.second;return is;}
template<class T>vector<T> make_vector(size_t a){return vector<T>(a);}
template<class T, class... Ts>auto make_vector(size_t a, Ts... ts){return vector<decltype(make_vector<T>(ts...))>(a, make_vector<T>(ts...));}
int mod = 1e9 + 7;

signed main() {
    int N;
    cin >> N;
    vector<int> A(N);
    vector<int> bit(70, 0);
    for (int i = 0; i < N; i++) {
        cin >> A[i];
        if (i == N - 1) continue;
        for (int j = 0; j < 63; j++) {
            if (A[i] & (1L << j)) ++bit[j];
        }
    }
    int ans = 0;
    for (int i = N - 1; i >= 1; i--) {
        for (int j = 0; j < 63; j++) {
            if ((A[i] & (1LL << j))) {
                ans = (ans + (1LL << j) * (i - bit[j])) % mod;
            } else {
                ans = (ans + (1LL << j) * (bit[j])) % mod;
            }
        }
        for (int j = 0; j < 63; j++) {
            if (A[i - 1] & (1L << j)) --bit[j];
        }
    }
    cout << ans << endl;
}

