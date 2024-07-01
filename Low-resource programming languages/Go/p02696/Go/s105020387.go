package main

import (
	"fmt"
)

func main() {
	var a, b int
	var n int
	fmt.Scan(&a, &b, &n)
	if n >= b {
		fmt.Println(a*(b-1)/b - a*(b-1)/b)
	} else {
		fmt.Println(a*n/b - a*(n/b))
	}
}
