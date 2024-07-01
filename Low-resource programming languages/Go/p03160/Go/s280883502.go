package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const inf = 1 << 60

func solve() {
	n := getInt()
	hs := getIntSlice(n)

	dp := make([]int, n)
	for i := range dp {
		dp[i] = inf
	}
	dp[0] = 0

	for i := 0; i < n; i++ {
		if i >= 1 {
			dp[i] = min(dp[i], dp[i-1]+abs(hs[i]-hs[i-1]))
		}
		if i >= 2 {
			dp[i] = min(dp[i], dp[i-2]+abs(hs[i]-hs[i-2]))
		}
	}

	fmt.Fprintln(wr, dp[n-1])
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
