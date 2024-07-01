package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	}
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

//•*¨*•.¸¸♪main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)
func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	n := scanInt()
	m := scanInt()
	d := make(pairs, n)
	for i := 0; i < n; i++ {
		a, b := scanInt(), scanInt()
		d[i] = pair{a, b}
	}
	sort.Sort(d)

	ans := 0
	for i := 0; i < n; i++ {
		if m-d[i].b >= 0 {
			ans += d[i].b*d[i].a
			m -= d[i].b
		} else {
			ans += m*d[i].a
			break
		}
	}
	fmt.Fprintln(wr, ans)
}

type pair struct {
	a, b int
}

type pairs []pair

func (a pairs) Len() int           { return len(a) }
func (a pairs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a pairs) Less(i, j int) bool { return a[i].a < a[j].a }
