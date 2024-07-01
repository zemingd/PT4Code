package main

import (
	"fmt"
)

func main() {
	var a, b, n int
	fmt.Scanf("%d %d %d", &a, &b, &n)
	answer := maxFloor(a, b, n)
	fmt.Println(answer)
}

func maxFloor(a, b, n int) int {
	looped := n-b > 0
	if looped {
		return max(floor(a, b, b-1), floor(a, b, n))
	}
	return floor(a, b, n)
}

func floor(a, b, x int) int {
	s := a * x / b
	t := a * (x / b)
	return s - t
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
