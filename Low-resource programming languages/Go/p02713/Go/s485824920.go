package main

import (
	"fmt"
)

func gcd(a, b int) int {
	for b != 0 {
		r := a % b
		a = b
		b = r
	}
	return a
}

func main() {
	var k int
	fmt.Scan(&k)

	sum := 0
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++ {
				g1 := gcd(a, b)
				g2 := gcd(g1, c)
				sum += g2
			}
		}
	}

	fmt.Println(sum)
}