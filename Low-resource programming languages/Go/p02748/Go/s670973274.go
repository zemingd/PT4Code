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
	a, _ := strconv.Atoi(stringLineScan())
	b, _ := strconv.Atoi(stringLineScan())
	m, _ := strconv.Atoi(stringLineScan())
	as := make([]int, a)
	bs := make([]int, b)
	for i := 0; i < a; i++ {
		as[i], _ = strconv.Atoi(stringLineScan())
	}
	for i := 0; i < b; i++ {
		bs[i], _ = strconv.Atoi(stringLineScan())
	}
	ans := min(as) + min(bs)
	for i := 0; i < m; i++ {
		x, _ := strconv.Atoi(stringLineScan())
		y, _ := strconv.Atoi(stringLineScan())
		c, _ := strconv.Atoi(stringLineScan())
		x--
		y--
		t := as[x] + bs[y] - c
		if t < ans {
			ans = t
		}
	}
	fmt.Println(ans)
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
