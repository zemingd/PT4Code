package main

import (
	"fmt"
)

var n, m, x, inf int
var a [][]int
var c, d []int

func dfs(i int) int {
	if i == n {
		for j := 0; j < m; j++ {
			if d[j] < x {
				return inf
			}
		}
		return 0
	}

	r1 := dfs(i + 1)
	for j := 0; j < m; j++ {
		d[j] += a[i][j]
	}
	r2 := dfs(i+1) + c[i]
	for j := 0; j < m; j++ {
		d[j] -= a[i][j]
	}
	if r1 < r2 {
		return r1
	} else {
		return r2
	}
}

func main() {
	// var n, m, x int
	fmt.Scan(&n, &m, &x)
	a = make([][]int, n)
	c = make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
		a[i] = make([]int, m)
		for j := 0; j < m; j++ {
			fmt.Scan(&a[i][j])
		}
		inf += c[i]
	}
	inf++

	d = make([]int, n)
	ret := dfs(0)
	if ret == inf {
		ret = -1
	}
	fmt.Println(ret)
}
