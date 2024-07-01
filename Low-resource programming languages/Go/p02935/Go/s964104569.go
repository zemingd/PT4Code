package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&a[i])
	}
	sort.Sort(sort.IntSlice(a))
	var w float64
	w = float64(a[0]+a[1]) / 2
	for i := 2; i < N; i++ {
		w = (w + float64(a[i])) / 2
	}
	fmt.Println(w)
}