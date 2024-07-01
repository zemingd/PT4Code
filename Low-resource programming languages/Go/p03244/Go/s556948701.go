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
	v := scanInts(n)

	cnt := []map[int]int{map[int]int{}, map[int]int{}}
	for i := 0; i < n; i++ {
		cnt[i&1][v[i]]++
	}
	cnt[0][0], cnt[1][0] = 0, 0
	p := make([]pairs, 2)
	for i := 0; i < 2; i++ {
		for v, c := range cnt[i] {
			p[i] = append(p[i], pair{v, c})
		}
	}
	sort.Sort(p[0])
	sort.Sort(p[1])
	if p[0][0].v == p[1][0].v {
		ma := p[0][0].c
		ma = max(ma, p[0][1].c+p[1][0].c)
		ma = max(ma, p[0][0].c+p[1][1].c)
		fmt.Fprintln(wr, n-ma)
	} else {
		fmt.Fprintln(wr, n-p[0][0].c-p[1][0].c)
	}

}

type pair struct{ v, c int }
type pairs []pair

func (a pairs) Len() int           { return len(a) }
func (a pairs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a pairs) Less(i, j int) bool { return a[i].c > a[j].c }
