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

	x := scanInt()
	y := scanInt()
	a := scanInt()
	b := scanInt()
	c := scanInt()
	p := scanInts(a)
	q := scanInts(b)
	r := scanInts(c)

	d := make(rngs, a+b+c)
	for i := 0; i < a; i++ {
		d[i] = rng{p[i],0}
	}
	for i := 0; i < b; i++ {
		d[i+a] = rng{q[i],1}
	}
	for i := 0; i < c; i++ {
		d[i+a+b] = rng{r[i],2}
	}

	sort.Sort(d)

	ans := 0
	all := x+y
	for i := 0; i < len(d); i++ {
		next := d[i]
		if next.col == 2 {
			all--
			ans+=next.val
		} else if next.col == 1 {
			if y == 0 {
				continue
			}
			y--
			all--
			ans+=next.val
		} else {
			if x == 0 {
				continue
			}
			x--
			all--
			ans+=next.val
		}

		if all == 0 {
			break
		}
	}

	fmt.Fprintln(wr, ans)

}

type rng struct {
	val, col int
}

type rngs []rng

func (a rngs) Len() int           { return len(a) }
func (a rngs) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a rngs) Less(i, j int) bool { return a[i].val > a[j].val }
