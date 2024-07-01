package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	var N, K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &K)

	hs := make([]int, N+1)
	for i := 1; i < N+1; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &hs[i])
	}

	dp := make([]int, N+1)
	dp[1] = 0
	for i := 2; i < N+1; i++ {
		m := math.MaxInt64
		for j := 1; i-j > 0 && j <= K; j++ {
			m = min(m, dp[i-j]+abs(hs[i-j]-hs[i]))
		}
		dp[i] = m
	}
	fmt.Println(dp[N])
}

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -n
}

func min(ns ...int) int {
	ret := math.MaxInt64
	for _, n := range ns {
		if n < ret {
			ret = n
		}
	}
	return ret
}
