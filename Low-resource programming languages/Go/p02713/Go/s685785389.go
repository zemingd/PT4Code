package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func main() {
	var K, sum int
	fmt.Scan(&K)
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				sum += gcd(c, gcd(a, b))
			}
		}
	}
	fmt.Println(sum)
}
