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

	mid := len(x) / 2
	for i := 0; i < n; i++ {
		X := make([]int, len(x))
		copy(X, x)
		X = append(X[:i], X[i+1:]...)
		sort.Ints(X)
		fmt.Println(X[mid-1])
	}
}
