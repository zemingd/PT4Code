package main

import (
	"fmt"
)

func main() {
	var D, N int
	fmt.Scan(&D, &N)
	a := 0
	if D == 0 {
		a = N
	} else if D == 1 {
		a = N * 100
	} else if D == 2 {
		a = N * 100 * 100
	}
	fmt.Print(a)
}