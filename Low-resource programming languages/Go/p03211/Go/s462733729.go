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
	l := len(s)
	for i := 0; i+3 <= l; i++ {
		n, _ := strconv.Atoi(s[i : i+3])
		ans = min(ans, abs(753-n))
	}
	fmt.Println(ans)
}
