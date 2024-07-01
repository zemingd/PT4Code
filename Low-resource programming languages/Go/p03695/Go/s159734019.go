#include <stdio.h>


int main() {
    int N;
    scanf("%d", &N);

    int r[9] = {};
    for(int i=0; i < N; i++) {
        int a;
        scanf("%d", &a);
        if (a < 400) r[0]++;
        else if (a < 800) r[1]++;
        else if (a < 1200) r[2]++;
        else if (a < 1600) r[3]++;
        else if (a < 2000) r[4]++;
        else if (a < 2400) r[5]++;
        else if (a < 2800) r[6]++;
        else if (a < 3200) r[7]++;
        else r[8]++;
    }
    int pat = 0;
    for (int i=0; i < 8; i++) {
        if (r[i] != 0) pat++;
    }
    int min = pat;
    if (min == 0) min=1;
    int max = pat + r[8];
    if (max > 8) max = 8;

    printf("%d %d\n", min, max);
}