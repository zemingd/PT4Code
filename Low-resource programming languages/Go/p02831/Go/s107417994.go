package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d", &a, &b)
	answer := leastCommonMultiple(a, b)
	fmt.Println(answer)
}

func leastCommonMultiple(a, b int) int {
	g := gcd(a, b)
	return a / g * b / g
}

func gcd(a, b int) int {
	if a < b {
		a, b = b, a
	}
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
