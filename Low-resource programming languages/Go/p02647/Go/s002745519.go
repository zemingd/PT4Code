package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	dp := make([][]int, k+1)
	for i := range dp {
		dp[i] = make([]int, n)
	}

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range dp[0] {
		sc.Scan()
		dp[0][i], _ = strconv.Atoi(sc.Text())
	}

	if k > 42 {
		for _ = range dp[0] {
			fmt.Printf("%d ", n)
		}
		fmt.Println()
		return
	}

	for i := 0; i < k; i++ {
		cs := make([]int, n+1)
		for j := 0; j < n; j++ {
			cs[max(0, j-dp[i][j])] += 1
			cs[min(j+dp[i][j]+1, n)] -= 1
		}
		var c int
		for j := 0; j < n; j++ {
			c += cs[j]
			dp[i+1][j] = c
		}
	}
	for i := range dp[k] {
		fmt.Printf("%d ", dp[k][i])
	}
	fmt.Println()
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

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
