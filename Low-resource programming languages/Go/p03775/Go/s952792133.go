package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	ans := int(1e10)
	for i := 1; i*i <= n; i++ {
		if n%i == 0 {
			ans = min(ans, max(strlen(i), strlen(n/i)))
		}
	}
	fmt.Println(ans)
}

func strlen(i int) int {
	return len(strconv.Itoa(i))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
