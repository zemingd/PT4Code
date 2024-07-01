#include <iostream>
#include <algorithm>
#include <utility>
#include <vector>
#include <map>
#include <set>
#include <string>
#include <tuple>
#include <cmath>
#include <cstring>

#define rep(i, n) for(int i = 0; i < (int)(n); i++)

using namespace std;
typedef long long ll;

int N;
int A[200001];

int main() {
    cin >> N;
    rep(i, N) cin >> A[i];
    sort(A, A + N);
    int prev = A[0];
    for (int i = 1; i < N; i ++) {
        if (prev == A[i]) {
            cout << "NO" << endl;
            return 0;
        }
        prev = A[i];
    }
    cout << "YES" << endl;
    return 0;
}