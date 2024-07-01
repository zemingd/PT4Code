package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	var count int

	fmt.Scan(&n, &k)

	a := make([]int, n)
	result := make([]int, n*(n-1)/2)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			result[count] = a[i] * a[j]
			count++
		}
	}

	sort.Sort(sort.IntSlice(result))
	fmt.Println(result[k-1])
}
