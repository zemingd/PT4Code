package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := int(1e12)
	for i := 0; i <= len(s)-3; i++ {
		a, _ := strconv.Atoi(s[i : i+3])
		ans = min(ans, abs(753-a))
	}
	fmt.Println(ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
