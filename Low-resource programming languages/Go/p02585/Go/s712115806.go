package main

import (
	"bufio"
	"fmt"
	"os"
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
	p := scanInts(n)
	c := scanInts(n)

	ans := -1 << 60

	for i := 0; i < n; i++ {
		ss := make([]int, n)
		tt := make([]int, n)

		s := 0
		t := 0
		u := i

		for tt[p[u]-1] == 0 && p[u]-1 != i && t < k {
			u = p[u] - 1
			t++
			tt[u] = t
			s += c[u]
			ss[u] = s
			ans = max(ans, ss[u])
		}

		if t == k {
			continue
		}

		u = p[u] - 1
		cyc := t - tt[u] + 1
		tot := s - ss[u] + c[u]
		if tot > 0 {
			b := u
			ans = max(ans, ss[u]+tot*((k-tt[u])/cyc))

			for p[u]-1 != b {
				u = p[u] - 1
				ans = max(ans, ss[u]+tot*((k-tt[u])/cyc))
			}
		}
	}

	fmt.Fprintln(wr, ans)
}
