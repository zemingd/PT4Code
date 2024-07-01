package main

import (
	"fmt"
)

func doubleFactorial(n uint64) uint64 {
	if n&1 == 1 {
		return 0
	}

	var c, m uint64
	m = 10
	for n > m {
		c = c + (n / m)
		m *= 5
	}
	return c
}

func main() {
	var n uint64
	fmt.Scan(&n)
	fmt.Println(doubleFactorial(n))
}
