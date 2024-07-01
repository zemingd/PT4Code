package main

import (
	"fmt"
)

func main() {
	var s, t []byte
	fmt.Scan(&s)
	fmt.Scan(&t)
	var ans int
	for i := range s {
		if s[i] != t[i] {
			ans++
		}
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
