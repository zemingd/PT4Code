package main

import "fmt"

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	fmt.Println(lcm(A, B))
}
