package main

import (
	"fmt"
	"strconv"
)

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var S string
	fmt.Scan(&S)
	ans := 10000
	for i := 0; i+2 < len(S); i++ {
		n, _ := strconv.Atoi(S[i : i+3])
		ans = min(ans, abs(753-n))
	}
	fmt.Println(ans)
}
