package main

import (
	"fmt"
)

func main() {
	var k int
	var s string
	fmt.Scanf("%d\n%s", &k, &s)
	answer := tripleDots(k, s)
	fmt.Println(answer)
}

func tripleDots(k int, s string) string {
	if k >= len(s) {
		return s
	}
	return s[:k] + "..."
}
