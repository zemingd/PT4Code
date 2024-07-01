package main

import (
	"fmt"
	"strconv"
	"strings"
)

var n int = 0
var chars = []string{"3", "5", "7"}

func main() {
	fmt.Scan(&n)
	ans := dfs("")
	fmt.Println(ans)
}

func dfs(s string) int {
	i, _ := strconv.Atoi(s)
	if len(s) > 0 && i > n {
		return 0
	}

	res := 0
	if strings.Contains(s, "3") &&
		strings.Contains(s, "5") &&
		strings.Contains(s, "7") {
		res = 1
	}

	for _, c := range chars {
		res += dfs(s + c)
	}

	return res
}
