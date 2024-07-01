package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	run()
}

func run() {
	setSpace()
	n, k := readN(), readN()
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		hs[i] = readN()
	}
	dp := make([]int, n)
	dp[0] = 0
	dp[1] = abs(hs[0] - hs[1])

	for i := 2; i < n; i++ {
		costMin := 0
		for j := 1; j <= min(k, i); j++ {
			cost := dp[i-j] + abs(hs[i-j]-hs[i])
			if j == 1 {
				costMin = cost
			} else {
				costMin = min(costMin, cost)
			}
		}
		dp[i] = costMin
	}
	fmt.Println(dp[n-1])
}

func min(a, b int) int {
	if a < b {
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

// ------以下、ユーティリティ------

var sc = bufio.NewScanner(os.Stdin)

func setSpace() {
	sc.Split(bufio.ScanWords)
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readN() int {
	n, err := strconv.Atoi(read())
	if err != nil {
		panic(err)
	}
	return n
}
