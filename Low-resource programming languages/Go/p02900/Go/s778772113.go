package main

import (
	"fmt"
)

func gcd(x, y int) int {
	if x < y {
		x, y = y, x
	}

	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	G := gcd(A, B)

	ans := 1
	tmp := G
	p := 2
	for tmp > 1 {
		if tmp%p == 0 {
			ans++
			for tmp%p == 0 {
				tmp = tmp / p
			}
		}
		p++
	}
	fmt.Println(ans)
}
