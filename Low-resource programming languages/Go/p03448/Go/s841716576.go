package main

import (
	"fmt"
)

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)
	res := 0
	var total int
	for A := 0; A <= a; A++ {
		for B := 0; B <= b; B++ {
			for C := 0; C <= c; C++ {
				total = 500*A + 100*B + 50*C
				if total == x {
					res += 1
				}
			}
		}
	}
	fmt.Println(res)
}
