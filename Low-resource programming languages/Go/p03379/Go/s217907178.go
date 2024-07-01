package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}
	ys := make([]int, n)
	copy(ys, xs)
	sort.Ints(ys)
	ml, mr := ys[n/2-1], ys[n/2]
	for _, x := range xs {
		if x <= ml {
			fmt.Println(mr)
		} else {
			fmt.Println(ml)
		}
	}
}
