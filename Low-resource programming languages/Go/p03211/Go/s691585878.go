package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	ans := 999
	for i := 0; i < len(s)-2; i++ {
		n, _ := strconv.Atoi(s[i : i+3])
		if d := abs(753 - n); d < ans {
			ans = d
		}
	}
	fmt.Println(ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
