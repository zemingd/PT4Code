

#include <stdio.h>
int main(void){
    int n;
    int dig;
    int sum= 0;
    scanf("%d",&n);
    while(n){
        dig = n % 10;
        sum += dig;
        n /= 10;
    }
    if (sum % 9 == 0){
        printf("Yes");
    }else{
        printf("No");
    }
    return 0;

}