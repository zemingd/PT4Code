package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	sum := 0
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++ {
				sum += gcd(gcd(a, b), c)
			}
		}
	}

	fmt.Println(sum)
}

func gcd(a, b int) int {
	if a > b {
		return gcd(b, a)
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}
