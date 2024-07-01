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
	x := scanInt()-1
	y := scanInt()-1

	g := make([][]int, n)
	for i := 0; i < n; i++ {
		g[i] = make([]int, n)
		c := 0
		for j := i; j < n; j++ {
			g[i][j] = c
			c++
		}

		if i <= x {
			c := 0
			for j := i; j < n; j++ {
				g[i][j] = c
				if j == x {
					j = y-1
				}
				c++
			}
		}

		for j := 1; j < n; j++ {
			g[i][n-1-j] = min(g[i][n-1-j], g[i][n-1-j+1]+1)
		}
	}

	for i := 0; i < n; i++ {
		for j := 1; j < n; j++ {
			g[j][i] = min(g[j][i], g[j-1][i]+1)
		}
	}

	cnt := map[int]int{}
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			cnt[g[i][j]]++
		}
	}

	for i := 1; i < n; i++ {
		fmt.Fprintln(wr, cnt[i])
	}
}
