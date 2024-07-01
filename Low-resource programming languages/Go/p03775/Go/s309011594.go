package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	min := math.MaxInt8
	for i := 1; i*i <= n; i++ {
		if n%i != 0 {
			continue
		}

		a := f(i, n/i)
		if a < min {
			min = a
		}
	}

	fmt.Println(min)
}

func f(a, b int) int {
	return max(digits(a), digits(b))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func digits(n int) int {
	s := strconv.Itoa(n)
	return len(s)
}
