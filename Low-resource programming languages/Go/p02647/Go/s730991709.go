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
	a := scanInts(n)

	for i := 0; i < k; i++ {
		p := make([]int, n+1)
		for j := 0; j < n; j++ {
			p[max(0, j-a[j])]++
			p[min(n, j+a[j]+1)]--
		}
		na := make([]int, n)
		t := 0
		for i := 0; i < n; i++ {
			t += p[i]
			na[i] = t
		}
		a = na
		f := true
		for j := 0; j < n; j++ {
			if a[j] != n {
				f = false
			}
		}
		if f {
			break
		}
	}

	for i := 0; i < n; i++ {
		fmt.Fprint(wr, a[i], " ")
	}
	fmt.Fprintln(wr)

}
