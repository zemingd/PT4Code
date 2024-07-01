package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	A := make([]bool, N)
	for i := 0; i < K; i++ {
		var d int
		fmt.Scanf("%d", &d)
		for j := 0; j < d; j++ {
			var a int
			fmt.Scanf("%d", &a)
			A[a-1] = true
		}
	}
	count := 0
	for i := 0; i < N; i++ {
		if !A[i] {
			count++
		}
	}
	fmt.Println(count)
}
