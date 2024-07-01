package main

import (
	"fmt"
)

func node(cur, used, n int) int {
	if cur > n {
		return 0
	}
	ans := 0
	if used == 7 {
		ans++
	}
	ans += node(cur*10+3, used|1, n)
	ans += node(cur*10+5, used|2, n)
	ans += node(cur*10+7, used|4, n)
	return ans
}

func main() {
	var n int
	fmt.Scan(&n)
	ans := node(0, 0, n)
	fmt.Println(ans)
}
