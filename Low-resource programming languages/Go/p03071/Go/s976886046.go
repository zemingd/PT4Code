package main

import (
	"fmt"
)

func main() {
	var a, b, coin int
	fmt.Scan(&a, &b)

	if a == b {
		coin = 2 * a
	} else if a > b {
		coin = 2*a - 1
	} else {
		coin = 2*b - 1
	}
	fmt.Printf("%d", coin)
}
