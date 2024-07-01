package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const inf = 1 << 60

func solve() {
	n, k := getInt(), getInt()
	hs := getIntSlice(n)

	dp := make([]int, n)
	for i := range dp {
		dp[i] = inf
	}
	dp[0] = 0

	for i := 0; i < n; i++ {
		for j := 1; j <= k; j++ {
			if i-j < 0 {
				break
			}

			dp[i] = min(dp[i], dp[i-j]+abs(hs[i]-hs[i-j]))
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
