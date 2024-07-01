package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var total int
	for i := 1; i < n; i++ {
		total += i
	}

	fmt.Println(total)
}
