package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	sort.Ints(h)
	ans := 1000000000
	for i := 0; i+k-1 < n; i++ {
		if h[i+k-1]-h[i] < ans {
			ans = h[i+k-1] - h[i]
		}
	}
	fmt.Println(ans)
}
