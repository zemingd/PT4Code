package main

import (
	"fmt"
	"strconv"
)

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

func main() {
	var s string
	fmt.Scan(&s)
	ans := 1000
	for i := 0; i+2 < len(s); i++ {
		X, _ := strconv.Atoi(s[i : i+3])
		ans = min(ans, abs(X-753))
	}
	fmt.Println(ans)
}
