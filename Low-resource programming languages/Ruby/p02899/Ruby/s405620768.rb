#include<bits/stdc++.h>

using namespace std;

main(){
  int n;
  cin>>n;

  int aa[n];
//  for(int i=0;i<n;i++){ cin>>aa[i]; }
  for(int i=0;i<n;i++){
    int c;
    cin>>c;
    aa[c-1]=i+1;
  }
  
  for(int i=0;i<n;i++){
    cout<<aa[i]<<' ';
  }
  cout<<endl;
}