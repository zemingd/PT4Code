package main

import "fmt"

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var a, b, ans int
	fmt.Scan(&a, &b)
	ans = max(a+a-1, b+b-1)
	ans = max(ans, a+b)
	fmt.Println(ans)
}
