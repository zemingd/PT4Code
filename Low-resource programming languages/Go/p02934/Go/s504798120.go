package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var sum, a float64
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		sum += 1 / a
	}

	fmt.Println(1 / sum)
}
