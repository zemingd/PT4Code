package main

import (
	"fmt"
	"math"
)

func min(x, y int) int {
	if x <= y {
		return x
	}
	return y
}

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)
	x--
	y--

	count := make(map[int]int)
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			d := min(j-i, int(math.Abs(float64(x-i)))+1+int(math.Abs(float64(j-y))))
			count[d]++
		}
	}

	for k := 1; k < n; k++ {
		fmt.Println(count[k])
	}
}
