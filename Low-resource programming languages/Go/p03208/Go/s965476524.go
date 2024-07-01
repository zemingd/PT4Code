package main

import (
	"fmt"
	"sort"
)

func tree(n, k int, h []int) int {
	sort.Ints(h)
	min := h[len(h)-1]
	for i := 0; i+k <= n; i++ {
		x, n := i+k-1, i
		diff := h[x] - h[n]
		if diff < min {
			min = diff
		}
	}
	return min
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}
	fmt.Println(tree(n, k, h))
}
