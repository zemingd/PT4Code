package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var sum float64

	for i := 0; i < n; i++ {
		var x int64
		fmt.Scan(&x)
		sum += 1.0 / float64(x)
	}

	fmt.Println(1. / sum)

}
