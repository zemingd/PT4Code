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
	p = p[len(p)-x : len(p)]
	q = q[len(q)-y : len(q)]
	r = append(r, p...)
	r = append(r, q...)
	sort.Ints(r)
	r = r[len(r)-(x+y) : len(r)]
	var ans int64
	for _, ri := range r {
		ans += int64(ri)
	}
	fmt.Println(ans)
}
