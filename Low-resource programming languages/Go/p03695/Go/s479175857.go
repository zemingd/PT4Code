package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int)
	o := 0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		r := a / 400
		if a >= 3200 {
			o++
		} else {
			m[r]++
		}
	}

	c := len(m)
	min := 0.0
	if o > 0 {
		min = 1.0
	}
	min = math.Max(min, float64(c))
	fmt.Println(int(min), c+o)
}
