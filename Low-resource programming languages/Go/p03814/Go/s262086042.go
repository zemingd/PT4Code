package main

import (
	"fmt"
	"strings"
)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(strings.LastIndex(s, "Z") - strings.Index(s, "A") + 1)
}
