package main

import "fmt"

func gcd(A int, B int) int {

	if B == 0 {
		return A
	}
	return gcd(B, A%B)
}

func main() {

	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	var result int
	result = gcd(A, B)

	result = A * B / result
	fmt.Println(result)
}
