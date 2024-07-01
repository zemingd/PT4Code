package main

import (
	"fmt"
)

func gcd(n, m int) int {
	if n%m == 0 {
		return m
	}
	return gcd(m, n%m)
}

func main() {
	var k int
	fmt.Scan(&k)

	var res int
	for i := 1; i < k+1; i++ {
		for j := 1; j < k+1; j++ {
			for l := 1; l < k+1; l++ {
				res += gcd(gcd(i, j), l)
			}
		}
	}
	fmt.Println(res)
}
