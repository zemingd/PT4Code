package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]float64, n)
	for i := range v {
		fmt.Scan(&v[i])
	}

	for len(v) > 1 {
		sort.Float64s(v)
		x, y := v[0], v[1]
		v = append(v, (x+y)/2)
		v = v[2:]
	}

	fmt.Println(v[0])
}
