package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	h, _ := strconv.Atoi(stringLineScan())
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(stringLineScan())
		b[i], _ = strconv.Atoi(stringLineScan())
	}
	ma := max(a)
	fb := filter(b, ma)
	sort.Ints(fb)
	c := 0
	for i := len(fb) - 1; i >= 0; i-- {
		h -= fb[i]
		c++
		if h <= 0 {
			h = 0
			break
		}
	}
	if h%ma == 0 {
		c += h / ma
	} else {
		c += h/ma + 1
	}
	fmt.Println(c)
}
func max(x []int) int {
	y := x[0]
	for _, i := range x {
		if y < i {
			y = i
		}
	}
	return y
}
func filter(x []int, th int) []int {
	y := make([]int, 0)
	for _, i := range x {
		if i > th {
			y = append(y, i)
		}
	}
	return y
}
