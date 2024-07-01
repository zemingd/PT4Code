package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	if n == 2 {
		fmt.Println(a[1] - a[0])
	} else {
		c1 := abs(a[0] - a[1])
		c2 := 0
		for i := 2; i < n; i++ {
			c1, c2 = min(c1+abs(a[i-1]-a[i]), c2+abs(a[i-2]-a[i])), c1
		}
		fmt.Println(c1)
	}
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}

func min(x, y int) int {
	if x >= y {
		return y
	} else {
		return x
	}
}