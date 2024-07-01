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

	k := scanInt()

	arr := []int{}
	memo := map[int]bool{}

	var dfs func(num int)
	dfs = func(num int) {
		if memo[num] {
			return
		}
		arr = append(arr, num)
		memo[num] = true

		b := num % 10
		num *= 10
		if num > 1e11 {
			return
		}
		for i := 0; i < 10; i++ {
			if abs(b-i) > 1 {
				continue
			}

			dfs(num + i)
		}
	}

	for i := 1; i < 10; i++ {
		dfs(i)
	}

	sort.Ints(arr)

	fmt.Fprintln(wr, arr[k-1])
}
