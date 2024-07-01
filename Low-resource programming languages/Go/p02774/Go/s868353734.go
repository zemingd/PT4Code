package main

import (
	"fmt"
	"sort"
)

func main() {
	var (
		n, k int

	)
	fmt.Scan(&n, &k)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	var pair []int

	for i := 0; i < n-1; i++ {
		for j := i+1; j < n; j++ {
			pair = append(pair, a[i]*a[j])
		}
	}
	sort.Ints(pair)
	fmt.Println(pair[k-1])
}
