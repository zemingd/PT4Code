package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
	}
	sort.Ints(h)

	ans := 1000000000
	for i := 0; i < N-(K-1); i++ {
		t := h[i+K-1] - h[i]
		if t < ans {
			ans = t
		}
	}
	fmt.Println(ans)
}
