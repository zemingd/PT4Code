package main

import (
	f "fmt"
)

func main() {
	var N, K int
	f.Scanf("%d %d", &N, &K)

	var d, s int
	A := make([]int, N)
	for i := 0; i < K; i++ {
		f.Scanf("%d", &d)
		for j := 0; j < d; j++ {
			f.Scanf("%d", &s)
			A[s-1] = 1
		}
	}

	var count int
	for i := 0; i < N; i++ {
		if A[i] == 0 {
			count++
		}
	}

	f.Println(count)
}