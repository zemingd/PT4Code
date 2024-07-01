#include<bits/stdc++.h>
constexpr long long INFL = 1LL << 60;
constexpr int INF = 1 << 30;

using namespace std;

using ll = long long;
using P = tuple<int, int>;
using iarr = valarray<int>;
vector<vector<char>> v(22, vector<char>(22, '#'));

int bfs(int i, int j, vector<vector<char>>& m){
  queue<tuple<int, int, int>> q;
  q.push(make_tuple(i, j, 0));
  m[i][j] = '#';
  int max_cnt = -1;
  while(!q.empty()){
    int a = get<0>(q.front());
    int b = get<1>(q.front());
    int cnt = get<2>(q.front());
    if(max_cnt < cnt) max_cnt = cnt;
    q.pop();
    if(m[a+1][b] == '.'){
      q.push(make_tuple(a+1, b, cnt+1));
      m[a+1][b] = '#';
    }
    if(m[a-1][b] == '.'){
      q.push(make_tuple(a-1, b, cnt+1));
      m[a-1][b] = '#';
    }
    if(m[a][b+1] == '.'){
      q.push(make_tuple(a, b+1, cnt+1));
      m[a][b+1] = '#';
    }
    if(m[a][b-1] == '.'){
      q.push(make_tuple(a, b-1, cnt+1));
      m[a][b-1] = '#';
    }
  }
  return max_cnt;
}

int main()
{
  int h,w;
  cin >> h >> w;
  for(int i = 1; i <= h; ++i) for(int j = 1; j <= w; ++j) cin >> v[i][j];
  int max_cnt = -1;
  for(int i = 1; i <= h; ++i){
    for(int j = 1; j <= w; ++j){
      if(v[i][j] == '.'){
        vector<vector<char>> m(v);
        int cnt = bfs(i, j, m);
        if(max_cnt < cnt) max_cnt = cnt;
      }
    }
  }
  cout << max_cnt << endl;
  return 0;
}
