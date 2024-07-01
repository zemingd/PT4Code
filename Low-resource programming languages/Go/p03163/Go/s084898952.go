package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func scanInts(n int) []int {
	sl := make([]int, n)
	for i := range sl {
		sl[i] = scanInt()
	}
	return sl
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	n, w := scanInt(), scanInt()
	ws := make([]int, n)
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		ws[i] = scanInt()
		vs[i] = scanInt()
	}

	dp := make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, w+1)
	}

	for i := 0; i < n; i++ {
		for sumW := 0; sumW <= w; sumW++ {
			if sumW-ws[i] >= 0 {
				dp[i+1][sumW] = max(dp[i+1][sumW], dp[i][sumW-ws[i]]+vs[i])
			}

			dp[i+1][sumW] = max(dp[i+1][sumW], dp[i][sumW])
		}
	}

	fmt.Println(dp[n][w])
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

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
