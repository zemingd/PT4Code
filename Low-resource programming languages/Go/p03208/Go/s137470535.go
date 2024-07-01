package main

import (
	"fmt"
	"sort"
)

const inf = 1 << 60

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&hs[i])
	}
	sort.Ints(hs)

	minDiff := inf
	for i := 0; i < n-k+1; i++ {
		tmp := hs[i+k-1] - hs[i]
		if tmp < minDiff {
			minDiff = tmp
		}
	}
	fmt.Println(minDiff)
}
