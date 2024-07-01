package main

import (
	"fmt"
)

func main() {
	var a, b, x int64
	fmt.Scan(&a, &b, &x)
	f := func(n int64) int64 {
		if n == -1 {
			return 0
		} else {
			return n/x + 1
		}
	}
	fmt.Println(f(b) - f(a-1))
}
