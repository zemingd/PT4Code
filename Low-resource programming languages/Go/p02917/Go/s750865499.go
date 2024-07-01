package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	b := make([]int, n-1)
	ans := 0
	for i := 0; i < n-1; i++ {
		fmt.Scan(&b[i])
	}

	for i := 0; i < n-2; i++ {
		ans += min(b[i], b[i+1])
	}
	fmt.Println(ans + b[0] + b[n-2])
}

func min(a, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}
