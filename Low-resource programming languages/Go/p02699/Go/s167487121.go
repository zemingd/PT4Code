package main

import (
	"fmt"
)

func main() {
	var s, w int
	fmt.Scanf("%d %d", &s, &w)
	answer := isSafe(s, w)
	fmt.Println(answer)
}

func isSafe(s, w int) string {
	if s <= w {
		return "unsafe"
	}
	return "safe"
}
