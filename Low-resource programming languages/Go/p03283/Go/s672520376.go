package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func loadstr() string {
	sc.Scan()
	return sc.Text()
}

func loadints(n int) []int {
	xs := make([]int, n)
	for i := 0; i < n; i++ {
		xs[i] = loadint()
	}
	return xs
}

func main() {
	n := loadint()
	m := loadint()
	q := loadint()
	ls := make([]int, m)
	rs := make([]int, m)
	ps := make([]int, q)
	qs := make([]int, q)
	for i := 0; i < m; i++ {
		ls[i] = loadint()
		rs[i] = loadint()
	}
	for i := 0; i < q; i++ {
		ps[i] = loadint()
		qs[i] = loadint()
	}
	t := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		t[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		t[ls[i]][rs[i]]++
	}
	for i := 0; i <= n; i++ {
		r := 0
		for j := 0; j <= n; j++ {
			r += t[i][j]
			t[i][j] = r
		}
	}
	for i := 0; i <= n; i++ {
		r := 0
		for j := 0; j <= n; j++ {
			r += t[j][i]
			t[j][i] = r
		}
	}
	for i := 0; i < q; i++ {
		x := qs[i]
		y := ps[i] - 1
		result := t[x][x] - t[x][y] - t[y][x] + t[y][y]
		fmt.Println(result)
	}
}
