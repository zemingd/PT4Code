package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	for i := range w {
		fmt.Scan(&w[i])
	}
	s := make([]int, n+1)
	for i := 0; i < n; i++ {
		s[i+1] = w[i] + s[i]
	}
	ans := 10000
	for i := 1; i < n; i++ {
		s1 := s[i]
		s2 := s[n] - s1
		ans = min(ans, abs(s1-s2))
	}
	fmt.Println(ans)
}
