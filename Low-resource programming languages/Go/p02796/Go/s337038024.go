package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	robs := make(Robots, n)
	for i := 0; i < n; i++ {
		var X, L int64
		fmt.Scan(&X, &L)
		robs[i] = &Robot{l: X - L + 1, r: X + L - 1}
	}
	sort.Sort(robs)

	ans := 0
	end := int64(-1000000001)
	for i := 0; i < n; i++ {
		if end < robs[i].l {
			end = robs[i].r
			ans++
		}
	}
	puts(ans)
	wt.Flush()
}

type Robot struct {
	l, r int64
}

type Robots []*Robot

func (rs Robots) Len() int {
	return len(rs)
}

func (rs Robots) Less(i, j int) bool {
	return rs[i].r <= rs[j].r
}

func (rs Robots) Swap(i, j int) {
	rs[i], rs[j] = rs[j], rs[i]
}

var (
	sc  = bufio.NewScanner(os.Stdin)
	rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	wt  = bufio.NewWriter(os.Stdout)
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

func nextMega() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, _ := rdr.ReadLine()
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func putf(format string, a ...interface{}) {
	fmt.Fprintf(wt, format, a...)
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}
