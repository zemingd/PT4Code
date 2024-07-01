package main

import (
	"fmt"
	"strings"
)

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var s string
	fmt.Scan(&s)

	n0 := strings.Count(s, "0")
	n1 := strings.Count(s, "1")
	fmt.Println(2 * min(n0, n1))
}
