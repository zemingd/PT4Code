package main

import (
	"fmt"
	"math"
)

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	for i := range w {
		fmt.Scan(&w[i])
	}
	ans := math.MaxInt32

	for i := 0; i < len(w); i++ {
		var s1, s2 int
		for j := 0; j < i; j++ {
			s1 += w[j]
		}
		for j := i; j < n; j++ {
			s2 += w[j]
		}
		ans = min(ans, abs(s1-s2))
	}
	fmt.Println(ans)
}
