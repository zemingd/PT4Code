package main

import (
	"fmt"
)

func main() {
	var n int
	var value float64
	fmt.Scan(&n)

	sum := 0.0
	for i := 0; i < n; i++ {
		fmt.Scan(&value)

		sum += 1 / value
	}
	fmt.Println(1 / sum)
}
