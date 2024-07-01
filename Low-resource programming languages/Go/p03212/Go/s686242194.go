package main

import (
	"fmt"
)

func dfs(in, x, a, b, c int, count *int) {
	if x > in {
		return
	}
	if a > 0 && b > 0 && c > 0 {
		*count++
	}
	dfs(in, x*10+3, 1, b, c, count)
	dfs(in, x*10+5, a, 1, c, count)
	dfs(in, x*10+7, a, b, 1, count)
}

func target(in int) int {
	var count int
	dfs(in, 0, 0, 0, 0, &count)
	return count
}

func main() {
	var in int
	fmt.Scan(&in)
	fmt.Println(target(in))
}
