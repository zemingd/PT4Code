package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)

	var r int
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++{
				r += gcd(gcd(a, b), c)
			}
		}
	}
	fmt.Println(r)
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}