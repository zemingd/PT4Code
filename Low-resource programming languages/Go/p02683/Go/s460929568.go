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
	m := scanInt()
	x := scanInt()

	c := make([]int, n)
	a := make([][]int, n)
	for i := 0; i < n; i++ {
		a[i] = make([]int, m)
		c[i] = scanInt()
		for j := 0; j < m; j++ {
			a[i][j] = scanInt()
		}
	}

	ans := 1<<63 - 1
	bitExhaustiveSearch(n, func(arr []bool) {
		sum := make([]int, m)
		cnt := 0
		for i := 0; i < n; i++ {
			if arr[i] {
				cnt += c[i]
				for j := 0; j < m; j++ {
					sum[j] += a[i][j]
				}
			}
		}
		f := true
		for i := 0; i < m; i++ {
			if sum[i] < x {
				f = false
			}
		}
		if f {
			ans = min(ans, cnt)
		}
	})

	if ans == 1<<63-1 {
		fmt.Fprintln(wr, -1)
	} else {
		fmt.Fprintln(wr, ans)
	}

}

func bitExhaustiveSearch(n int, fn func(a []bool)) {
	all := 1 << uint(n)
	a := make([]bool, n)
	for i := 0; i < all; i++ {
		for j := 0; j < n; j++ {
			if i>>uint(j)&1 == 1 {
				a[j] = true
			} else {
				a[j] = false
			}
		}
		fn(a)
	}
}
