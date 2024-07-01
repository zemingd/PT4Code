package main

import (
	"fmt"
)

func GCD(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)

	sum := 0
	for a := 1; a <= n; a++ {
		for b := 1; b <= n; b++ {
			for c := 1; c <= n; c++ {
				sum += GCD(GCD(a, b), c)
			}
		}
	}
	fmt.Println(sum)
}
