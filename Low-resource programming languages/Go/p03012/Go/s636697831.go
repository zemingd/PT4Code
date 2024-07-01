package main

import (
	"fmt"
)

func sum(n []int) int {
	ans := 0
	for _, v := range n {
		ans += v
	}
	return ans
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i])
	}

	ans := 10000
	for i := 1; i <= n; i++ {
		if abs(sum(w[i:])-sum(w[:i])) < ans {
			ans = abs(sum(w[i:]) - sum(w[:i]))
		}
	}
	fmt.Println(ans)
}
