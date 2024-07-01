package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	result := lcm(A, B)
	fmt.Println(result)
}

func gcd(A, B int) int {
	if B == 0 {
		return A
	}

	return gcd(B, A%B)
}

func lcm(A, B int) int {
	return A * B / gcd(A, B)
}
