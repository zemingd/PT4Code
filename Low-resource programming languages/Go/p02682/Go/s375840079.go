package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)

	ans := 0
	if a <= k {
		ans += min(a, k)
	}
	if k > a+b {
		ans -= k - a - b
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}