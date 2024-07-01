package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	max := 0.0
	vs := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vs[i])
	}

	sort.Float64s(vs)
	cur := vs[0]
	for i := 1 ; i < n; i++ {
		cur = (cur +vs[i])/2.0
	}
	if cur > max {
		max = cur
	}
	fmt.Println(max)

}
