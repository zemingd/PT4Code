package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	answer := 0
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			g := gcd(a, b)
			for c := 1; c <= k; c++ {
				answer += gcd(g, c)
			}
		}
	}
	fmt.Println(answer)
}

func gcd(n1 int, n2 int) int {
	if n1%n2 > 0 {
		return gcd(n2, n1%n2)
	}
	return n2
}
