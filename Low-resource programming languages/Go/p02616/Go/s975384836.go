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

	sort.Slice(a, func(i, j int) bool { return abs(a[i]) > abs(a[j]) })

	ans := 1
	c := 0
	lp, lm := -1, -1
	for i := 0; i < k; i++ {
		if a[i] < 0 {
			lm = i
			c++
		} else {
			lp = i
		}
	}

	if c%2 == 1 {
		p, m := -1, -1
		for i := 0; i < n-k; i++ {
			if a[n-1-i] < 0 {
				if lp != -1 {
					m = n - 1 - i
				}
			} else {
				if lm != -1 {
					p = n - 1 - i
				}
			}
		}

		if p == -1 && m == -1 {
			for i := 0; i < k; i++ {
				ans = ans * a[n-1-i] % mod
			}
			fmt.Fprintln(wr, (ans+mod)%mod)
			return
		}

		if m == -1 {
			a[lm] = a[p]
		} else if p == -1 {
			a[lp] = a[m]
		} else {
			if a[lm]*a[m] < a[lp]*a[p] {
				a[lm] = a[p]
			} else {
				a[lp] = a[m]
			}
		}
	}

	for i := 0; i < k; i++ {
		ans = ans * a[i] % mod
	}
	fmt.Fprintln(wr, (ans+mod)%mod)
}

const mod = 1000000007
