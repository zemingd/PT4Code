package main

import (
	"fmt"
	"math"
)

func main() {
	var n, t, a int
	fmt.Scan(&n, &t, &a)

	var min float64 = 1000000000
	var p int
	for i := 1; i <= n; i++ {
		var num int
		fmt.Scan(&num)
		var result = math.Abs(12 - float64(num)*0.006 - float64(t))
		if result < min {
			min = result
			p = i
		}
	}

	fmt.Println(p)
}
