package main

import (
	"fmt"
)

func main() {
	var N, a int
	fmt.Scan(&N)
	var m int
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		m += a
	}

	fmt.Print(m - N)
}