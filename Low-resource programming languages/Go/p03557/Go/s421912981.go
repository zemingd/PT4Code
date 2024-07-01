package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	aa := make([]int, n)
	bb := make([]int, n)
	cc := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&aa[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&bb[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&cc[i])
	}

	sort.Ints(aa)
	sort.Ints(cc)

	sum := 0
	for _, b := range bb {
		i := sort.SearchInts(aa, b)
		j := sort.SearchInts(cc, b+1)
		sum += i * (n - j)
	}

	fmt.Println(sum)
}
