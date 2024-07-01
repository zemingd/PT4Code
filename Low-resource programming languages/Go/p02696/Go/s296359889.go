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
	for x := 1; x <= N; x++ {
		arr = append(arr, A*x/B-A*(x/B))
	}
	fmt.Println(max(arr...))
}