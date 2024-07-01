package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	w := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&w[i])
	}
	d := make([]int, N-1)
	for i := 1; i < N; i++ {
		l := w[:i]
		r := w[i:]
		ls := sum(l)
		rs := sum(r)
		diff := ls - rs
		if diff < 0 {
			d[i-1] = -diff
			continue
		}
		d[i-1] = diff
	}
	sort.Sort(sort.IntSlice(d))
	fmt.Println(d[0])
}

func sum(a []int) int {
	var sum int
	for i := 0; i < len(a); i++ {
		sum += a[i]
	}
	return sum
}
