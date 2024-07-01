package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	result, v, c := make([]int, n), make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	for i := 0; i < n; i++ {
		result[i] = v[i] - c[i]
	}
	sort.Sort(sort.Reverse(sort.IntSlice(result)))
	if n == 1 {
		fmt.Print(0)
	} else {
		fmt.Print(result[0] + result[1])
	}
}
