package main

import (
	"fmt"
)

func main() {
	var a, v int
	fmt.Scan(&a, &v)
	var b, w int
	fmt.Scan(&b, &w)
	var t int
	fmt.Scan(&t)
	if (v-w)*t >= abs(a-b) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
