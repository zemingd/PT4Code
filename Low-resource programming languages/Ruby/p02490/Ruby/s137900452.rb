#include<stdio.h>

int main(void) {
int a,b;
while(scanf("%d\n", &a, &b) == 2) {
if(a==0&&b==0)break;
printf("%d %d\n", b, a);
}
return 0;
}