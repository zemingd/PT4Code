package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}
	sort.Ints(h)
	min := math.MaxInt32
	for i := 0; i < N-K+1; i++ {
		diff := h[i+K-1] - h[K]
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
