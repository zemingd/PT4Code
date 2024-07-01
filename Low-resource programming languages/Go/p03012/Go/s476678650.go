package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	ws := make([]int, n)
	sum := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&ws[i])
		sum += ws[i]
	}

	res := 1000000
	t := 0
	for i := 0; i < n; i++ {
		t += ws[i]
		d := int(math.Abs(float64(t - (sum - t))))
		if d < res {
			res = d
		}
	}
	fmt.Println(res)
}
