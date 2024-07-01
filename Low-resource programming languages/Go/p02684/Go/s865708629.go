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
	k := scanInt()
	a := scanInts(n)

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		arr[i] = -1
	}
	p := 0
	cnt := 0
	tmp := 0
	for cnt != n {
		if arr[p] != -1 {
			tmp = arr[p]
			cnt -= arr[p]
			break
		}
		arr[p] = cnt
		p = a[p] - 1
		cnt++
	}

	if k <= tmp {
		for i := 0; i < n; i++ {
			if arr[i] == k {
				fmt.Fprintln(wr, i+1)
				return
			}
		}
	}

	k -= tmp
	k %= cnt
	// debug(arr, k, tmp)
	for i := 0; i < n; i++ {
		if arr[i]-tmp == k {
			fmt.Fprintln(wr, i+1)
			return
		}
	}
}
