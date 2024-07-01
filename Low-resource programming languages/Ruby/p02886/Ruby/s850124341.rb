#include <stdio.h>

int main(){
  int n,count=0;
  scanf("%d",&n);
  int d[n];
  for(int i=0;i<n;i++){
    scanf("%d",&d[i]);
  }
  for(int i=0;i<n;i++){
    for(int j=i+1;j<n;j++){
      count+=d[i]*d[j];
    }
  }
  printf("%d",count);
}