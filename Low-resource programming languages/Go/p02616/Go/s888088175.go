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

	n, k := scanInt(), scanInt()
	a := scanInts(n)

	ps := make([]pii, n)
	for i := 0; i < n; i++ {
		if a[i] < 0 {
			ps[i] = pii{a[i] * -1, 1}
		} else {
			ps[i] = pii{a[i], 0}
		}
	}
	sort.Slice(ps, func(i, j int) bool { return ps[i].a > ps[j].a })

	ans := 1
	c := 0
	lp := -1
	lm := -1
	for i := 0; i < k; i++ {
		if ps[i].b > 0 {
			lm = i
		} else {
			lp = i
		}
		c += ps[i].b
	}

	if c%2 == 1 {
		idx := -1
		f := false
		for i := k; i < n; i++ {
			if ps[k-1].b != ps[i].b {
				f = true
				idx = i
				break
			}
		}

		if f {
			for i := 0; i < k-1; i++ {
				ans = ans * ps[i].a % mod
			}
			fmt.Fprintln(wr, (ans*ps[idx].a+mod)%mod)
			return
		}

		t := 0
		if idx == lp {
			t = lm
		} else {
			t = lp
		}
		if t != -1 {
			for i := k; i < n; i++ {
				if ps[t].b != ps[i].b {
					f = true
					idx = i
					break
				}
			}
		}

		if f {
			for i := 0; i < k; i++ {
				if t == i {
					continue
				}
				ans = ans * ps[i].a % mod
			}
			fmt.Fprintln(wr, (ans*ps[idx].a+mod)%mod)
			return
		}

		for i := 0; i < k; i++ {
			ans = ans * ps[n-1-i].a % mod
		}
		fmt.Fprintln(wr, (-ans+mod)%mod)
	} else {
		for i := 0; i < k; i++ {
			ans = ans * ps[i].a % mod
		}
		fmt.Fprintln(wr, (ans+mod)%mod)
	}
}

const mod = 1000000007

type pii struct{ a, b int }
