package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	count := 0
	pow := 1
	for pow << 1 <= n {
		count++
		pow = pow << 1
	}

	fmt.Println(pow)
}
