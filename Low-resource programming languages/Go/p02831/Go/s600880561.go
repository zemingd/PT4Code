package main

import "fmt"

func gcd(A int, B int) int {

	if B == 0 {
		return A
	}
	return gcd(B, A%B)
}

func lcm(A int, B int) int {

	return A * B / gcd(A, B)
}

func main() {

	var A, B int
	fmt.Scanf("%d %d", &A, &B)

	fmt.Println(lcm(A, B))
}
