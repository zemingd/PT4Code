#include <stdio.h>
#include <stdlib.h>
int main(){
        int n,r=0;
        scanf("%d",&n);
        int a[n];
        for(int i=0;i<n;i++)scanf("%d",&a[i]);
        if((a[1]^a[n-1])==a[0]){
                r=0;
        }else{
                r=1;
        }
        for(int i=1;i<n-2;i++){
                if((a[i-1]^a[i+1])==a[i]){
                        r=0;
                }else{
                        r=1;
                }
        }
        if((a[0]^a[n-2])==a[n-1]){
                r=0;
        }else{
                r=1;
        }
        if(r==0){
                printf("Yes");
        }else{
                printf("No");
        }
        return 0;
}