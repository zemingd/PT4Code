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

func max(a, b int) int {
	return -min(-a, -b)
}

func main() {
	var k, x int
	fmt.Scan(&k, &x)
	mi := max(-1000000, x-k)
	ma := min(1000000, x+k)
	for i := mi; i < ma; i++ {
		fmt.Print(mi, " ")
	}
	fmt.Println(ma)
}
