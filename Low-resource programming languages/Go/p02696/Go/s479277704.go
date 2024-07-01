package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	var x int
	if b-1 <= n {
		x = b - 1
	} else {
		x = n
	}

	ans := (a * x / b) - a*(x/b)
	fmt.Println(ans)
}
