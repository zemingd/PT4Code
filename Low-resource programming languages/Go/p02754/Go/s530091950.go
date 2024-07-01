package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if a == 0 {
		fmt.Println(0)
		return
	}
	r1 := a * (n / (a + b))
	if r1 == 0 {
		fmt.Println(a)
		return
	}
	r2 := n % ((a + b))
	fmt.Println(r1 + r2)
}