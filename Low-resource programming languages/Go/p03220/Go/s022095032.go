package main

import (
	"fmt"
	"math"
)

func main() {
	var n, t, a, h int
	fmt.Scan(&n, &t, &a)
	m := 0.0
	j := -1
	for i := 0; i < n; i++ {
		fmt.Scan(&h)
		x := float64(t) - float64(h)*0.006
		d := math.Abs(x - float64(a))
		if j == -1 || d < m {
			m = d
			j = i
		}
	}
	fmt.Println(j + 1)
}
