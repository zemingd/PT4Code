package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	bs := make([]int, n-1)
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	as := make([]int, n)
	for i := 0; i < n; i++ {
		as[i] = 1e10
	}

	for i := 0; i < n-1; i++ {
		as[i] = min(as[i], bs[i])
		as[i+1] = min(as[i+1], bs[i])
	}

	fmt.Println(sum(as...))
}

func sum(slice ...int) int {
	sum := 0
	for _, v := range slice {
		sum += v
	}
	return sum
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
