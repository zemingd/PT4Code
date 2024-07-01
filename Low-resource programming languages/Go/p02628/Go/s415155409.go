package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	x := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &x[i])
	}

	sort.Ints(x)

	sum := 0
	for i := 0; i < k; i++ {
		sum += x[i]
	}
	fmt.Printf("%d", sum)
}
