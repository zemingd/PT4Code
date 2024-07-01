package main

import (
	"fmt"
)

var n, k int

func main() {
	fmt.Scan(&n, &k)

	for n > 0 && n%k != n  {
		n = n % k
		if n > k/2 {
			n = k - n
		}
		if n == 1 {
			break
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
