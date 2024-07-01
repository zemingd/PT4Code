package main

import (
	"fmt"
)

var n = [4]int{}

func main() {
	fmt.Scanf("%1d%1d%1d%1d", &n[0], &n[1], &n[2], &n[3])
	ans := dfs(1, n[0], fmt.Sprintf("%d", n[0]))
	fmt.Println(ans)
}

func dfs(c, v int, s string) string {
	if c == 4 {
		if v == 7 {
			return fmt.Sprintf("%s=7", s)
		}
		return ""
	}
	a := dfs(c+1, v+n[c], fmt.Sprintf("%s+%d", s, n[c]))
	b := dfs(c+1, v-n[c], fmt.Sprintf("%s-%d", s, n[c]))
	if a != "" {
		return a
	}
	return b
}
