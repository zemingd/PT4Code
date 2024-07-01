package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func main() {

	var n int
	sum := 0

	fmt.Scan(&n)

	t := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&t[i])
		sum += t[i]
	}

	a := 0
	b := sum
	c := sum
	ans := sum
	for _, x := range t {
		a += x
		b -= x
		c = abs(a - b)
		if c < ans {
			ans = c
		}
	}
	fmt.Println(ans)
}
