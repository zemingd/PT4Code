package main

import (
	"fmt"
)

func gtm(a, b int) int {
	if a < b {
		a, b = b, a
	}

	r := a % b
	for ;r != 0; {
		a = b
		b = r
		r = a % b
	}

	return b
}

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)	

	lcm := a * b / gtm(a, b)
	fmt.Println(lcm)
}