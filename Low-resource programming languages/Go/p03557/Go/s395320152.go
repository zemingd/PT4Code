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
	sum := 0
	for i := 0; i < N; i++ {
		bi := UpperBound(b, a[i])
		wb := b[bi:]
		for j := 0; j < len(wb); j++ {
			ci := UpperBound(c, wb[j])
			sum += len(c) - ci
		}
	}
	fmt.Println(sum)
}
func UpperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}
