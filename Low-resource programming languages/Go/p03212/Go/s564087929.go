package main

import (
	"fmt"
	"regexp"
)

var pattern = regexp.MustCompile("((3+5+7+)|(3+7+5+)|(5+3+7+)|(5+7+3+)|(7+5+3+)|(7+3+5+))+")

func main() {
	var n int
	fmt.Scan(&n)
	fmt.Println(dfs(n, 0))
}

func dfs(max, data int) int {
	if data > max {
		return 0
	}
	var result int
	if pattern.MatchString(fmt.Sprint(data)) {
		result += 1
	}
	return dfs(max, data*10+3) + dfs(max, data*10+5) + dfs(max, data*10+7) + result
}
