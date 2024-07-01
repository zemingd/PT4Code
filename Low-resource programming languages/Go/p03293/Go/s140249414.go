package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	sc = initScanner(os.Stdin)
	s, t := scanString(sc), scanString(sc)
	fmt.Println(solve(s, t))
}

func solve(s, t string) string {
	for i:=0;i< len(s);i++ {
		if s == t {
			return "Yes"
		}
		s = s[len(s)-1:] + s[0:len(s)-1]
	}
	return "No"
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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
