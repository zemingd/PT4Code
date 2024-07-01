package main

import (
	"fmt"
	"sort"
)

var ans []int

func dfs(n int) {
	if 3234566667 < n {
		return
	}
	ans = append(ans, n)
	d := n % 10
	if d != 0 {
		dfs(n*10 + d - 1)
	}
	if d != 9 {
		dfs(n*10 + d + 1)
	}
	dfs(n*10 + d)
}

func main() {
	var k int
	fmt.Scan(&k)
	for i := 0; i < 9; i++ {
		dfs(i + 1)
	}
	sort.Ints(ans)
	fmt.Println(ans[k-1])
}
