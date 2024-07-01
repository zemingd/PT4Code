package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	max := a

	if max < b {
		max = b
	}
	if max < c {
		max = c
	}

	ans := a + b + c - max

	fmt.Println(ans)
}
