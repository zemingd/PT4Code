package main

import (
	"fmt"
	"io"
	"os"
	"sync"
)

var (
	s []bool
	dp = make(map[int]map[int]int)
)

func dfs(u int) {
	for v, w := range dp[u] {
		if w % 2 == 0 {
			s[v] = s[u]
		} else {
			s[v] = !s[u]
		}
		dfs(v)
	}
}

func solve(w io.Writer, r io.Reader) {
	var N int
	fmt.Scan(&N)

	s = make([]bool, N)

	var root int
	var once sync.Once
	for n := 0; n < N-1; n++ {
		var u, v, w int
		fmt.Scan(&u, &v, &w)
		u--
		v--

		once.Do(func() {
			root = u
			s[root] = true
		})

		if u < v {
			if _, ok := dp[u]; !ok {
				dp[u] = make(map[int]int)
			}
			dp[u][v] = w
		} else {
			if _, ok := dp[v]; !ok {
				dp[v] = make(map[int]int, N)
			}
			dp[v][u] = w
		}
	}
	dfs(root)
	for _, b := range s {
		if b {
			fmt.Fprintln(w, 0)
		} else {
			fmt.Fprintln(w, 1)
		}
	}
}

func main() {
	solve(os.Stdout, os.Stdin)
}