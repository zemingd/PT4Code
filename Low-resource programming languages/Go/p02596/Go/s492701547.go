package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)
	n := 7
	for i := 1; i < int(1e6+5); i++ {
		if n%k == 0 {
			fmt.Println(i)
			return
		}
		n *= 10
		n += 7
		n %= k
	}
	fmt.Println(-1)
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
