package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	N = N % 1000

	var change int
	if N == 0 {
		change = 0
	} else {
		change = 1000 - N
	}

	fmt.Println(change)
}
