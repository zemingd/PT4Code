package main

import (
	"fmt"
)

func main() {
	var num int
	fmt.Scanf("%d", &num)

	fmt.Println(calc(num))
}

func calc(num int) int {
	var ret int
	var a, b, c int
	for a = 1; a <= num; a++ {
		for b = 1; b <= num; b++ {
			for c = 1; c <= num; c++ {
				ret = ret + gcd(gcd(a, b), c)
			}
		}
	}
	return ret
}
func gcd(a, b int) int {
	if a > b {
		return gcd(b, a)
	}
	for a != 0 {
		a, b = b%a, a
	}
	return b
}
