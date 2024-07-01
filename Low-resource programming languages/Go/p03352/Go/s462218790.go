package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	max := 0
	for i := 1; i <= x; i++ {
		if i*i > x {
			break
		}
		max = i * i
	}
	fmt.Println(max)
}
