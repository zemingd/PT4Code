package main

import (
	"fmt"
)

func solve(a, b int) int {
	switch {
	case a < 6:
		return 0
	case a <= 12:
		return b / 2
	default:
		return b
	}
}

func main() {
	var a, b int
	fmt.Scanln(&a, &b)
	ans := solve(a, b)
	fmt.Println(ans)
}
