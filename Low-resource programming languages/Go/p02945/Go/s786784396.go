package main

import (
	"fmt"
)

func Max(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}

func solve() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	ans := Max(a+b, Max(a-b, a*b))

	fmt.Println(ans)
}

func main() {
	solve()
}
