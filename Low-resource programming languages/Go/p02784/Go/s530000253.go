package main

import (
	"fmt"
)

func main() {
	var H, N int
	fmt.Scan(&H)
	fmt.Scan(&N)
	a := make([]int, N)

	var r int
	for i := range a {
		fmt.Scan(&a[i])
		r += a[i]
	}
	var s string
	if r >= H {
		s = "Yes"
	} else {
		s = "No"
	}
	fmt.Printf("%s", s)
}
