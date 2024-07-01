package main

import (
	"fmt"
)

func main() {
	var N int //読み込む数
	var sum int
	fmt.Scanf("%d", &N)
	var L [100]int
	for i := 0; i < N; i++ {
		fmt.Scan("%d", &L[i])
	}
	//辺の読み取り
	for i := 0; i < N; i++ {
		for k := i + 1; k < N; k++ {
			for j := k + 1; j < N; j++ {
				if L[i] < L[k]+L[j] || L[k] < L[j]+L[i] || L[j] < L[i]+L[k] || L[i] != L[j] || L[j] != L[k] || L[k] != L[i] {
					sum++
				}
			}
		}
	}
	fmt.Printf("%d", sum)
}
