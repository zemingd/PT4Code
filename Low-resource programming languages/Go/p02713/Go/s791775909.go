package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	var sum int
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
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
