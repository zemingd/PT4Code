package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	sort.Ints(h)

	min := 1000000000
	for i := 0; i < n-k+1; i++ {
		diff := h[i+k-1] - h[i]
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}