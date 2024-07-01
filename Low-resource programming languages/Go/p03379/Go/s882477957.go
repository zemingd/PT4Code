package main

import (
	"fmt"
	"sort"
)

func main() {
	n := 0
	fmt.Scan(&n)

	x := make([]int, n)
	for i := 0; i < n; i++ {
		tmp := 0
		fmt.Scan(&tmp)
		x[i] = tmp
	}

	X := make([]int, n)
	copy(X, x)
	sort.Ints(X)

	mid := n / 2
	for i := 0; i < n; i++ {
		if x[i] >= X[mid] {
			fmt.Println(X[mid])
		} else {
			fmt.Println(X[mid-1])
		}
	}
}
