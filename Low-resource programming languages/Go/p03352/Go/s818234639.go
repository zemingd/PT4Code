package main

import (
	"fmt"
)

func main() {
	var x int
	fmt.Scan(&x)

	ans := 1
	for b := 2; b*b <= x; b++ {
		v := b
		var e int
		for v <= x {
			e = v
			v *= b
		}
		ans = max(ans, e)
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
