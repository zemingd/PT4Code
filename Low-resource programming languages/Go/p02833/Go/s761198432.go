package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	fmt.Println(solve(N))
}

func solve(N int) int {
	if N%2 == 1 {
		return 0
	}
	return g1(N / 2)
}

func g1(n int) int {
	if n == 0 {
		return 0
	}
	return n/5 + g1(n/5)
}
