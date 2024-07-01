package main

import (
	"fmt"
	"os"
	"strconv"
)

var (
	n, k int
	d    []int
)

func main() {
	fmt.Scan(&n, &k)
	d = make([]int, k)
	for i := range d {
		fmt.Scan(&d[i])
	}
	for i := 0; ; i++ {
		dfs("", i)
	}
}

func dfs(s string, m int) {
	if s != "" {
		v, _ := strconv.Atoi(s)
		if v >= n {
			fmt.Println(v)
			os.Exit(0)
		}
	}
	if len(s) == m {
		return
	}
	for i := 0; i <= 9; i++ {
		if !contains(d, i) {
			dfs(strconv.Itoa(i)+s, m)
		}
	}
}

func contains(a []int, x int) bool {
	for i := range a {
		if a[i] == x {
			return true
		}
	}
	return false
}
