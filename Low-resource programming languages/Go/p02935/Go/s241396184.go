package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	vs := make([]int, n)
	for i := range vs {
		fmt.Scan(&vs[i])
	}

	sort.Ints(vs)
	sum := float64(vs[0])
	for i := 1; i < n; i++ {
		sum = (sum + float64(vs[i])) / 2
	}

	fmt.Println(sum)
}
