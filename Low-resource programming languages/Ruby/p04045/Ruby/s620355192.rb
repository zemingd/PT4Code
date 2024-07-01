#include <iostream>
#include <vector>
#include <string>
#include <tuple>
#include <cassert>

using namespace std;

/*
  問題文

  いろはちゃんはこだわりもので、嫌いな数字が K個あり、それぞれ D1, D2,
  ..., DK です。

  いろはちゃんはお店でお買い物をしていて、N円の品物を買おうとしていま
  す。 もちろん、この品物は N円以上のお金を支払えば買うことができます。
  しかし、先ほど述べたようにいろはちゃんは強いこだわりがあるので、自分
  がお店に支払う金額の 10進表記にいろはちゃんの嫌いな数字が出現しない
  ような最も少ない金額を支払おうとします。

  いろはちゃんが支払う金額を求めてください。
*/

int main()
{
    int n;
    cin >> n;

    int k;
    cin >> k;

    string d;
    for (int i = 0; i < k; i++) {
        char c;
        cin >> c;
        d += c;
    }

    for (int i = n; ; i++) {
        string s = to_string(i);
        bool accept = true;
        for (int j = 0; j < d.size(); j++) {
            if (s.find(d[j]) != string::npos) {
                accept = false;
                break;
            }
        }
        if (accept) {
            cout << i << endl;
            break;
        }
    }

    return 0;
}