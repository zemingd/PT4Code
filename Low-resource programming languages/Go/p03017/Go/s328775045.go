package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func can(s string, a, b, c, d int) bool {
	if a == c && b == d {
		return true
	}
	if a == b || a > c || b > d || s[a] == '#' || s[b] == '#' {
		return false
	}
	if a < c && b == d {
		return can(s, a+1, b, c, d) || can(s, a+2, b, c, d)
	} else if a == c && b < d {
		return can(s, a, b+1, c, d) || can(s, a, b+2, c, d)
	}
	return can(s, a+1, b, c, d) || can(s, a+2, b, c, d) || can(s, a, b+1, c, d) || can(s, a, b+2, c, d)

}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	_, a, b, c, d := nextInt(), nextInt()-1, nextInt()-1, nextInt()-1, nextInt()-1
	s := next()

	if can(s, a, b, c, d) {
		puts("Yes")
	} else {
		puts("No")
	}
}

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(next(), 64)
	return f
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func nextFloat64s(n int) []float64 {
	slice := make([]float64, n)
	for i := 0; i < n; i++ {
		slice[i] = nextFloat64()
	}
	return slice
}

func putf(format string, a ...interface{}) {
	fmt.Fprintf(wt, format, a...)
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}
