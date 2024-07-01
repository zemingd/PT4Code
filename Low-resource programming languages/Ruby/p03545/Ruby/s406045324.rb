#include <bits/stdc++.h>
using namespace std;

int main(){
    int x;
    cin >> x;
    int a = x / 1000;
    x = x - a*1000;
    int b = x/100;
    x = x - b*100;
    int c = x/10;
    x = x -c*10;
    int d = x;
    for(int i = 0; i<2; i++){
        for(int j = 0; j < 2; j++){
            for(int k = 0; k < 2; k++){
                if(a+(-1)^i*b+(-1)^j*c+(-1)^k*d == 7){
                    char op1;char op2; char op3;
                    if(i == 0){
                        op1 = '+';
                    }else{
                        op1 = '-';
                    }
                    if(j == 0){
                        op2 ='+';
                    }else{
                        op2 = '-';
                    }
                    if(k== 0){
                        op3 = '+';
                    }else{
                        op3 = '-';
                    }
                    printf("%d%c%d%c%d%c%d=7\n",a,op1,b,op2,c,op3,d);
                  return 0;
                }
            }
        }
    } 
}

  