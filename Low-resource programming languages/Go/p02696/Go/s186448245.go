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
	maxFloor := 0
	for i := n; i >= n-10; i-- {
		x := a * i / b
		y := a * (i / b)
		diff := x - y
		if maxFloor < diff {
			maxFloor = diff
		}
	}
	return maxFloor
}
