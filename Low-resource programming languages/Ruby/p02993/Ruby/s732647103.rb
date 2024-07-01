#include <iostream>
#include <vector>
#include <string>
#include <tuple>
#include <algorithm>
#include <numeric>
#include <climits>
#include <map>
#include <functional>
#include <cmath>
#include <cassert>
#include <set>

using namespace std;

template<typename T>inline T get(){T x;cin>>x;return x;}

int main()
{
    char prev = '?';
    const char* ans = "Good";

    for (int i = 0; i < 4; i++) {
        char c;

        cin >> c;
        if (c == prev)
            ans = "Bad";
        prev = c;
    }
    cout << ans << endl;
    return 0;
}