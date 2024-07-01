package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	b := make([]int, N)
	c := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&b[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&c[i])
	}
	sort.Sort(sort.IntSlice(a))
	sort.Sort(sort.IntSlice(b))
	sort.Sort(sort.IntSlice(c))

	mb := make([]int, len(b))
	for i := 0; i < len(b); i++ {
		ci := UpperBound(c, b[i])
		mb[i] = len(b) - ci
	}

	sum := 0
	for i := 0; i < len(a); i++ {
		bi := UpperBound(b, a[i])
		for j := bi; j < len(b); j++ {
			sum += mb[j]
		}
	}
	fmt.Println(sum)
}
func UpperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}
