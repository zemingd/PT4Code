package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	k--
	tree := make([]int, n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		tree[i] = tmp
	}
	sort.Sort(sort.IntSlice(tree))
	min := math.MaxInt32
	for i := 0; i < n - k; i++ {
		if min > tree[i + k] - tree[i] {
			min = tree[i + k] - tree[i]
		}
	}
	fmt.Println(min)
}