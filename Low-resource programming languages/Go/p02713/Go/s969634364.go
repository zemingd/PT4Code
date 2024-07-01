package main

import "fmt"

func gcd(a, b int) int {
	if a > b {
		a, b = b, a
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}
func main() {
	var k int
	fmt.Scan(&k)
	var ans int
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++ {
				ans += gcd(gcd(a, b), c)
			}
		}
	}
	fmt.Println(ans)
}
