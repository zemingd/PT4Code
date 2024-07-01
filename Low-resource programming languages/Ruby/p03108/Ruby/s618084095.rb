#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
template <class T>
inline bool chmax(T &a, T b) {
  if (a < b) {
    a = b;
    return 1;
  }
  return 0;
}

typedef long long ll;

class UnionFind {
  public:
  // 親の番号を格納。ルートだった場合は-(その集合のサイズ)
  vector<ll> parents;

  UnionFind(ll N) {
    parents = vector<ll>(N, -1);
  }

  // iがどのグループに属しているか
  ll root(ll i) {
    if (parents[i] < 0) {
      return i;
    } else {
      return parents[i] = root(parents[i]);
    }
  }

  // iが属しているグループの大きさ
  ll size(ll i) {
    return -parents[root(i)];
  }

  // root(a)とroot(b)を接続する
  bool connect(ll a, ll b) {
    ll rootA = root(a);
    ll rootB = root(b);
    if (rootA == rootB) {
        return false;
    } else {
      // union by size
      // 大きいほう(a)に小さいほう(b)をくっつける
      // 大小が逆の場合はスワップ
      if (size(rootA) < size(rootB)) {
        swap(rootA, rootB);
      }

      // aグループのサイズを増やす
      parents[rootA] += parents[rootB];
      // bの親をaのルートに変更する
      parents[rootB] = rootA;

      return true;
    }
  }

};

int main() {
  ll N, M;
  cin >> N >> M;
  vector<ll> A(M), B(M);
  for (ll i = 0; i < M; i++) {
    cin >> A[i] >> B[i];
    A[i]--;
    B[i]--;
  }
  vector<ll> ans(M);
  // 橋が全部崩落した
  ans[M-1] = N*(N-1)/2;

  UnionFind Uni(N);
  for (ll i = M - 1; i >= 1; i--) {
    // A[i]とB[i]がつなげる
    if (Uni.root(A[i] != Uni.root(B[i]))) {
      ans[i-1] = ans[i] - Uni.size(A[i]) * Uni.size(B[i]);
      Uni.connect(A[i], B[i]);
    } else {
      ans[i-1] = ans[i];
    }
  }
  for (ll i = 0; i < M; i++) {
    cout << ans[i] << endl;
  }
  return 0;
}
