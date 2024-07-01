package main

import (
	"fmt"
)

func main() {
	a, b := SingleInt(), SingleInt()

	if a-b >= 1 {
		fmt.Printf("%#v\n", a+(a-1))
		return
	}

	if a == b {
		fmt.Printf("%#v\n", a+b)
		return
	}

	if b-a >= 1 {
		fmt.Printf("%#v\n", b+(b-1))
		return
	}
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}
