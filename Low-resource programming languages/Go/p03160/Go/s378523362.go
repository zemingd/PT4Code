package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	hs   []int
	memo []int
)

func rec(n int) int {
	if memo[n] < inf {
		return memo[n]
	}

	ret := inf
	for i := 1; i <= 2; i++ {
		if n-i < 0 {
			continue
		}

		ret = min(ret, rec(n-i)+abs(hs[n]-hs[n-i]))
	}

	memo[n] = ret
	return ret
}

func solve() {
	n := getInt()
	hs = getIntSlice(n)
	memo = make([]int, n)
	for i := range memo {
		memo[i] = inf
	}
	memo[0] = 0

	ans := rec(n - 1)
	fmt.Fprintln(wr, ans)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

// -----------------------------------------

const (
	inf = 1 << 60
	// mod = 1000000007
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wr = bufio.NewWriter(os.Stdout)
)

func main() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
	solve()
	wr.Flush()
}

func getInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}

func getRunes() []rune {
	return []rune(getString())
}
