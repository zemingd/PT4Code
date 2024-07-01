package main

import (
	"fmt"
)

func max(arr ...int) int {
	max := 0
	for _, v := range arr {
		if max <= v {
			max = v
		}
	}
	return max
}

func main() {
	var A, B, N int
	fmt.Scan(&A, &B, &N)
	var arr []int
	if N < B {
		fmt.Println(A * N / B)
	} else {
		for x := N / 2; x <= N; x++ {
			arr = append(arr, A*x/B-A*(x/B))
		}
		fmt.Println(max(arr...))
	}
}