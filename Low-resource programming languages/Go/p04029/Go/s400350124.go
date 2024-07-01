package main

import (
	"fmt"
)

func main() {
	var n, total_candy int
	fmt.Scan(&n)

	for i := 1; i <= n; i++ {
		total_candy =+ i
	}

	fmt.Println(total_candy)
}