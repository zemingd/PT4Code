package main

import "fmt"

func solve() {
	var s string
	fmt.Scan(&s)

	ans := ""
	for i, c := range s {
		if i%2 == 0 {
			ans += string(c)
		}
	}
	fmt.Println(ans)
}

func main() {
	solve()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
