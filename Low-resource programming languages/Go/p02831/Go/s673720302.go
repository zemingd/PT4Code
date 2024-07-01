package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)
	fmt.Print(run(a, b))
}

func run(a, b int) int {
	x, y := a, b
	for i := 0; i < 1000000; i++{
		if x > y {
			y += b
		} else if y > x {
			x += a
		} else {
			return x
		}
	}
	return 0
}
