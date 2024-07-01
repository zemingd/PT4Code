package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	var a, b []int

	fmt.Scan(&N)
	for i:=0;i<N;i++ {
		var x int
		fmt.Scan(&x)
		a = append(a, x)
	}

	sort.Sort(sort.IntSlice(a))
	b = append(b, a[0])
	for _, v := range a {
		if b[len(b) - 1] < v {
			b = append(b, v)
		}
	}

	fmt.Print(len(b))
}