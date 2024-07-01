package main

import (
	"fmt"
	"math"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)

	var min float64 = 1000000
	for i := 0; i < n; i++ {
		var c1, t1 int
		fmt.Scan(&c1, &t1)

		if t1 <= t {
			min = math.Min(float64(min), float64(c1))
		}
	}
	if min == 1000000 {
		fmt.Println("TLE")
		return
	}
	fmt.Println(min)
}
