package main

import (
	"fmt"
)

const LARGE = 100000 * 10000 * 2

var h [100000]int
var c [100000]int

func abs(x int) int {
	if x >= 0 {
		return x
	} else {
		return -x
	}
}

func min(a, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	c[n-1] = 0
	for i := n - 2; i >= 0; i-- {
		c[i] = LARGE
		for j := 1; i+j < n && j <= k; j++ {
			a := c[i+j] + abs(h[i+j]-h[i])
			c[i] = min(a, c[i])
		}
	}

	fmt.Printf("%d\n", c[0])
}
