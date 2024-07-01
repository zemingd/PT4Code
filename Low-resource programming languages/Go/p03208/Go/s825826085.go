package main

import (
	"fmt"
	"sort"
)

func solve(h []int, n, k int) {
	min := 99999999999
	for i := 0; i < n-k+1; i++ {
		if h[i+k-1]-h[i] < min {
			min = h[i+k-1] - h[i]
		}
	}
	fmt.Println(min)
}
func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var h = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}
	sort.Ints(h)
	solve(h, n, k)
}