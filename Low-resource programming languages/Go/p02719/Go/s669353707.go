package main

import (
	"fmt"
)

func main() {
	var n, k int64
	fmt.Scan(&n)
	fmt.Scan(&k)
	if k != 1 {
		fmt.Println(gcd(n, k))
	} else {
		fmt.Println(0)
	}
}

func gcd(a, b int64) int64 {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
