package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func main() {
	line := nextLine()
	N, _ := strconv.Atoi(line)
	S := nextLine()
	dp := make([][]int, N+5)
	for i := range dp {
		dp[i] = make([]int, N+5)
	}
	for i := N - 1; i > -1; i-- {
		for j := N - 1; j > -1; j-- {
			if S[i] != S[j] {
				dp[i][j] = 0
			} else {
				dp[i][j] = dp[i+1][j+1] + 1
			}
		}
	}
	ans := 0
	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			if i >= j {
				continue
			}
			ans = max(ans, min(dp[i][j], j-i))
		}
	}
	fmt.Println(ans)
}
