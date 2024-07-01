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
	v := scanInts(n)
	cnt0 := map[int]int{}
	cnt1 := map[int]int{}
	for i := 0; i < n; i++ {
		if i&1 == 0 {
			cnt0[v[i]]++
		} else {
			cnt1[v[i]]++
		}
	}

	ma := [2][2]int{}
	memo := [2][2]int{}
	for v, e := range cnt0 {
		if ma[0][1] < e {
			ma[0][1] = e
			memo[0][1] = v
		}
		if ma[0][0] < e {
			ma[0][1] = ma[0][0]
			memo[0][1] = memo[0][0]
			ma[0][0] = e
			memo[0][0] = v
		}
	}
	for v, e := range cnt1 {
		if ma[1][1] < e {
			ma[1][1] = e
			memo[1][1] = v
		}
		if ma[1][0] < e {
			ma[1][1] = ma[0][0]
			memo[1][1] = memo[0][0]
			ma[1][0] = e
			memo[1][0] = v
		}
	}

	ans := n
	if memo[0][0] == memo[1][0] {
		if ma[0][0] > ma[1][0] || (ma[0][0] == ma[1][0] && ma[0][1] < ma[1][1]) {
			ans -= ma[0][0] + ma[1][1]
		} else {
			ans -= ma[0][1] + ma[1][0]
		}
	} else {
		ans -= ma[0][0] + ma[1][0]
	}
	fmt.Fprintln(wr, ans)
}
