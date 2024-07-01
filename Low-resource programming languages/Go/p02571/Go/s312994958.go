package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	var ans int
	for i := 0; i <= len(s)-len(t); i++ {
		var cnt int
		for j := 0; j < len(t); j++ {
			if s[i:][j] == t[j] {
				cnt++
			}
		}
		ans = max(ans, cnt)
	}

	fmt.Println(len(t) - ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
