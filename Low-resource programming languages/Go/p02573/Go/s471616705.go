package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
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

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	n, m := scanInt(), scanInt()
	uf := make(unionFind, n)
	uf.init()
	for i := 0; i < m; i++ {
		a, b := scanInt()-1, scanInt()-1
		uf.unite(a, b)
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans = max(ans, uf.size(i))
	}
	fmt.Fprintln(wr, ans)
}

type unionFind []int

func (uf *unionFind) init() {
	for i := 0; i < len(*uf); i++ {
		(*uf)[i] = -1
	}
}

func (uf *unionFind) find(x int) int {
	if (*uf)[x] < 0 {
		return x
	}
	(*uf)[x] = uf.find((*uf)[x])
	return (*uf)[x]
}

func (uf *unionFind) unite(x, y int) {
	x, y = uf.find(x), uf.find(y)
	if x != y {
		if (*uf)[x] > (*uf)[y] {
			x, y = y, x
		}
		(*uf)[x] += (*uf)[y]
		(*uf)[y] = x
	}
}

func (uf *unionFind) size(x int) int {
	return -(*uf)[uf.find(x)]
}
