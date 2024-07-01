package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	h, _ := strconv.Atoi(stringLineScan())
	w, _ := strconv.Atoi(stringLineScan())
	g := make([]string, h)
	for i := 0; i < h; i++ {
		g[i] = stringLineScan()
	}
	a := mk(h, w)
	b := mk(h, w)
	c := mk(h, w)
	d := mk(h, w)
	for i := 0; i < h; i++ {
		if string(g[i][0]) == "#" {
			a[i][0] = -1
		}
		for j := 1; j < w; j++ {
			if string(g[i][j]) == "#" {
				a[i][j] = -1
			} else {
				a[i][j] = a[i][j-1] + 1
			}
		}
	}
	for i := 0; i < h; i++ {
		if string(g[i][w-1]) == "#" {
			b[i][w-1] = -1
		}
		for j := w - 2; j >= 0; j-- {
			if string(g[i][j]) == "#" {
				b[i][j] = -1
			} else {
				b[i][j] = b[i][j+1] + 1
			}
		}
	}
	for j := 0; j < w; j++ {
		if string(g[0][j]) == "#" {
			c[0][j] = -1
		}
		for i := 1; i < h; i++ {
			if string(g[i][j]) == "#" {
				c[i][j] = -1
			} else {
				c[i][j] = c[i-1][j] + 1
			}
		}
	}
	for j := 0; j < w; j++ {
		if string(g[h-1][j]) == "#" {
			d[h-1][j] = -1
		}
		for i := h - 2; i >= 0; i-- {
			if string(g[i][j]) == "#" {
				d[i][j] = -1
			} else {
				d[i][j] = d[i+1][j] + 1
			}
		}
	}
	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			x := a[i][j] + b[i][j] + c[i][j] + d[i][j] + 1
			if ans < x {
				ans = x
			}
		}

	}
	fmt.Println(ans)
}
func mk(h, w int) [][]int {
	x := make([][]int, h)
	for i := 0; i < h; i++ {
		y := make([]int, w)
		x[i] = y
	}
	return x
}
