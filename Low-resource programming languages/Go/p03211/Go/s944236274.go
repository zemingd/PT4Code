package main

import (
	"fmt"
	"strconv"
)

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	var s string
	var n int
	ans := 754
	fmt.Scan(&s)
	for i := 0; i < len(s)-2; i++ {
		n, _ = strconv.Atoi(s[i : i+3])
		if abs(753-n) < ans {
			ans = abs(753 - n)
		}
	}
	fmt.Println(ans)
}
