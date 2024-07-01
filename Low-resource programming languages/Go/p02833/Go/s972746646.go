package main

import (
	"fmt"
)

func doubleFactorial(n int) int {
	if n&1 == 1 {
		return 0
	}

	var c, m int
	m = 10
	for n >= m {
		c += n / m
		m *= 5
	}
	return c
}

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(doubleFactorial(n))
}
