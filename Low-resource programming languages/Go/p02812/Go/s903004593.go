package main

import (
	"fmt"
)

var n int
var s string

func main() {
	fmt.Scan(&n)
	fmt.Scan(&s)

	var c int
	for i := 0; i < n-2; i++ {
		if s[i] == 'A' &&
			s[i+1] == 'B' &&
			s[i+2] == 'C' {
			c++
		}
	}
	fmt.Print(c)
}
