package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var n int
	fmt.Scan(&n)

	var a, b int
	for i := 1; i < n+1; i++ {
		fmt.Scan(&a)
		if i == 1 {
			b = a
		} else {
			b = gcd(b, a)
		}
	}
	fmt.Println(b)
}