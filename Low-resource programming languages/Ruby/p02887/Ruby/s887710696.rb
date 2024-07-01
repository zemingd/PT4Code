// #include <bits/stdc++.h>
#include <iostream>
#include <cmath>
#include <algorithm>
#include <utility>
#include <numeric>
#include <vector>
#define REP(i, n) for(int i=0;i<int(n);++i)
// copy用
// for(int i=0;i<int(n);++i) {
using namespace std;
template<class A>void pr(A a){cout << (a) << endl;}
template<class A,class B>void pr(A a,B b){cout << a << " "  ;pr(b);}
template<class A,class B,class C>void pr(A a,B b,C c){cout << a << " " ;pr(b,c);}
template<class A,class B,class C,class D>void pr(A a,B b,C c,D d){cout << a << " " ;pr(b,c,d);}
// vectorからindex番目の要素を削除する
template<typename T>
void remove(std::vector<T>& vector, unsigned int index)
{
    vector.erase(vector.begin() + index);
}

int main(void) {
  int N;
  vector<char>S;
  cin >> N;
  REP(i,N) {
    char s;
    cin >> s;
    S.push_back(s);
  }
  vector<char>ans;
  ans.push_back(S[0]);
  for(int i=1;i<N;++i) {
    if (S[i-1]!=S[i]) {
      ans.push_back(S[i]);
    }
  }
  pr(ans.size());
  return 0;
}

