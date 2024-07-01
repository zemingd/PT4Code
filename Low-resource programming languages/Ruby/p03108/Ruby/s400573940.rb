#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
#define rep(i,n) for(ll (i)=0;(i)<n;(i)++)

struct UnionFind{
    vector<int> data;
    UnionFind(int n){ data.assign(n,-1); }
    bool unite(int x, int y){
        x = root(x), y = root(y);
        if(x==y) return false;
        if(data[y] < data[x]) swap(x, y);
        data[x] += data[y];
        data[y] = x;
        return true;
    }
    int root(int x){ return data[x]<0 ? x : data[x]=root(data[x]); }
    int size(int x){ return -data[root(x)]; }
    bool same(int x, int y){ return root(x) == root(y); }
};

int main(){
    int N,M;
    scanf("%d %d",&N,&M);
    vector<int>A(M),B(M);
    rep(i,M){
        scanf("%d %d",&A[i],&B[i]);
        A[i]--,B[i]--;
    }
    
    int ans[M];
    ans[M-1]=N*(N-1)/2;

    UnionFind uf(N);
    for(int i=M-2;i>=0;i--){
        ans[i]=ans[i+1];
        if(!uf.same(A[i+1],B[i+1]))ans[i]-=uf.size(A[i+1])*uf.size(B[i+1]);
        uf.unite(A[i+1],B[i+1]);
    }

    rep(i,M)printf("%d\n",ans[i]);
}