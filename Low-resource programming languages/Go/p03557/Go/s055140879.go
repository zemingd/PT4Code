package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	as, bs, cs := make([]int, n), make([]int, n), make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	for i := range cs {
		fmt.Scan(&cs[i])
	}

	sort.Ints(as)
	sort.Ints(cs)
	var sum int
	for _, b := range bs {
		aCnt := lowerBound(as, b)
		cCnt := n - upperBound(cs, b)
		sum += aCnt * cCnt
	}

	fmt.Println(sum)
}

func lowerBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] >= x })
}

func upperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}
