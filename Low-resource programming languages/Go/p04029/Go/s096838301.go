package main

import (
	"fmt"
)

func main() {
	var n, s int
	fmt.Scan(&n)
	s = 0

	for i := 1; i <= n; i++ {
		s = s + i
	}

	fmt.Println(s)
}