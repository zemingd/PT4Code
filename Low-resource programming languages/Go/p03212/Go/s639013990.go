package main

import (
	"fmt"
	"strconv"
	"strings"
)

var ans int

func dfs(step, n int, s string) {
	num, _ := strconv.Atoi(s)
	if num > n {
		return
	} else if strings.Count(s, "3") > 0 && strings.Count(s, "5") > 0 && strings.Count(s, "7") > 0 {
		// fmt.Println(num)
		ans++
	}
	for i := 0; i < len("357"); i++ {
		dfs(step+1, n, s+string("357"[i]))
	}
}

func main() {
	var N int
	fmt.Scan(&N)
	dfs(0, N, "")
	fmt.Println(ans)
}
