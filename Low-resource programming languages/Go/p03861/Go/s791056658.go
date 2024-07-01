package main

import (
	"fmt"
)

func main() {
	a, b, x := SingleInt(), SingleInt(), SingleInt()

	t := b - a

	if t > 0 {
		fmt.Println(t/x + 1)
	} else {
		fmt.Println(t / x)
	}
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}
