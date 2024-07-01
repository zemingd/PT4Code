package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	var cnt int
	for i := 0; i < len(s); i++ {
		n, _ := strconv.Atoi(string(s[i]))
		if n == i%2 {
			cnt++
		}
	}

	fmt.Println(min(cnt, len(s)-cnt))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
