using namespace std;
#include<bits/stdc++.h>
#define BEGIN ios_base::sync_with_stdio(0);cin.tie(0)
#define END return EXIT_SUCCESS
#define FOR(I,A,B) for((I)=(A);(I)<(B);(I)++)
#define REP(I,N) FOR(I,0,N)
#define UP(I,A,B) for((I)=(A);(I)<=(B);(I)++)
#define DW(I,A,B) for((I)=(A);(I)>=(B);(I)--)
#define IN(P) cin>>(P)
#define IN2(P1,P2) cin>>(P1)>>(P2)
#define IN3(P1,P2,P3) cin>>(P1)>>(P2)>>(P3)
#define INS(I,N,V) REP(I,N) cin>>V[I]
#define INS2(I,N,V1,V2) REP(I,N) cin>>V1[I]>>V2[I];
#define INS3(I,N,V1,V2,V3) REP(I,N) cin>>V1[I]>>V2[I]>>V3[I];
#define OUT(P) cout<<P<<endl
#define OUT2(P1,P2) cout<<P1<<" "<<P2<<endl
#define OUT3(P1,P2,P3) cout<<P1<<" "<<P2<<" "<<P3<<endl
#define OUTS(I,N,V) REP(I,N) cout<<V[i]<<endl
#define ALL(C) (C).begin(),(C).end()
#define RALL(C) (C).rbegin(),(C).rend()
#define mp make_pair
#define pb push_back
typedef unsigned long ul;
typedef unsigned int ui;
template<class T> inline bool chmax(T& a, T b) { if (a < b) { a = b; return true; } return false; }
template<class T> inline bool chmin(T& a, T b) { if (a > b) { a = b; return true; } return false; }
long A,B,C,D,E,F,i,j,t,max_water,max_sugar;
double concentration;
vector<long> water,sugar;

inline void solve(){
  cin>>A>>B>>C>>D>>E>>F;
  REP(i,F){
    REP(j,F){
      t=100*A*i+100*B*j;
      if(t<=F)water.pb(t);
    }
  }
  REP(i,F){
    REP(j,F){
      t=C*i+D*j;
      if(t<=F)sugar.pb(t);
    }
  }
  REP(i,(long)water.size()){
    REP(j,(long)sugar.size()){
      if(water[i]+sugar[j]<=F &&
      sugar[j]<=E*water[i]/100.0){
        if(concentration<(double)sugar[j]/(water[i]+sugar[j])){
          concentration=(double)sugar[j]/(water[i]+sugar[j]);
          max_water=water[i];
          max_sugar=sugar[j];
        }
      }
    }
  }
  OUT2(max_water+max_sugar,max_sugar);
}

int main(int argc,char**argv){
  BEGIN;
  solve();
  END;
}
