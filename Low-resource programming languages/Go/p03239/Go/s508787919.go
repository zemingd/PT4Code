package main

import (
	"fmt"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var N, T int
	fmt.Scan(&N, &T)

	minc := 1001
	for i := 0; i < N; i++ {
		var c, t int
		fmt.Scan(&c, &t)
		if t > T {
			continue
		}
		minc = min(minc, c)
	}

	if minc == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(minc)
	}
}
