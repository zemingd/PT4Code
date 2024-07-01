package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func stringSliceScanner(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scanner()
	}
	return a
}
func intSliceScanner(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = intScanner()
	}
	return a
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}

var mod int

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	h, w := intScanner(), intScanner()
	as := make([]string, h)
	for i := 0; i < h; i++ {
		as[i] = Scanner()
	}
	x := make([][]int, h)
	for i := 0; i < h; i++ {
		x[i] = make([]int, w)
		for j := 0; j < w; j++ {
			if string(as[i][j]) == "." {
				x[i][j] = mod
			} else {
				x[i][j] = 0
			}
		}
	}
	for i := 0; i < h; i++ {
		for j := 1; j < w; j++ {
			x[i][j] = smaller(x[i][j], x[i][j-1]+1)
		}
	}
	for i := 0; i < h; i++ {
		for j := w - 2; j >= 0; j-- {
			x[i][j] = smaller(x[i][j], x[i][j+1]+1)
		}
	}
	for j := 0; j < w; j++ {
		for i := 1; i < h; i++ {
			x[i][j] = smaller(x[i][j], x[i-1][j]+1)
		}
	}
	for j := 0; j < w; j++ {
		for i := h - 2; i >= 0; i-- {
			x[i][j] = smaller(x[i][j], x[i+1][j]+1)
		}
	}
	ans := 0
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			ans = larger(ans, x[i][j])
		}
	}
	fmt.Println(ans)
}
