package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
	"unicode"
)

func main() {
	sc = initScanner(os.Stdin)
	s := scanString(sc)
	fmt.Println(solve(s))
}

func solve(s string) string {
	ss := strings.Split(s, "")

	if ss[0] != "A" {
		return "WA"
	}

	cnt, point := 0, 0
	for i := 2; i < len(ss)-1; i++ {
		if ss[i] == "C" {
			cnt++
			point = i
		}
	}
	if cnt != 1 {
		return "WA"
	}

	for i := 1;i<len(ss);i++ {
		if i == point {
			continue
		}
		if unicode.IsUpper(rune(s[i])) {
			return "WA"
		}
	}


	return "AC"
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
