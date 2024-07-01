package main

import (
	"fmt"
)

func main() {
	a, b, x := SingleInt(), SingleInt(), SingleInt()

	// 5 36 5 --- 5, 10, 15, 20, 25, 30, 35
	// 4 35 5 --- 5, 10, 15, 20, 25, 30, 35
	// 5 --- 35

	if a == 0 && b == 0 {
		fmt.Println(1)
	}
	t := (b - a) / x

	if t > 0 {
		fmt.Println(t + 1)
	} else {
		fmt.Println(t)
	}
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}
