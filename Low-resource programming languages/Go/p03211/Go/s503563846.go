package main

import (
	"fmt"
	"strconv"
)

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return (-a)
}

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var S string
	fmt.Scan(&S)
	ans := 999
	for i := 0; i <= len(S)-3; i++ {
		num, _ := strconv.Atoi(S[i : i+3])
		ans = min(ans, abs(num-753))
	}
	fmt.Println(ans)
}
