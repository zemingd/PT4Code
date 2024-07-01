package main

import "fmt"

var n int

func hasDigit(a, b int) bool {
	for a > 0 {
		if a%10 == b {
			return true
		}
		a /= 10
	}
	return false
}

func dfs(a int) int {
	if a > n {
		return 0
	}
	ret := 0
	if hasDigit(a, 3) && hasDigit(a, 5) && hasDigit(a, 7) {
		ret++
	}
	return ret + dfs(a*10+3) + dfs(a*10+5) + dfs(a*10+7)
}

func main() {
	fmt.Scan(&n)
	fmt.Println(dfs(0))
}
