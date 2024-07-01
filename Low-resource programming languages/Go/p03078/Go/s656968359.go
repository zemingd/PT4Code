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

	X := scanInt()
	Y := scanInt()
	Z := scanInt()
	K := scanInt()
	a := scanInts(X)
	b := scanInts(Y)
	c := scanInts(Z)

	bc := make([]int, Y*Z)
	for i := 0; i < Y; i++ {
		for j := 0; j < Z; j++ {
			bc[i*Z+j] = b[i] + c[j]
		}
	}
	sort.Ints(bc)

	K++
	n := Y * Z
	for k := 1; k < K; k++ {
		l, r := 0, 1<<40
		for l+1 < r {
			mid := (l + r) / 2
			cnt := 0
			for i := 0; i < X; i++ {
				cnt += n - sort.Search(n, func(j int) bool {
					return mid <= a[i]+bc[j]
				})
			}

			if cnt >= k {
				l = mid
			} else {
				r = mid
			}
		}

		fmt.Fprintln(wr, l)
	}
}
