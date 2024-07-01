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
	for i := range h {
		fmt.Scan(&h[i])
	}
	sort.Ints(h)

	ans := math.MaxInt64
	for i := 0; i+K-1 < N; i++ {
		cnt := h[i+K-1] - h[i]
		ans = min(ans, cnt)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
