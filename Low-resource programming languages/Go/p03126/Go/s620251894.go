package main

import (
	"fmt"
)

func main() {
	var N, M, K, r int
	fmt.Scan(&N, &M)
	//ta := make([][]int, N, M)
	var ta [][]int
	for i := 0; i < N; i++ {
		fmt.Scan(&K)
		va := make([]int, M)
		wa := make([]int, K)
		for j := 0; j < K; j++ {
			fmt.Scan(&wa[j])
		}
		for k := 0; k < len(wa); k++ {
			va[wa[k]-1] = 1
		}
		ta = append(ta, va)
	}
	for j := 0; j < M; j++ {
		b := true
		for i := 0; i < N; i++ {
			if ta[i][j] == 0 {
				b = false
			}
		}
		if b {
			r++
		}
	}
	fmt.Println(r)

}