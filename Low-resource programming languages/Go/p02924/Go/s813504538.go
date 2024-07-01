package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	total := 0
	for i := 0; i < n-1; i++ {
		total += i + 1
	}

	fmt.Println(total)
}
