package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var par []int

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	par = make([]int, n)
	for i := range par {
		par[i] = i
	}

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < m; i++ {
		sc.Scan()
		a, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		b, _ := strconv.Atoi(sc.Text())
		a--
		b--
		unite(a, b)
	}

	pc := make([]int, n)
	for i := range par {
		r := root(par[i])
		pc[r]++
	}
	mx := 0
	for _, v := range pc {
		mx = max(mx, v)
	}

	fmt.Println(mx)
}

func root(x int) int {
	if par[x] == x {
		return x
	}
	par[x] = root(par[x])
	return par[x]
}

func unite(x, y int) {
	rx := root(x)
	ry := root(y)
	if rx == ry {
		return
	}
	par[rx] = ry
}

func same(x, y int) bool {
	return root(x) == root(y)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
