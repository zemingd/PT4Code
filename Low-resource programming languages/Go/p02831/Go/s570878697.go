package main

import "fmt"

func main() {
	var a, b int

	fmt.Scan(&a)
	fmt.Scan(&b)

	fmt.Println(a * b / gcd(a, b))
}

func gcd(n1, n2 int) int {
	if n1%n2 == 0 {
		return n2
	} else {
		return gcd(n2, n1%n2)
	}
}
