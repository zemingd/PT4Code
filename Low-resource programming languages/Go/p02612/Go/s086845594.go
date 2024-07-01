package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)

	for a > 0{
		a = a - 1000
	}
	fmt.Println(abs(a))
}

// http://cavaliercoder.com/blog/optimized-abs-for-int64-in-go.html
func abs(n int) int {
	y := n >> 63
	return (n ^ y) - y
}
