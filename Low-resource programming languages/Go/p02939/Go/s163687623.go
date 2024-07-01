package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

const (
	initialBufSize = 10e4
	maxBufSize     = 10e6
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// util
func max(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n > ans {
			ans = n
		}
	}
	return ans
}

func min(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n < ans {
			ans = n
		}
	}
	return ans
}

func run(s string, p string, c int) int {
	for i := 1; i < len(s); i++ {
		if p != s[0:i] {
			c++
			return run(s[i:], s[0:i], c)
		}
	}
	if p != s {
		c++
	}
	return c
}

func reverse(s string) string {
	t := make([]rune, len(s))
	for i, c := range s {
		t[len(s)-1-i] = c
	}
	return string(t)
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	s := next()
	ans := run(s, "", 0)
	t := reverse(s)
	revAns := run(t, "", 0)
	fmt.Println(max([]int{ans, revAns}))
}
