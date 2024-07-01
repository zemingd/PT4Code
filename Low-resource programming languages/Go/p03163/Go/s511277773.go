package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func solve() {
	n, w := getInt(), getInt()
	ws := make([]int, n)
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		ws[i] = getInt()
		vs[i] = getInt()
	}

	dp := make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, w+1)
	}

	for i := 1; i <= n; i++ {
		for j := range dp[i] {
			if j-ws[i-1] >= 0 {
				dp[i][j] = max(dp[i-1][j], dp[i-1][j-ws[i-1]]+vs[i-1])
			} else {
				dp[i][j] = dp[i-1][j]
			}
		}
	}

	fmt.Fprintln(wr, dp[n][w])
}

func max(a, b int) int {
	if a > b {
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
