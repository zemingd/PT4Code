package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(gcd(a, b))
	fmt.Print(lcm(a, b))
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func gcd(a, b int) int {
	for i := min(a, b); i >= 1; i-- {
		if a % i == 0 && b % i == 0 {
			return i
		}
	}
	return 0
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}