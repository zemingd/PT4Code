package main

import (
	"fmt"
)

func main() {
	var n int
	var x int
	var t int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &t)

	times := n / x
	if n%x > 0 {
		times++
	}

	fmt.Println(times * t)
}