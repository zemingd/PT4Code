package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

var sc = newScanner()

var n, m, x, inf int
var a [][]int
var c, d []int

func dfs(i int, d []int) int {
	if i == n {
		for j := 0; j < m; j++ {
			if d[j] < x {
				return inf
			}
		}
		return 0
	}

	r1 := dfs(i+1, d)
	for j := 0; j < m; j++ {
		d[j] += a[i][j]
	}
	r2 := dfs(i+1, d) + c[i]
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
	n, m, x = scanInt(), scanInt(), scanInt()
	a = make([][]int, n)
	c = make([]int, n)

	for i := 0; i < n; i++ {
		c[i] = scanInt()
		a[i] = scanInts(m)
		inf += c[i]
	}
	inf++

	d = make([]int, n)
	ret := dfs(0, d)
	if ret == inf {
		ret = -1
	}
	fmt.Println(ret)
}
