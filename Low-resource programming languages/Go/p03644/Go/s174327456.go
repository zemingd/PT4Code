package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(num(n))
}

func num(n int) int {
	var max int
	key := 1
	for ; n > 0; n-- {
		var c int
		for t := n; t%2 == 0; t /= 2 {
			c++
		}
		if c > max {
			max = c
			key = n
		}
	}
	return key
}
