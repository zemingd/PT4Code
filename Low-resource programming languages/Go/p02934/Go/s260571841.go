package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var sum float64
	for i := 0; i < N; i++ {
		var a float64
		fmt.Scan(&a)
		sum += 1 / a
	}
	fmt.Println(1 / sum)
}
