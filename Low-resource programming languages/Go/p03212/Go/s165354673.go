package main

import (
	"fmt"
)

var n, ans int

func judge753(x int) bool {
	dic := map[int]struct{}{}
	for x != 0 {
		dic[x%10] = struct{}{}
		x /= 10
	}
	if len(dic) == 3 {
		return true
	}
	return false
}

func dfs(x int) {
	if x > n {
		return
	}
	if judge753(x) {
		ans++
	}
	for _, v := range [...]int{3, 5, 7} {
		dfs(x*10 + v)
	}
}

func main() {
	fmt.Scan(&n)
	dfs(0)
	fmt.Println(ans)
}
