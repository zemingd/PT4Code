package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var sum, before int
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if before < a {
			sum += a - before
		}
		before = a
	}
	fmt.Println(sum)
}
