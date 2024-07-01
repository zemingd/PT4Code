package main

import (
	"fmt"
	"math"
)

func main() {
	var n int

	fmt.Scan(&n)
	count, prev := 0, math.MaxInt64
	for i := 0; i < n; i++ {
		var p int
		fmt.Scan(&p)
		if p < prev {
			prev = p
			count++
		}
	}

	fmt.Println(count)
}
