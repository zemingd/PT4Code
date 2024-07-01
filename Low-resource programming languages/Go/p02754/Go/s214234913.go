package main

import (
	"fmt"
)

func min(x, y int) int {
	if x <= y {
		return x
	}
	return y
}

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	ans := n / (a + b) * a
	mod := n % (a + b)
	ans += min(mod, a)
	fmt.Println(ans)
}
