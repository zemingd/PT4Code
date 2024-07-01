package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)
	max := 1
	for i := 2; i < x; i++ {
		xx := i * i
		for xx <= x {
			if xx > max {
				max = xx
			}
			xx *= i
		}
	}
	fmt.Println(max)
}