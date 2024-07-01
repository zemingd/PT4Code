package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ns := make([]int, 0)
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			ns = append(ns, a[i]*a[j])
		}
	}

	sort.Ints(ns)
	fmt.Println(ns[k-1])
}
