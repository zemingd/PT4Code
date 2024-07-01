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
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	fmt.Println(max(0, c-(a-b)))
}
