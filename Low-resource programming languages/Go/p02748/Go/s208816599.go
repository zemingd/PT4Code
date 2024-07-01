package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	a, b, m := scanInt(), scanInt(), scanInt()
	as := make([]int, a)
	bs := make([]int, b)
	minA, minB := math.MaxInt32, math.MaxInt32
	for i := range as {
		as[i] = scanInt()
		minA = min(minA, as[i])
	}
	for i := range bs {
		bs[i] = scanInt()
		minB = min(minB, bs[i])
	}
	xs := make([]int, m)
	ys := make([]int, m)
	cs := make([]int, m)
	for i := range xs {
		xs[i], ys[i], cs[i] = scanInt(), scanInt(), scanInt()
		xs[i]--
		ys[i]--
	}

	minD := math.MaxInt32
	for i := 0; i < m; i++ {
		minD = min(minD, as[xs[i]]+bs[ys[i]]-cs[i])
	}

	fmt.Println(min(minA+minB, minD))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
