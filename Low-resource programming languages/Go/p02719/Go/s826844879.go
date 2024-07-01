package main

import (
	"fmt"
)

var n, k int

func main() {
	fmt.Scan(&n, &k)

	n = min(n%k, k-n%k)
	for n%k != 0 && k%n != 0 {
		n = min(n%k, k-n%k)
		if n == 0 || k%n == 0 {
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
func gcd(a, b int) int {
	for b > 0 {
		a, b = b, a%b
	}
	return a
}
