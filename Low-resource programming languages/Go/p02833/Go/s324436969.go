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
	ans := 0
	denom := 10
	for N >= denom {
		ans += N / denom
		denom *= 5
	}
	return ans
}
