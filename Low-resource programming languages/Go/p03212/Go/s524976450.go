package main

import (
	"fmt"
	"strconv"
	"strings"
)

var n, cnt int

func dfs(i int, s string) {
	if i == 0 {
		t, _ := strconv.Atoi(s)
		if t <= n &&
			strings.Count(s, "3") >= 1 && strings.Count(s, "5") >= 1 && strings.Count(s, "7") >= 1 {
			cnt++
			//fmt.Printf("cnt %d, %s\n", cnt, s)
		}
		return
	}
	dfs(i-1, s+"3")
	dfs(i-1, s+"5")
	dfs(i-1, s+"7")
}

func main() {
	fmt.Scan(&n)
	for i := 1; i <= 9; i++ {
		dfs(i, "")
	}
	fmt.Println(cnt)
}
