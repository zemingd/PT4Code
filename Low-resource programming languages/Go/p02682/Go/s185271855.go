package main

import (
	"fmt"
)

func main() {
	var a, b, c, k int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &k)

	useA, useB, useC := 0, 0, 0
	if k > a {
		useA = a
		k -= a
		if k > b {
			useB = b
			k -= b
			if k > c {
				useC = c
			} else {
				useC = k
			}
		} else {
			useB = k
			k = 0
		}
	} else {
		useA = k
		k = 0
	}
	fmt.Println(1*useA + 0*useB + -1*useC)
}
