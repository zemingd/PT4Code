package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
func max(l []int) (int, int) {
	idx := 0
	ans := l[idx]
	for i, n := range l {
		if n > ans {
			idx = i
			ans = n
		}
	}
	return idx, ans
}

func min(l []int64) (int, int64) {
	idx := 0
	ans := l[idx]
	for i, n := range l {
		if n < ans {
			idx = i
			ans = n
		}
	}
	return idx, ans
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	x := nextInt()
	y := nextInt()
	a := nextInt()
	b := nextInt()
	c := nextInt()
	p := nextInts(a)
	q := nextInts(b)
	r := nextInts(c)
	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)
	p = p[len(p)-x : len(p)]
	q = q[len(q)-y : len(q)]
	var sump int64
	for _, pi := range p {
		sump += int64(pi)
	}
	var sumq int64
	for _, qi := range q {
		sumq += int64(qi)
	}
	dp := make([][]int64, c)
	for i := 0; i < c; i++ {
		dp[i] = make([]int64, 3)
	}
	ans := sump + sumq
	for i := c - 1; i >= 0; i-- {
		var minp int
		var minq int
		if len(p) == 0 {
			minp = 1001001001
		} else {
			minp = p[0]
		}
		if len(q) == 0 {
			minq = 1001001001
		} else {
			minq = q[0]
		}
		if r[i] < minp && r[i] < minq {
			break
		}
		if minp <= minq {
			ans = ans + int64(r[i]-minp)
			p = p[1:]
		} else {
			ans = ans + int64(r[i]-minq)
			q = q[1:]
		}
	}
	fmt.Println(ans)
}
