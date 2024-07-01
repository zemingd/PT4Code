package main

import (
	"fmt"
)

func main() {
	var s, t []byte
	fmt.Scan(&s, &t)
	ans := 10000
	for i := 0; i <= len(s)-len(t); i++ {
		var cnt int
		for j := i; j < i+len(t); j++ {
			if s[j] != t[j-i] {
				cnt++
			}
		}
		ans = min(ans, cnt)
	}
	fmt.Println(ans)
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
