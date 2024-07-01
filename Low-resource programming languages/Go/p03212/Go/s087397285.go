package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	n   = 0
	ans = 0
)

func main() {
	fmt.Scan(&n)
	for i := 0; ; i++ {
		dfs(i, "")
	}
}

func dfs(rest int, s string) {
	if rest == 0 {
		if i, _ := strconv.Atoi(s); i > n {
			fmt.Println(ans)
			os.Exit(0)
		}
		for _, v := range "357" {
			if !strings.Contains(s, string(v)) {
				return
			}
		}
		ans++
	} else {
		for _, c := range "357" {
			dfs(rest-1, s+string(c))
		}
	}
}
