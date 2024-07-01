package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	vs := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&vs[i])
	}
	sort.Float64s(vs)

	ans := vs[0]
	for i := 1; i < n; i++ {
		ans += vs[i]
		ans /= 2.0
	}
	fmt.Printf("%0.10f\n", ans)
}
