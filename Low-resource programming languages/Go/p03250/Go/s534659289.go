package main

import (
	"fmt"
)

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var A, B, C int
	fmt.Scan(&A, &B, &C)
	a1 := A*10 + B + C
	a2 := A + B*10 + C
	a3 := A + B + C*10
	fmt.Println(max(max(a1, a2), a3))
}
