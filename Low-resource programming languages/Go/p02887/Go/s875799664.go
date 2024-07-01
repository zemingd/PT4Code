package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s []byte
	fmt.Scan(&s)
	var cnt int
	var p byte
	for i := range s {
		if s[i] != p {
			cnt++
		}
		p = s[i]
	}
	fmt.Println(cnt)
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
