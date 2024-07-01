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

	n := scanInt()
	cnt := map[pii]int{}
	cnta := 0
	cntb := 0
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], b[i] = scanInt(), scanInt()
		if a[i] == 0 {
			cnta++
		}
		if b[i] == 0 {
			cntb++
		}
		if a[i] != 0 && b[i] != 0 {
			c := gcd(a[i], b[i])
			a[i] /= c
			b[i] /= c
		}
		cnt[pii{a[i], b[i]}]++
	}

	ans := 0
	for i := 0; i < n; i++ {
		cnt[pii{a[i], b[i]}]--
		if a[i] == 0 && b[i] == 0 {
			cnta--
			cntb--
			ans++
			ans %= mod
		} else if a[i] == 0 {
			cnta--
			c := n - i - cntb - 1
			ans += mpow(2, c)
			ans %= mod
		} else if b[i] == 0 {
			cntb--
			c := n - i - cnta - 1
			ans += mpow(2, c)
			ans %= mod
		} else {
			cc := cnt[pii{b[i], -a[i]}] + cnt[pii{-b[i], a[i]}] + cnt[pii{0, 0}]
			c := n - i - cc - 1
			ans += mpow(2, c)
			ans %= mod
		}
	}

	fmt.Fprintln(wr, ans)

}

const mod = 1000000007

func gcd(a, b int) int {
	for b != 0 {
		a, b = b, a%b
	}
	return a
}

type pii struct {
	a, b int
}

func mpow(a, n int) int {
	res := 1
	for n > 0 {
		if n&1 == 1 {
			res = res * a % mod
		}
		a = a * a % mod
		n >>= 1
	}
	return res
}
