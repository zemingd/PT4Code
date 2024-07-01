package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code for C - Christmas Eve
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}

	sort.Sort(sort.IntSlice(h))

	var min int = 10000000000
	var temp int
	for i := 0; i < N-K+1; i++ {
		temp = h[i+K-1] - h[i]
		if min > temp {
			min = temp
		}
	}

	fmt.Println(min)
}
