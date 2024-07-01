package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if a < b {
		b, a = a, b
	}
	if b == 0 {
		return a
	} else {
		return gcd(b, a%b)
	}
}

func main() {
	var A, B int
	fmt.Scan(&A)
	fmt.Scan(&B)
	d := gcd(A, B)
	fmt.Printf("%d\n", A*B/d)
}
