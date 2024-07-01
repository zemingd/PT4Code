package main

import (
	"fmt"
)

func main() {
	var (
		k, x int
	)
	fmt.Scan(&k, &x)
	first := true
	for i := x - (k - 1); i < x+k; i++ {
		if !first {
			fmt.Print(" ")
		}
		first = false
		fmt.Print(i)
	}
}
