package main

import (
	"fmt"
)

func main() {
	var n, x, t int

	fmt.Scanf("%d %d %d", &n, &x, &t)
	num := n / x

	m := n % x
	if m > 0 {
		num++
	}
	fmt.Println(num * t)
}
