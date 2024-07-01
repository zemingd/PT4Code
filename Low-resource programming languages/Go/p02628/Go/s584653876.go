package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code for B - Mix Juice
	var n, k int
	var total = 0

	fmt.Scan(&n, &k)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)

	for i := 0; i < k; i++ {
		total += p[i]
	}
	fmt.Println(total)
}
