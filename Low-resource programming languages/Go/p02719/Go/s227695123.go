package main

import (
	"fmt"
)

var n, k int

func main() {
	fmt.Scan(&n, &k)

	n = n % k
	for n > 0 && k%n != 0 {
		n = n % k
		if n > k/2 {
			n = k - n
		}
	}
	fmt.Println(n)
}

func abs(n int) int {
	if n > 0 {
		return n
	}
	return -n
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
