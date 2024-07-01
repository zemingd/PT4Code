package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	n := scanInt(sc)
	t, a := scanFloat64(sc), scanFloat64(sc)
	h := scanFloat64Slice(sc, n)
	fmt.Println(solve(n, t, a, h))
}

func solve(n int, t, a float64, h []float64) int {
	var point int
	var tmp float64

	min := math.MaxFloat64
	for i, v := range h {
		tmp = t - v*0.006
		if min >= math.Abs(a - tmp) {
			min, point = a-tmp, i+1
		}
	}

	return point
}

// --------------- BASE DEFINITIONS ---------------

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	return sc
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func scanIntSlice(sc *bufio.Scanner, n int) []int {
	is := make([]int, n)
	for i := 0; i < n; i++ {
		is[i] = scanInt(sc)
	}

	return is
}

func scanFloat64(sc *bufio.Scanner) float64 {
	sc.Scan()
	f, _ := strconv.ParseFloat(sc.Text(), 64)
	return f
}

func scanFloat64Slice(sc *bufio.Scanner, n int) []float64 {
	fs := make([]float64, n)
	for i := 0; i < n; i++ {
		fs[i] = scanFloat64(sc)
	}

	return fs
}

func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStringSlice(sc *bufio.Scanner, n int) []string {
	ss := make([]string, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		ss[i] = sc.Text()
	}

	return ss
}
